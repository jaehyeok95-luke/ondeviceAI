`timescale 1ns / 1ps

module npu_control (
    input  wire        clk,
    input  wire        rst_n,

    // PS 인터페이스
    input  wire        cmd_start_conv,     // Conv 1개 레이어 실행
    input  wire        cmd_start_fc,       // FC 전체 실행
    input  wire        cmd_start_argmax,   // Argmax 실행
    input  wire [2:0]  cmd_layer_idx,      // Conv 레이어 번호 (0~4)
    input  wire        cmd_weight_bank,    // weight 뱅크 (0=A, 1=B)
    output reg         cmd_done,
    output reg  [4:0]  result_cho,
    output reg  [4:0]  result_jung,
    output reg  [4:0]  result_jong,

    // conv_engine
    output reg         conv_start,
    output reg  [7:0]  conv_cfg_ci,
    output reg  [7:0]  conv_cfg_co,
    output reg  [6:0]  conv_cfg_w,
    output reg  [6:0]  conv_cfg_h,
    output reg         conv_cfg_weight_bank,
    output reg  [14:0] conv_fmap_rd_base,
    input  wire        conv_done,

    // fc_unit
    output reg         fc_start,
    output reg  [9:0]  fc_cfg_in_len,
    output reg  [8:0]  fc_cfg_out_len,
    output reg         fc_cfg_relu,
    output reg  [15:0] fc_w_base,
    output reg  [14:0] fc_f_rd_base,
    output reg  [14:0] fc_f_wr_base,
    input  wire        fc_done,

    // argmax
    output reg         argmax_start,
    input  wire        argmax_done,
    input  wire [4:0]  argmax_result,
    
    output reg  [3:0]  conv_cfg_shift,     // conv_engine용
    output reg  [3:0]  fc_cfg_shift,       // fc_unit용
    
    output reg  [1:0]  mode,              // 0=idle, 1=conv, 2=fc, 3=argmax
    output wire        cmd_busy,          // state != M_IDLE
    output reg  [4:0]  argmax_num_classes,
    output reg  [14:0] argmax_fmap_rd_base,

    // fmap 제어
    output reg         ping_is_input
);

    localparam M_IDLE = 2'd0;
    localparam M_RUN  = 2'd1;
    localparam M_DONE = 2'd2;

    reg [1:0] state;
    reg [3:0] fc_step;
    reg [2:0] argmax_step;

    // 레이어 ROM
    reg [7:0] rom_ci, rom_co;
    reg [6:0] rom_w, rom_h;
    
    assign cmd_busy = (state != M_IDLE);

    always @(*) begin
        case (cmd_layer_idx)
            3'd0: begin rom_ci=8'd1;   rom_co=8'd32;  rom_w=7'd64; rom_h=7'd64; end
            3'd1: begin rom_ci=8'd32;  rom_co=8'd64;  rom_w=7'd32; rom_h=7'd32; end
            3'd2: begin rom_ci=8'd64;  rom_co=8'd128; rom_w=7'd16; rom_h=7'd16; end
            3'd3: begin rom_ci=8'd128; rom_co=8'd128; rom_w=7'd8;  rom_h=7'd8;  end
            3'd4: begin rom_ci=8'd128; rom_co=8'd128; rom_w=7'd4;  rom_h=7'd4;  end
            default: begin rom_ci=8'd1; rom_co=8'd32; rom_w=7'd64; rom_h=7'd64; end
        endcase
    end
    
    reg [3:0] rom_shift;

    always @(*) begin
        case (cmd_layer_idx)
            3'd0: rom_shift = 4'd9;   // conv1
            3'd1: rom_shift = 4'd9;   // conv2
            3'd2: rom_shift = 4'd12;  // conv3
            3'd3: rom_shift = 4'd12;  // conv4
            3'd4: rom_shift = 4'd11;  // conv5
            default: rom_shift = 4'd9;
        endcase
    end


    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= M_IDLE;
            cmd_done    <= 1'b0;
            conv_start  <= 1'b0;
            fc_start    <= 1'b0;
            argmax_start <= 1'b0;
            fc_step     <= 4'd0;
            argmax_step <= 3'd0;
            ping_is_input <= 1'b1;
            result_cho  <= 5'd0;
            result_jung <= 5'd0;
            result_jong <= 5'd0;
            conv_cfg_shift <= 4'd0;
            fc_cfg_shift   <= 4'd0;
            mode <= 2'd0;
            argmax_num_classes <= 5'd0;
            argmax_fmap_rd_base <= 15'd0;
        end else begin
            cmd_done     <= 1'b0;
            conv_start   <= 1'b0;
            fc_start     <= 1'b0;
            argmax_start <= 1'b0;

            case (state)
                M_IDLE: begin
                    if (cmd_start_conv) begin
                        conv_start          <= 1'b1;
                        conv_cfg_ci         <= rom_ci;
                        conv_cfg_co         <= rom_co;
                        conv_cfg_w          <= rom_w;
                        conv_cfg_h          <= rom_h;
                        conv_cfg_weight_bank <= cmd_weight_bank;
                        conv_fmap_rd_base   <= 15'd0;
                        conv_cfg_shift       <= rom_shift;    // ← 추가
                        mode  <= 2'd0;
                        state <= M_RUN;
                    end
                    else if (cmd_start_fc) begin
                        fc_step <= 4'd0;
                        mode    <= 2'd1;
                        state   <= M_RUN;
                    end
                    else if (cmd_start_argmax) begin
                        argmax_step <= 3'd0;
                        mode        <= 2'd2;
                        state       <= M_RUN;
                    end
                end

                M_RUN: begin
                    case (mode)
                        2'd0: begin // Conv
                            if (conv_done) begin
                                ping_is_input <= ~ping_is_input;
                                state <= M_DONE;
                            end
                        end
                        2'd1: begin // FC (기존 fc_step 로직 동일)
                            case (fc_step)
                                4'd0: begin fc_start<=1'b1; fc_cfg_in_len<=10'd512; fc_cfg_out_len<=9'd256; fc_cfg_relu<=1'b1;
                                            fc_w_base<=16'd0; fc_f_rd_base<=15'd0; fc_f_wr_base<=15'd512; fc_cfg_shift<=4'd10; fc_step<=4'd1; end
                                4'd1: if (fc_done) begin ping_is_input<=~ping_is_input; fc_step<=4'd2; end
                                4'd2: begin fc_start<=1'b1; fc_cfg_in_len<=10'd256; fc_cfg_out_len<=9'd19; fc_cfg_relu<=1'b0;
                                            fc_w_base<=16'd32832; fc_f_rd_base<=15'd512; fc_f_wr_base<=15'd0; fc_cfg_shift<=4'd10; fc_step<=4'd3; end
                                4'd3: if (fc_done) fc_step<=4'd4;
                                4'd4: begin fc_start<=1'b1; fc_cfg_in_len<=10'd256; fc_cfg_out_len<=9'd21; fc_cfg_relu<=1'b0;
                                            fc_w_base<=16'd34053; fc_f_rd_base<=15'd512; fc_f_wr_base<=15'd19; fc_cfg_shift<=4'd11; fc_step<=4'd5; end
                                4'd5: if (fc_done) fc_step<=4'd6;
                                4'd6: begin fc_start<=1'b1; fc_cfg_in_len<=10'd256; fc_cfg_out_len<=9'd128; fc_cfg_relu<=1'b1;
                                            fc_w_base<=16'd35403; fc_f_rd_base<=15'd512; fc_f_wr_base<=15'd40; fc_cfg_shift<=4'd9; fc_step<=4'd7; end
                                4'd7: if (fc_done) begin ping_is_input<=~ping_is_input; fc_step<=4'd8; end
                                4'd8: begin fc_start<=1'b1; fc_cfg_in_len<=10'd128; fc_cfg_out_len<=9'd28; fc_cfg_relu<=1'b0;
                                            fc_w_base<=16'd43627; fc_f_rd_base<=15'd40; fc_f_wr_base<=15'd168; fc_cfg_shift<=4'd11; fc_step<=4'd9; end
                                4'd9: if (fc_done) state <= M_DONE;
                                default: fc_step <= 4'd0;
                            endcase
                        end
                        2'd2: begin // Argmax (기존 동일)
                            case (argmax_step)
                                3'd0: begin argmax_start<=1'b1; argmax_num_classes<=5'd19;
                                            argmax_fmap_rd_base<=15'd0;   argmax_step<=3'd1; end                                
                                3'd1: if (argmax_done) begin result_cho<=argmax_result; argmax_step<=3'd2; end
                                3'd2: begin argmax_start<=1'b1; argmax_num_classes<=5'd21;
                                            argmax_fmap_rd_base<=15'd19;  argmax_step<=3'd3; end                                
                                3'd3: if (argmax_done) begin result_jung<=argmax_result; argmax_step<=3'd4; end
                                3'd4: begin argmax_start<=1'b1; argmax_num_classes<=5'd28;
                                            argmax_fmap_rd_base<=15'd168; argmax_step<=3'd5; end                                
                                3'd5: if (argmax_done) begin result_jong<=argmax_result; state<=M_DONE; end
                                default: argmax_step <= 3'd0;
                            endcase
                        end
                    endcase
                end

                M_DONE: begin
                    cmd_done <= 1'b1;
                    state    <= M_IDLE;
                end

                default: state <= M_IDLE;
            endcase
        end
    end

endmodule
