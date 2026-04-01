`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/28/2026 02:09:01 PM
// Design Name: 
// Module Name: can_bit_timing
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


module can_bit_timing #(
    parameter int CLK_HZ = 100_000_000,
    parameter int BITRATE = 125_000,
    parameter int OVERSAMPLE = 16,
    parameter int SAMPLE_TICK = 12
)(
    input  logic clk,
    input  logic rst,

    input  logic can_rxd,          // from transceiver (or TB)
    output logic tick_os,          // oversample tick (1clk pulse)
    output logic bit_strobe,       // bit boundary (1clk pulse)
    output logic rx_sample,        // sampled RX value at sample point
    output logic [$clog2(OVERSAMPLE)-1:0] tick_idx
);
    localparam int TICK_HZ  = BITRATE * OVERSAMPLE;               // 2 MHz
    localparam int TICK_DIV = CLK_HZ / TICK_HZ;                   // 50

    logic [$clog2(TICK_DIV)-1:0] div_cnt;

    always_ff @(posedge clk) begin
        if (rst) begin
            div_cnt    <= 0;
            tick_os    <= 1'b0;
            bit_strobe <= 1'b0;
            tick_idx   <= 0;
            rx_sample  <= 1'b1; // recessive default
        end else begin
            tick_os    <= 1'b0;
            bit_strobe <= 1'b0;

            if (div_cnt == TICK_DIV-1) begin
                div_cnt <= 0;
                tick_os <= 1'b1;

                // tick index 0..OVERSAMPLE-1
                if (tick_idx == OVERSAMPLE-1) begin
                    tick_idx   <= 0;
                    bit_strobe <= 1'b1;
                end else begin
                    tick_idx <= tick_idx + 1;
                end

                // sample at chosen point
                if (tick_idx == SAMPLE_TICK-1) begin
                    rx_sample <= can_rxd;
                end
            end else begin
                div_cnt <= div_cnt + 1;
            end
        end
    end
endmodule

