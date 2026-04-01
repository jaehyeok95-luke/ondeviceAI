`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/17/2025 10:30:34 AM
// Design Name: 
// Module Name: clock_lib
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


// clock pulse generator for us
module clock_us(
    input clk, reset_p,
    output reg clk_us,
    output clk_us_nedge, clk_us_pedge);
    
    reg [5:0] cnt_sysclk;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk = 0;
            clk_us = 0;
        end
        else begin
            if(cnt_sysclk >= 49)begin 
                cnt_sysclk = 0;
                clk_us = ~clk_us;
            end
            else cnt_sysclk = cnt_sysclk + 1;
        end
    end
    
    // us clock edge detection
    edge_detector_n clk_ed(.clk(clk), .reset_p(reset_p), .cp(clk_us), .p_edge(clk_us_pedge), .n_edge(clk_us_nedge));    

    
endmodule

module clock_ms(
    input clk, reset_p,
    output reg clk_ms,
    output clk_ms_nedge, clk_ms_pedge);
    
    reg [15:0] cnt_sysclk;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk = 0;
            clk_ms = 0;
        end
        else begin
            if(cnt_sysclk >= 49999)begin 
                cnt_sysclk = 0;
                clk_ms = ~clk_ms;
            end
            else cnt_sysclk = cnt_sysclk + 1;
        end
    end
    
    // ms clock edge detection
    edge_detector_n ms_ed(.clk(clk), .reset_p(reset_p), .cp(clk_ms), .p_edge(clk_ms_pedge), .n_edge(clk_ms_nedge));    

    
endmodule