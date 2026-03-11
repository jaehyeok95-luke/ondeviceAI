`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:31:49 AM
// Design Name: 
// Module Name: fc_layer
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// fc_layer.v
// FC 레이어: in_features → out_features
// 가중치는 BRAM/DDR에서 순차 공급

module fc_layer #(
    parameter IN_SIZE  = 512,
    parameter OUT_SIZE = 256,
    parameter RELU_EN  = 1      // 1: ReLU 적용, 0: 그대로 출력
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,

    // 입력 벡터 (BRAM에 저장, 주소로 읽기)
    output reg  [$clog2(IN_SIZE)-1:0] in_addr,
    input  wire signed [7:0]          in_data,

    // 가중치 (OUT_SIZE × IN_SIZE, 순차 읽기)
    output reg  [17:0]                weight_addr,
    input  wire signed [7:0]          weight_data,

    // 바이어스 (OUT_SIZE개)
    output reg  [$clog2(OUT_SIZE)-1:0] bias_addr,
    input  wire signed [7:0]           bias_data,

    // 출력
    output reg  signed [7:0]           out_data,
    output reg  [$clog2(OUT_SIZE)-1:0] out_idx,
    output reg                         out_valid,
    output reg                         done
);

    reg signed [31:0] acc;
    reg [$clog2(OUT_SIZE)-1:0] o_idx;
    reg [$clog2(IN_SIZE)-1:0]  i_idx;
    reg [2:0] state;

    localparam S_IDLE   = 3'd0;
    localparam S_BIAS   = 3'd1;
    localparam S_MAC    = 3'd2;
    localparam S_OUT    = 3'd3;
    localparam S_NEXT   = 3'd4;
    localparam S_DONE   = 3'd5;

    wire signed [15:0] mul = weight_data * in_data;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= S_IDLE;
            acc         <= 0;
            o_idx       <= 0;
            i_idx       <= 0;
            out_valid   <= 0;
            done        <= 0;
            in_addr     <= 0;
            weight_addr <= 0;
            bias_addr   <= 0;
            out_data    <= 0;
            out_idx     <= 0;
        end else begin
            out_valid <= 0;
            done      <= 0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        o_idx <= 0;
                        state <= S_BIAS;
                        bias_addr <= 0;
                    end
                end

                S_BIAS: begin
                    acc <= {{24{bias_data[7]}}, bias_data};
                    i_idx <= 0;
                    in_addr     <= 0;
                    weight_addr <= o_idx * IN_SIZE;
                    state <= S_MAC;
                end

                S_MAC: begin
                    acc <= acc + {{16{mul[15]}}, mul};
                    weight_addr <= weight_addr + 1;

                    if (i_idx == IN_SIZE - 1) begin
                        state <= S_OUT;
                    end else begin
                        i_idx   <= i_idx + 1;
                        in_addr <= i_idx + 1;
                    end
                end

                S_OUT: begin
                    // ReLU (선택) + INT8 클리핑
                    if (RELU_EN && acc[31]) begin
                        out_data <= 8'd0;
                    end else if (acc > 127) begin
                        out_data <= 8'sd127;
                    end else if (acc < -128) begin
                        out_data <= -8'sd128;
                    end else begin
                        out_data <= acc[7:0];
                    end

                    out_idx   <= o_idx;
                    out_valid <= 1;
                    state     <= S_NEXT;
                end

                S_NEXT: begin
                    if (o_idx == OUT_SIZE - 1) begin
                        done  <= 1;
                        state <= S_IDLE;
                    end else begin
                        o_idx     <= o_idx + 1;
                        bias_addr <= o_idx + 1;
                        state     <= S_BIAS;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

