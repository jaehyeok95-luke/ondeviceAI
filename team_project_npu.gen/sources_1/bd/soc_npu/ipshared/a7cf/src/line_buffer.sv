`timescale 1ns / 1ps
// fmap_bram.sv
// Feature map 저장용 듀얼포트 BRAM
// Port A: 쓰기 (DMA 또는 이전 레이어 출력)
// Port B: 읽기 (Conv 연산용)
module fmap_bram #(
    parameter DEPTH  = 4096,
    parameter ADDR_W = 12
)(
    input  wire              clk,
    input  wire              we,
    input  wire [ADDR_W-1:0] addr_a,    // 쓰기 주소
    input  wire [7:0]        din,
    input  wire [ADDR_W-1:0] addr_b,    // 읽기 주소
    output reg  [7:0]        dout
);

    reg [7:0] mem [0:DEPTH-1];

    always @(posedge clk) begin
        if (we)
            mem[addr_a] <= din;
    end

    always @(posedge clk) begin
        dout <= mem[addr_b];
    end

endmodule

// patch_reader.sv
// BRAM에 저장된 feature map에서 3×3 패치를 순차 읽기
// padding=1 지원
module patch_reader (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,

    input  wire [6:0]  width_cfg,
    input  wire [6:0]  height_cfg,
    input  wire [14:0] ch_offset,
    input  wire [6:0]  target_row,
    input  wire [6:0]  target_col,

    output reg  [14:0] bram_addr,
    input  wire [7:0]  bram_data,

    output reg  [7:0]  patch [0:2][0:2],
    output reg         patch_valid
);

    localparam S_IDLE    = 3'd0;
    localparam S_READ    = 3'd1;
    localparam S_WAIT    = 3'd2;
    localparam S_COLLECT = 3'd3;
    localparam S_OUTPUT  = 3'd4;

    reg [2:0] state;
    reg [3:0] rd_cnt;
    reg [1:0] ky, kx;
    reg       is_padding;
    reg [7:0] patch_buf [0:8];

    reg signed [7:0] rd_row, rd_col;

    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= S_IDLE;
            patch_valid <= 1'b0;
            rd_cnt      <= 4'd0;
            ky          <= 2'd0;
            kx          <= 2'd0;
            bram_addr   <= 15'd0;
            is_padding  <= 1'b0;
            for (i = 0; i < 9; i = i + 1)
                patch_buf[i] <= 8'd0;
            for (i = 0; i < 3; i = i + 1) begin
                patch[i][0] <= 8'd0;
                patch[i][1] <= 8'd0;
                patch[i][2] <= 8'd0;
            end
        end else begin
            patch_valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        ky     <= 2'd0;
                        kx     <= 2'd0;
                        rd_cnt <= 4'd0;
                        state  <= S_READ;
                    end
                end

                S_READ: begin
                    rd_row = $signed({1'b0, target_row}) + $signed({1'b0, ky}) - 1;
                    rd_col = $signed({1'b0, target_col}) + $signed({1'b0, kx}) - 1;

                    if (rd_row < 0 || rd_row >= $signed({1'b0, height_cfg}) ||
                        rd_col < 0 || rd_col >= $signed({1'b0, width_cfg})) begin
                        is_padding <= 1'b1;
                        bram_addr  <= 15'd0;
                    end else begin
                        is_padding <= 1'b0;
                        bram_addr  <= ch_offset + rd_row[6:0] * width_cfg + rd_col[6:0];
                    end

                    state <= S_WAIT;
                end

                S_WAIT: begin
                    state <= S_COLLECT;
                end

                S_COLLECT: begin
                    if (is_padding)
                        patch_buf[rd_cnt] <= 8'd0;
                    else
                        patch_buf[rd_cnt] <= bram_data;

                    if (kx == 2'd2) begin
                        kx <= 2'd0;
                        ky <= ky + 2'd1;
                    end else begin
                        kx <= kx + 2'd1;
                    end

                    if (rd_cnt == 4'd8) begin
                        state <= S_OUTPUT;
                    end else begin
                        rd_cnt <= rd_cnt + 4'd1;
                        state  <= S_READ;
                    end
                end

                S_OUTPUT: begin
                    patch[0][0] <= patch_buf[0];
                    patch[0][1] <= patch_buf[1];
                    patch[0][2] <= patch_buf[2];
                    patch[1][0] <= patch_buf[3];
                    patch[1][1] <= patch_buf[4];
                    patch[1][2] <= patch_buf[5];
                    patch[2][0] <= patch_buf[6];
                    patch[2][1] <= patch_buf[7];
                    patch[2][2] <= patch_buf[8];

                    patch_valid <= 1'b1;
                    state       <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule