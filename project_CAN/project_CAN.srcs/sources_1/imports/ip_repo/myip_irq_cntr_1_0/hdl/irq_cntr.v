`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 01:56:31 PM
// Design Name: 
// Module Name: irq_cntr
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


module irq_cntr(
    input clk, input reset_p,
    input [7:0] irq_in, en,
    input [7:0] clear,
    output reg [7:0] pending, 
    output reg [2:0] irq_id,
    output wire irq_out, valid
    );
    
    // 1. pending latch rules
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            pending <= 0;
        end
        else begin
            pending <= (pending | irq_in) & ~clear;
        end
    end
    
    // 2. aggregated interruput out
    assign irq_out = |(pending & en);   // reduction OR : 하나라도 1이 있으면 1
    assign valid =  irq_out;
    
    // 3. priority encoder (fixed priority: bite highest)
    // irq_id 는 "pending & en" 중 가장 낮은 index(0이 최고 우선)
    integer i;
    reg found;
    always @(*)begin
        irq_id = 3'd0;
        found = 1'b0;
        for(i = 0; i < 8; i = i+1)begin
            if(!found && (pending[i] & en[i]) == 1'b1)begin
                irq_id = i[2:0];
                found = 1'b1;
            end
        end
    end
endmodule
