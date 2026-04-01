`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2025 03:32:11 PM
// Design Name: 
// Module Name: controller
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


module FND_cntr(
    input clk, reset_p,
    input [15:0] fnd_value,
    output [7:0] seg,
    output reg [3:0] com);
    
    reg [16:0] clk_div;
    always @(posedge clk) clk_div = clk_div + 1;
    
    wire clk_div_ed;
    edge_detector_n edn_com(.clk(clk), .reset_p(reset_p), .cp(clk_div[16]), .p_edge(clk_div_ed));
    
    always @(posedge clk or posedge reset_p)begin // or를 콤마(,)로 대체가능
        if(reset_p) com = 4'b1110;
        else if(clk_div_ed) begin
            if(com != 4'b1110 && com != 4'b1101 && com != 4'b1011 && com != 4'b0111) com = 4'b1110;    // default 설정
            else com = {com[2:0], com[3]};
        end
    end
    
    reg [3:0] digit_value;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) digit_value = 0;
        else begin
            case(com)
                4'b1110 : digit_value = fnd_value[3:0];
                4'b1101 : digit_value = fnd_value[7:4];
                4'b1011 : digit_value = fnd_value[11:8];
                4'b0111 : digit_value = fnd_value[15:12];
            endcase
        end
    end
    
    seg_decoder dec(.hex_value(digit_value), .seg(seg));

    
endmodule

module button_ctr(
    input clk, reset_p,
    input btn,
    output btn_pedge, btn_nedge);
    
    reg [31:0] cnt_sysclk;
    reg debounced_btn;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk = 0;
            debounced_btn = 0;
        end
        else begin
            if(cnt_sysclk[22])begin
                debounced_btn = btn;
                cnt_sysclk = 0;
            end
            else cnt_sysclk = cnt_sysclk + 1;
        end
    end

    edge_detector_n ed(.clk(clk), .reset_p(reset_p), .cp(debounced_btn), .p_edge(btn_pedge), .n_edge(btn_nedge));


endmodule


module freq_generator(
    input clk, reset_p,
    output reg trans_cp);

    parameter FREQ = 1_000_000;
    parameter SYS_FREQ = 100_000_000;
    parameter HALF_PERIOD = SYS_FREQ / FREQ / 2 - 1;

    // HALF_PERIOD 에서 trans_cp 토글 -> 목표 FREQ인 clk_pulse 생성
    integer cnt;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt = 0;
            trans_cp = 0;
        end
        else begin
            if(cnt >= HALF_PERIOD)begin
                cnt = 0;
                trans_cp = ~trans_cp;
            end
            else cnt = cnt + 1;
        end
    end
    

endmodule

module pwm_Nfreq_Nstep(
    input clk, reset_p,
    input [9:0] duty,
    output reg pwm);

    parameter SYS_CLK_FREQ = 100_000_000;
    parameter PWM_FREQ = 20_000;    // led용 10kHz, buzzer용 20kHz
    parameter DUTY_STEP = 500;      // 나눈값이 정수가 되도록 적절한 값으로 설정
    parameter TEMP = SYS_CLK_FREQ / PWM_FREQ / DUTY_STEP / 2 - 1;
    
    // sys_clk / pwm_freq / 2 - 1 : pwm_freq 신호가 토글하는 시점의 시스템 클락 카운트
    // sys_clk / pwm_freq / duty_step / 2 - 1 : 원하는 duty total step의 한 step에 필요한 시스템 클락 카운트
    // pwm_freqXstep : duty 한 step 마다 토글하는 신호
    integer cnt; 
    reg pwm_freqXstep;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt = 0;
            pwm_freqXstep = 0;
        end
        else begin
            if(cnt >= TEMP)begin
                cnt = 0;
                pwm_freqXstep = ~pwm_freqXstep;
            end
            else begin
                cnt = cnt + 1;
            end
        end
    end
    
    // edge detector : duty 한 step에 걸리는 카운트에 도달한 순간을 캐치하는 용도
    wire pwm_freqXstep_pedge;
    edge_detector_n ed(.clk(clk), .reset_p(reset_p), .cp(pwm_freqXstep), .p_edge(pwm_freqXstep_pedge));
    
    // 한 step 에 도달한 카운트에서만 duty_step 을 변경
    integer cnt_duty;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_duty = 0;
            pwm = 0;
        end
        else if(pwm_freqXstep_pedge)begin
            if(cnt_duty >= DUTY_STEP-1)begin  // last duty step에 도달하면 초기화
                cnt_duty = 0;
            end
            else begin
                cnt_duty = cnt_duty + 1;
            end
            if(cnt_duty < duty) pwm = 1;    // 목표 duty step 만큼만 high 설정 ex) 예시는 duty 10%(전체 200분의 20)
            else pwm = 0;   // 목표 duty step 이외는 low 설정
            
        end
    end

endmodule

module hc_sr04(
    input clk, reset_p,
    input echo,
    output reg trig,
    output reg [8:0] distance_cm);


    // us 단위 count 해서 echo propagation time 계산
    integer cnt_sysclk, cnt_sysclk0, cnt_us;
    reg cnt_us_en;
    always @(posedge clk) cnt_sysclk = cnt_sysclk + 1;
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_sysclk0 = 0;
            cnt_us = 0;
        end
        else if(cnt_us_en)begin
            if(cnt_sysclk0 >= 99)begin
                cnt_sysclk0 = 0;
                if(cnt_us >= 57)begin       // 1cm 당 58us 가 경과한다는 사실을 이용
                    cnt_us = 0;
                    distance_cm = distance_cm + 1;
                end
                cnt_us = cnt_us + 1;
            end
            else cnt_sysclk0 = cnt_sysclk0 + 1;
        end
        else begin
            cnt_sysclk0 = 0;
            cnt_us = 0;
        end
    end
    
    // bit 자리수가 증가할때마다 2배씩 주기가 늘어난다에 착안 -> 26번째 비트가 증가할때면 대략 1초가 지난 시간
    // cnt_sysclk[9] edge : trigger pulse 10us 유지시간
    // 각 edge가 발생할 때는 나머지 하위비트들은 전부 0인 것에 착안
    wire cnt26_pedge, cnt9_pedge;
    edge_detector_n cnt26_ed(.clk(clk), .reset_p(reset_p), .cp(cnt_sysclk[26]), .p_edge(cnt26_pedge));    
    edge_detector_n cnt9_ed(.clk(clk), .reset_p(reset_p), .cp(cnt_sysclk[9]), .p_edge(cnt9_pedge));    

    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            trig = 0;
        end
        else if(cnt26_pedge)begin    
            trig = 1;
        end
        else if(cnt9_pedge) trig = 0;
    end
    
    // echo pulse detect
    wire echo_pedge, echo_nedge;
    edge_detector_n echo_ed(.clk(clk), .reset_p(reset_p), .cp(echo), .p_edge(echo_pedge), .n_edge(echo_nedge));    

    // distance calculation
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_us_en = 0;
//            distance_cm = 0;
        end
        else if(echo_pedge)begin
            cnt_us_en = 1;
        end
        else if(echo_nedge)begin
//            distance_cm = cnt_us / 58;
            cnt_us_en = 0;
        end
    end
    
endmodule


module dht11_cntr(
    input clk, reset_p,
    inout dht11_data,       // 신호선 하나로 통신하기 때문에 inout 선언
    output reg [7:0] humidity, temperature,
    output [15:0] led);

    // 6 state 선언 후 순환하는 형태로 진행
    localparam S_IDLE           = 6'b00_0001;
    localparam S_LOW_18MS       = 6'b00_0010;
    localparam S_HIGH_20US      = 6'b00_0100;
    localparam S_LOW_80US       = 6'b00_1000;
    localparam S_HIGH_80US      = 6'b01_0000;
    localparam S_READ_DATA      = 6'b10_0000;
    
    // edge waiting state
    localparam S_WAIT_PEDGE = 2'b01;
    localparam S_WAIT_NEDGE = 2'b10;

    // clk_us negative edge detect
    wire clk_us_nedge;
    clock_us cnt_us_clk(.clk(clk), .reset_p(reset_p), .clk_us_nedge(clk_us_nedge));
    
    // cnt per us
    reg [21:0] cnt_us;
    reg cnt_us_en;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_us = 0;
        end
        else if(clk_us_nedge && cnt_us_en)begin
            cnt_us = cnt_us + 1;
        end
        else if(!cnt_us_en) cnt_us = 0;
    end

    // dht_response sense
    wire dht_nedge, dht_pedge;
    edge_detector_p cnt_dht11_data(.clk(clk), .reset_p(reset_p), .cp(dht11_data), .p_edge(dht_pedge), .n_edge(dht_nedge));
    
    // inout port setup
    reg dht11_data_buffer, dht11_data_out_en;
    assign dht11_data = dht11_data_out_en ? dht11_data_buffer : 'bz;
    
    // state machine that is often used in communication system
    // state change must be completed with nedge
    reg [5:0] state, next_state;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            state = S_IDLE;
        end
        else begin
            state = next_state;
        end
    end
    
    // next stage setup according to state(current)
    assign led[5:0] = state;
    reg [39:0] temp_data;
    reg [5:0] cnt_data;
    assign led[15:10] = cnt_data;
    reg [1:0] read_state;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = S_IDLE;
            temp_data = 0;
            cnt_data = 0;
            cnt_us_en = 0;
            dht11_data_out_en = 0;
            dht11_data_buffer = 0;
            read_state = S_WAIT_PEDGE;
        end
        else begin
            case(state)
                S_IDLE :begin
                    if(cnt_us < 22'd3_000_000)begin     // communication cycle : 3 sec
                        cnt_us_en = 1;
                        dht11_data_out_en = 0;
                    end
                    else begin
                        cnt_us_en = 0;
                        next_state = S_LOW_18MS;
                    end
                end           
                S_LOW_18MS :begin
                    if(cnt_us < 22'd20_000)begin    // MCT signal low for at least 18ms
                        cnt_us_en = 1;
                        dht11_data_out_en = 1;
                        dht11_data_buffer = 0;
                    end
                    else begin
                        cnt_us_en = 0;
                        dht11_data_out_en = 0;
                        next_state = S_HIGH_20US;
                    end
                end       
                S_HIGH_20US :begin  // MCT signal high for 20us ~ 40us(pull-up, waiting for DHT response)
                    if(dht_nedge)begin          // first DHT response wtih nedge
                        next_state = S_LOW_80US;
                    end
                end      
                S_LOW_80US :begin
                    if(dht_pedge)begin              // DHT low signal for 80us
                        next_state = S_HIGH_80US;
                    end
                end      
                S_HIGH_80US :begin                  // DHT high signal for 80us(pull-up)
                    if(dht_nedge)begin
                        next_state = S_READ_DATA;
                    end
                end      
                S_READ_DATA :begin                  // receive DHT data
                    if(cnt_data >= 40)begin         // return IDLE state when 40 data received
                        next_state = S_IDLE;
                        cnt_data = 0;
                        humidity = temp_data[39:32];
                        temperature = temp_data[23:16];
                    end
                    else begin
                        case(read_state)
                            S_WAIT_PEDGE:begin
                                if(dht_pedge) read_state = S_WAIT_NEDGE;    // DHT response low for 50us
                                cnt_us_en = 0;
                            end
                            S_WAIT_NEDGE:begin
                                cnt_us_en = 1;      // cnt_us start when dht_pedge
                                if(dht_nedge)begin
                                    if(cnt_us < 30) temp_data = {temp_data[38:0], 1'b0};    // if cnt_us is less than 50us, DHT data is 0
                                    else temp_data = {temp_data[38:0], 1'b1};               // if cnt_us is more than 50us, DHT data is 1
                                    cnt_data = cnt_data + 1;
                                    read_state = S_WAIT_PEDGE;
                                end
                            end
                            default: read_state = S_WAIT_PEDGE;
                        endcase
                    end
                end
                default: next_state = S_IDLE;      
            endcase
        end
    end

endmodule


module I2C_master(
    input clk, reset_p,
    input [6:0] addr,
    input [7:0] data,
    input rd_wr, comm_start,
    output reg SCL, SDA,
    output reg busy,
    output [15:0] led);

    localparam IDLE         = 7'b000_0001;
    localparam COMM_START   = 7'b000_0010;
    localparam SEND_ADDR    = 7'b000_0100;
    localparam RD_ACK       = 7'b000_1000;
    localparam SEND_DATA    = 7'b001_0000;
    localparam SCL_STOP     = 7'b010_0000;
    localparam COMM_STOP    = 7'b100_0000;

    wire clk_us_nedge;
    clock_us cnt_us_clk(.clk(clk), .reset_p(reset_p), .clk_us_nedge(clk_us_nedge));

    wire comm_start_pedge;
    edge_detector_p comm_start_edge(.clk(clk), .reset_p(reset_p), .cp(comm_start), .p_edge(comm_start_pedge));

    wire SCL_pedge, SCL_nedge;
    edge_detector_p SCL_edge(.clk(clk), .reset_p(reset_p), .cp(SCL), .p_edge(SCL_pedge), .n_edge(SCL_nedge));
    
    // SCL out only if it is enable
    reg [2:0] cnt_us5;
    reg SCL_en;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_us5 = 0;
            SCL = 1;
        end
        else if(SCL_en)begin
            if(clk_us_nedge)begin
                if(cnt_us5 >= 4)begin
                    SCL = ~SCL;
                end
                else cnt_us5 = cnt_us5 + 1;
            end
        end
        else if(!SCL_en)begin
            cnt_us5 = 0;
            SCL = 1;
        end
    end
    
    reg [6:0] state, next_state;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            state = IDLE;
        end
        else begin
            state = next_state;
        end
    end
    
    wire [7:0] addr_rw;
    assign addr_rw = {addr, rd_wr};
    reg [2:0] cnt_bit;
    reg stop_flag;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = IDLE;
            SCL_en = 0;
            SDA = 0;
            cnt_bit = 7;
            stop_flag = 0;
            busy = 0;
        end
        else begin
            case(state)
                IDLE:begin
                    busy = 0;
                    SCL_en = 0;
                    SDA = 1;
                    if(comm_start_pedge) next_state = COMM_START;
                end      
                COMM_START:begin
                    busy = 1;
                    SDA = 0;
                    next_state = SEND_ADDR;
                end
                SEND_ADDR:begin
                    SCL_en = 1;
                    if(SCL_nedge) SDA = addr_rw[cnt_bit];
                    if(SCL_pedge)begin
                        if(cnt_bit == 0)begin
                            cnt_bit = 7;
                            next_state = RD_ACK;
                        end
                        else cnt_bit = cnt_bit - 1;
                    end
                end 
                RD_ACK:begin
                    if(SCL_nedge) SDA = 'bz;
                    if(SCL_pedge)begin
                        if(stop_flag)begin
                            stop_flag = 0;
                            next_state = SCL_STOP;
                        end
                        else begin
                            stop_flag = 1;
                            next_state = SEND_DATA;
                        end
                    end
                end    
                SEND_DATA:begin
                    if(SCL_nedge) SDA = data[cnt_bit];
                    if(SCL_pedge)begin
                        if(cnt_bit == 0)begin
                            cnt_bit = 7;
                            next_state = RD_ACK;
                        end
                        else cnt_bit = cnt_bit - 1;
                    end
                end 
                SCL_STOP:begin
                    if(SCL_nedge) SDA = 0;
                    if(SCL_pedge) next_state = COMM_STOP;
                end  
                COMM_STOP:begin
                    if(cnt_us5 >= 3)begin
                        SCL_en = 0;
                        SDA = 1;
                        next_state = IDLE;
                    end
                end 
                default: next_state = IDLE;
            endcase
        end
    end

endmodule

module i2c_lcd_send_byte(
    input clk, reset_p,
    input [6:0] addr,
    input [7:0] send_buffer,
    input send, rs,
    output SCL, SDA,
    output reg busy,
    output [15:0] led);
    
    
    localparam IDLE                     = 6'b00_0001;
    localparam SEND_HIGH_NIBBLE_DISABLE = 6'b00_0010;   // NIBBLE : 4bit, BYTE : 8bit
    localparam SEND_HIGH_NIBBLE_ENABLE  = 6'b00_0100;
    localparam SEND_LOW_NIBBLE_DISABLE  = 6'b00_1000;
    localparam SEND_LOW_NIBBLE_ENABLE   = 6'b01_0000;
    localparam SEND_DISABLE             = 6'b10_0000;
    
    wire clk_us_nedge;
    clock_us cnt_us_clk(.clk(clk), .reset_p(reset_p), .clk_us_nedge(clk_us_nedge));

    wire send_pedge;
    edge_detector_p send_edge(.clk(clk), .reset_p(reset_p), .cp(send), .p_edge(send_pedge));
    
    reg [21:0] cnt_us;
    reg cnt_us_en;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_us = 0;
        end
        else if(clk_us_nedge && cnt_us_en)begin
            cnt_us = cnt_us + 1;
        end
        else if(!cnt_us_en) cnt_us = 0;
    end
    
    reg [7:0] data;
    reg comm_start;
    wire i2c_busy;
    I2C_master master(clk, reset_p, addr, data, 1'b0, comm_start, SCL, SDA, i2c_busy, led);
    
    reg [5:0] state, next_state;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            state = IDLE;
        end
        else begin
            state = next_state;
        end
    end
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = IDLE;
            comm_start = 0;
            cnt_us_en = 0;
            data = 0;
            busy = 0;
        end
        else begin
            case(state)                                                           
                IDLE:begin
                    busy = 0;
                    if(send_pedge)begin
                        busy = 1;
                        next_state = SEND_HIGH_NIBBLE_DISABLE;
                    end
                end                                                
                SEND_HIGH_NIBBLE_DISABLE:begin
                    if(cnt_us >= 22'd200)begin
                        comm_start = 0;
                        next_state = SEND_HIGH_NIBBLE_ENABLE;
                        cnt_us_en = 0;
                    end
                    else begin
                        // datasheet data sequence : d7, d6, d5, d4, BL, en, rw, rs
                        data = {send_buffer[7:4], 3'b100, rs};
                        comm_start = 1;
                        cnt_us_en = 1;
                    end
                end
                SEND_HIGH_NIBBLE_ENABLE:begin
                    if(cnt_us >= 22'd200)begin
                        comm_start = 0;
                        next_state = SEND_LOW_NIBBLE_DISABLE;
                        cnt_us_en = 0;
                    end
                    else begin
                        data = {send_buffer[7:4], 3'b110, rs};
                        comm_start = 1;
                        cnt_us_en = 1;
                    end
                end 
                SEND_LOW_NIBBLE_DISABLE:begin
                    if(cnt_us >= 22'd200)begin
                        comm_start = 0;
                        next_state = SEND_LOW_NIBBLE_ENABLE;
                        cnt_us_en = 0;
                    end
                    else begin
                        data = {send_buffer[3:0], 3'b100, rs};
                        comm_start = 1;
                        cnt_us_en = 1;
                    end
                end 
                SEND_LOW_NIBBLE_ENABLE:begin
                    if(cnt_us >= 22'd200)begin
                        comm_start = 0;
                        next_state = SEND_DISABLE;
                        cnt_us_en = 0;
                    end
                    else begin
                        data = {send_buffer[3:0], 3'b110, rs};
                        comm_start = 1;
                        cnt_us_en = 1;
                    end
                end  
                SEND_DISABLE:begin
                    if(cnt_us >= 22'd200)begin
                        comm_start = 0;
                        next_state = IDLE;
                        cnt_us_en = 0;
                    end
                    else begin
                        data = {send_buffer[3:0], 3'b100, rs};
                        comm_start = 1;
                        cnt_us_en = 1;
                    end
                end
                default: next_state = IDLE;
            endcase 
        end
    end
    
endmodule

module silent_night(
    input clk, reset_p,
    input chmod, carol_en,
    output reg note, 
    output reg [9:0] duty,
    output reg [23:0] led_color,
    output reg [7:0] led);
    
    localparam IDLE     = 2'b01;
    localparam READY     = 2'b10;
    localparam PLAY     = 2'b11;
    
    
    wire clk_ms, clk_ms_nedge, clk_ms_pedge;
    clock_ms ms(.clk(clk), .reset_p(reset_p), .clk_ms(clk_ms), .clk_ms_nedge(clk_ms_nedge), .clk_ms_pedge(clk_ms_pedge));
     
      
    reg play;
    reg [12:0] cnt_ms;
    wire cnt_ms_nedge0, cnt_ms_nedge1;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin 
            cnt_ms = 0;
        end
        else if(clk_ms_nedge)begin
            cnt_ms = cnt_ms + 1;
        end
        else if(!play)begin
            cnt_ms = 0;
        end
    end
    edge_detector_n setup_ed(.clk(clk), .reset_p(reset_p), .cp(cnt_ms[0]), .p_edge(cnt_ms_nedge0));  
    edge_detector_n play_ed(.clk(clk), .reset_p(reset_p), .cp(cnt_ms[1]), .p_edge(cnt_ms_nedge1));  

    reg [1:0] state, next_state;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)begin
            state = 0;
        end
        else if(!carol_en) state = IDLE;
        else begin
            state = next_state;
        end
    end
    
    
    reg [17:0] cnt_period, half_period;    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            cnt_period = 0;
            note = 0;
        end
        else if(play)begin
            if(cnt_period >= half_period)begin
                cnt_period = 0;
                note = ~note;
            end
            else cnt_period = cnt_period + 1;
        end
        else begin
            note = 0;
            cnt_period = 0;
        end
    end
    
    
    reg [2:0] mp3_list;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) mp3_list = 0;
        else if(chmod && mp3_list < 5) mp3_list = mp3_list + 1;
        else if(mp3_list >=5 || !carol_en) mp3_list = 0;
    end
    
    
    wire [53:0] data, data0, data1, data2, data3, data4;
    assign data = (mp3_list == 1) ? data1 : (mp3_list == 2) ? data2 : data0;
    reg [6:0] addr;
    wire [6:0] mem_size, mem_size0, mem_size1, mem_size2, mem_size3, mem_size4;
    assign mem_size = (mp3_list == 1) ? mem_size1 : (mp3_list == 2) ? mem_size2 : mem_size0;
    song_mem mp3(.clk(clk), .addr(addr), .mem_size(mem_size0), .data(data0));
    song_mem2 mp3_2(.clk(clk), .addr(addr), .mem_size(mem_size1), .data(data1));
    song_mem3 mp3_3(.clk(clk), .addr(addr), .mem_size(mem_size2), .data(data2));
 
    reg [12:0] note_length;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = IDLE;
        end
        else if(chmod) next_state = IDLE;
        else begin
            case(state)
                IDLE:begin
                    addr = 7'd0;
                    half_period = 18'd0;
                    note_length = 13'd0;
                    led_color = 24'd0;
                    play = 0;
                    duty = 10'd0;
                    next_state = READY;
                end
                READY:begin
                    half_period = data[30:13];
                    note_length = data[12:0];
                    led_color = data[53:31];
                    if(cnt_ms_nedge0 && duty < 920) duty = duty + 31;
                    else if(duty >= 920) next_state = PLAY;
                end
                PLAY:begin
                    play = 1;
                    if(cnt_ms >= note_length)begin
                        play = 0;
                        if(addr < mem_size)begin
                            addr = addr + 1;
                            next_state = READY;
                        end
                        else next_state = IDLE;
                    end
                    else if(cnt_ms_nedge1 && duty > 100) duty = duty-1;
                end
            endcase
        end
    end

    // =========================================================
    // 🎵 [NEW] 0.25초 타이머 동기화 & 커스텀 패턴 🎵
    // =========================================================

    // 1. 공통 타이머 (0.25초 박자)
    reg [26:0] ani_cnt; 

    // 2. 패턴 상태 변수들
    reg [2:0] step_snow;  // 1번 곡 (눈 쌓이기: 5단계)
    reg [1:0] step_mix;   // 2번 곡 (믹스 토글: 4단계)
    reg [2:0] step_ping;  // 3번 곡 (왕복 달리기: 6단계)

    // 상태 업데이트 로직
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            ani_cnt <= 0;
            step_snow <= 0;
            step_mix <= 0;
            step_ping <= 0;
        end
        else if(carol_en) begin
            ani_cnt <= ani_cnt + 1;

            // ★ 3곡 모두 25,000,000 (0.25초) 박자에 맞춰 움직임 ★
            if(ani_cnt >= 25_000_000) begin
                ani_cnt <= 0;

                // 1번 곡: 눈 쌓이기 (0->1->2->3->4->0)
                if(step_snow >= 4) step_snow <= 0;
                else step_snow <= step_snow + 1;

                // 2번 곡: 믹스 토글 (0:좌 -> 1:우 -> 2:홀 -> 3:짝)
                step_mix <= step_mix + 1;

                // 3번 곡: 왕복 달리기 (0->1->2->3->4->5->0)
                if(step_ping >= 5) step_ping <= 0;
                else step_ping <= step_ping + 1;
            end
        end
        else begin
            // 노래 안 나오면 초기화
            ani_cnt <= 0;
            step_snow <= 0;
            step_mix <= 0;
            step_ping <= 0;
        end
    end

    // 패턴 출력 로직
    always @(*) begin
        if(!carol_en) led = 0;
        else begin
            case(mp3_list)
                // 🎵 1번 곡 (Song 0): 고요한 밤 -> [눈 쌓이기] (0.25초)
                3'd0: begin
                    case(step_snow)
                        3'd0: led = (1<<7) | (1<<0); // 1층
                        3'd1: led = (1<<7) | (1<<0) | (1<<6) | (1<<1); // 2층
                        3'd2: led = 8'b1110_0111; // 3층
                        3'd3: led = 8'b1111_1111; // 4층 (Full)
                        default: led = 0;        // 꺼짐 (Blink)
                    endcase
                end

                // 🎵 2번 곡 (Song 1): 울면 안 돼 -> [좌우 + 홀짝 믹스] (0.25초)
                // 순서: 왼쪽 -> 오른쪽 -> 홀수 -> 짝수 (반복)
                3'd1: begin
                    case(step_mix)
                        2'd0: led = 8'b1111_0000; // 왼쪽 (4567)
                        2'd1: led = 8'b0000_1111; // 오른쪽 (3210)
                        2'd2: led = 8'b1010_1010; // 홀수 (줄무늬 A)
                        2'd3: led = 8'b0101_0101; // 짝수 (줄무늬 B)
                    endcase
                end

                // 🎵 3번 곡 (Song 2): 루돌프 -> [위아래 왕복 달리기] (0.25초)
                // 순서: 바닥 -> 중간 -> 위 -> 꼭대기 -> 위 -> 중간 -> (바닥)
                3'd2: begin
                    case(step_ping)
                        3'd0: led = (1<<7) | (1<<0); // 바닥 (Start)
                        3'd1: led = (1<<6) | (1<<1); // ↑
                        3'd2: led = (1<<5) | (1<<2); // ↑
                        3'd3: led = (1<<4) | (1<<3); // 꼭대기 (Top)
                        3'd4: led = (1<<5) | (1<<2); // ↓
                        3'd5: led = (1<<6) | (1<<1); // ↓
                        default: led = (1<<7) | (1<<0);
                    endcase
                end

                default: led = 8'b1111_1111;
            endcase
        end
    end

endmodule

module sound_driver_articulated(
    input clk,                  // 100MHz System Clock
    input reset_p,
    input play_en,              // 재생 활성화
    input [31:0] freq_half_period, 
    input [31:0] duration,      
    output reg [7:0] addr,      // ROM 주소
    output reg buzzer_out       // 피에조 출력
);

    reg [31:0] clk_cnt_freq;    
    reg [31:0] clk_cnt_duration;

    // FSM 상태 정의
    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter PLAY  = 2'b10;
    reg [1:0] state, next_state;

    parameter NOTE_GAP = 32'd2_000_000; 

    // Articulation 로직
    wire [31:0] final_half_period;
    wire is_tail_end;
    assign is_tail_end = (duration > NOTE_GAP) && (clk_cnt_duration >= (duration - NOTE_GAP));
    assign final_half_period = (freq_half_period == 0 || is_tail_end) ? 32'd0 : freq_half_period;

    // 1. 상태 전이
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) state <= IDLE;
        else        state <= next_state;
    end

    // 2. 다음 상태 결정
    always @(*) begin
        case(state)
            IDLE:  next_state = (play_en) ? START : IDLE;
            START: next_state = PLAY;
            PLAY:  next_state = (play_en) ? PLAY : IDLE;
            default: next_state = IDLE;
        endcase
    end

    // 3. 출력 및 동작 로직
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            addr <= 0;
            clk_cnt_freq <= 0;
            clk_cnt_duration <= 0;
            buzzer_out <= 0;
        end
        else begin
            case(state)
                IDLE: begin
                    buzzer_out <= 0;
                end
                START: begin
                    // 시작 시 주소 및 카운터 초기화 (재생 처음부터)
                    addr <= 0;
                    clk_cnt_freq <= 0;
                    clk_cnt_duration <= 0;
                    buzzer_out <= 0;
                end
                PLAY: begin
                    // 주파수 생성
                    if(final_half_period == 0) begin
                        buzzer_out <= 0;
                        clk_cnt_freq <= 0;
                    end 
                    else begin
                        if(clk_cnt_freq >= final_half_period) begin
                            clk_cnt_freq <= 0;
                            buzzer_out <= ~buzzer_out;
                        end
                        else begin
                            clk_cnt_freq <= clk_cnt_freq + 1;
                        end
                    end

                    // 박자 및 주소 이동
                    if(clk_cnt_duration >= duration) begin
                        clk_cnt_duration <= 0;
                        if(addr >= 103) addr <= 0;
                        else addr <= addr + 1;
                    end
                    else begin
                        clk_cnt_duration <= clk_cnt_duration + 1;
                    end
                end
            endcase
        end
    end
endmodule

module mommae_led_controller(
    input clk,          // 100MHz
    input reset_p,
    input play_stop,    // 연주 상태
    output reg [7:0] led_rhythm, // 8비트 LED 출력
    output reg r, g, b
);

    reg [31:0] cnt;
    reg [2:0] step;

    // FSM 상태 정의
    parameter IDLE  = 2'b00;
    parameter START = 2'b01;
    parameter PLAY  = 2'b10;
    reg [1:0] state, next_state;

    // 박자 상수
    parameter T_KUNG1 = 32'd50_000_000; 
    parameter T_JJA   = 32'd25_000_000; 
    parameter T_JAK   = 32'd25_000_000; 
    parameter T_KUNG2 = 32'd50_000_000; 
    parameter T_JJAK  = 32'd50_000_000; 
    
    // [NEW] 광란의 효과를 위한 '초고속' 카운터 (Strobe Counter)
    // 2배 더 빠르게 만들기 위해 비트 위치를 낮춤
    reg [24:0] strobe_cnt;
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) strobe_cnt <= 0;
        else strobe_cnt <= strobe_cnt + 1;
    end
    
    // 1. 상태 전이
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) state <= IDLE;
        else        state <= next_state;
    end

    // 2. 다음 상태 결정
    always @(*) begin
        case(state)
            IDLE:  next_state = (play_stop) ? START : IDLE;
            START: next_state = PLAY;
            PLAY:  next_state = (play_stop) ? PLAY : IDLE;
            default: next_state = IDLE;
        endcase
    end

    // 3. 출력 및 동작 로직
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            cnt <= 0;
            step <= 0;
            led_rhythm <= 0;
            {r, g, b} <= 3'b000; // 리셋 시 RGB 끔
        end else begin
            case(state)
                IDLE: begin
                    cnt <= 0;
                    step <= 0;
                    led_rhythm <= 0;
                    {r, g, b} <= 3'b000; // 리셋 시 RGB 끔
                end
                START: begin
                    // 시작 시 리듬 초기화
                    cnt <= 0;
                    step <= 0;
                    led_rhythm <= 0;
                    {r, g, b} <= 3'b000; // 리셋 시 RGB 끔
                end
                PLAY: begin
                    if(cnt >= get_target(step)) begin
                        cnt <= 0;
                        if(step >= 4) step <= 0;
                        else step <= step + 1;
                    end else begin
                        cnt <= cnt + 1;
                    end

                    // 8비트 LED 패턴 (역동적)
                    case(step)
                        3'd0: led_rhythm <= (cnt < 15_000_000) ? 8'hF0 : 8'h00; // 쿵
                        3'd1: led_rhythm <= (cnt < 10_000_000) ? 8'h0C : 8'h00; // 짜
                        3'd2: led_rhythm <= (cnt < 10_000_000) ? 8'h03 : 8'h00; // 작
                        3'd3: led_rhythm <= (cnt < 15_000_000) ? 8'hC3 : 8'h00; // 쿵 (양끝)
                        3'd4: led_rhythm <= (cnt < 15_000_000) ? 8'h3C : 8'h00; // 짝 (가운데)
                        default: led_rhythm <= 8'h00;
                    endcase
                    // --- [C] RGB "광란의 불빛" (High Speed Strobe) ---
                    // strobe_cnt[21]은 약 0.02초 간격으로 바뀜 (엄청 빠름)
                    case(step)
                        // 쿵 (강한 박자): Red ↔ Blue 초고속 교차 (사이키델릭 보라)
                        3'd0, 3'd3: begin
                            r <= strobe_cnt[23];      // 1일 때 켜짐
                            g <= 0;
                            b <= ~strobe_cnt[23];     // 0일 때 켜짐 (Red와 반대 타이밍)
                        end
                        
                        // 짜/작 (약한 박자): Blue가 다다다닥 떨림
                        3'd1, 3'd2: begin
                            r <= 0;
                            g <= ~strobe_cnt[23];
                            // 살짝 느린 떨림 (비트 22 사용) + 밝기 조절 효과
                            b <= strobe_cnt[23]; 
                        end

                        // 짝 (마무리): Red ↔ Green 경고등처럼 교차
                        3'd4: begin
                            r <= ~strobe_cnt[23];
                            g <= strobe_cnt[23];
                            b <= 0;
                        end

                        default: {r, g, b} <= 0;
                    endcase
                end
            endcase
        end
    end

    function [31:0] get_target(input [2:0] s);
        case(s)
            3'd0: get_target = T_KUNG1;
            3'd1: get_target = T_JJA;
            3'd2: get_target = T_JAK;
            3'd3: get_target = T_KUNG2;
            3'd4: get_target = T_JJAK;
            default: get_target = T_KUNG1;
        endcase
    endfunction
endmodule

module led_pattern(
    input clk, reset_p,        // 시스템 클럭, 리셋
    input nmixx,               // 엔믹스 재생 신호 (1: 켜짐, 0: 꺼짐)
    input [7:0] note_idx,      // music_player에서 받아온 현재 음의 인덱스
    output reg [7:0] del,      // 일반 LED 8개 (비트가 1이면 켜짐)
    output reg r, g, b         // RGB LED 출력
);

    // =============================================================
    // 1. 타이머 및 밝기 제어 (Breathing Light 효과)
    // =============================================================
    
    // [1-1] PWM 카운터: LED 밝기를 조절하기 위한 고속 카운터
    reg [7:0] pwm_cnt;
    always @(posedge clk) pwm_cnt <= pwm_cnt + 1;
    
    // [1-2] 페이드 카운터: 천천히 증가하며 숨쉬는 주기(속도) 결정
    reg [27:0] fade_cnt; 
    always @(posedge clk or posedge reset_p) begin
        if (reset_p) fade_cnt <= 0;
        else fade_cnt <= fade_cnt + 1;
    end

    // [1-3] 밝기 값 계산 (삼각파 형태)
    // fade_cnt가 커졌다 작아졌다 하는 효과를 만들어냄 (숨쉬는 듯한 연출)
    wire [7:0] brightness;
    assign brightness = (fade_cnt[27]) ? fade_cnt[27:19] : ~fade_cnt[27:19];

    // =============================================================
    // 2. RGB LED 제어 (테마: Blue Valentine)
    // =============================================================
    
    // 이퀄라이저 너비 계산: 음악의 진행(note_idx)에 따라 변화
    wire [2:0] eq_width;
    assign eq_width = (note_idx == 87) ? 0 : (note_idx % 8);
    
    always @(posedge clk) begin
        // 리셋이거나 엔믹스(nmixx) 신호가 없으면 LED 끔
        if (reset_p || !nmixx) begin
            {r, g, b} <= 3'b000;
        end 
        else begin
            // [색상 조합 로직]
            // Blue: 항상 켜둠 (Blue Valentine 베이스)
            b <= 1; 
            
            // Green: 밝기 값에 따라 PWM 제어 (Cyan 느낌을 섞음)
            g <= (pwm_cnt < brightness) ? 1 : 0; 
            
            // Red: 밝기의 절반만큼만 섞어서 은은한 보라빛(Violet) 연출
            r <= (pwm_cnt < (brightness >> 1)) ? 1 : 0; 
        end
    end

    // =============================================================
    // 3. 일반 LED (DEL) 패턴 제어 (음악 흐름에 따른 연출)
    // =============================================================
    always @(posedge clk or posedge reset_p) begin
        // 리셋이거나 엔믹스 신호가 없으면 LED 초기화
        if (reset_p || !nmixx) begin
            del <= 0;
        end 
        else begin
            // [Phase 1: Intro 및 빌드업] 노트 인덱스 0~58
            if(note_idx <= 58) begin
                case (note_idx)
                    // (1) 차오르는 효과 (0~7)
                    0,1,2,3,4,5,6,7: begin
                        del <= (8'h01 << (note_idx + 1)) - 1; // 1 -> 11 -> 111...
                    end
                    
                    // (2) 줄어드는 효과 (8~15)
                    // *기존 코드에서 범위가 겹쳐서 수정함 (0~15 -> 0~7, 8~15)
                    8,9,10,11,12,13,14,15: begin
                        del <= 8'hff << (note_idx - 7); // 왼쪽으로 밀면서 꺼짐
                    end
                    
                    // (3) 교차 점멸 (짝수/홀수 박자) (16~28)
                    16,17,18,19,20,21,22,23,24,25,26,27,28: begin
                        if (note_idx[0] == 0) del <= 8'hAA; // 10101010
                        else del <= 8'h55;                  // 01010101
                    end
                    
                    // (4) 오른쪽으로 흐르는 효과 (29~36)
                    29,30,31,32,33,34,35,36: begin
                         del <= 8'hff >> (note_idx - 29); 
                    end
                    
                    // (5) 다시 차오르는 효과 (37~44)
                    37,38,39,40,41,42,43,44: begin
                        del <= (8'h01 << (note_idx - 37)) - 1; 
                    end
                    
                    // (6) 빠른 교차 점멸 (45~58)
                    45,46,47,48,49,50,51,52,53,54,55,56,57,58: begin
                        if (note_idx[0] == 0) del <= 8'hAA; // 1010...
                        else del <= 8'h55;                  // 0101...
                    end
                    
                    default: del <= 0;
                endcase
            end
            
            // [Phase 2: 하이라이트 & 엔딩]
            
            // 특정 포인트(87번)에서 깜빡임 효과
            else if(note_idx == 87) begin
                if(fade_cnt[24]) del <= 8'haa;
                else del <= 8'h55;
            end
            
            // [Phase 3: 이퀄라이저 모드]
            // 음악의 리듬(eq_width)에 맞춰 가운데서 퍼지는 모양
            else begin
                case(eq_width)       
                    0: del <= 8'b0001_1000; // 가운데 2개 [..OO..]
                    1: del <= 8'b0010_0100; // 살짝 멂  [......] (변형 패턴)
                    2: del <= 8'b0011_1100; // 가운데 4개
                    3: del <= 8'b0111_1110; // 가운데 6개
                    4: del <= 8'b1111_1111; // 전체 켜짐
                    5: del <= 8'b0110_0110; // 분리됨
                    6: del <= 8'b1000_0001; // 양 끝만 켜짐
                    7: del <= 8'b0000_0000; // 꺼짐
                    default: del <= 0;
                endcase
            end
        end
    end
endmodule

module Christmas_i2c_txtlcd_mode_ctrl(
    input clk, reset_p,
    input [1:0] mode_in, // mp3_top에서 결정된 모드 (0:Carol, 1:Trot, 2:Pop)
    output scl, sda
    // led 포트는 상위 모듈 충돌 방지를 위해 제거했습니다.
    );

    // 1. 초기화 딜레이
    integer cnt_sysclk;
    reg count_clk_e;
    always @(negedge clk, posedge reset_p)begin
        if(reset_p)cnt_sysclk = 0;
        else if(count_clk_e)cnt_sysclk = cnt_sysclk +1;
        else cnt_sysclk = 0;
    end                        

    // 2. I2C 드라이버
    reg [7:0] send_buffer;
    reg send,rs;
    wire busy;
    // LED 연결이 없으므로 내부용 wire 하나 선언해서 연결 (무시됨)
    wire [15:0] dummy_led; 
    i2c_lcd_send_byte send_byte(clk,reset_p, 7'h27, send_buffer,
                               send, rs, scl, sda, busy, dummy_led);
    
    // 3. 상태 정의
    localparam IDLE         = 6'b00_0001; 
    localparam INIT         = 6'b00_0010; 
    localparam WRITE_SCROLL = 6'b00_0100; // 초기 스크롤
    localparam WRITE_STATIC = 6'b00_1000; // 고정 모드
    localparam WAIT_TIMER   = 6'b01_0000; // 스크롤 대기
    localparam SETUP_MODE   = 6'b10_0000; // 모드 변경 준비

    reg [5:0] state, next_state;
    
    // 데이터 저장소
    reg [7:0] line1_common [0:15];
    reg [7:0] scroll_text [0:27];
    reg [7:0] static_mem [0:47];

    initial begin
        // Line 1 Common
        line1_common[0]="M"; line1_common[1]="e"; line1_common[2]="r"; line1_common[3]="r";
        line1_common[4]="y"; line1_common[5]=" "; line1_common[6]="C"; line1_common[7]="h";
        line1_common[8]="r"; line1_common[9]="i"; line1_common[10]="s"; line1_common[11]="t";
        line1_common[12]="m"; line1_common[13]="a"; line1_common[14]="s"; line1_common[15]="!";

        // Default Scroll Text (by Sexy Gorgeous Tree)
        scroll_text[0]="b"; scroll_text[1]="y"; scroll_text[2]=" "; scroll_text[3]="S";
        scroll_text[4]="e"; scroll_text[5]="x"; scroll_text[6]="y"; scroll_text[7]=" ";
        scroll_text[8]="G"; scroll_text[9]="o"; scroll_text[10]="r"; scroll_text[11]="g";
        scroll_text[12]="e"; scroll_text[13]="o"; scroll_text[14]="u"; scroll_text[15]="s";
        scroll_text[16]=" "; scroll_text[17]="T"; scroll_text[18]="r"; scroll_text[19]="e";
        scroll_text[20]="e"; scroll_text[21]=" "; scroll_text[22]=" "; scroll_text[23]=" ";
        scroll_text[24]=" "; scroll_text[25]=" "; scroll_text[26]=" "; scroll_text[27]=" ";

        // Static Modes
        // Mode 0: Carol
        static_mem[0]="C"; static_mem[1]="a"; static_mem[2]="r"; static_mem[3]="o";
        static_mem[4]="l"; static_mem[5]=" "; static_mem[6]="m"; static_mem[7]="o";
        static_mem[8]="d"; static_mem[9]="e"; static_mem[10]=" "; static_mem[11]=" ";
        static_mem[12]=" "; static_mem[13]=" "; static_mem[14]=" "; static_mem[15]=" ";
        // Mode 1: MoMmAe (Trot)
        static_mem[16]="M"; static_mem[17]="o"; static_mem[18]="M"; static_mem[19]="m";
        static_mem[20]="A"; static_mem[21]="e"; static_mem[22]=" "; static_mem[23]="m";
        static_mem[24]="o"; static_mem[25]="d"; static_mem[26]="e"; static_mem[27]=" ";
        static_mem[28]=" "; static_mem[29]=" "; static_mem[30]=" "; static_mem[31]=" ";
        // Mode 2: K-POP
        static_mem[32]="K"; static_mem[33]="-"; static_mem[34]="P"; static_mem[35]="O";
        static_mem[36]="P"; static_mem[37]=" "; static_mem[38]="m"; static_mem[39]="o";
        static_mem[40]="d"; static_mem[41]="e"; static_mem[42]=" "; static_mem[43]=" ";
        static_mem[44]=" "; static_mem[45]=" "; static_mem[46]=" "; static_mem[47]=" ";
    end

    reg init_flag;
    reg [10:0] cnt_data;
    reg [7:0] static_base_addr;
    reg [4:0] scroll_offset;
    integer scroll_timer;
    reg boot_done; 

    // [핵심 변경] 모드 변경 감지 로직
    reg [1:0] prev_mode;       // 이전 모드 저장용
    reg mode_change_req;       // 변경 요청 플래그
    reg [7:0] target_addr;     // 목표 주소

    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            prev_mode <= 0; // 초기값 (Top 모드의 초기값과 같음)
            mode_change_req <= 0;
            target_addr <= 0;
        end
        else begin
            // 모드가 변경되었는지 감지 (Edge Detection of Mode)
            // 단, boot_done이 1이 된 이후에만 반응하도록 하여 초기 스크롤 유지
            if(boot_done && (mode_in != prev_mode)) begin
                mode_change_req <= 1;
                prev_mode <= mode_in; // 현재 모드를 기억
                
                // 모드에 따른 주소 매핑
                case(mode_in)
                    2'd0: target_addr <= 0;  // Carol
                    2'd1: target_addr <= 16; // Mommae
                    2'd2: target_addr <= 32; // K-Pop
                    default: target_addr <= 0;
                endcase
            end
            else if(state == SETUP_MODE) begin
                mode_change_req <= 0; // 처리 완료 후 플래그 해제
            end
        end
    end

    always @(negedge clk, posedge reset_p) begin
        if(reset_p) state = IDLE;
        else state = next_state;
    end

    // FSM 로직
    always @( posedge clk, posedge reset_p)begin
        if(reset_p)begin
            next_state = IDLE;
            init_flag = 0;
            cnt_data = 0;
            count_clk_e = 0;
            send = 0;
            send_buffer = 0;
            rs = 0;
            scroll_offset = 0;
            scroll_timer = 0;
            static_base_addr = 0;
            boot_done = 0; 
        end
        else begin
            // 모드 변경 요청이 오면 강제 이동
            if(mode_change_req && state != INIT && state != SETUP_MODE) begin
                next_state = SETUP_MODE; 
                send = 0;     
                cnt_data = 0; 
            end
            else begin
                case(state)
                    IDLE : begin
                        if(boot_done == 0) begin
                            if(cnt_sysclk <= 8_000_000) count_clk_e = 1; 
                            else begin
                               count_clk_e = 0;
                               next_state = INIT;
                            end
                        end
                        else begin
                            count_clk_e = 0;
                            // 대기 상태
                        end
                    end
                    
                    INIT : begin
                        if(busy)begin
                            send = 0;
                            if(cnt_data >=6) begin
                                cnt_data = 0;
                                next_state = WRITE_SCROLL; 
                                init_flag = 1;
                                boot_done = 1;
                            end
                        end
                        else if(!send)begin
                            rs = 0;
                            case(cnt_data)
                                0: send_buffer = 8'h33;
                                1: send_buffer = 8'h32;
                                2: send_buffer = 8'h28;
                                3: send_buffer = 8'h0f;
                                4: send_buffer = 8'h01; 
                                5: send_buffer = 8'h06; 
                            endcase
                            send = 1;
                            cnt_data = cnt_data +1;
                        end
                    end

                    SETUP_MODE: begin
                        send = 0;
                        cnt_data = 0;
                        static_base_addr = target_addr;
                        next_state = WRITE_STATIC;
                    end
                    
                    WRITE_SCROLL : begin 
                        if(busy) begin
                            send = 0;
                            if(cnt_data >= 33) begin 
                                cnt_data = 0;
                                next_state = WAIT_TIMER;
                            end
                        end
                        else if(!send) begin
                            if(cnt_data < 16) begin
                                rs = 1; send_buffer = line1_common[cnt_data]; 
                            end
                            else if(cnt_data == 16) begin
                                rs = 0; send_buffer = 8'hC0; 
                            end
                            else begin
                                rs = 1;
                                if(scroll_offset + (cnt_data - 17) < 28)
                                    send_buffer = scroll_text[scroll_offset + (cnt_data - 17)];
                                else
                                    send_buffer = scroll_text[scroll_offset + (cnt_data - 17) - 28];
                            end
                            send = 1;
                            cnt_data = cnt_data + 1;
                        end
                    end

                    WRITE_STATIC : begin 
                        if(busy) begin
                            send = 0;
                            if(cnt_data >= 33) begin 
                                cnt_data = 0;
                                next_state = IDLE; 
                            end
                        end
                        else if(!send) begin
                            if(cnt_data < 16) begin
                                rs = 1; send_buffer = line1_common[cnt_data];
                            end
                            else if(cnt_data == 16) begin
                                rs = 0; send_buffer = 8'hC0;
                            end
                            else begin
                                rs = 1;
                                send_buffer = static_mem[static_base_addr + (cnt_data - 17)];
                            end
                            send = 1;
                            cnt_data = cnt_data + 1;
                        end
                    end

                    WAIT_TIMER : begin 
                        scroll_timer = scroll_timer + 1;
                        if(scroll_timer > 30_000_000) begin 
                            scroll_timer = 0;
                            if(scroll_offset < 27) scroll_offset = scroll_offset + 1;
                            else scroll_offset = 0;
                            
                            cnt_data = 0;
                            next_state = WRITE_SCROLL;
                        end
                    end
                    
                    default: next_state = IDLE;
                endcase
            end
        end
    end    
endmodule

module pwm_simple #(
    parameter integer SYS_CLK_FREQ = 100_000_000,
    parameter integer PWM_FREQ     = 20_000,
    parameter integer DUTY_STEP    = 1000
)(
    input  wire clk,
    input  wire reset_p,
    input  wire [$clog2(DUTY_STEP)-1:0] duty,
    output reg  pwm
);
    localparam integer PERIOD = SYS_CLK_FREQ / PWM_FREQ; // 예: 5000
    localparam integer STEP_CYCLES = PERIOD / DUTY_STEP; // 예: 5000/1000=5 (정수)

    reg [$clog2(PERIOD)-1:0] cnt;
    reg [$clog2(DUTY_STEP)-1:0] step;

    always @(posedge clk or posedge reset_p) begin
        if (reset_p) begin
            cnt  <= 0;
            step <= 0;
            pwm  <= 0;
        end else begin
            if (cnt == PERIOD-1) begin
                cnt  <= 0;
                step <= 0;
            end else begin
                cnt <= cnt + 1;
                if (cnt % STEP_CYCLES == 0) begin
                    if (step == DUTY_STEP-1) step <= 0;
                    else step <= step + 1;
                end
            end
            pwm <= (step < duty);
        end
    end
endmodule
