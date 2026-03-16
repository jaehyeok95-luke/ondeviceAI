`timescale 1ns / 1ps

module weight_buf (
    input  wire        clk,
    input  wire        we,
    input  wire [11:0] wr_addr,
    input  wire [7:0]  wr_data,
    input  wire [11:0] rd_addr,
    output reg  [7:0]  rd_data
);

    (* ram_style = "block" *) reg [7:0] mem [0:4095];

    always @(posedge clk) begin
        if (we) mem[wr_addr] <= wr_data;
    end

    always @(posedge clk) begin
        rd_data <= mem[rd_addr];
    end

endmodule

// weight, bias dual port bram
module weight_bram_conv (
    input  wire        clk,
    input  wire [16:0] weight_addr,
    output reg  [7:0]  weight_data,
    input  wire [16:0] bias_addr,
    output reg  [7:0]  bias_data
);

    // ══════════════════════════════════════
    //  주소 맵 (Conv1,2,3만 저장)
    // ══════════════════════════════════════
    //  conv1_w :      0 ~      287   (288   B)
    //  conv1_b :    288 ~      319   (32    B)
    //  conv2_w :    320 ~    18751   (18432 B)
    //  conv2_b :  18752 ~    18815   (64    B)
    //  conv3_w :  18816 ~    92543   (73728 B)
    //  conv3_b :  92544 ~    92671   (128   B)
    // ══════════════════════════════════════
    reg [7:0] mem [0:92671];

    initial begin
        // 레이어별 hex를 시작 주소 지정해서 로드
        $readmemh("conv1_weight.hex", mem, 0,     287);
        $readmemh("conv1_bias.hex",   mem, 288,   319);
        $readmemh("conv2_weight.hex", mem, 320,   18751);
        $readmemh("conv2_bias.hex",   mem, 18752, 18815);
        $readmemh("conv3_weight.hex", mem, 18816, 92543);
        $readmemh("conv3_bias.hex",   mem, 92544, 92671);
    end

    always @(posedge clk) begin
        weight_data <= mem[weight_addr];
    end

    always @(posedge clk) begin
        bias_data <= mem[bias_addr];
    end

endmodule

module weight_bram_conv1_only (
    input  wire        clk,
    input  wire [8:0]  weight_addr,   // 0~288 (9bit)
    output reg  [7:0]  weight_data,
    input  wire [4:0]  bias_addr,     // 0~31 (5bit)
    output reg  [7:0]  bias_data
);

    (* ram_style = "block" *) reg [7:0] w_mem [0:287];
    (* ram_style = "block" *) reg [7:0] b_mem [0:31];

    initial begin
        $readmemh("conv1_weight.hex", w_mem);
        $readmemh("conv1_bias.hex",   b_mem);
    end

    always @(posedge clk) begin
        weight_data <= w_mem[weight_addr];
    end

    always @(posedge clk) begin
        bias_data <= b_mem[bias_addr];
    end

endmodule