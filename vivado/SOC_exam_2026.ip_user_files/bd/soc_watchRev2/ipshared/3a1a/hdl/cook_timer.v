`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2026 04:49:26 PM
// Design Name: 
// Module Name: cook_timer
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


module cook_timer(
    input clk, reset_p,
    input [7:0] set_sec, set_min,
    input dcnt_start,
    input alarm_off,
    output reg [7:0] sec, min,
    output reg alarm);
    
    wire dcnt_start_pedge;
    edge_detector_n ed_start(.clk(clk), .reset_p(reset_p), .cp(dcnt_start), .p_edge(dcnt_start_pedge));
    reg dcnt_set;
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            alarm = 0;
            dcnt_set = 0;
        end
        else begin
            if(dcnt_start_pedge)dcnt_set = 1;
            if(sec == 0 && min == 0 && dcnt_set)begin
                alarm = 1;
            end
            if(alarm_off)begin
                alarm = 0;
                dcnt_set = 0;
            end
        end
    end
    integer cnt_sysclk;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk = 0;
            sec = 0;
            min = 0;
        end
        else begin
            if(dcnt_set && !alarm)begin
                if(cnt_sysclk >= 99_999_999)begin
                    cnt_sysclk = 0;
                    if(sec == 0 && min)begin
                        sec = 59;
                        min = min - 1;
                    end
                    else sec = sec - 1;
                end
                else cnt_sysclk = cnt_sysclk + 1;
            end
            else if(dcnt_start_pedge)begin
                sec = set_sec;
                min = set_min;
            end
        end
    end

endmodule
