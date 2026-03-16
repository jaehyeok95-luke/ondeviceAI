`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2026 11:51:41 PM
// Design Name: 
// Module Name: koreawatch
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


module korea_watch(
    input clk, reset_p,       
    input [7:0] rx_data,
    input rx_done,
    output reg [7:0] hour,
    output reg [7:0] min,
    output reg [7:0] sec
);
    wire rx_done_p_dege;
    edge_detector_n ed_rxdone(
    .clk(clk), 
    .reset_p(reset_p),
    .cp(rx_done),
    .p_edge(rx_done_p_dege));

    integer cnt_sysclk = 0;
    reg [1:0] sync_step = 0;
    reg active_en = 0;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            // 리셋 시 모든 값을 초기화하고 대기 상태(active_en = 0)로 전환
            hour <= 0;
            min <= 0;
            sec <= 0;
            cnt_sysclk <= 0;
            sync_step <= 0;
            active_en <= 0;   // 시계 가동을 멈추고 PC 데이터를 다시 기다림
        end else begin
            // 1. PC 데이터 수신 (시->분->초 순서)
            if (rx_done_p_dege) begin
                case (sync_step)
                    2'd0: hour <= rx_data;
                    2'd1: min <= rx_data;
                    2'd2: begin 
                        sec <= rx_data;
                        active_en <= 1;   // 동기화 완료 시 가동
                        cnt_sysclk <= 0;
                    end
                endcase
                
                if (sync_step == 2'd2) sync_step <= 2'd0;
                else sync_step <= sync_step + 1;
            end

            // 2. 가동 스위치가 켜진 경우에만 시계가 흐름
            if (active_en) begin
                if (cnt_sysclk >= 99_999_999) begin
                    cnt_sysclk <= 0;
                    if (sec >= 59) begin
                        sec <= 0;
                        if (min >= 59) begin
                            min <= 0;
                            if (hour >= 23) hour <= 0;
                            else hour <= hour + 1;
                        end else min <= min + 1;
                    end else sec <= sec + 1;
                end else begin
                    cnt_sysclk <= cnt_sysclk + 1;
                end
            end
        end
    end
endmodule
