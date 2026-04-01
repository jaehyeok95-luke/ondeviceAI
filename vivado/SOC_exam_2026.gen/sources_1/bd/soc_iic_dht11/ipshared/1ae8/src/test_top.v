`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 09:15:44 AM
// Design Name: 
// Module Name: test_top
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


module test_top(
    input [15:0] slide,
    output [15:0] led);
    
    assign led = slide;
    
endmodule

module FND_top(
    input clk, reset_p,
    input [15:0] hex_value,
    output [7:0] seg,
    output [3:0] com);

    FND_cntr fnd(.clk(clk), .reset_p(reset_p), .fnd_value(hex_value), .seg(seg), .com(com));

endmodule

module watch_top(
    input   clk, reset_p,
    input [3:0] button,
    output [7:0]    seg,
    output [3:0]    com);

    wire [2:0] btn_pedge, btn_nedge;
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
    button_ctr btnctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));
    button_ctr btnctr2(.clk(clk), .reset_p(reset_p), .btn(button[2]), .btn_pedge(btn_pedge[2]), .btn_nedge(btn_nedge[2]));

    wire [7:0] sec, min;
    watch watch0(.clk(clk), .reset_p(reset_p), .btn(btn_pedge), .sec(sec), .min(min));
    
    wire [7:0] sec_bcd, min_bcd;
    bin_to_dec btd_sec(.bin(sec), .bcd(sec_bcd));
    bin_to_dec btd_min(.bin(min), .bcd(min_bcd));

    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value({min_bcd,sec_bcd}), .seg(seg), .com(com));

endmodule

module cook_timer_top(
    input clk, reset_p,
    input [3:0] button,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led);
    
    wire [3:0] btn_pedge, btn_nedge;
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
    button_ctr btnctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));
    button_ctr btnctr2(.clk(clk), .reset_p(reset_p), .btn(button[2]), .btn_pedge(btn_pedge[2]), .btn_nedge(btn_nedge[2]));
    button_ctr btnctr3(.clk(clk), .reset_p(reset_p), .btn(button[3]), .btn_pedge(btn_pedge[3]), .btn_nedge(btn_nedge[3]));

    wire [7:0] sec, min;
    wire alarm;
    cook_timer ctimer(.clk(clk), .reset_p(reset_p), .btn_start(btn_pedge[0]), .inc_sec(btn_pedge[1]), .inc_min(btn_pedge[2]), 
                      .alarm_off(btn_pedge[3]), .sec(sec), .min(min), .alarm(alarm));
             
    wire [7:0] sec_bcd, min_bcd;
    bin_to_dec btd_sec(.bin(sec), .bcd(sec_bcd));
    bin_to_dec btd_min(.bin(min), .bcd(min_bcd));
    
    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value({min_bcd,sec_bcd}), .seg(seg), .com(com));
    assign led[0] = alarm;
endmodule

module stop_watch_top(
    input clk, reset_p,
    input [3:0] button,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led);

    // button input edge detection
    wire [3:0] btn_pedge, btn_nedge;
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
    button_ctr btnctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));
    button_ctr btnctr2(.clk(clk), .reset_p(reset_p), .btn(button[2]), .btn_pedge(btn_pedge[2]), .btn_nedge(btn_nedge[2]));
    button_ctr btnctr3(.clk(clk), .reset_p(reset_p), .btn(button[3]), .btn_pedge(btn_pedge[3]), .btn_nedge(btn_nedge[3]));
    
    // stop_watch control
    wire [7:0] sec, csec;
    wire mode;
    stop_watch st_watch0(.clk(clk), .reset_p(reset_p), .btn_start(btn_pedge[0]), .btn_clear(btn_pedge[1]), .btn_lap(btn_pedge[2]), .mode(mode), .sec(sec), .csec(csec));
    
    // 
    wire [7:0] csec_bcd, sec_bcd;
    bin_to_dec btd_csec(.bin(csec), .bcd(csec_bcd));
    bin_to_dec btd_sec(.bin(sec), .bcd(sec_bcd));
    
    //  display time(maintime or laptime)
    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value({sec_bcd,csec_bcd}), .seg(seg), .com(com));
    
    // led on : laptime display status / led off : maintime display status 
    assign led[0] = mode;

endmodule

module complete_watch(
    input clk, reset_p,
    input [15:0] sw,
    input [3:0] button,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led,
    output buzzer,
    output tx_msg);
    
    localparam WATCH = 3'b100;
    localparam TIMER = 3'b010;
    localparam STOPWATCH = 3'b001;
    
    // watch mode selection
    // button[3] : mode selection btn
    wire mode_btn_pedge, mode_btn_nedge;
    wire [2:0] btn_pedge, btn_nedge;
    
    reg [2:0] watch_btn, timer_btn, stopwatch_btn;
    reg [2:0] mode_type;
    
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[3]), .btn_pedge(mode_btn_pedge), .btn_nedge(mode_btn_nedge));

    button_ctr btn_ctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
    button_ctr btn_ctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));
    button_ctr btn_ctr2(.clk(clk), .reset_p(reset_p), .btn(button[2]), .btn_pedge(btn_pedge[2]), .btn_nedge(btn_nedge[2]));
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) mode_type = WATCH;
        else if(mode_btn_pedge)begin
            case(mode_type)
                WATCH : mode_type = TIMER;
                TIMER : mode_type = STOPWATCH;
                STOPWATCH : mode_type = WATCH;
                default : mode_type = WATCH;
            endcase
        end
        else begin
            case(mode_type)
                WATCH : watch_btn = btn_pedge;
                TIMER : timer_btn = btn_pedge;
                STOPWATCH : stopwatch_btn = btn_pedge;
                default : watch_btn = btn_pedge;
            endcase
        end
    end
    
    wire [7:0] watch_min, watch_sec, timer_min, timer_sec, stopwatch_sec, stopwatch_csec;
    wire alarm;
    wire lap;
    wire [15:0] lap_time;
    watch watch0(.clk(clk), .reset_p(reset_p), .btn(watch_btn), .sec(watch_sec), .min(watch_min));
    cook_timer ctimer(.clk(clk), .reset_p(reset_p), .btn_start(timer_btn[0]), .inc_sec(timer_btn[1]), .inc_min(timer_btn[2]), 
                      .alarm_off(sw[0]), .sec(timer_sec), .min(timer_min), .alarm(alarm));    
    stop_watch st_watch0(.clk(clk), .reset_p(reset_p), .btn_start(stopwatch_btn[0]), .btn_clear(stopwatch_btn[1]), 
                         .btn_lap(stopwatch_btn[2]), .mode(lap), .sec(stopwatch_sec), .csec(stopwatch_csec), .lap_time(lap_time));
    
    
    wire [7:0] second_bin, first_bin, second_bcd, first_bcd;
    assign first_bin = (mode_type == TIMER) ? timer_min :
                       (mode_type == STOPWATCH) ? stopwatch_sec : watch_min;
    assign second_bin = (mode_type == TIMER) ? timer_sec :
                       (mode_type == STOPWATCH) ? stopwatch_csec : watch_sec;                
                       
    bin_to_dec btd_sec(.bin(second_bin), .bcd(second_bcd));
    bin_to_dec btd_min(.bin(first_bin), .bcd(first_bcd));
    
    

    //  display time(maintime or laptime)
    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value({first_bcd, second_bcd}), .seg(seg), .com(com));
    
    // send lap_time using UART
    wire [7:0] lap_2ndbin, lap_1stbin, lap_2ndbcd, lap_1stbcd;
    assign lap_1stbin = lap_time[15:8];
    assign lap_2ndbin = lap_time[7:0];
    bin_to_dec lap_2nd(.bin(lap_2ndbin), .bcd(lap_2ndbcd));
    bin_to_dec lap_1st(.bin(lap_1stbin), .bcd(lap_1stbcd));
    
    uart uart0(.clk(clk), .reset_p(reset_p), .rx_laptime({lap_1stbcd, lap_2ndbcd}), .tx_lap(stopwatch_btn[1]), .tx_msg(tx_msg));

    assign led[0] = alarm;
    assign buzzer = alarm;
    assign led[1] = lap;
    assign {led[15],led[14], led[13]} = mode_type;

endmodule

module uart_top(
    input clk, reset_p,
    input [3:0] button,
    output tx_msg);
    
    wire btn_pedge, btn_nedge;
    button_ctr btn_ctr1(.clk(clk), .reset_p(reset_p), .btn(button[2]), .btn_pedge(btn_pedge), .btn_nedge(btn_nedge));
    uart uart0(.clk(clk), .reset_p(reset_p), .tx_lap(btn_pedge), .tx_msg(tx_msg));

endmodule


module play_buzz_top(
    input clk, reset_p,
    input carol_en,
    input [1:0] button,
    output note_pwm, led_r, led_g, led_b,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led);
    
    
    wire [1:0] btn_pedge, btn_nedge;
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
    button_ctr btnctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));

//    freq_generator #(.FREQ(800))fg(.clk(clk), .reset_p(reset_p), .trans_cp(trans_cp));
    wire note;
    wire [9:0] duty;
    wire [23:0] led_color;
    silent_night player(.clk(clk), .reset_p(reset_p), .carol_en(carol_en), .chmod(btn_nedge[0]), .note(note), .duty(duty), .led_color(led_color), .led(led));

    wire pwm;
    pwm_Nfreq_Nstep volume(.clk(clk), .reset_p(reset_p), .duty(duty), .pwm(pwm));
    assign note_pwm = note & pwm;
    
    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000), .DUTY_STEP(256))red_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[23:16]), .pwm(led_r));
    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000), .DUTY_STEP(256))green_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[15:8]), .pwm(led_g));
    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000), .DUTY_STEP(256))blue_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[7:0]), .pwm(led_b));

    wire [15:0] bcd_duty;
    bin_to_dec lap_1st(.bin(duty), .bcd(bcd_duty));
    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value(bcd_duty), .seg(seg), .com(com));

endmodule

//module play_buzz_top(
//    input clk, reset_p,
//    input carol_en,
//    input [1:0] button,
//    output buzzer, 
////    output reg led_r, led_g, led_b,
//    output [7:0] seg,
//    output [3:0] com,
//    output [7:0] led);
    
    
//    wire [1:0] btn_pedge, btn_nedge;
//    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
//    button_ctr btnctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));

//    freq_generator #(.FREQ(800))fg(.clk(clk), .reset_p(reset_p), .trans_cp(trans_cp));
//    wire note;
//    wire [9:0] duty;
//    wire [23:0] led_color;
//    wire [7:0] silent_led;
//    silent_night player(.clk(clk), .reset_p(reset_p), .carol_en(carol_en), .chmod(btn_nedge[0]), .note(note), .duty(duty), .led_color(led_color), .wreath_led(led));

//    wire pwm;
//    pwm_Nfreq_Nstep volume(.clk(clk), .reset_p(reset_p), .duty(duty), .pwm(pwm));
//    assign buzzer = note & pwm;
    
////    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000))red_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[23:16]), .pwm(led_r));
////    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000))green_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[15:8]), .pwm(led_g));
////    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000))blue_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[7:0]), .pwm(led_b));

//    wire [15:0] bcd_duty;
//    bin_to_dec lap_1st(.bin(duty), .bcd(bcd_duty));
//    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value(bcd_duty), .seg(seg), .com(com));

//endmodule

module led_pwm_top(
    input clk, reset_p,
    output led_r, led_g, led_b,
    output [15:0] led,
    output [7:0] seg,
    output [3:0] com);
    
    // cnt : led 밝기 조절용
    integer cnt;
    always @(posedge clk) cnt = cnt + 1;
    
    // cnt_200 : duty_step 200
    // flag : duty step shift period 조절(cnt[25] check)
    reg [7:0] cnt_200;
    reg flag, up_dn;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_200 = 255;
            flag = 0;
            up_dn = 0;
        end
        else if(cnt[19] && (flag == 0))begin
            flag = 1;
            if((cnt_200 == 255) && up_dn)begin
                up_dn = 0;
            end
//            else if(up_dn)cnt_200 = cnt_200 + 1;
            else if(!up_dn && cnt_200 > 0) cnt_200 = cnt_200 - 1;
            else if(cnt_200 == 0 && !up_dn)begin
                up_dn = 1;
                cnt_200 = 255;
            end
        end
        else if(cnt[19] == 0) flag = 0;
    end
    
    // cnt[27:20] 하위비트 변화는 너무 빠르므로 상위비트 변화로 duty 조절
    pwm_Nfreq_Nstep red_pwm(.clk(clk), .reset_p(reset_p), .duty(cnt[27:20]), .pwm(led_r));
    pwm_Nfreq_Nstep green_pwm(.clk(clk), .reset_p(reset_p), .duty(cnt[28:21]), .pwm(led_g));
    pwm_Nfreq_Nstep blue_pwm(.clk(clk), .reset_p(reset_p), .duty(cnt[29:22]), .pwm(led_b));
    
    pwm_Nfreq_Nstep led_pwm(.clk(clk), .reset_p(reset_p), .duty(cnt_200), .pwm(led[0]));

    // duty step display on FND
    wire [15:0] bcd_duty;
    bin_to_dec lap_1st(.bin(cnt_200), .bcd(bcd_duty));
    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value(bcd_duty), .seg(seg), .com(com));



endmodule

module sg_90_top(
    input clk, reset_p,
    input [3:0] button,
    output sg90_pwm,
    output [7:0] seg,
    output [3:0] com);


    wire [3:0] btn_pedge, btn_nedge;
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
    button_ctr btn_ctr0(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));
    button_ctr btn_ctr1(.clk(clk), .reset_p(reset_p), .btn(button[2]), .btn_pedge(btn_pedge[2]), .btn_nedge(btn_nedge[2]));
    button_ctr btn_ctr2(.clk(clk), .reset_p(reset_p), .btn(button[3]), .btn_pedge(btn_pedge[3]), .btn_nedge(btn_nedge[3]));


    // servo motor spec in datasheet : possible duty rate(5% ~ 10%)
    reg [7:0] duty;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            duty = 12;  // duty = 12(step) : 0도 기준
        end
        else begin
            if(btn_pedge[1] && duty > 4) duty = duty - 1;   // duty = 3(step) : 약 -90도
            if(btn_pedge[2] && duty < 21) duty = duty + 1;  // duty = 21(step) : 약 +90도
        end
    end
    
    
    
    // pwm_freq : 50Hz(20ms)
    // duty_step : 180 (servo motor spec : -90 degree ~ +90 degree) -> 1도 단위 컨트롤 의도
    pwm_Nfreq_Nstep #(.PWM_FREQ(50), .DUTY_STEP(159))sg90_driver(.clk(clk), .reset_p(reset_p), .duty(duty), .pwm(sg90_pwm));
    
    // FND 4개중 양옆 두개는 0으로 채우고 가운데만 계산한 bcd 값 표시
    wire [15:0] bcd_duty;
    bin_to_dec lap_1st(.bin(duty-3), .bcd(bcd_duty));
    FND_cntr fnd0(.clk(clk), .reset_p(reset_p), .fnd_value({4'd0, bcd_duty[7:0], 4'd0}), .seg(seg), .com(com));


endmodule

module adc_ch6_top(
    input clk, reset_p,
    input vauxp6, vauxn6,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led);
    
    wire [4:0] channel_out;     // 선택한 채널 주소
    wire eoc_out;               // adc 변환 종료 flag
    wire [15:0] do_out;         // 12bit 분해능 ADC 만 reg 가 8bit 단위이므로 16bit 필요


    xadc_wiz_0 adc_ch6(
          .daddr_in({2'b00, channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
          );
    
    
    
    // eoc_out이 1이 될 때, do_out을 읽는다 -> edge detector 사용
    wire eoc_out_pedge;
    edge_detector_n ed(.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge));

    reg [11:0] adc_value;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            adc_value = 0;
        end
        else if(eoc_out_pedge)begin
            adc_value = do_out[15:4];   // do_out이 상위비트 정렬이어서 MSB 부터 읽는다.
        end
    end

    wire [15:0] bcd_adc_value;
    bin_to_dec adc_bcd(.bin(adc_value), .bcd(bcd_adc_value));
    FND_cntr adc_fnd(.clk(clk), .reset_p(reset_p), .fnd_value(bcd_adc_value), .seg(seg), .com(com));
    
    // led 변화를 관찰하기 위해 값 변화 폭이 충분한 adc_value 상위 4비트 사용
    assign led[0] = adc_value[11:8] > 4'b0001;
    assign led[1] = adc_value[11:8] > 4'b0010;
    assign led[2] = adc_value[11:8] > 4'b0011;
    assign led[3] = adc_value[11:8] > 4'b0100;
    assign led[4] = adc_value[11:8] > 4'b0101;
    assign led[5] = adc_value[11:8] > 4'b0110;
    assign led[6] = adc_value[11:8] > 4'b0111;
    assign led[7] = adc_value[11:8] > 4'b1000;
    assign led[8] = adc_value[11:8] > 4'b1001;
    assign led[9] = adc_value[11:8] > 4'b1010;
    assign led[10] = adc_value[11:8] > 4'b1011;
    assign led[11] = adc_value[11:8] > 4'b1100;
    assign led[12] = adc_value[11:8] > 4'b1101;
    assign led[13] = adc_value[11:8] > 4'b1110;
    assign led[14] = adc_value[11:8] > 4'b1111;


endmodule


module adc_sequence_top(
    input clk, reset_p,
    input vauxp6, vauxn6, vauxp15, vauxn15,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led);

    wire [4:0] channel_out;
    wire eoc_out;
    wire [15:0] do_out;
    
    adc_2ch joystick
          (
          .daddr_in({2'b00, channel_out}),            // Address bus for the dynamic reconfiguration port
          .dclk_in(clk),             // Clock input for the dynamic reconfiguration port
          .den_in(eoc_out),              // Enable Signal for the dynamic reconfiguration port
          .reset_in(reset_p),            // Reset signal for the System Monitor control logic
          .vauxp6(vauxp6),              // Auxiliary channel 6
          .vauxn6(vauxn6),
          .vauxp15(vauxp15),             // Auxiliary channel 15
          .vauxn15(vauxn15),
          .channel_out(channel_out),         // Channel Selection Outputs
          .do_out(do_out),              // Output data bus for dynamic reconfiguration port
          .eoc_out(eoc_out)             // End of Conversion Signal
            );
            
    reg [11:0] adc_value_x, adc_value_y;
    wire eoc_out_pedge;
    edge_detector_n ed(.clk(clk), .reset_p(reset_p), .cp(eoc_out), .p_edge(eoc_out_pedge));
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            adc_value_x = 0;
            adc_value_y = 0;
        end
        else if(eoc_out_pedge)begin
            case(channel_out[3:0])  // [3:0] bit : channel addr inforamtion
                6: adc_value_x = do_out[15:4];
                15: adc_value_y = do_out[15:4];
            endcase
        end
    end     
    
    // fnd 자리수 제한으로 x, y를 동시에 표현하기 위해 6bit만 사용 -> analog value range를 두 자리 수로 제한해서 fnd에 출력        
    wire [7:0] x_bcd, y_bcd;
    bin_to_dec adc_x_bcd(.bin(adc_value_x[11:6]), .bcd(x_bcd));
    bin_to_dec adc_y_bcd(.bin(adc_value_y[11:6]), .bcd(y_bcd));

    FND_cntr adc_fnd(.clk(clk), .reset_p(reset_p), .fnd_value({x_bcd, y_bcd}), .seg(seg), .com(com));
    
    assign led[0] = adc_value_x[11:9] >= 8;
    assign led[1] = adc_value_x[11:9] >= 7;
    assign led[2] = adc_value_x[11:9] >= 6;
    assign led[3] = adc_value_x[11:9] >= 5;
    assign led[4] = adc_value_x[11:9] >= 4;
    assign led[5] = adc_value_x[11:9] >= 3;
    assign led[6] = adc_value_x[11:9] >= 2;
    assign led[7] = adc_value_x[11:9] >= 1;
    assign led[8] = adc_value_y[11:9] >= 1;
    assign led[9] = adc_value_y[11:9] >= 2;
    assign led[10] = adc_value_y[11:9] >= 3;
    assign led[11] = adc_value_y[11:9] >= 4;
    assign led[12] = adc_value_y[11:9] >= 5;
    assign led[13] = adc_value_y[11:9] >= 6;
    assign led[14] = adc_value_y[11:9] >= 7;
    assign led[15] = adc_value_y[11:9] >= 8;


endmodule


module ultra_sonic_top(
    input clk, reset_p,
    input echo,
    output trig,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led);
    
//    wire new_freq;
//    freq_generator #(.FREQ(50_000_000))freq_dn(.clk(clk), .reset_p(reset_p), .trans_cp(new_freq));
    
    wire [8:0] distance_cm;
    hc_sr04 ultra(.clk(clk), .reset_p(reset_p), .echo(echo), .trig(trig), .distance_cm(distance_cm));
    
    wire [8:0] distance_cm_bcd;
    bin_to_dec adc_x_bcd(.bin(distance_cm), .bcd(distance_cm_bcd));
    FND_cntr adc_fnd(.clk(clk), .reset_p(reset_p), .fnd_value(distance_cm_bcd), .seg(seg), .com(com));


endmodule

module dht11_top(
    input clk, reset_p,
    inout dht11_data,
    output [7:0] seg,
    output [3:0] com,
    output [15:0] led);

    wire [7:0] humidity, temperature;
    dht11_cntr dht(.clk(clk), .reset_p(reset_p), .dht11_data(dht11_data), .humidity(humidity), .temperature(temperature), .led(led));

    wire [7:0] humi_bcd, temp_bcd;
    bin_to_dec humi(.bin(humidity), .bcd(humi_bcd));
    bin_to_dec temp(.bin(temperature), .bcd(temp_bcd));
    FND_cntr adc_fnd(.clk(clk), .reset_p(reset_p), .fnd_value({humi_bcd, temp_bcd}), .seg(seg), .com(com));

endmodule

module i2c_master_top(
    input clk, reset_p,    
    input slide,      
    input comm_start,
    output SCL, SDA,   
    output [15:0] led);    

    localparam light_on = 8'b0000_1000;
    localparam light_off = 8'b0000_0000;

    wire [7:0] data;
    wire busy;
    assign data = slide ? light_on : light_off;
    I2C_master i2c_mas(clk, reset_p, 7'h27, data, 1'b0, comm_start, SCL, SDA, busy, led);

endmodule

module i2c_txtlcd_top(
    input clk, reset_p,
    input [3:0] button,
    output SCL, SDA,
    output [15:0] led);
    
    wire [3:0] btn_pedge;
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]));
    button_ctr btnctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]));
    button_ctr btnctr2(.clk(clk), .reset_p(reset_p), .btn(button[2]), .btn_pedge(btn_pedge[2]));
    button_ctr btnctr3(.clk(clk), .reset_p(reset_p), .btn(button[3]), .btn_pedge(btn_pedge[3]));

    integer cnt_sysclk;
    reg cnt_clk_en;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk = 0;
        end
        else if(cnt_clk_en)begin
            cnt_sysclk = cnt_sysclk + 1;
        end
        else cnt_sysclk = 0;
    end
    
    reg [7:0] send_buffer;
    reg send, rs;
    wire busy;
    i2c_lcd_send_byte send_byte(clk, reset_p, 7'h27, send_buffer, send, rs, SCL, SDA, busy, led);
    
    localparam IDLE                 = 5'b0_0001;
    localparam INIT                 = 5'b0_0010;
    localparam SEND_CHARACTER       = 5'b0_0100;
    localparam SHIFT_RIGHT_DISPLAY  = 5'b0_1000;
    localparam SHIFT_LEFT_DISPLAY   = 5'b1_0000;

    reg [4:0] state, next_state;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            state = IDLE;
        end
        else    state = next_state;
    end
    
    reg init_flag;
    reg [10:0] cnt_data;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = IDLE;
            init_flag = 0;
            cnt_data = 0;
            cnt_clk_en = 0;
            send = 0;
            send_buffer = 0;
            rs = 0;
        end
        else begin
            case(state)
                IDLE:begin
                    if(init_flag)begin
                        if(btn_pedge[0]) next_state = SEND_CHARACTER;
                        if(btn_pedge[1]) next_state = SHIFT_LEFT_DISPLAY;
                        if(btn_pedge[2]) next_state = SHIFT_RIGHT_DISPLAY;
                    end
                    else begin
                        if(cnt_sysclk <= 8_000_000)begin
                            cnt_clk_en = 1;
                        end
                        else begin
                            cnt_clk_en = 0;
                            next_state = INIT;
                        end
                    end
                end                
                INIT:begin
                    if(busy)begin
                        send = 0;
                        if(cnt_data >= 6)begin
                            cnt_data = 0;
                            next_state = IDLE;
                            init_flag = 1;
                        end
                    end
                    else if(!send)begin
                        case(cnt_data)
                            0: send_buffer = 8'h33;
                            1: send_buffer = 8'h32;
                            2: send_buffer = 8'h28;
                            3: send_buffer = 8'h0f;
                            4: send_buffer = 8'h01;
                            5: send_buffer = 8'h06;
                        endcase
                        send = 1;
                        cnt_data = cnt_data + 1;
                    end
                end                
                SEND_CHARACTER:begin
                    if(busy)begin
                        if(cnt_data > 9) cnt_data = 0;
                        send = 0;
                        next_state = IDLE;
                    end
                    else if(!send)begin
                        rs = 1;
                        send_buffer = "0" + cnt_data;
                        send = 1;
                        cnt_data = cnt_data + 1;
                    end       
                end      
                SHIFT_RIGHT_DISPLAY:begin
                    if(busy)begin
                        send = 0;
                        next_state = IDLE;
                    end
                    else if(!send)begin
                        rs = 0;
                        send_buffer = 8'h1c;
                        send = 1;
                    end
                end 
                SHIFT_LEFT_DISPLAY:begin
                    if(busy)begin
                        send = 0;
                        next_state = IDLE;
                    end
                    else if(!send)begin
                        rs = 0;
                        send_buffer = 8'h18;
                        send = 1;
                    end
                end
            endcase  
        end
    end

endmodule

module i2c_txtlcd_top_test(
    input clk, reset_p,
    input [7:0] send_buffer,
    input send, rs,
    output busy,
    output SCL, SDA,
    output [15:0] led);

    wire send_pedge;
    edge_detector_p send_edge(.clk(clk), .reset_p(reset_p), .cp(send), .p_edge(send_pedge));

    integer cnt_sysclk;
    reg cnt_clk_en;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk = 0;
        end
        else if(cnt_clk_en)begin
            cnt_sysclk = cnt_sysclk + 1;
        end
        else cnt_sysclk = 0;
    end
    
    reg [7:0] send_buffer_byte;
    reg send_byte, rs_byte;
    i2c_lcd_send_byte send_byte_inst(clk, reset_p, 7'h27, send_buffer_byte, send_byte, rs_byte, SCL, SDA, busy, led);
    
    localparam IDLE                 = 5'b0_0001;
    localparam INIT                 = 5'b0_0010;
    localparam SEND_CHARACTER       = 5'b0_0100;

    reg [4:0] state, next_state;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            state = IDLE;
        end
        else    state = next_state;
    end
    
    reg init_flag;
    reg [10:0] cnt_data;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = IDLE;
            init_flag = 0;
            cnt_data = 0;
            cnt_clk_en = 0;
            send_byte = 0;
            send_buffer_byte = 0;
            rs_byte= 0;
        end
        else begin
            case(state)
                IDLE:begin
                    if(init_flag)begin
                        if(send_pedge) next_state = SEND_CHARACTER;
                    end
                    else begin
                        if(cnt_sysclk <= 8_000_000)begin
                            cnt_clk_en = 1;
                        end
                        else begin
                            cnt_clk_en = 0;
                            next_state = INIT;
                        end
                    end
                end                
                INIT:begin
                    if(busy)begin
                        send_byte = 0;
                        if(cnt_data >= 6)begin
                            cnt_data = 0;
                            next_state = IDLE;
                            init_flag = 1;
                        end
                    end
                    else if(!send_byte)begin
                        case(cnt_data)
                            0: send_buffer_byte = 8'h33;
                            1: send_buffer_byte = 8'h32;
                            2: send_buffer_byte = 8'h28;
                            3: send_buffer_byte = 8'h0f;
                            4: send_buffer_byte = 8'h01;
                            5: send_buffer_byte = 8'h06;
                        endcase
                        send_byte = 1;
                        cnt_data = cnt_data + 1;
                    end
                end                
                SEND_CHARACTER:begin
                    if(busy)begin
                        send_byte = 0;
                        next_state = IDLE;
                    end
                    else if(!send_byte)begin
                        rs_byte = rs;
                        send_buffer_byte = send_buffer;
                        send_byte = 1;
                    end       
                end      
            endcase  
        end
    end

endmodule


module mommae_top(
    input clk,          // 100MHz
    input reset_p,      // Reset
    input slide,        // Play/Stop (1: 재생 및 리셋, 0: 정지)
    output buzzer,     // Speaker output
    output [7:0] led,    // LED Output (8개로 수정됨)
    output led_r, led_g, led_b
);

    // 내부 신호선
    wire [7:0] current_addr;
    wire [31:0] current_freq;
    wire [31:0] current_duration;

    // 1. 악보 (ROM) - 기존 코드 그대로 사용 (변경 없음)
    mommae_rom u_rom (
        .addr(current_addr),
        .freq_half_period(current_freq),
        .duration(current_duration)
    );

    // 2. 연주자 (Sound Driver - FSM 적용)
    sound_driver_articulated u_player (
        .clk(clk),
        .reset_p(reset_p),
        .play_en(slide),
        .freq_half_period(current_freq),
        .duration(current_duration),
        .addr(current_addr),
        .buzzer_out(buzzer)
    );

    // 3. 조명 (LED Controller - FSM 적용, 8비트)
    mommae_led_controller u_led (
        .clk(clk),
        .reset_p(reset_p),
        .play_stop(slide),
        .led_rhythm(led),
        .r(led_r),
        .g(led_g),
        .b(led_b)
    );

endmodule

module mp3_top(
    input clk, reset_p,
    input [3:0] button,
    output speaker, led_r, led_g, led_b,
    output [7:0] seg,
    output [3:0] com,
    output [7:0] led);
    
    wire [1:0] btn_pedge, btn_nedge;
    button_ctr btnctr0(
        .clk(clk), 
        .reset_p(reset_p), 
        .btn(button[0]), 
        .btn_pedge(btn_pedge[0]), 
        .btn_nedge(btn_nedge[0]));
    button_ctr btnctr1(
        .clk(clk), 
        .reset_p(reset_p), 
        .btn(button[1]), 
        .btn_pedge(btn_pedge[1]), 
        .btn_nedge(btn_nedge[1]));

    wire speaker0, speaker1, speaker2;
    wire [7:0] led0, led1, led2;
    wire led_r0, led_r1, led_r2, led_g0, led_g1, led_g2, led_b0, led_b1, led_b2;
    reg [1:0] mp3_mode;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) mp3_mode = 0;
        else if(btn_nedge[1] && mp3_mode < 2) mp3_mode = mp3_mode + 1;
        else if(btn_nedge[1] && mp3_mode >= 2) mp3_mode = 0;
    end
    
    wire carol_en, trot_en, pop_en;
    assign carol_en     = (mp3_mode == 0);
    assign trot_en      = (mp3_mode == 1);
    assign pop_en       = (mp3_mode == 2);
        
    assign speaker = (mp3_mode == 2) ? speaker2 : (mp3_mode == 1) ? speaker1 : speaker0;
    assign led = (mp3_mode == 2) ? led2 : (mp3_mode == 1) ? led1 : led0;
    
    assign led_r = (mp3_mode == 2) ? led_r2 : (mp3_mode == 1) ? led_r1 : led_r0;
    assign led_g = (mp3_mode == 2) ? led_g2 : (mp3_mode == 1) ? led_g1 : led_g0;
    assign led_b = (mp3_mode == 2) ? led_b2 : (mp3_mode == 1) ? led_b1 : led_b0;
    
    

    play_buzz_top carol_mode(.clk(clk), .reset_p(reset_p), .carol_en(carol_en), .button(button), .note_pwm(speaker0), .led_r(led_r0), .led_g(led_g0), .led_b(led_b0),
        .seg(seg), .com(com), .led(led0));
    mommae_top trot_mode(.clk(clk), .reset_p(reset_p), .slide(trot_en), .buzzer(speaker1), .led(led1), .led_r(led_r1), .led_g(led_g1), .led_b(led_b1));
    blue_valentine_top pop_mode(.clk(clk), .reset_p(reset_p), .slide(pop_en), .buzzer(speaker2), .led(led2), .led_r(led_r2), .led_g(led_g2), .led_b(led_b2));    
        
    
endmodule

module blue_valentine_top(
    input clk,          // W5
    input reset_p,      // U18 (Reset)
    input slide,
    output buzzer,      // J1 (Pmod Header) - 형곤이가 정한 핀
    output [7:0] led,  // U16, E19... (LED 16개)
    output led_r, led_g, led_b      // RGB LED 핀 (XDC에서 연결 필요)
    );

    wire [7:0] current_note_idx; // 둘 사이를 이어주는 전선
    
    // 1. 음악 재생 모듈 (형곤 Ver.)
    music_player u_music (
        .clk(clk),
        .reset_p(reset_p),
        .nmixx(slide),
        .buzzer(buzzer),
        .note_idx_out(current_note_idx) // 인덱스를 밖으로 내보냄
    );

    // 2. 시각 효과 모듈
    led_pattern u_visual (
        .clk(clk),
        .reset_p(reset_p),
        .nmixx(slide),
        .note_idx(current_note_idx),    // 인덱스를 받아서 LED 제어
        .led(led),
        .r(led_r), .g(led_g), .b(led_b)
    );

endmodule