`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:29:13 AM
// Design Name: 
// Module Name: maxpool2x2
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


// maxpool2x2.v
// 2×2 영역에서 최댓값 선택 (INT8, unsigned after ReLU)

module maxpool2x2 (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        valid_in,
    input  wire [7:0]  pixel_00,   // (y, x)
    input  wire [7:0]  pixel_01,   // (y, x+1)
    input  wire [7:0]  pixel_10,   // (y+1, x)
    input  wire [7:0]  pixel_11,   // (y+1, x+1)
    output reg  [7:0]  pixel_out,
    output reg         valid_out
);

    wire [7:0] max_01 = (pixel_00 >= pixel_01) ? pixel_00 : pixel_01;
    wire [7:0] max_23 = (pixel_10 >= pixel_11) ? pixel_10 : pixel_11;
    wire [7:0] max_all = (max_01 >= max_23) ? max_01 : max_23;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            pixel_out <= 0;
            valid_out <= 0;
        end else begin
            valid_out <= valid_in;
            pixel_out <= max_all;
        end
    end

endmodule
