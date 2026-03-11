`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:33:26 AM
// Design Name: 
// Module Name: argmax
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


// argmax.v
// N개 입력 중 최댓값의 인덱스 출력

module argmax #(
    parameter N = 19
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,

    input  wire signed [7:0]         in_data,
    input  wire [$clog2(N)-1:0]      in_idx,
    input  wire                      in_valid,
    input  wire                      in_done,    // 모든 N개 입력 완료

    output reg  [$clog2(N)-1:0]      result_idx,
    output reg                       result_valid
);

    reg signed [7:0] max_val;
    reg [$clog2(N)-1:0] max_idx;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            max_val      <= -8'sd128;
            max_idx      <= 0;
            result_idx   <= 0;
            result_valid <= 0;
        end else begin
            result_valid <= 0;

            if (start) begin
                max_val <= -8'sd128;
                max_idx <= 0;
            end else if (in_valid) begin
                if (in_data > max_val) begin
                    max_val <= in_data;
                    max_idx <= in_idx;
                end
            end

            if (in_done) begin
                result_idx   <= max_idx;
                result_valid <= 1;
            end
        end
    end

endmodule

