`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2026 06:12:02 PM
// Design Name: 
// Module Name: stwatch_ip
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


module stop_watch_ip(
    input clk, reset_p,
    input btn_start, btn_clear,
    input ready,
    input [7:0] lap_count,
    output reg run, lap_flag, sign_flag,// 1이면 laptime 표시 또는 run, 0이면 runtime 표시 또는 stop
    output reg [7:0] min, sec, csec, lap_min, lap_sec, lap_csec,
    output reg [7:0] diff_min, diff_sec, diff_csec);
    
    integer cnt_sysclk1, cnt_sysclk2;   // sysclk1 : maintime clk, sysclk2 : lap clk
    
    wire start_p, clear_p;
    edge_detector_p ed_start(.clk(clk), .reset_p(reset_p), .cp(btn_start), .p_edge(start_p));
    edge_detector_p ed_clear(.clk(clk), .reset_p(reset_p), .cp(btn_clear), .p_edge(clear_p));

    // button input sensing block;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            run = 0;
        end
        else if(start_p) run = ~run;
    end
    
    // main time control block
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) begin
            cnt_sysclk1 = 0;
            min = 0;
            sec = 0;
            csec = 0;
        end
        else if(run) begin
            if(cnt_sysclk1 >= 999_999)begin
                cnt_sysclk1 = 0;
                if(csec >= 99)begin
                    csec = 0;
                    if(sec >= 59)begin
                        sec = 0;
                        if(min >= 59) min = 0;
                        else min = min + 1;
                    end
                    else sec = sec + 1;                       
                end
                else csec = csec + 1;
            end
            else cnt_sysclk1 = cnt_sysclk1 + 1;
        end
        else begin
            if(clear_p) begin
                min = 0;
                sec = 0;
                csec = 0;
                cnt_sysclk1 = 0;
            end
        end 
    end
        
    reg [7:0] prev_min, prev_sec, prev_csec;
    reg [7:0] tmp_min, tmp_sec, tmp_csec;
    // lap time control block
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) begin
            tmp_min = 0; tmp_sec = 0; tmp_csec = 0;
            diff_min = 0; diff_sec = 0; diff_csec = 0;
            prev_min = 0; prev_sec = 0; prev_csec = 0;
            lap_flag = 0;
            sign_flag = 0;
        end
        else if(clear_p)begin
            prev_min = tmp_min; prev_sec = tmp_sec; prev_csec = tmp_csec;   // prev renew
            lap_flag = 0;
        end
        else if(ready)begin
            tmp_min = lap_min; tmp_sec = lap_sec; tmp_csec = lap_csec;
            if(lap_count != 1)begin
                if(tmp_min > prev_min)begin // tmp > prev : sign = 0
                    if(tmp_sec > prev_sec)begin
                        if(tmp_csec >= prev_csec) diff_csec = tmp_csec - prev_csec;
                        else begin
                            tmp_sec = tmp_sec - 1;
                            diff_csec = (tmp_csec + 100) - prev_csec;
                        end
                        diff_sec = tmp_sec - prev_sec;
                    end
                    else begin  // tmp_sec <= prev_sec
                        tmp_min = tmp_min - 1;
                        tmp_sec = tmp_sec + 60;
                        if(tmp_csec >= prev_csec) diff_csec = tmp_csec - prev_csec;
                        else begin  // tmp_csec < prev_csec
                            tmp_sec = tmp_sec - 1;
                            diff_csec = (tmp_csec + 100) - prev_csec;
                        end
                        diff_sec = tmp_sec - prev_sec;
                    end
                    diff_min = tmp_min - prev_min;
                    sign_flag = 0;  // + laptime
                end
                else if(tmp_min < prev_min)begin  // tmp < prev : sign = 1
                    if(prev_sec > tmp_sec)begin
                        if(prev_csec >= tmp_csec) diff_csec = prev_csec - tmp_csec;
                        else begin
                            prev_sec = prev_sec - 1;
                            diff_csec = (prev_csec + 100) - tmp_csec;
                        end
                        diff_sec = prev_sec - tmp_sec;
                    end
                    else begin  // prev_sec <= tmp_sec
                        prev_min = prev_min - 1;
                        prev_sec = prev_sec + 60;
                        if(prev_csec >= tmp_csec) diff_csec = prev_csec - tmp_csec;
                        else begin
                            prev_sec = prev_sec - 1;
                            diff_csec = (prev_csec + 100) - tmp_csec;
                        end
                        diff_sec = prev_sec - tmp_sec;
                    end
                    diff_min = prev_min - tmp_min;
                    sign_flag = 1;  // - laptime
                end
                else begin  // tmp_min == prev_min
                    if(tmp_sec > prev_sec)begin // tmp > prev : sign = 0
                        if(tmp_csec >= prev_csec) diff_csec = tmp_csec - prev_csec;
                        else begin
                            tmp_sec = tmp_sec - 1;
                            diff_csec = (tmp_csec + 100) - prev_csec;
                        end
                        diff_sec = tmp_sec - prev_sec;
                        diff_min = tmp_min - prev_min;
                        sign_flag = 0;
                    end
                    else if(tmp_sec < prev_sec)begin    // tmp < prev : sign = 1
                        if(tmp_csec <= prev_csec) diff_csec = prev_csec - tmp_csec;
                        else begin
                            prev_sec = prev_sec - 1;
                            diff_csec = (prev_csec + 100) - tmp_csec;
                        end
                        diff_sec = prev_sec - tmp_sec;
                        diff_min = prev_min - tmp_min;
                        sign_flag = 1;
                    end
                    else begin  // tmp_sec == prev_sec
                        if(tmp_csec >= prev_csec)begin
                            diff_csec = tmp_csec - prev_csec; // tmp >= prev : sign = 0
                            diff_sec = tmp_sec - prev_sec;
                            diff_min = tmp_min - prev_min;
                            sign_flag = 0;
                        end
                        else begin  // tmp < prev : sign = 1
                            diff_csec = prev_csec - tmp_csec;
                            diff_sec = prev_sec - tmp_sec;
                            diff_min = prev_min - tmp_min;
                            sign_flag = 1;
                        end
                    end
                end
            end
            else begin // lap_count == 1
                diff_min = 0; diff_sec = 0; diff_csec = 0;
            end
            lap_flag = 1;
        end
    end
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            lap_min = 0; lap_sec = 0; lap_csec = 0;
            cnt_sysclk2 = 0;
        end
        else if(run)begin
            if(cnt_sysclk2 >= 999_999)begin
                cnt_sysclk2 = 0;
                if(lap_csec >= 99)begin
                    lap_csec = 0;
                    if(lap_sec >= 59)begin
                        lap_sec = 0;
                        if(lap_min >= 59) lap_min = 0;
                        else lap_min = lap_min + 1;
                    end              
                    else lap_sec = lap_sec + 1;
                end
                else lap_csec = lap_csec + 1;
            end
            else cnt_sysclk2 = cnt_sysclk2 + 1;
            // lap button
            if(clear_p)begin
                lap_min = 0 ; lap_sec = 0; lap_csec = 0;
                cnt_sysclk2 = 0;
            end
        end
        else begin  // not running
            if(clear_p)begin
                lap_min = 0 ; lap_sec = 0; lap_csec = 0;
                cnt_sysclk2 = 0;
            end
        end
    end
endmodule
