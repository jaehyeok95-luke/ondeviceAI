`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/09/2025 09:39:01 AM
// Design Name: 
// Module Name: exam03_var_module
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


 module watch(
    input   clk, reset_p,
    input   [2:0] btn,
    output  reg [7:0]   sec, min);
    
    reg set_watch;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) set_watch = 0;
        else if(btn[0]) set_watch = ~set_watch;
    end
    
    integer cnt_sysclk;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk = 0;
            sec = 0;
            min = 0;
        end
        else begin
            if(set_watch)begin
                if(btn[1])begin
                    if(sec >= 59) sec = 0;
                    else sec = sec + 1;
                end
                if(btn[2])begin
                    if(min >= 59) min = 0;
                    else min = min + 1;
                end
            end
            else begin
                if(cnt_sysclk >= 27'd99_999_999)begin // 27'd : 27bit 데이터를 decimal format으로 표현
                    cnt_sysclk = 0;
                    if(sec >= 59)begin
                        sec = 0;
                        if(min >= 59)begin
                            min = 0;
                        end
                        else min = min + 1;
                    end
                    else sec = sec + 1;
                end
                else cnt_sysclk = cnt_sysclk + 1;
            end
        end
    end
endmodule

module cook_timer(
    input clk, reset_p,
    input btn_start, inc_sec, inc_min, alarm_off,
    output reg [7:0] sec, min,
    output reg alarm);
    
    reg [15:0] set_time;
    reg dcnt_set;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            set_time = 0;
            dcnt_set = 0;
            alarm = 0;
        end
        else begin
            if(btn_start && ~alarm)begin
                dcnt_set = ~dcnt_set;
                set_time = {min, sec};
            end
            if(min == 0 && sec == 0 && dcnt_set)begin
                dcnt_set = 0;
                alarm = 1;
            end
            if(alarm_off)begin
                alarm = 0;
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
            if(dcnt_set) begin
                if(cnt_sysclk >= 99_999_999)begin
                    cnt_sysclk = 0;
                    if(sec == 0 && min)begin
                        sec = 59;
                        min = min - 1;  // min == 0일 때는 dcnt_set값을 변경해야 하므로 dcnt_set 값을 다루고 있는 always 문에서 처리.
                    end
                    else sec = sec - 1;
                end
                else cnt_sysclk = cnt_sysclk + 1;
            end
            else begin
                if(alarm_off && alarm) begin
                    sec = set_time[7:0];
                    min = set_time[15:8];
                end
                else if(~alarm)begin
                    if(inc_sec)begin
                        if(sec >= 59) sec = 0;
                        else sec = sec + 1;
                    end
                    if(inc_min)begin
                        if(min >= 59) min = 0;
                        else min = min + 1;
                    end
                end
             end
        end
    end
endmodule

module stop_watch(
    input clk, reset_p,
    input btn_start, btn_clear, btn_lap,
    output reg mode, // 1이면 laptime 표시, 0이면 runtime 표시
    output reg [7:0] sec, csec,
    output reg [15:0] lap_time);
    
    integer cnt_sysclk1, cnt_sysclk2;   // sysclk1 : maintime clk, sysclk2 : lap clk
    reg run;    // 1이면 run, 0이면 stop
    reg [7:0] lap_sec, lap_csec;    // lap time
    reg [7:0] sec_mem, csec_mem;    // main time
   
    // button input sensing block;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            mode = 0;
            run = 0;
        end
        else if(btn_start) run = ~run;
        else if(btn_lap) mode = ~mode;      
        else if(~run && btn_clear)begin
            mode = 0;
            run = 0;
        end
    end
    
    // main time control block
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) begin
            cnt_sysclk1 = 0;
            sec_mem = 0;
            csec_mem = 0;
        end
        else if(run) begin
            if(cnt_sysclk1 >= 999_999)begin
                cnt_sysclk1 = 0;
                if(csec_mem >= 99)begin
                    csec_mem = 0;
                    sec_mem = sec_mem + 1;
                end
                else csec_mem = csec_mem + 1;
                if(sec_mem >= 59) sec_mem = 0;               
            end
            else cnt_sysclk1 = cnt_sysclk1 + 1;
        end
        else begin
            if(btn_clear) begin
                sec_mem = 0;
                csec_mem = 0;
                cnt_sysclk1 = 0;
            end
        end 
    end
    
    // lap time control block
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) begin
            lap_sec = 0;
            lap_csec = 0;
            cnt_sysclk2 = 0;
            lap_time = 0;
        end
        else if(run)begin
            if(btn_clear)begin
                lap_time = {lap_sec, lap_csec};
                lap_sec = 0;
                lap_csec = 0;
            end
            else begin
                if(cnt_sysclk2 >= 999_999)begin
                    cnt_sysclk2 = 0;              
                    if(lap_csec >= 99)begin
                        lap_csec = 0;
                        lap_sec = lap_sec + 1;
                    end
                    else lap_csec = lap_csec + 1;
                    if(lap_sec >= 59) lap_sec = 0;
                end
                else cnt_sysclk2 = cnt_sysclk2 + 1;
            end
        end 
        else if(btn_clear) begin
            cnt_sysclk2 = 0;
            lap_sec = 0;
            lap_csec = 0;
            lap_time = 0;
        end
    end
    
    // 최종 표시할 sec, csec 선택 block
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) begin
            sec = 0;
            csec = 0;
        end
        else begin
            sec = mode ? lap_sec : sec_mem;
            csec = mode ? lap_csec : csec_mem;
        end
    end

    
endmodule

module stop_watch_ip(
    input clk, reset_p,
    input btn_start, btn_clear,
    input ready,
    input [7:0] lap_count,
    output reg run, lap_flag, sign_flag,// 1이면 laptime 표시 또는 run, 0이면 runtime 표시 또는 stop
    output reg [7:0] min, sec, csec, lap_min, lap_sec, lap_csec,
    output reg [7:0] cap_min, cap_sec, cap_csec, diff_min, diff_sec, diff_csec);
    
    integer cnt_sysclk1, cnt_sysclk2;   // sysclk1 : maintime clk, sysclk2 : lap clk
    
    wire start_p, clear_p, ready_p, ready_n;
    edge_detector_p ed_start(.clk(clk), .reset_p(reset_p), .cp(btn_start), .p_edge(start_p));
    edge_detector_p ed_clear(.clk(clk), .reset_p(reset_p), .cp(btn_clear), .p_edge(clear_p));
    edge_detector_p ed_ready(.clk(clk), .reset_p(reset_p), .cp(ready), .p_edge(ready_p), .n_edge(ready_n));

    // button input sensing block;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            run = 0;
        end
        else if(start_p) run = ~run;
    end
    
    // main time control block
    always @(negedge clk, posedge reset_p)begin
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
    always @(negedge clk, posedge reset_p)begin
        if(reset_p) begin
            lap_min = 0; lap_sec = 0; lap_csec = 0;
            cnt_sysclk2 = 0;
            cap_min = 0; cap_sec = 0; cap_csec = 0;
            tmp_min = 0; tmp_sec = 0; tmp_csec = 0;
            diff_min = 0; diff_sec = 0; diff_csec = 0;
            prev_min = 0; prev_sec = 0; prev_csec = 0;
            lap_flag = 0;
            sign_flag = 0;
        end
        else if(clear_p)begin
            if(ready_n)begin
                prev_min = cap_min; prev_sec = cap_sec; prev_csec = cap_csec;   // prev renew
                cap_min = lap_min; cap_sec = lap_sec; cap_csec = lap_csec;
                if(lap_count != 1) begin
                    tmp_min = cap_min; tmp_sec = cap_sec; tmp_csec = cap_csec;
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
                if(run)begin
                    lap_flag = 1;
                    lap_min = 0; lap_sec = 0; lap_csec = 0;
                    cnt_sysclk2 = 0;
                end
                else begin
                    if(ready_p)begin
                        lap_flag = 0;
                        sign_flag = 0;
                        cap_min = 0; cap_sec = 0; cap_csec = 0;
                        tmp_min = 0; tmp_sec = 0; tmp_csec = 0;
                        diff_min = 0; diff_sec = 0; diff_csec = 0;
                        prev_min = 0; prev_sec = 0; prev_csec = 0;
                        lap_min = 0; lap_sec = 0; lap_csec = 0;
                        cnt_sysclk2 = 0;
                    end
                end
            end
        end
        else if(run)begin  // always
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
        end
    end    
endmodule


module uart(
    input clk, reset_p,
    input tx_lap,
    input [15:0] rx_laptime,
    output reg tx_msg);
    
    reg [8:0] mem [0:21];
    reg [8:0] tx_buf;
    reg full_buf;
    integer uart_clk;
    integer cnt;
    integer i, num;
    
    always @(posedge clk, posedge reset_p) begin
        if(reset_p)begin
            for(i = 0; i < 22; i = i + 1)begin
                mem[i] <= 9'b0_0000_0000;
            end
        end
        else begin
            mem[0] <= {8'h4C, 1'b0}; // L
            mem[1] <= {8'h41, 1'b0}; // A
            mem[2] <= {8'h50, 1'b0}; // P
            mem[3] <= {8'h20, 1'b0}; // SP
            mem[4] <= {8'h54, 1'b0}; // T
            mem[5] <= {8'h49, 1'b0}; // I
            mem[6] <= {8'h4D, 1'b0}; // M
            mem[7] <= {8'h45, 1'b0}; // E
            mem[8] <= {8'h20, 1'b0}; // SP
            mem[9] <= {8'h3A, 1'b0}; // :
            mem[10] <= {8'h20, 1'b0}; // SP
            mem[11] <= {4'h3, rx_laptime[15:12], 1'b0}; // sec
            mem[12] <= {4'h3, rx_laptime[11:8], 1'b0};  // sec
            mem[13] <= {8'h2E, 1'b0}; // .
            mem[14] <= {4'h3, rx_laptime[7:4], 1'b0};   // csec
            mem[15] <= {4'h3, rx_laptime[3:0], 1'b0};   // csec
            mem[16] <= {8'h20, 1'b0}; // SP
            mem[17] <= {8'h73, 1'b0}; // s
            mem[18] <= {8'h65, 1'b0}; // e
            mem[19] <= {8'h63, 1'b0}; // c
            mem[20] <= {8'h0D, 1'b0}; // CR
            mem[21] <= {8'h0A, 1'b0}; // LF
        end
    end
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) begin
            tx_buf <= 9'b0_0000_0000;
            tx_msg <= 1;
            uart_clk <= 0;
            cnt <= 0;
            num <= 0;
        end
        else if(tx_lap)begin
            full_buf <= 1;
            tx_buf <= mem[0];
        end
        else if(full_buf)begin
            if(num != 22)begin
                if(uart_clk >= (100000000 / 9600) )begin
                    tx_msg <= tx_buf[0];
                    tx_buf <= {1'b1, tx_buf[8:1]};
                    uart_clk <= 0;
                    cnt <= cnt + 1;
                    if(cnt == 9) begin
                        cnt <= 0;
                        num <= num + 1;
                        tx_buf <= mem[num+1];
                    end
                end
                else uart_clk <= uart_clk + 1;
            end
            else begin
                num <= 0;
                full_buf <= 0;
            end
        end
    end


endmodule