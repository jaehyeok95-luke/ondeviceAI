`timescale 1ns / 1ps


module mp3_top_final(
    input clk, reset_p,
    input [3:0] button,
    output speaker, led_r, led_g, led_b, scl, sda,
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
        else if(btn_nedge[1]) mp3_mode = mp3_mode + 1;
        else if(mp3_mode >= 3) mp3_mode = 0;
    end
    
    wire carol_en, trot_en, pop_en;
    assign carol_en     = (mp3_mode == 0);
    assign trot_en      = (mp3_mode == 1);
    assign pop_en       = (mp3_mode == 2);
        
    assign speaker = (mp3_mode == 2) ? speaker2 : (mp3_mode == 1) ? speaker1 : speaker0;
    assign led = (mp3_mode == 2) ? led2 : (mp3_mode == 1) ? led1 : led0;
    
    assign led_r = (mp3_mode == 0) ? led_r0 : (mp3_mode == 1) ? led_r1 : led_r2;
    assign led_g = (mp3_mode == 0) ? led_g0 : (mp3_mode == 1) ? led_g1 : led_g2;
    assign led_b = (mp3_mode == 0) ? led_b0 : (mp3_mode == 1) ? led_b1 : led_b2;
    
    play_buzz_top carol_mode(.clk(clk), .reset_p(reset_p), .carol_en(carol_en), .button(button), .buzzer(speaker0), .led_r(led_r0), .led_g(led_g0), .led_b(led_b0),
        .led(led0));
    mommae_top trot_mode(.clk(clk), .reset_p(reset_p), .slide(trot_en), .buzzer(speaker1), .led(led1), .led_r(led_r1), .led_g(led_g1), .led_b(led_b1));
    blue_valentine_top pop_mode(.clk(clk), .reset_p(reset_p), .slide(pop_en), .buzzer(speaker2), .led(led2), .led_r(led_r2), .led_g(led_g2), .led_b(led_b2));
    Christmas_i2c_txtlcd_mode_ctrl lcd_inst(
        .clk(clk), 
        .reset_p(reset_p), 
        .mode_in(mp3_mode), // 현재 모드값 전달 (0, 1, 2)
        .scl(scl), 
        .sda(sda)
        // .led() 는 연결하지 않음 (mp3_top의 led와 충돌 방지)
    );    
        
endmodule




module play_buzz_top(
    input clk, reset_p,
    input carol_en,
    input [1:0] button,
    output buzzer, 
    output led_r, led_g, led_b,
    output [7:0] led);
    
    wire [1:0] btn_pedge, btn_nedge;
    button_ctr btnctr0(.clk(clk), .reset_p(reset_p), .btn(button[0]), .btn_pedge(btn_pedge[0]), .btn_nedge(btn_nedge[0]));
    button_ctr btnctr1(.clk(clk), .reset_p(reset_p), .btn(button[1]), .btn_pedge(btn_pedge[1]), .btn_nedge(btn_nedge[1]));


    wire note;
    wire [9:0] duty;
    wire [23:0] led_color;
    wire [7:0] silent_led;
    silent_night player(.clk(clk), .reset_p(reset_p), .carol_en(carol_en), .chmod(btn_nedge[0]), .note(note), .duty(duty), .led_color(led_color), .wreath_led(led));


    wire pwm;
    pwm_Nfreq_Nstep volume(.clk(clk), .reset_p(reset_p), .duty(duty), .pwm(pwm));
    assign buzzer = note & pwm;
    
    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000))red_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[23:16]), .pwm(led_r));
    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000))green_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[15:8]), .pwm(led_g));
    pwm_Nfreq_Nstep #(.PWM_FREQ(10_000))blue_pwm(.clk(clk), .reset_p(reset_p), .duty(led_color[7:0]), .pwm(led_b));


endmodule




module mommae_top(
    input clk,          // 100MHz
    input reset_p,      // Reset
    input slide,        // Play/Stop (1: 재생 및 리셋, 0: 정지)
    output buzzer,      // Speaker output
    output [7:0] led,   // LED Output (8개로 수정됨)
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




module blue_valentine_top(
    input clk,          // W5
    input reset_p,      // U18 (Reset)
    input slide,
    output buzzer,      // J1 (Pmod Header) - 형곤이가 정한 핀
    output [7:0] led,   // U16, E19... (LED 16개)
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




module silent_night(
    input clk, reset_p,
    input chmod, carol_en,
    output reg note, 
    output reg [9:0] duty,
    output reg [23:0] led_color,
    output reg [7:0] wreath_led);
    
    localparam IDLE     = 2'b01;
    localparam READY    = 2'b10;
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
    
    reg [1:0] mp3_list;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) mp3_list = 0;
        else if(chmod) mp3_list = mp3_list + 1;
        else if(mp3_list >= 3 || !carol_en) mp3_list = 0;
    end
    
    wire [53:0] data, data0, data1, data2;
    assign data = (mp3_list == 1) ? data1 : (mp3_list == 2) ? data2 : data0;
    reg [6:0] addr;
    wire [6:0] mem_size, mem_size0, mem_size1, mem_size2;
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
        if(!carol_en) wreath_led = 0;
        else begin
            case(mp3_list)
                // 🎵 1번 곡 (Song 0): 고요한 밤 -> [눈 쌓이기] (0.25초)
                3'd0: begin
                    case(step_snow)
                        3'd0: wreath_led = (1<<7) | (1<<0); // 1층
                        3'd1: wreath_led = (1<<7) | (1<<0) | (1<<6) | (1<<1); // 2층
                        3'd2: wreath_led = 8'b1110_0111; // 3층
                        3'd3: wreath_led = 8'b1111_1111; // 4층 (Full)
                        default: wreath_led = 0;        // 꺼짐 (Blink)
                    endcase
                end


                // 🎵 2번 곡 (Song 1): 울면 안 돼 -> [좌우 + 홀짝 믹스] (0.25초)
                // 순서: 왼쪽 -> 오른쪽 -> 홀수 -> 짝수 (반복)
                3'd1: begin
                    case(step_mix)
                        2'd0: wreath_led = 8'b1111_0000; // 왼쪽 (4567)
                        2'd1: wreath_led = 8'b0000_1111; // 오른쪽 (3210)
                        2'd2: wreath_led = 8'b1010_1010; // 홀수 (줄무늬 A)
                        2'd3: wreath_led = 8'b0101_0101; // 짝수 (줄무늬 B)
                    endcase
                end


                // 🎵 3번 곡 (Song 2): 루돌프 -> [위아래 왕복 달리기] (0.25초)
                // 순서: 바닥 -> 중간 -> 위 -> 꼭대기 -> 위 -> 중간 -> (바닥)
                3'd2: begin
                    case(step_ping)
                        3'd0: wreath_led = (1<<7) | (1<<0); // 바닥 (Start)
                        3'd1: wreath_led = (1<<6) | (1<<1); // 위
                        3'd2: wreath_led = (1<<5) | (1<<2); // 위
                        3'd3: wreath_led = (1<<4) | (1<<3); // 꼭대기 (Top)
                        3'd4: wreath_led = (1<<5) | (1<<2); // 아래
                        3'd5: wreath_led = (1<<6) | (1<<1); // 아래
                        default: wreath_led = (1<<7) | (1<<0);
                    endcase
                end


                default: wreath_led = 8'b1111_1111;
            endcase
        end
    end
endmodule




module song_mem(
    input clk,
    input [6:0] addr,
    output reg [6:0] mem_size,
    output reg [53:0] data);
    
    localparam C4 = 18'd190840;  // 262 Hz
    localparam D4 = 18'd170068;  // 294 Hz
    localparam E4 = 18'd151515;  // 330 Hz
    localparam F4 = 18'd143266;  // 349 Hz
    localparam G4 = 18'd127551;  // 392 Hz
    localparam A4 = 18'd113636;  // 440 Hz
    localparam B4 = 18'd101215;  // 494 Hz
    localparam C5 = 18'd95420;   // 524 Hz
    localparam D5 = 18'd85034;   // 588 Hz
    localparam E5 = 18'd75758;   // 660 Hz
    localparam F5 = 18'd71633;   // 698 Hz
    
    localparam quaver           = 13'd500;
    localparam crochet          = 13'd1000;
    localparam crochet_half     = 13'd1500;
    localparam minim            = 13'd2000;
    localparam minim_half       = 13'd3000;
    localparam semibreve_hal    = 13'd6000;
    
    // RGB
    localparam RED           = {8'd255, 8'd0, 8'd0};
    localparam ORANGE        = {8'd255, 8'd30, 8'd0};
    localparam YELLOW        = {8'd255, 8'd70, 8'd0};
    localparam GREEN         = {8'd0, 8'd255, 8'd0};
    localparam BLUE          = {8'd0, 8'd0, 8'd255};
    localparam WHITE        = {8'd255, 8'd150, 8'd255};
    localparam PURPLE        = {8'd200, 8'd0, 8'd255};


    always @(posedge clk)begin
        mem_size = 7'd45;
        case(addr)
            6'd0:     data = {BLUE, G4, crochet_half};
            6'd1:     data = {WHITE, A4, quaver};
            6'd2:     data = {BLUE, G4, crochet};
            
            6'd3:     data = {YELLOW, E4, minim_half};
            
            6'd4:     data = {BLUE, G4, crochet_half};
            6'd5:     data = {WHITE, A4, quaver};
            6'd6:     data = {BLUE, G4, crochet};
            
            6'd7:     data = {YELLOW, E4, minim_half};
            
            6'd8:     data = {ORANGE, D5, minim};
            6'd9:     data = {ORANGE, D5, crochet};
            
            6'd10:    data = {PURPLE, B4, minim_half};
            
            6'd11:    data = {RED, C5, minim};
            6'd12:    data = {RED, C5, crochet};
            
            6'd13:    data = {BLUE, G4, minim_half};
            
            6'd14:    data = {WHITE, A4, minim};
            6'd15:    data = {WHITE, A4, crochet};
            
            6'd16:    data = {RED, C5, crochet_half};
            6'd17:    data = {PURPLE, B4, quaver};
            6'd18:    data = {WHITE, A4, crochet};
            
            6'd19:    data = {BLUE, G4, crochet_half};
            6'd20:    data = {WHITE, A4, quaver};
            6'd21:    data = {BLUE, G4, crochet};
            
            6'd22:    data = {YELLOW, E4, minim_half};
            
            6'd23:    data = {WHITE, A4, minim};
            6'd24:    data = {WHITE, A4, crochet};
            
            6'd25:    data = {RED, C5, crochet_half};
            6'd26:    data = {PURPLE, B4, quaver};
            6'd27:    data = {WHITE, A4, crochet};
            
            6'd28:    data = {BLUE, G4, crochet_half};
            6'd29:    data = {WHITE, A4, quaver};
            6'd30:    data = {BLUE, G4, crochet};
            
            6'd31:    data = {YELLOW, E4, minim_half};
            
            6'd32:    data = {ORANGE, D5, minim};
            6'd33:    data = {ORANGE, D5, crochet};
            
            6'd34:    data = {GREEN, F5, crochet_half};
            6'd35:    data = {ORANGE, D5, quaver};
            6'd36:    data = {PURPLE, B4, crochet};
            
            6'd37:    data = {RED, C5, minim_half};
            
            6'd38:    data = {YELLOW, E5, minim_half};
            
            6'd39:    data = {RED, C5, crochet};
            6'd40:    data = {BLUE, G4, crochet};
            6'd41:    data = {YELLOW, E4, crochet};
            
            6'd42:    data = {BLUE, G4, crochet_half};
            6'd43:    data = {GREEN, F4, quaver};
            6'd44:    data = {ORANGE, D4, crochet};
            
            6'd45:    data = {RED, C4, semibreve_hal};
            default:  data = 54'd0;
        endcase 
    end
endmodule




module song_mem2(
    input clk,
    input [6:0] addr,
    output reg [6:0] mem_size,
    output reg [53:0] data);
    
    localparam C4 = 18'd190840;  // 262 Hz
    localparam D4 = 18'd170068;  // 294 Hz
    localparam E4 = 18'd151515;  // 330 Hz
    localparam F4 = 18'd143266;  // 349 Hz
    localparam G4 = 18'd127551;  // 392 Hz
    localparam A4 = 18'd113636;  // 440 Hz
    localparam B4 = 18'd101215;  // 494 Hz
    localparam C5 = 18'd95420;   // 524 Hz
    localparam D5 = 18'd85034;   // 588 Hz
    localparam E5 = 18'd75758;   // 660 Hz
    localparam F5 = 18'd71633;   // 698 Hz
    localparam G5 = 18'd63775;
    localparam A5 = 18'd56817;
    
    localparam B_16 = 13'd125;
    localparam B_8  = 13'd250;
    localparam B_8D = 13'd375;
    localparam B_4  = 13'd500;
    localparam B_2  = 13'd1000;
    
    // RGB
    localparam RED           = {8'd255, 8'd0, 8'd0};
    localparam ORANGE        = {8'd255, 8'd30, 8'd0};
    localparam YELLOW        = {8'd255, 8'd70, 8'd0};
    localparam GREEN         = {8'd0, 8'd255, 8'd0};
    localparam BLUE          = {8'd0, 8'd0, 8'd255};
    localparam WHITE        = {8'd255, 8'd150, 8'd255};
    localparam PURPLE        = {8'd200, 8'd0, 8'd255};


    always @(posedge clk)begin
        mem_size = 7'd93;
        case(addr)
            // ===== Verse 1 ===== 
            0 : data = {BLUE,   G4, B_8};
            1 : data = {YELLOW, E5, B_8};
            2 : data = {ORANGE, D5, B_8};
            3 : data = {RED,    C5, B_8};
            4 : data = {BLUE,   G4, B_2};


            5 : data = {BLUE,   G4, B_8};
            6 : data = {YELLOW, E5, B_8};
            7 : data = {ORANGE, D5, B_8};
            8 : data = {RED,    C5, B_8};
            9 : data = {WHITE,  A4, B_2};


            10: data = {WHITE,  A4, B_8};
            11: data = {GREEN,  F5, B_8};
            12: data = {YELLOW, E5, B_8};
            13: data = {ORANGE, D5, B_8};
            14: data = {PURPLE, B4, B_2};


            15: data = {BLUE,   G5, B_8};
            16: data = {BLUE,   G5, B_8};
            17: data = {GREEN, F5, B_8};
            18: data = {ORANGE, D5, B_8};
            19: data = {YELLOW, E5, B_4};
            20: data = {RED,    C5, B_4};


            // ===== Verse 2 =====
            21: data = {BLUE,   G4, B_8};
            22: data = {YELLOW, E5, B_8};
            23: data = {ORANGE, D5, B_8};
            24: data = {RED,    C5, B_8};
            25: data = {BLUE,   G4, B_2};


            26: data = {BLUE,   G4, B_8};
            27: data = {YELLOW, E5, B_8};
            28: data = {ORANGE, D5, B_8};
            29: data = {RED,    C5, B_8};
            30: data = {WHITE,  A4, B_2};


            31: data = {WHITE,  A4, B_8};
            32: data = {GREEN,  F5, B_8};
            33: data = {YELLOW, E5, B_8};
            34: data = {ORANGE, D5, B_8};
            35: data = {BLUE,   G5, B_8D};
            36: data = {BLUE,   G5, B_16};
            37: data = {BLUE,   G5, B_8};
            38: data = {BLUE,   G5, B_8};
            39: data = {WHITE,  A5, B_8};
            40: data = {BLUE,   G5, B_8};
            41: data = {GREEN, F5, B_8};
            42: data = {ORANGE, D5, B_8};
            43: data = {RED,    C5, B_8D};
            44: data = {YELLOW,    E5, B_16}; // Hey!


            // ===== Chorus =====
            45: data = {YELLOW, E5, B_8};
            46: data = {YELLOW, E5, B_8};
            47: data = {YELLOW, E5, B_4};


            48: data = {YELLOW, E5, B_8};
            49: data = {YELLOW, E5, B_8};
            50: data = {YELLOW, E5, B_4};


            51: data = {YELLOW, E5, B_8};
            52: data = {BLUE,   G5, B_8};
            53: data = {RED,    C5, B_8D};
            54: data = {ORANGE, D5, B_16};
            55: data = {YELLOW, E5, B_2};


            56: data = {GREEN,  F5, B_8};
            57: data = {GREEN,  F5, B_8};
            58: data = {GREEN,  F5, B_8D};
            59: data = {GREEN,  F5, B_16};


            60: data = {GREEN,  F5, B_8};
            61: data = {YELLOW, E5, B_8};
            62: data = {YELLOW, E5, B_8};
            63: data = {YELLOW, E5, B_8};
            64: data = {YELLOW, E5, B_8};
            65: data = {ORANGE, D5, B_8};
            66: data = {ORANGE, D5, B_8};
            67: data = {YELLOW, E5, B_8};
            68: data = {ORANGE, D5, B_4};
            69: data = {BLUE,   G5, B_4};
            
            70: data = {YELLOW, E5, B_8};
            71: data = {YELLOW, E5, B_8};
            72: data = {YELLOW, E5, B_4};


            73: data = {YELLOW, E5, B_8};
            74: data = {YELLOW, E5, B_8};
            75: data = {YELLOW, E5, B_4};


            76: data = {YELLOW, E5, B_8};
            77: data = {BLUE,   G5, B_8};
            78: data = {RED,    C5, B_8D};
            79: data = {ORANGE, D5, B_16};
            80: data = {YELLOW, E5, B_2};


            81: data = {GREEN,  F5, B_8};
            82: data = {GREEN,  F5, B_8};
            83: data = {GREEN,  F5, B_8D};
            84: data = {GREEN,  F5, B_16};


            85: data = {GREEN,  F5, B_8};
            86: data = {YELLOW, E5, B_8};
            87: data = {YELLOW, E5, B_8};
            88: data = {YELLOW, E5, B_8};
            89: data = {BLUE, G5, B_8};
            90: data = {BLUE, G5, B_8};
            91: data = {GREEN, F5, B_8};
            92: data = {ORANGE, D5, B_8};
            93: data = {RED, C5, B_4};
            default: data = 54'd0;
        endcase 
    end
endmodule




module song_mem3(
    input clk,
    input [6:0] addr,
    output reg [6:0] mem_size,
    output reg [53:0] data
);


    // ===============================
    // Half period @100MHz
    // ===============================
    localparam C4 = 18'd190840;  // 262 Hz
    localparam D4 = 18'd170068;  // 294 Hz
    localparam E4 = 18'd151515;  // 330 Hz
    localparam F4 = 18'd143266;  // 349 Hz
    localparam G4 = 18'd127551;  // 392 Hz
    localparam A4 = 18'd113636;  // 440 Hz
    localparam B4 = 18'd101215;  // 494 Hz
    localparam C5 = 18'd95420;   // 524 Hz
    localparam D5 = 18'd85034;   // 588 Hz
    localparam E5 = 18'd75758;   // 660 Hz
    localparam F5 = 18'd71633;   // 698 Hz
    localparam G5 = 18'd63775;


    // ===============================
    // Duration
    // ===============================
    localparam B_16 = 13'd125;
    localparam B_8  = 13'd250;
    localparam B_4  = 13'd500;
    localparam B_2  = 13'd1000;
    localparam B_2_HALF  = 13'd1500;


    // ===============================
    // LED Colors
    // ===============================
    localparam RED           = {8'd255, 8'd0, 8'd0};
    localparam ORANGE        = {8'd255, 8'd30, 8'd0};
    localparam YELLOW        = {8'd255, 8'd70, 8'd0};
    localparam GREEN         = {8'd0, 8'd255, 8'd0};
    localparam BLUE          = {8'd0, 8'd0, 8'd255};
    localparam WHITE         = {8'd255, 8'd150, 8'd255};
    localparam PURPLE        = {8'd200, 8'd0, 8'd255};


    always @(posedge clk) begin
        mem_size = 7'd121;
        case (addr)


            // === Verse: 루돌프 사슴코는 ===
            0 : data = {BLUE,   G4, B_8};
            1 : data = {WHITE,  A4, B_4};
            2 : data = {BLUE,   G4, B_8};
            3 : data = {YELLOW, E4, B_4};
            4 : data = {RED, C5, B_4};
            
            5 : data = {WHITE, A4, B_4};
            6 : data = {BLUE,  G4, B_2_HALF};
            
            // === 매우 반짝이는 코 ===
            7 : data = {BLUE,  G4, B_8};
            8 : data = {WHITE,   A4, B_8};
            9 : data = {BLUE,  G4, B_8};
            10: data = {WHITE,  A4, B_8};
            11: data = {BLUE,   G4, B_4};
            12: data = {RED, C5, B_4};
            
            13: data = {WHITE,    B4, B_2_HALF};
            14: data = {24'd0,    13'd0, B_4};


            // === 만일 네가 봤다면 ===
            15 : data = {GREEN,   F4, B_8};
            16 : data = {BLUE,  G4, B_4};
            17 : data = {GREEN,   F4, B_8};
            18 : data = {ORANGE, D4, B_4};
            19 : data = {WHITE, B4, B_4};
            
            20 : data = {WHITE, A4, B_4};
            21 : data = {BLUE,  G4, B_2_HALF};


            // === 불붙는다 했겠지===
            22 : data = {BLUE,  G4, B_8};
            23 : data = {WHITE,   A4, B_8};
            24 : data = {BLUE,  G4, B_8};
            25: data = {WHITE,  A4, B_8};
            26: data = {BLUE,   G4, B_4};
            27: data = {WHITE, A4, B_4};
            
            28: data = {YELLOW,    E4, B_2_HALF};
            29: data = {24'd0,    13'd0, B_4};
            
            // === 다른 모든 사슴들 ===
            30 : data = {BLUE,   G4, B_8};
            31 : data = {WHITE,  A4, B_4};
            32 : data = {BLUE,   G4, B_8};
            33 : data = {YELLOW, E4, B_4};
            34 : data = {RED, C5, B_4};
            
            35 : data = {WHITE, A4, B_4};
            36 : data = {BLUE,  G4, B_2_HALF};
            
            // === 놀려대며 웃었네 ===
            37 : data = {BLUE,  G4, B_8};
            38 : data = {WHITE,   A4, B_8};
            39 : data = {BLUE,  G4, B_8};
            40: data = {WHITE,  A4, B_8};
            41: data = {BLUE,   G4, B_4};
            42: data = {RED, C5, B_4};
            
            43: data = {WHITE,    B4, B_2_HALF};
            44: data = {24'd0,    13'd0, B_4};
            
            // === 가엾은 저 루돌프 ===
            45 : data = {GREEN,   F4, B_8};
            46 : data = {BLUE,  G4, B_4};
            47 : data = {GREEN,   F4, B_8};
            48 : data = {ORANGE, D4, B_4};
            49 : data = {WHITE, B4, B_4};
            
            50 : data = {WHITE, A4, B_4};
            51 : data = {BLUE,  G4, B_2_HALF};


            // === 외톨이가 되었네===
            52 : data = {BLUE,  G4, B_8};
            53 : data = {WHITE,   A4, B_8};
            54 : data = {BLUE,  G4, B_8};
            55: data = {WHITE,  A4, B_8};
            56: data = {BLUE,   G4, B_4};
            57: data = {ORANGE, D5, B_4};
            
            58: data = {RED,    C5, B_2_HALF};
            59: data = {24'd0,    13'd0, B_4};


            // === 안개 낀 성탄절날 ===
            60: data = {WHITE,    A4, B_4};
            61: data = {WHITE, A4, B_4};
            62: data = {RED, C5, B_4};
            63: data = {WHITE,  A4, B_4};
            
            64: data = {BLUE,  G4, B_4};
            65: data = {YELLOW, E4, B_8};
            66: data = {BLUE, G4, B_8};
            67: data = {BLUE, G4, B_2};
            
            // === 산타 말하길 ===
            68: data = {GREEN,    F4, B_4};
            69: data = {WHITE, A4, B_4};
            70: data = {BLUE, G4, B_4};
            71: data = {GREEN,  F4, B_4};
            
            72: data = {YELLOW,  E4, B_2_HALF};
            73: data = {24'd0,    13'd0, B_4};


            // === 루돌프 코가 밝으니 ===
            74: data = {ORANGE,    D4, B_4};
            75: data = {YELLOW, E4, B_4};
            76: data = {BLUE, G4, B_4};
            77: data = {WHITE,  A4, B_8};
            78: data = {WHITE,  A4, B_8};


            79: data = {PURPLE,  B4, B_4};
            80: data = {PURPLE, B4, B_8};
            81: data = {PURPLE, B4, B_8};
            82: data = {PURPLE, B4, B_2};
            
            // === 썰매를 끌어주렴  ===
            83: data = {RED, C5, B_4};
            84: data = {RED, C5, B_4};
            85: data = {PURPLE, B4, B_4};
            86: data = {WHITE,  A4, B_4};
            
            87: data = {BLUE,  G4, B_4};
            88: data = {GREEN,  F4, B_8};
            89: data = {ORANGE, D4, B_8};
            90: data = {ORANGE, D4, B_2};
            
             // 그 후론 사슴들이  ===
            91 : data = {BLUE,   G4, B_8};
            92 : data = {WHITE,  A4, B_4};
            93 : data = {BLUE,   G4, B_8};
            94 : data = {YELLOW, E4, B_4};
            95 : data = {RED, C5, B_4};
            
            96 : data = {WHITE, A4, B_4};
            97 : data = {BLUE,  G4, B_2_HALF};
            
            // === 그를 매우 사랑했네 ===
            98 : data = {BLUE,  G4, B_8};
            99 : data = {WHITE,   A4, B_8};
            100 : data = {BLUE,  G4, B_8};
            101: data = {WHITE,  A4, B_8};
            102: data = {BLUE,   G4, B_4};
            103: data = {RED, C5, B_4};
            
            104: data = {WHITE,    B4, B_2_HALF};
            105: data = {24'd0,    13'd0, B_4};


            // === 루돌프 사슴코는===
            106: data = {GREEN,   F4, B_8};
            107 : data = {BLUE,  G4, B_4};
            108 : data = {GREEN,   F4, B_8};
            109 : data = {ORANGE, D4, B_4};
            110 : data = {WHITE, B4, B_4};
            
            111 : data = {WHITE, A4, B_4};
            112 : data = {BLUE,  G4, B_2_HALF};


            // === 길이길이 기억되리===
            113 : data = {BLUE,  G4, B_8};
            114 : data = {WHITE,   A4, B_8};
            115 : data = {BLUE,  G4, B_8};
            116: data = {WHITE,  A4, B_8};
            117: data = {BLUE,   G4, B_8};
            118: data = {BLUE,   G4, B_8};
            119: data = {ORANGE, D5, B_4};
            
            120: data = {RED,  C5, B_2_HALF};
            121: data = {24'd0,    13'd0, B_4};


            default: data = 54'd0;
        endcase
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




module mommae_rom(
    input [7:0] addr,
    output reg [31:0] freq_half_period,
    output reg [31:0] duration
);


// --- Octave 4 ---
parameter C4 = 191110, D4 = 170265, E4 = 151685, F4 = 143172, G4 = 127550, A4 = 113635;
parameter A4_S = 107263, B4 = 101239; // 7♭은 A4_S(Bb4) 사용


// --- Octave 5 ---
parameter C5 = 95556,  D5 = 85130,  E5 = 75844,  F5 = 71586,  G5 = 63775,  A5 = 56817;
parameter A5_S = 53630, B5 = 50619; // 7'♭은 A5_S(Bb5) 사용


// --- Octave 6 (High Notes) ---
parameter C6 = 47778, D6 = 42565; 




// --- Duration (BPM 30) ---
// BPM 100 대비 3.33배 증가, BPM 40 대비 1.33배 증가
parameter B_32  = 12500000,  B_16  = 25000000,  B_8   = 50000000;
parameter B_8_D = 75000000,  B_4   = 100000000, B_4_D = 150000000;
parameter B_2   = 200000000, B_2_D = 300000000, B_1   = 400000000;


always @(*) begin
    case(addr)
        // [Intro] I- be Like hold up (4' 4' 5' 4' 4' 2' 1')
        0 : begin freq_half_period = 0; duration = B_16; end
        1 : begin freq_half_period = F5; duration = B_2; end
        2 : begin freq_half_period = F5; duration = B_16; end
        3 : begin freq_half_period = G5; duration = B_16; end
        4 : begin freq_half_period = F5; duration = B_16; end
        5 : begin freq_half_period = F5; duration = B_8; end
        6 : begin freq_half_period = D5; duration = B_16; end
        7 : begin freq_half_period = C5; duration = B_16; end


        // wait a minute Girl- (2' 2' 2' 2' 1' 2')
        8 : begin freq_half_period = 0; duration = B_16; end
        9 : begin freq_half_period = D5; duration = B_16; end
        10: begin freq_half_period = D5; duration = B_16; end
        11: begin freq_half_period = D5; duration = B_16; end
        12: begin freq_half_period = D5; duration = B_16; end
        13: begin freq_half_period = C5; duration = B_8; end
        14: begin freq_half_period = D5; duration = B_16+B_2; end


        // 어디가? 너무 쳐다봐서 미안해 (1' 1' 1' 1' 2' 7 7 7 7 5 4 4)
        15: begin freq_half_period = 0; duration = B_16; end
        16: begin freq_half_period = C5; duration = B_16; end
        17: begin freq_half_period = C5; duration = B_16; end
        18: begin freq_half_period = C5; duration = B_16; end
        19: begin freq_half_period = C5; duration = B_16; end
        20: begin freq_half_period = D5; duration = B_4; end
        21: begin freq_half_period = A4_S; duration = B_16; end // 7♭
        22: begin freq_half_period = A4_S; duration = B_16; end
        23: begin freq_half_period = A4_S; duration = B_8; end
        24: begin freq_half_period = A4_S; duration = B_16; end
        25: begin freq_half_period = G4; duration = B_16; end
        26: begin freq_half_period = F4; duration = B_16; end
        27: begin freq_half_period = F4; duration = B_2+B_4+B_8; end


        // 근데 니가 너무 섹시해서 (7 1' 2' 2' 2' 2' 2' 2' 2' 1')
        28: begin freq_half_period = A4_S; duration = B_16; end
        29: begin freq_half_period = C5; duration = B_16; end
        30: begin freq_half_period = D5; duration = B_16; end
        31: begin freq_half_period = D5; duration = B_16; end
        32: begin freq_half_period = D5; duration = B_16; end
        33: begin freq_half_period = D5; duration = B_16; end
        34: begin freq_half_period = D5; duration = B_16; end
        35: begin freq_half_period = D5; duration = B_16; end
        36: begin freq_half_period = D5; duration = B_16; end
        37: begin freq_half_period = C5; duration = B_16; end


        // 눈을 뗄 수 가 없어 (2' 2' 2' 2' 1' 7 1')
        38: begin freq_half_period = D5; duration = B_16; end
        39: begin freq_half_period = D5; duration = B_16; end
        40: begin freq_half_period = D5; duration = B_8; end
        41: begin freq_half_period = D5; duration = B_16; end
        42: begin freq_half_period = C5; duration = B_16; end
        43: begin freq_half_period = A4_S; duration = B_8; end
        44: begin freq_half_period = C5; duration = B_2+B_4+B_8; end


        // 갓뎀,... 보고싶어 (4 7 4 4 5 7 7)
        45: begin freq_half_period = F4; duration = B_8; end
        46: begin freq_half_period = A4_S; duration = B_2+B_8+B_16; end
        47: begin freq_half_period = F4; duration = B_16; end
        48: begin freq_half_period = F4; duration = B_16; end
        49: begin freq_half_period = G4; duration = B_16; end
        50: begin freq_half_period = A4_S; duration = B_16; end
        51: begin freq_half_period = A4_S; duration = B_16+B_2+B_4+B_8; end
  


        // 너의 몸 몸 몸 매 몸몸몸 매- (7 2' 4' 4' 2' 2' 4' 4' 4' 4' 2')
        52: begin freq_half_period = A4_S; duration = B_16; end
        53: begin freq_half_period = D5; duration = B_16; end
        54: begin freq_half_period = F5; duration = B_8; end
        55: begin freq_half_period = F5; duration = B_8; end
        56: begin freq_half_period = D5; duration = B_8; end
        57: begin freq_half_period = D5; duration = B_8; end
        58: begin freq_half_period = F5; duration = B_16+B_32; end
        59: begin freq_half_period = F5; duration = B_16+B_32; end
        60: begin freq_half_period = F5; duration = B_16; end
        61: begin freq_half_period = F5; duration = B_16; end
        62: begin freq_half_period = D5; duration = B_16+B_8; end


        // 몸 몸 몸 매 몸몸몸 매- Oh Yeah-! (5' 5' 5' 4' 5' 5' 5' 5' 4' 5' 4' 2')
        63: begin freq_half_period = G5; duration = B_8; end
        64: begin freq_half_period = G5; duration = B_8; end
        65: begin freq_half_period = G5; duration = B_8; end
        66: begin freq_half_period = F5; duration = B_8; end
        67: begin freq_half_period = G5; duration = B_16+B_32; end
        68: begin freq_half_period = G5; duration = B_16+B_32; end
        69: begin freq_half_period = G5; duration = B_16; end
        70: begin freq_half_period = G5; duration = B_16; end
        71: begin freq_half_period = F5; duration = B_16; end
        72: begin freq_half_period = G5; duration = B_16; end
        73: begin freq_half_period = F5; duration = B_16; end
        74: begin freq_half_period = D5; duration = B_2+B_8; end


        // Let me See-, let me see- (2' 4' 4' 2' 1' 1')
        75: begin freq_half_period = D5; duration = B_16; end
        76: begin freq_half_period = F5; duration = B_16; end
        77: begin freq_half_period = F5; duration = B_8; end
        78: begin freq_half_period = D5; duration = B_16; end
        79: begin freq_half_period = C5; duration = B_16; end
        80: begin freq_half_period = C5; duration = B_2+B_8; end


        // WoOoOOOooo- (4' 7' 1'' 2'')
        81: begin freq_half_period = F5; duration = B_8; end
        82: begin freq_half_period = A5_S; duration = B_8; end
        83: begin freq_half_period = C6; duration = B_8; end
        84: begin freq_half_period = D6; duration = B_2+B_2+B_8; end


        // 유쏘 섹시-★ (4' 4' 4' 4')
        85: begin freq_half_period = F5; duration = B_8; end
        86: begin freq_half_period = F5; duration = B_16; end
        87: begin freq_half_period = F5; duration = B_8; end
        88: begin freq_half_period = F5; duration = B_16+B_2+B_8; end


        // WoOoOOOooo- (5' 7' 1'' 2'' 1'')
        89: begin freq_half_period = G5; duration = B_8; end
        90: begin freq_half_period = A5_S; duration = B_8; end
        91: begin freq_half_period = C6; duration = B_16; end
        92: begin freq_half_period = D6; duration = B_16; end
        93: begin freq_half_period = C6; duration = B_2+B_8; end


        // 유쏘 섹시 유 쏘 섹시 걸-. (1' 1' 1' 1' 4 4 5 7 7)
        94: begin freq_half_period = C5; duration = B_8; end
        95: begin freq_half_period = C5; duration = B_16; end
        96: begin freq_half_period = C5; duration = B_8; end
        97: begin freq_half_period = C5; duration = B_16; end
        98: begin freq_half_period = 0;  duration = B_16; end
        99: begin freq_half_period = F4; duration = B_8; end
        100: begin freq_half_period = F4; duration = B_16; end
        101: begin freq_half_period = G4; duration = B_8; end
        102: begin freq_half_period = A4_S; duration = B_16; end
        103: begin freq_half_period = A4_S; duration = B_16+B_2+B_2; end


        default: begin freq_half_period = 0; duration = B_4; end
    endcase
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




module music_player(
    input clk, reset_p,    // 시스템 클럭 (100MHz), 리셋 신호
    input nmixx,           // 재생 제어 신호 (기존 en -> nmixx로 변경!)
    output reg buzzer,     // 피에조 부저 출력 
    output [7:0] note_idx_out // 현재 연주 중인 노트 인덱스 (디버깅/LED 표시용)
    );
    
    // =================================================================
    // 1. 음계 파라미터 정의 (100MHz 클럭 기준 분주비 계산)
    //    공식: 분주비 = 100,000,000 / (주파수 * 2)
    // =================================================================


    // --- 3옥타브 (저음) ---
    parameter DO_3    = 381679; 
    parameter DO_S_3  = 359712; 
    parameter RE_3    = 340136;
    parameter RE_S_3  = 320512;
    parameter MI_3    = 303030;
    parameter FA_3    = 285714;
    parameter FA_S_3  = 270270;
    parameter SOL_3   = 255102;
    parameter SOL_S_3 = 240384;
    parameter LA_3    = 227272;
    parameter LA_S_3  = 214592;
    parameter SI_3    = 202429;


    // --- 4옥타브 (기본) ---
    parameter DO_4    = 190839; 
    parameter DO_S_4  = 180505;
    parameter RE_4    = 170068;
    parameter RE_S_4  = 160771;
    parameter MI_4    = 151515;
    parameter FA_4    = 143266;
    parameter FA_S_4  = 135135;
    parameter SOL_4   = 127551;
    parameter SOL_S_4 = 120481;
    parameter LA_4    = 113636; // 440Hz (라)
    parameter LA_S_4  = 107296;
    parameter SI_4    = 101214;


    // --- 5옥타브 (고음) ---
    parameter DO_5    = 95602;
    parameter DO_S_5  = 90252;
    parameter RE_5    = 85178;
    parameter RE_S_5  = 80385;
    parameter MI_5    = 75872;
    parameter FA_5    = 71633;
    parameter FA_S_5  = 67567;
    parameter SOL_5   = 63775;
    parameter SOL_S_5 = 60168;
    parameter LA_5    = 56818;
    parameter LA_S_5  = 53648;
    parameter SI_5    = 50607;
    
    parameter REST    = 0;   // 쉼표 (소리 없음)


    // =================================================================
    // 2. 내부 변수 및 박자 설정
    // =================================================================
    reg [31:0] tone_freq;    // 현재 재생할 음의 분주비 (주기/2)
    reg [31:0] note_len;     // 이번 음의 박자 길이 (1=16분음표, 4=4분음표 등)
    reg [31:0] clk_cnt;      // PWM 주파수 생성을 위한 카운터
    reg [31:0] duration_cnt; // 박자(음 길이) 유지를 위한 카운터
    reg [7:0]  note_index;   // 악보의 현재 위치 (0, 1, 2...)
    
    // 박자 속도 조절 (BPM 관련)
    // 100MHz / 9,375,000 약 0.09초 (빠른 템포의 1 단위)
    parameter BASE_BEAT = 9_375_000; 
    
    // 현재 음의 총 지속 시간 계산 (기본박자 * 악보에 적힌 길이)
    wire [31:0] current_duration_limit = BASE_BEAT * note_len;
    
    // =================================================================
    // 3. FSM (유한 상태 머신) - 재생 제어
    // =================================================================
    parameter IDLE  = 2'b00; // 대기 상태
    parameter START = 2'b01; // 시작 트리거
    parameter PLAY  = 2'b10; // 재생 중
    reg [1:0] state, next_state;
    
    // [3-1] 상태 레지스터 업데이트 (동기식)
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) state <= IDLE;
        else state <= next_state;
    end
    
    // [3-2] 다음 상태 결정 로직 (조합회로)
    // nmixx 신호에 따라 재생을 시작하거나 멈춤
    always @(*) begin
        case(state)
            IDLE:  next_state = (nmixx) ? START : IDLE; // nmixx가 1이면 시작
            START: next_state = PLAY;                   // 바로 재생 상태로 넘어감
            PLAY:  next_state = (nmixx) ? PLAY : IDLE;  // nmixx가 1인 동안 계속 재생
            default: next_state = IDLE;
        endcase
    end
    
    // =================================================================
    // 4. 소리(주파수) 생성 로직 (PWM 방식)
    // =================================================================
    always @(posedge clk, posedge reset_p) begin
        if(reset_p) begin
            clk_cnt <= 0;
            buzzer <= 0;
        end
        else if(!nmixx) begin // nmixx 신호가 없으면 소리 끔
            clk_cnt <= 0;
            buzzer <= 0;
        end 
        else begin
            // 쉼표(REST)거나 주파수 값이 0이면 부저를 울리지 않음
            if (tone_freq == 0) begin
                buzzer <= 0;
                clk_cnt <= 0;
            end 
            else begin
                // 설정된 주파수 주기(tone_freq)에 도달하면 부저 상태 반전 (High <-> Low)
                if(clk_cnt >= tone_freq - 1) begin
                    clk_cnt <= 0;
                    buzzer <= ~buzzer; 
                end
                else clk_cnt <= clk_cnt + 1;
            end
        end
    end
    
    // =================================================================
    // 5. 멜로디 시퀀서 (Blue Valentine)
    //    악보 데이터를 순서대로 읽어와서 tone_freq와 note_len을 설정함
    // =================================================================
    always @(posedge clk, posedge reset_p) begin
        if (reset_p) begin
            note_index <= 0;
            duration_cnt <= 0;
            tone_freq <= REST;
            note_len <= 1;
        end 
        else if(!nmixx) begin // 재생 중이 아니면 초기화
            note_index <= 0;
            duration_cnt <= 0;
            tone_freq <= REST;
            note_len <= 1;
        end
        else begin
            // 현재 음의 길이만큼 시간이 지났는지 확인
            if (duration_cnt >= current_duration_limit) begin
                duration_cnt <= 0;
                
                // 노래 끝부분(인덱스 117)에 도달하면 다시 처음으로
                if (note_index >= 117) note_index <= 0;
                else note_index <= note_index + 1;
            end 
            else begin
                duration_cnt <= duration_cnt + 1;
            end


            // --- 악보 데이터 (Note & Duration) ---
            // A Major Key (도#, 파#, 솔#)
            case (note_index)
                // [Intro]
                0: begin tone_freq <= REST;     note_len <= 12; end // 전주 대기
                1: begin tone_freq <= MI_4;     note_len <= 3;  end
                2: begin tone_freq <= REST;     note_len <= 1;  end
                                                                
                3: begin tone_freq <= LA_4;     note_len <= 5;  end
                4: begin tone_freq <= REST;     note_len <= 1;  end
                5: begin tone_freq <= SI_4;     note_len <= 5;  end
                6: begin tone_freq <= REST;     note_len <= 1;  end
                7: begin tone_freq <= DO_S_5;   note_len <= 3;  end
                8: begin tone_freq <= REST;     note_len <= 1;  end
                                                                
                9: begin tone_freq <= SOL_S_4;  note_len <= 3;  end
                10: begin tone_freq <= REST;    note_len <= 1;  end
                11: begin tone_freq <= FA_S_4;  note_len <= 1;  end
                12: begin tone_freq <= REST;    note_len <= 1;  end
                13: begin tone_freq <= FA_S_4;  note_len <= 5;  end
                14: begin tone_freq <= REST;    note_len <= 5;  end
                                                                
                15: begin tone_freq <= RE_5;    note_len <= 5;  end
                16: begin tone_freq <= REST;    note_len <= 1;  end
                17: begin tone_freq <= RE_5;    note_len <= 1;  end
                18: begin tone_freq <= REST;    note_len <= 1;  end
                19: begin tone_freq <= RE_5;    note_len <= 1;  end
                20: begin tone_freq <= RE_5;    note_len <= 1;  end
                21: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                22: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                23: begin tone_freq <= SI_4;    note_len <= 1;  end
                24: begin tone_freq <= SI_4;    note_len <= 1;  end
                25: begin tone_freq <= LA_4;    note_len <= 1;  end
                26: begin tone_freq <= LA_4;    note_len <= 1;  end
                                                                
                27: begin tone_freq <= SOL_S_4; note_len <= 8;  end
                28: begin tone_freq <= REST;    note_len <= 2;  end
                29: begin tone_freq <= MI_4;    note_len <= 3;  end
                30: begin tone_freq <= REST;    note_len <= 1;  end
                                                                
                31: begin tone_freq <= LA_4;    note_len <= 5;  end
                32: begin tone_freq <= REST;    note_len <= 1;  end
                33: begin tone_freq <= SI_4;    note_len <= 5;  end
                34: begin tone_freq <= REST;    note_len <= 1;  end
                35: begin tone_freq <= DO_S_5;  note_len <= 3;  end
                36: begin tone_freq <= REST;    note_len <= 1;  end
                                                                
                37: begin tone_freq <= SOL_S_4; note_len <= 3;  end
                38: begin tone_freq <= REST;    note_len <= 1;  end
                39: begin tone_freq <= FA_S_4;  note_len <= 1;  end
                40: begin tone_freq <= REST;    note_len <= 1;  end
                41: begin tone_freq <= FA_S_4;  note_len <= 5;  end
                42: begin tone_freq <= REST;    note_len <= 1;  end
                43: begin tone_freq <= FA_S_4;  note_len <= 3;  end
                44: begin tone_freq <= REST;    note_len <= 1;  end
                                                                
                45: begin tone_freq <= RE_5;    note_len <= 5;  end
                46: begin tone_freq <= REST;    note_len <= 1;  end
                47: begin tone_freq <= RE_5;    note_len <= 1;  end
                48: begin tone_freq <= REST;    note_len <= 1;  end
                49: begin tone_freq <= RE_5;    note_len <= 1;  end
                50: begin tone_freq <= RE_5;    note_len <= 1;  end
                51: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                52: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                53: begin tone_freq <= SI_4;    note_len <= 1;  end
                54: begin tone_freq <= SI_4;    note_len <= 1;  end
                55: begin tone_freq <= LA_4;    note_len <= 1;  end
                56: begin tone_freq <= LA_4;    note_len <= 1;  end
                                                                
                57: begin tone_freq <= SOL_S_4; note_len <= 5;  end
                58: begin tone_freq <= REST;    note_len <= 1;  end
                59: begin tone_freq <= MI_4;    note_len <= 1;  end
                60: begin tone_freq <= REST;    note_len <= 1;  end
                61: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                62: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                63: begin tone_freq <= SI_4;    note_len <= 1;  end
                64: begin tone_freq <= SI_4;    note_len <= 1;  end
                65: begin tone_freq <= LA_4;    note_len <= 1;  end
                66: begin tone_freq <= LA_4;    note_len <= 1;  end
                67: begin tone_freq <= SI_4;    note_len <= 1;  end
                68: begin tone_freq <= SI_4;    note_len <= 1;  end
                                                                
                69: begin tone_freq <= LA_4;    note_len <= 3;  end
                70: begin tone_freq <= LA_4;    note_len <= 1;  end
                71: begin tone_freq <= MI_5;    note_len <= 3;  end
                72: begin tone_freq <= MI_5;    note_len <= 1;  end
                73: begin tone_freq <= DO_S_5;  note_len <= 3;  end
                74: begin tone_freq <= REST;    note_len <= 1;  end
                75: begin tone_freq <= DO_S_5;  note_len <= 3;  end
                76: begin tone_freq <= REST;    note_len <= 1;  end
                                                                
                77: begin tone_freq <= DO_S_5;  note_len <= 3;  end
                78: begin tone_freq <= REST;    note_len <= 1;  end
                79: begin tone_freq <= DO_S_5;  note_len <= 3;  end
                80: begin tone_freq <= REST;    note_len <= 1;  end
                81: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                82: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                83: begin tone_freq <= SI_4;    note_len <= 1;  end
                84: begin tone_freq <= SI_4;    note_len <= 1;  end
                85: begin tone_freq <= LA_4;    note_len <= 7;  end
                86: begin tone_freq <= REST;    note_len <= 1;  end
                                                                
                87: begin tone_freq <= REST;    note_len <= 12; end
                                                                
                88: begin tone_freq <= REST;    note_len <= 6;  end
                89: begin tone_freq <= MI_4;    note_len <= 1;  end
                90: begin tone_freq <= REST;    note_len <= 1;  end
                91: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                92: begin tone_freq <= DO_S_5;  note_len <= 1;  end
                93: begin tone_freq <= SI_4;    note_len <= 1;  end
                94: begin tone_freq <= SI_4;    note_len <= 1;  end
                95: begin tone_freq <= LA_4;    note_len <= 1;  end
                96: begin tone_freq <= LA_4;    note_len <= 1;  end
                97: begin tone_freq <= SI_4;    note_len <= 1;  end
                98: begin tone_freq <= SI_4;    note_len <= 1;  end
                                                                
                99: begin tone_freq <= LA_4;    note_len <= 3;  end
                100: begin tone_freq <= REST;   note_len <= 1;  end
                101: begin tone_freq <= MI_5;   note_len <= 3;  end
                102: begin tone_freq <= MI_5;   note_len <= 1;  end
                103: begin tone_freq <= DO_S_5; note_len <= 3;  end
                104: begin tone_freq <= REST;   note_len <= 1;  end
                105: begin tone_freq <= DO_S_5; note_len <= 3;  end
                106: begin tone_freq <= REST;   note_len <= 1;  end
                                                                
                107: begin tone_freq <= DO_S_5; note_len <= 3;  end
                108: begin tone_freq <= REST;   note_len <= 1;  end
                109: begin tone_freq <= DO_S_5; note_len <= 3;  end
                110: begin tone_freq <= REST;   note_len <= 1;  end
                111: begin tone_freq <= DO_S_5; note_len <= 1;  end
                112: begin tone_freq <= DO_S_5; note_len <= 1;  end
                113: begin tone_freq <= SI_4;   note_len <= 1;  end
                114: begin tone_freq <= SI_4;   note_len <= 1;  end
                115: begin tone_freq <= LA_4;   note_len <= 7;  end
                116: begin tone_freq <= REST;   note_len <= 1;  end
                                                                
                117: begin tone_freq <= REST;   note_len <= 12; end
                
                default: begin tone_freq <= REST; note_len <= 1; end
            endcase
        end
    end
    // 현재 연주 중인 노트 인덱스를 외부로 출력 (LED 확인용)
    assign note_idx_out = note_index;
endmodule




module led_pattern(
    input clk, reset_p,        // 시스템 클럭, 리셋
    input nmixx,               // 엔믹스 재생 신호 (1: 켜짐, 0: 꺼짐)
    input [7:0] note_idx,      // music_player에서 받아온 현재 음의 인덱스
    output reg [7:0] led,      // 일반 LED 8개 (비트가 1이면 켜짐)
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
    // 3. 일반 LED 패턴 제어 (음악 흐름에 따른 연출)
    // =============================================================
    always @(posedge clk or posedge reset_p) begin
        // 리셋이거나 엔믹스 신호가 없으면 LED 초기화
        if (reset_p || !nmixx) begin
            led <= 0;
        end 
        else begin
            // [Phase 1: Intro 및 빌드업] 노트 인덱스 0~58
            if(note_idx <= 58) begin
                case (note_idx)
                    // (1) 차오르는 효과 (0~7)
                    0,1,2,3,4,5,6,7: begin
                        led <= (8'h01 << (note_idx + 1)) - 1; // 1 -> 11 -> 111...
                    end
                    
                    // (2) 줄어드는 효과 (8~15)
                    // *기존 코드에서 범위가 겹쳐서 수정함 (0~15 -> 0~7, 8~15)
                    8,9,10,11,12,13,14,15: begin
                        led <= 8'hff << (note_idx - 7); // 왼쪽으로 밀면서 꺼짐
                    end
                    
                    // (3) 교차 점멸 (짝수/홀수 박자) (16~28)
                    16,17,18,19,20,21,22,23,24,25,26,27,28: begin
                        if (note_idx[0] == 0) led <= 8'hAA; // 10101010
                        else led <= 8'h55;                  // 01010101
                    end
                    
                    // (4) 오른쪽으로 흐르는 효과 (29~36)
                    29,30,31,32,33,34,35,36: begin
                         led <= 8'hff >> (note_idx - 29); 
                    end
                    
                    // (5) 다시 차오르는 효과 (37~44)
                    37,38,39,40,41,42,43,44: begin
                        led <= (8'h01 << (note_idx - 37)) - 1; 
                    end
                    
                    // (6) 빠른 교차 점멸 (45~58)
                    45,46,47,48,49,50,51,52,53,54,55,56,57,58: begin
                        if (note_idx[0] == 0) led <= 8'hAA; // 1010...
                        else led <= 8'h55;                  // 0101...
                    end
                    
                    default: led <= 0;
                endcase
            end
            
            // [Phase 2: 하이라이트 & 엔딩]
            
            // 특정 포인트(87번)에서 깜빡임 효과
            else if(note_idx == 87) begin
                if(fade_cnt[24]) led <= 8'haa;
                else led <= 8'h55;
            end
            
            // [Phase 3: 이퀄라이저 모드]
            // 음악의 리듬(eq_width)에 맞춰 가운데서 퍼지는 모양
            else begin
                case(eq_width)        
                    0: led <= 8'b0001_1000; // 가운데 2개 [..OO..]
                    1: led <= 8'b0010_0100; // 살짝 멂  [......] (변형 패턴)
                    2: led <= 8'b0011_1100; // 가운데 4개
                    3: led <= 8'b0111_1110; // 가운데 6개
                    4: led <= 8'b1111_1111; // 전체 켜짐
                    5: led <= 8'b0110_0110; // 분리됨
                    6: led <= 8'b1000_0001; // 양 끝만 켜짐
                    7: led <= 8'b0000_0000; // 꺼짐
                    default: led <= 0;
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
    // LED 연결이 없으므로 더미 wire 하나 선언해서 연결 (무시됨)
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
    reg [1:0] prev_mode;        // 이전 모드 저장용
    reg mode_change_req;        // 변경 요청 플래그
    reg [7:0] target_addr;      // 목표 주소


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