`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 03:01:17 PM
// Design Name: 
// Module Name: tick_timebase
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


module tick_timebase(
    input clk, reset_p, en, 
    input [15:0] presc_value,
    output reg ce
    );
    
    reg [31:0] sys_clk;
    wire [31:0] presc_count = (presc_value != 7'b0) ? presc_value : 100000; // default : 1ms tick enable
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            ce <= 0; sys_clk <= 0;
        end
        else if(en)begin
            ce <= 0;
            if(sys_clk >= presc_count - 1)begin
                ce <= 1;
                sys_clk <= 0;
            end
            else begin
                sys_clk <= sys_clk + 1;
            end
        end
        else begin
            ce <= 0; sys_clk <= 0;
        end
    end
endmodule

module tick_counter(
    input clk, reset_p, en, ce, clear,
    input [31:0] period_shadow,
    output reg tick_event,
    output reg [31:0] count
);
    // prohibit underflow
    wire [31:0] clamped_shadow = (period_shadow == 32'd0) ? 32'd1 : period_shadow;
    reg [31:0] period_active;
    wire period_valid = (period_active != 32'd0);
    
    
    // en pedge detector
    reg en_ed;
    always @(posedge clk or posedge reset_p)begin
        if(reset_p)begin
            en_ed <= 0;
        end
        else en_ed <= en;
    end
    wire en_p = en & ~en_ed;
    
    // upadate period only if tick_event occurred(old period_active end)
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            period_active <= 32'b1;
        end
        else if(en_p) period_active <= clamped_shadow;
        else if(tick_event) period_active <= clamped_shadow;
    end
    
    // when counter reached period, tick_event occur
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            tick_event <= 0; count <= 0;
        end
        else if(clear)begin
            tick_event <= 0; count <= 0;
        end
        else if(en)begin
            tick_event <= 0;
            if(ce && period_valid)begin
                if(count >= period_active - 1)begin
                    tick_event <= 1;
                    count <= 0;
                end
                else begin
                    count <= count + 1;
                end
            end
        end
        else begin
            tick_event <= 0; count <= 0;
        end
    end
endmodule

module irq_latch(
    input clk, reset_p, tick_event, irq_en, clr_pend,
    output reg pend, missed,
    output reg [7:0] missed_cnt,
    output wire irq
);

    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            pend <= 0; missed <= 0;
            missed_cnt <= 0;
        end
        else if(clr_pend)begin
            pend <= 0; missed <= 0;
            missed_cnt <= 0;
        end
        else if(tick_event)begin
            if(pend == 1'b1)begin
                missed <= 1;
                missed_cnt <= missed_cnt + 1;
            end
            pend <= 1;
        end
    end
    
    assign irq = irq_en & pend;

endmodule
