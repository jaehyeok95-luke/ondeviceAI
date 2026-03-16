`timescale 1ns / 1ps

module npu_core #(
    parameter LAST_LAYER = 12,
    parameter C1_OUT  = 32,
    parameter C2_OUT  = 64,
    parameter C3_OUT  = 128,
    parameter C4_OUT  = 128,
    parameter C5_OUT  = 128,
    parameter FC_SHARED_OUT = 256,
    parameter FC_JONG_OUT   = 128,
    parameter HEAD_CHO_OUT  = 19,
    parameter HEAD_JUNG_OUT = 21,
    parameter HEAD_JONG_OUT = 28
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_inference,
    input  wire        start_load_img,
    input  wire [7:0]  img_pixel,
    input  wire        img_pixel_valid,
    input  wire [7:0]  s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tlast,
    output reg  [3:0]  current_layer,
    output reg         inference_done,
    output reg  [7:0]  result_cho,
    output reg  [7:0]  result_jung,
    output reg  [7:0]  result_jong,
    output reg         layer_ready,
    output reg  [3:0]  layer_idx_out,
    output wire [7:0]  debug_ch_count,
    // npu_core 포트 선언부에 추가
    output wire        busy,
    output wire [3:0]  dbg_state_out,
    output wire        dbg_tready_out
);

    // =========================================================
    //  FSM States
    // =========================================================
    localparam S_IDLE        = 4'd0;
    localparam S_LOAD_IMG    = 4'd1;
    localparam S_LAYER_SETUP = 4'd2;
    localparam S_WAIT_DMA    = 4'd3;
    localparam S_DDR_LOAD    = 4'd4;
    localparam S_CONV_SETUP  = 4'd5;
    localparam S_COMPUTE     = 4'd6;
    localparam S_POOL        = 4'd7;
    localparam S_NEXT_CH     = 4'd8;
    localparam S_LAYER_DONE  = 4'd9;
    localparam S_DONE        = 4'd10;
    localparam S_FC_BIAS_RD  = 4'd11;
    localparam S_FC_BIAS_W1  = 4'd12;
    localparam S_FC_BIAS_W2  = 4'd13;

    localparam TYPE_CONV   = 2'd0;
    localparam TYPE_FC     = 2'd1;
    localparam TYPE_ARGMAX = 2'd2;

    reg [3:0] state;

    // =========================================================
    //  Layer Parameter LUT
    // =========================================================
    reg [1:0]  lut_type;
    reg [6:0]  lut_in_w, lut_in_h;
    reg [9:0]  lut_c_in;
    reg [8:0]  lut_c_out;
    reg        lut_pool_en, lut_relu_en;
    reg [3:0]  lut_rd_sel, lut_wr_sel;
    reg [10:0] lut_per_ch;
    reg [17:0] lut_total_weight_bytes;

    always @(*) begin
        lut_type=TYPE_CONV; lut_in_w=7'd64; lut_in_h=7'd64;
        lut_c_in=10'd1; lut_c_out=9'd32;
        lut_pool_en=1'b1; lut_relu_en=1'b1;
        lut_rd_sel=4'd0; lut_wr_sel=4'd1;
        lut_per_ch=11'd10; lut_total_weight_bytes=18'd320;
        case (current_layer)
            4'd0: begin lut_type=TYPE_CONV; lut_in_w=7'd64; lut_in_h=7'd64; lut_c_in=10'd1; lut_c_out=C1_OUT; lut_pool_en=1'b1; lut_relu_en=1'b1; lut_rd_sel=4'd0; lut_wr_sel=4'd1; lut_per_ch=11'd10; lut_total_weight_bytes=18'd320; end
            4'd1: begin lut_type=TYPE_CONV; lut_in_w=7'd32; lut_in_h=7'd32; lut_c_in=10'd32; lut_c_out=C2_OUT; lut_pool_en=1'b1; lut_relu_en=1'b1; lut_rd_sel=4'd1; lut_wr_sel=4'd2; lut_per_ch=11'd289; lut_total_weight_bytes=18'd18496; end
            4'd2: begin lut_type=TYPE_CONV; lut_in_w=7'd16; lut_in_h=7'd16; lut_c_in=10'd64; lut_c_out=C3_OUT; lut_pool_en=1'b1; lut_relu_en=1'b1; lut_rd_sel=4'd2; lut_wr_sel=4'd3; lut_per_ch=11'd577; lut_total_weight_bytes=18'd73856; end
            4'd3: begin lut_type=TYPE_CONV; lut_in_w=7'd8; lut_in_h=7'd8; lut_c_in=10'd128; lut_c_out=C4_OUT; lut_pool_en=1'b1; lut_relu_en=1'b1; lut_rd_sel=4'd3; lut_wr_sel=4'd4; lut_per_ch=11'd1153; lut_total_weight_bytes=18'd147584; end
            4'd4: begin lut_type=TYPE_CONV; lut_in_w=7'd4; lut_in_h=7'd4; lut_c_in=10'd128; lut_c_out=C5_OUT; lut_pool_en=1'b1; lut_relu_en=1'b1; lut_rd_sel=4'd4; lut_wr_sel=4'd5; lut_per_ch=11'd1153; lut_total_weight_bytes=18'd147584; end
            4'd5: begin lut_type=TYPE_FC; lut_in_w=7'd1; lut_in_h=7'd1; lut_c_in=10'd512; lut_c_out=FC_SHARED_OUT; lut_pool_en=1'b0; lut_relu_en=1'b1; lut_rd_sel=4'd5; lut_wr_sel=4'd6; lut_per_ch=11'd513; lut_total_weight_bytes=18'd131328; end
            4'd6: begin lut_type=TYPE_ARGMAX; lut_c_in=10'd0; lut_c_out=9'd19; lut_rd_sel=4'd8; lut_wr_sel=4'd8; lut_per_ch=11'd0; lut_total_weight_bytes=18'd0; end
            4'd7: begin lut_type=TYPE_FC; lut_in_w=7'd1; lut_in_h=7'd1; lut_c_in=10'd256; lut_c_out=HEAD_CHO_OUT; lut_pool_en=1'b0; lut_relu_en=1'b0; lut_rd_sel=4'd6; lut_wr_sel=4'd8; lut_per_ch=11'd257; lut_total_weight_bytes=18'd4883; end
            4'd8: begin lut_type=TYPE_ARGMAX; lut_c_in=10'd0; lut_c_out=9'd21; lut_rd_sel=4'd8; lut_wr_sel=4'd8; lut_per_ch=11'd0; lut_total_weight_bytes=18'd0; end
            4'd9: begin lut_type=TYPE_FC; lut_in_w=7'd1; lut_in_h=7'd1; lut_c_in=10'd256; lut_c_out=HEAD_JUNG_OUT; lut_pool_en=1'b0; lut_relu_en=1'b0; lut_rd_sel=4'd6; lut_wr_sel=4'd8; lut_per_ch=11'd257; lut_total_weight_bytes=18'd5397; end
            4'd10: begin lut_type=TYPE_ARGMAX; lut_c_in=10'd0; lut_c_out=9'd28; lut_rd_sel=4'd8; lut_wr_sel=4'd8; lut_per_ch=11'd0; lut_total_weight_bytes=18'd0; end
            4'd11: begin lut_type=TYPE_FC; lut_in_w=7'd1; lut_in_h=7'd1; lut_c_in=10'd256; lut_c_out=FC_JONG_OUT; lut_pool_en=1'b0; lut_relu_en=1'b1; lut_rd_sel=4'd6; lut_wr_sel=4'd7; lut_per_ch=11'd257; lut_total_weight_bytes=18'd32896; end
            4'd12: begin lut_type=TYPE_FC; lut_in_w=7'd1; lut_in_h=7'd1; lut_c_in=10'd128; lut_c_out=HEAD_JONG_OUT; lut_pool_en=1'b0; lut_relu_en=1'b0; lut_rd_sel=4'd7; lut_wr_sel=4'd8; lut_per_ch=11'd129; lut_total_weight_bytes=18'd3612; end
            default: begin lut_per_ch=11'd0; lut_total_weight_bytes=18'd0; end
        endcase
    end

    // =========================================================
    //  Registered layer parameters
    // =========================================================
    reg [1:0]  cur_type;
    reg [6:0]  cur_in_w, cur_in_h;
    reg [9:0]  cur_c_in;
    reg [8:0]  cur_c_out;
    reg        cur_pool_en, cur_relu_en;
    reg [3:0]  cur_rd_sel, cur_wr_sel;
    reg [10:0] cur_per_ch;
    reg [10:0] cur_bias_offset;    // per_ch - 1
    reg [17:0] cur_total_weight_bytes;
    reg [8:0]  ch_idx;
    reg [17:0] cur_weight_base;    // 현재 채널 weight 시작 주소 (누적)
    reg [17:0] dma_wr_addr;

    // =========================================================
    //  Image BRAM (4096)
    // =========================================================
    reg  [11:0] img_wr_addr;
    reg  [7:0]  img_wr_data;
    reg         img_we;
    reg  [14:0] img_rd_addr;       // patch_reader의 bram_addr이 [14:0]

    reg [7:0] fmap_img [0:4095];
    always @(posedge clk) if (img_we) fmap_img[img_wr_addr] <= img_wr_data;

    reg [7:0] img_rd_data_reg;
    always @(posedge clk) img_rd_data_reg <= fmap_img[img_rd_addr[11:0]];

    // =========================================================
    //  Feature Map BRAMs (각 BRAM 고유 비트폭)
    // =========================================================
    // --- fmap_c1: 32x32*32=32768, ADDR_W=15 ---
    reg  [14:0] fmap_c1_rd_addr_reg;
    reg  [14:0] fmap_c1_wr_addr;
    reg  [7:0]  fmap_c1_wr_data;
    reg         fmap_c1_we;
    wire [7:0]  fmap_c1_rd_data;
    fmap_bram #(.DEPTH(32768),.ADDR_W(15)) u_fmap_c1 (
        .clk(clk), .we(fmap_c1_we),
        .addr_a(fmap_c1_wr_addr), .din(fmap_c1_wr_data),
        .addr_b(fmap_c1_rd_addr_reg), .dout(fmap_c1_rd_data));

    // --- fmap_c2: 16x16*64=16384, ADDR_W=14 ---
    reg  [13:0] fmap_c2_rd_addr_reg;
    reg  [13:0] fmap_c2_wr_addr;
    reg  [7:0]  fmap_c2_wr_data;
    reg         fmap_c2_we;
    wire [7:0]  fmap_c2_rd_data;
    fmap_bram #(.DEPTH(16384),.ADDR_W(14)) u_fmap_c2 (
        .clk(clk), .we(fmap_c2_we),
        .addr_a(fmap_c2_wr_addr), .din(fmap_c2_wr_data),
        .addr_b(fmap_c2_rd_addr_reg), .dout(fmap_c2_rd_data));

    // --- fmap_c3: 8x8*128=8192, ADDR_W=13 ---
    reg  [12:0] fmap_c3_rd_addr_reg;
    reg  [12:0] fmap_c3_wr_addr;
    reg  [7:0]  fmap_c3_wr_data;
    reg         fmap_c3_we;
    wire [7:0]  fmap_c3_rd_data;
    fmap_bram #(.DEPTH(8192),.ADDR_W(13)) u_fmap_c3 (
        .clk(clk), .we(fmap_c3_we),
        .addr_a(fmap_c3_wr_addr), .din(fmap_c3_wr_data),
        .addr_b(fmap_c3_rd_addr_reg), .dout(fmap_c3_rd_data));

    // --- fmap_c4: 4x4*128=2048, ADDR_W=11 ---
    reg  [10:0] fmap_c4_rd_addr_reg;
    reg  [10:0] fmap_c4_wr_addr;
    reg  [7:0]  fmap_c4_wr_data;
    reg         fmap_c4_we;
    wire [7:0]  fmap_c4_rd_data;
    fmap_bram #(.DEPTH(2048),.ADDR_W(11)) u_fmap_c4 (
        .clk(clk), .we(fmap_c4_we),
        .addr_a(fmap_c4_wr_addr), .din(fmap_c4_wr_data),
        .addr_b(fmap_c4_rd_addr_reg), .dout(fmap_c4_rd_data));

    // --- fmap_c5: 2x2*128=512, ADDR_W=9 ---
    reg  [8:0]  fmap_c5_rd_addr_reg;
    reg  [8:0]  fmap_c5_wr_addr;
    reg  [7:0]  fmap_c5_wr_data;
    reg         fmap_c5_we;
    wire [7:0]  fmap_c5_rd_data;
    fmap_bram #(.DEPTH(512),.ADDR_W(9)) u_fmap_c5 (
        .clk(clk), .we(fmap_c5_we),
        .addr_a(fmap_c5_wr_addr), .din(fmap_c5_wr_data),
        .addr_b(fmap_c5_rd_addr_reg), .dout(fmap_c5_rd_data));

    // --- fmap_fc1: 256, ADDR_W=8 ---
    reg  [7:0]  fmap_fc1_rd_addr_reg;
    reg  [7:0]  fmap_fc1_wr_addr;
    reg  [7:0]  fmap_fc1_wr_data;
    reg         fmap_fc1_we;
    wire [7:0]  fmap_fc1_rd_data;
    fmap_bram #(.DEPTH(256),.ADDR_W(8)) u_fmap_fc1 (
        .clk(clk), .we(fmap_fc1_we),
        .addr_a(fmap_fc1_wr_addr), .din(fmap_fc1_wr_data),
        .addr_b(fmap_fc1_rd_addr_reg), .dout(fmap_fc1_rd_data));

    // --- fmap_fc2: 128, ADDR_W=7 ---
    reg  [6:0]  fmap_fc2_rd_addr_reg;
    reg  [6:0]  fmap_fc2_wr_addr;
    reg  [7:0]  fmap_fc2_wr_data;
    reg         fmap_fc2_we;
    wire [7:0]  fmap_fc2_rd_data;
    fmap_bram #(.DEPTH(128),.ADDR_W(7)) u_fmap_fc2 (
        .clk(clk), .we(fmap_fc2_we),
        .addr_a(fmap_fc2_wr_addr), .din(fmap_fc2_wr_data),
        .addr_b(fmap_fc2_rd_addr_reg), .dout(fmap_fc2_rd_data));

    // --- fmap_head: 28, ADDR_W=5 ---
    reg  [4:0]  fmap_head_rd_addr_reg;
    reg  [4:0]  fmap_head_wr_addr;
    reg  [7:0]  fmap_head_wr_data;
    reg         fmap_head_we;
    wire [7:0]  fmap_head_rd_data;
    fmap_bram #(.DEPTH(28),.ADDR_W(5)) u_fmap_head (
        .clk(clk), .we(fmap_head_we),
        .addr_a(fmap_head_wr_addr), .din(fmap_head_wr_data),
        .addr_b(fmap_head_rd_addr_reg), .dout(fmap_head_rd_data));

    // --- fmap_temp: 4096 (1채널 conv출력), ADDR_W=12 ---
    reg  [11:0] fmap_temp_rd_addr_reg;
    reg  [11:0] fmap_temp_wr_addr;
    reg  [7:0]  fmap_temp_wr_data;
    reg         fmap_temp_we;
    wire [7:0]  fmap_temp_rd_data;
    fmap_bram #(.DEPTH(4096),.ADDR_W(12)) u_fmap_temp (
        .clk(clk), .we(fmap_temp_we),
        .addr_a(fmap_temp_wr_addr), .din(fmap_temp_wr_data),
        .addr_b(fmap_temp_rd_addr_reg), .dout(fmap_temp_rd_data));

    // =========================================================
    //  Weight BRAM (148000)
    // =========================================================
    localparam WEIGHT_BRAM_DEPTH = 148000;
    reg  [17:0] wbram_wr_addr;
    reg  [7:0]  wbram_wr_data;
    reg         wbram_we;
    reg  [17:0] wbram_rd_addr;
    reg  [7:0]  weight_bram [0:WEIGHT_BRAM_DEPTH-1];
    always @(posedge clk) if (wbram_we) weight_bram[wbram_wr_addr] <= wbram_wr_data;
    reg signed [7:0] wbram_rd_data;
    always @(posedge clk) wbram_rd_data <= $signed(weight_bram[wbram_rd_addr]);

    // =========================================================
    //  fmap read data 선택 (1단 MUX, 입력은 전부 레지스터)
    // =========================================================
    reg [7:0] fmap_rd_data_sel;
    always @(*) begin
        case (cur_rd_sel)
            4'd0: fmap_rd_data_sel = img_rd_data_reg;
            4'd1: fmap_rd_data_sel = fmap_c1_rd_data;
            4'd2: fmap_rd_data_sel = fmap_c2_rd_data;
            4'd3: fmap_rd_data_sel = fmap_c3_rd_data;
            4'd4: fmap_rd_data_sel = fmap_c4_rd_data;
            4'd5: fmap_rd_data_sel = fmap_c5_rd_data;
            4'd6: fmap_rd_data_sel = fmap_fc1_rd_data;
            4'd7: fmap_rd_data_sel = fmap_fc2_rd_data;
            4'd8: fmap_rd_data_sel = fmap_head_rd_data;
            4'd9: fmap_rd_data_sel = fmap_temp_rd_data;
            default: fmap_rd_data_sel = 8'd0;
        endcase
    end

    // =========================================================
    //  Submodule: patch_reader (12 ports)
    // =========================================================
    reg         pr_start;
    reg  [6:0]  pr_width_cfg, pr_height_cfg;   // [6:0] = 모듈 포트
    reg  [14:0] pr_ch_offset;                   // [14:0] = 모듈 포트
    reg  [6:0]  pr_target_row, pr_target_col;   // [6:0] = 모듈 포트
    wire [14:0] pr_bram_addr;                   // [14:0] = 모듈 포트
    wire [7:0]  pr_patch [0:2][0:2];            // [7:0] 2D = 모듈 포트
    wire        pr_patch_valid;

    patch_reader u_patch_reader (
        .clk(clk), .rst_n(rst_n), .start(pr_start),
        .width_cfg(pr_width_cfg), .height_cfg(pr_height_cfg),
        .ch_offset(pr_ch_offset),
        .target_row(pr_target_row), .target_col(pr_target_col),
        .bram_addr(pr_bram_addr), .bram_data(fmap_rd_data_sel),
        .patch(pr_patch), .patch_valid(pr_patch_valid));

    // =========================================================
    //  Submodule: conv3x3_relu (25 ports, c_out=1로 호출)
    // =========================================================
    reg         conv_start;
    reg  [7:0]  conv_c_in_reg;                   // [7:0] = 모듈 c_in
    reg  [6:0]  conv_in_w_reg, conv_in_h_reg;   // [6:0] = 모듈 in_w/in_h
    reg  [17:0] conv_weight_base_reg;            // [17:0] = 모듈 weight_base
    reg  [17:0] conv_bias_base_reg;              // [16:0] = 모듈 bias_base

    wire signed [7:0] conv_out_pixel;            // signed [7:0] = 모듈
    wire [7:0]  conv_out_ch_idx;                 // [7:0] = 모듈
    wire [14:0] conv_out_pixel_pos;              // [14:0] = 모듈
    wire        conv_out_valid, conv_done;
    wire [17:0] conv_weight_offset;              // [17:0] = 모듈
    wire [17:0] conv_bias_offset;                // [16:0] = 모듈
    wire [7:0]  conv_cur_ci;                     // [7:0] = 모듈
    wire        conv_need_patch;
    wire [6:0]  conv_target_row, conv_target_col;// [6:0] = 모듈
    wire        conv_reading_bias;

    conv3x3_relu u_conv (
        .clk(clk), .rst_n(rst_n), .start(conv_start),
        .in_w(conv_in_w_reg), .in_h(conv_in_h_reg),
        .c_in(conv_c_in_reg),
        .c_out(8'd1),
        .weight_base(conv_weight_base_reg),
        .bias_base(conv_bias_base_reg),
        .patch(pr_patch), .patch_valid(pr_patch_valid),
        .weight_data(wbram_rd_data),
        .weight_offset(conv_weight_offset),
        .bias_data(wbram_rd_data),
        .bias_offset(conv_bias_offset),
        .cur_ci(conv_cur_ci), .need_patch(conv_need_patch),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .out_pixel(conv_out_pixel), .out_ch_idx(conv_out_ch_idx),
        .out_pixel_pos(conv_out_pixel_pos),
        .out_valid(conv_out_valid), .done(conv_done),
        .reading_bias(conv_reading_bias));

    // =========================================================
    //  Submodule: fc_relu (14 ports)
    // =========================================================
    reg         fc_start;
    reg  [11:0] fc_in_len_reg;                   // [11:0] = 모듈 in_len
    reg         fc_relu_en_reg;
    reg  [14:0] fc_fmap_rd_base_reg;             // [14:0] = 모듈 fmap_rd_base
    reg  signed [7:0] fc_bias_val;               // signed [7:0] = 모듈 bias_data

    wire signed [7:0] fc_out_pixel;              // signed [7:0] = 모듈
    wire        fc_out_valid, fc_done;
    wire [14:0] fc_fmap_rd_addr;                 // [14:0] = 모듈
    wire [11:0] fc_weight_addr;                  // [11:0] = 모듈

    fc_relu u_fc (
        .clk(clk), .rst_n(rst_n), .start(fc_start),
        .in_len(fc_in_len_reg), .relu_en(fc_relu_en_reg),
        .fmap_rd_addr(fc_fmap_rd_addr), .fmap_rd_data(fmap_rd_data_sel),
        .fmap_rd_base(fc_fmap_rd_base_reg),
        .weight_addr(fc_weight_addr), .weight_data(wbram_rd_data),
        .bias_data(fc_bias_val),
        .out_pixel(fc_out_pixel), .out_valid(fc_out_valid), .done(fc_done));

    // =========================================================
    //  Submodule: maxpool2x2 (12 ports, channels=1)
    // =========================================================
    reg         pool_start;
    reg  [6:0]  pool_in_w_reg, pool_in_h_reg;   // [6:0] = 모듈

    wire [14:0] pool_rd_addr;                    // [14:0] = 모듈
    wire [14:0] pool_wr_addr_out;                // [14:0] = 모듈
    wire [7:0]  pool_wr_data_out;                // [7:0] = 모듈
    wire        pool_wr_en, pool_done;

    maxpool2x2 u_pool (
        .clk(clk), .rst_n(rst_n), .start(pool_start),
        .in_w(pool_in_w_reg), .in_h(pool_in_h_reg),
        .channels(8'd1),
        .rd_addr(pool_rd_addr), .rd_data(fmap_temp_rd_data),
        .wr_addr(pool_wr_addr_out), .wr_data(pool_wr_data_out),
        .wr_en(pool_wr_en), .done(pool_done));

    // =========================================================
    //  Submodule: argmax (8 ports)
    // =========================================================
    reg        argmax_start;
    reg  [8:0] argmax_len_reg;                   // [8:0] = 모듈 len

    wire [14:0] argmax_fmap_rd_addr;             // [14:0] = 모듈
    wire [7:0]  argmax_result_idx;               // [7:0] = 모듈
    wire        argmax_done;

    argmax u_argmax (
        .clk(clk), .rst_n(rst_n), .start(argmax_start),
        .len(argmax_len_reg),
        .fmap_rd_addr(argmax_fmap_rd_addr), .fmap_rd_data(fmap_head_rd_data),
        .result_idx(argmax_result_idx), .done(argmax_done));

    // =========================================================
    //  Weight BRAM read address (state별 분리)
    // =========================================================
    reg [17:0] wbram_rd_addr_fc_bias;

    always @(*) begin
        wbram_rd_addr = 18'd0;
        case (state)
            S_COMPUTE: begin
                if (cur_type == TYPE_CONV) begin
                    if (conv_reading_bias)
                        wbram_rd_addr = conv_bias_offset;  // 17bit→18bit
                    else
                        wbram_rd_addr = conv_weight_offset;        // 18bit
                end else if (cur_type == TYPE_FC)
                    wbram_rd_addr = cur_weight_base + {6'd0, fc_weight_addr}; // 18+12
                // TYPE_ARGMAX: weight 불필요, 0 유지
            end
            S_FC_BIAS_RD, S_FC_BIAS_W1, S_FC_BIAS_W2:
                wbram_rd_addr = wbram_rd_addr_fc_bias;
            default: ;
        endcase
    end

    // =========================================================
    //  BRAM read address routing (BRAM별 독립)
    // =========================================================
    always @(*) begin
        img_rd_addr           = 15'd0;
        fmap_c1_rd_addr_reg   = 15'd0;
        fmap_c2_rd_addr_reg   = 14'd0;
        fmap_c3_rd_addr_reg   = 13'd0;
        fmap_c4_rd_addr_reg   = 11'd0;
        fmap_c5_rd_addr_reg   = 9'd0;
        fmap_fc1_rd_addr_reg  = 8'd0;
        fmap_fc2_rd_addr_reg  = 7'd0;
        fmap_head_rd_addr_reg = 5'd0;
        fmap_temp_rd_addr_reg = 12'd0;

        if (state == S_POOL)
            fmap_temp_rd_addr_reg = pool_rd_addr[11:0];

        if (state == S_COMPUTE && cur_type == TYPE_ARGMAX)
            fmap_head_rd_addr_reg = argmax_fmap_rd_addr[4:0];

        if ((state == S_COMPUTE || state == S_CONV_SETUP) && cur_type == TYPE_CONV) begin
            case (cur_rd_sel)
                4'd0: img_rd_addr         = pr_bram_addr;           // [14:0]
                4'd1: fmap_c1_rd_addr_reg = pr_bram_addr;           // [14:0]
                4'd2: fmap_c2_rd_addr_reg = pr_bram_addr[13:0];     // [13:0]
                4'd3: fmap_c3_rd_addr_reg = pr_bram_addr[12:0];     // [12:0]
                4'd4: fmap_c4_rd_addr_reg = pr_bram_addr[10:0];     // [10:0]
                default: ;
            endcase
        end

        if ((state == S_COMPUTE || state == S_FC_BIAS_RD ||
             state == S_FC_BIAS_W1 || state == S_FC_BIAS_W2)
            && cur_type == TYPE_FC) begin
            case (cur_rd_sel)
                4'd5: fmap_c5_rd_addr_reg  = fc_fmap_rd_addr[8:0];  // [8:0]
                4'd6: fmap_fc1_rd_addr_reg = fc_fmap_rd_addr[7:0];  // [7:0]
                4'd7: fmap_fc2_rd_addr_reg = fc_fmap_rd_addr[6:0];  // [6:0]
                default: ;
            endcase
        end
    end

    // =========================================================
    //  BRAM write routing (BRAM별 독립)
    // =========================================================
    reg [14:0] pool_dest_offset;
    reg [14:0] pool_out_size;

    always @(*) begin
        fmap_c1_we=0; fmap_c1_wr_addr=15'd0; fmap_c1_wr_data=8'd0;
        fmap_c2_we=0; fmap_c2_wr_addr=14'd0; fmap_c2_wr_data=8'd0;
        fmap_c3_we=0; fmap_c3_wr_addr=13'd0; fmap_c3_wr_data=8'd0;
        fmap_c4_we=0; fmap_c4_wr_addr=11'd0; fmap_c4_wr_data=8'd0;
        fmap_c5_we=0; fmap_c5_wr_addr=9'd0;  fmap_c5_wr_data=8'd0;
        fmap_fc1_we=0; fmap_fc1_wr_addr=8'd0; fmap_fc1_wr_data=8'd0;
        fmap_fc2_we=0; fmap_fc2_wr_addr=7'd0; fmap_fc2_wr_data=8'd0;
        fmap_head_we=0; fmap_head_wr_addr=5'd0; fmap_head_wr_data=8'd0;
        fmap_temp_we=0; fmap_temp_wr_addr=12'd0; fmap_temp_wr_data=8'd0;

        // Conv output → fmap_temp (1채널분)
        if (state == S_COMPUTE && cur_type == TYPE_CONV && conv_out_valid) begin
            fmap_temp_we      = 1'b1;
            fmap_temp_wr_addr = conv_out_pixel_pos[11:0];
            fmap_temp_wr_data = conv_out_pixel;
        end

        // Pool output → destination fmap (pool_dest_offset + pool 내부 주소)
        if (state == S_POOL && pool_wr_en) begin
            case (cur_wr_sel)
                4'd1: begin fmap_c1_we=1; fmap_c1_wr_addr = pool_dest_offset         + pool_wr_addr_out;         fmap_c1_wr_data=pool_wr_data_out; end
                4'd2: begin fmap_c2_we=1; fmap_c2_wr_addr = pool_dest_offset[13:0]    + pool_wr_addr_out[13:0];   fmap_c2_wr_data=pool_wr_data_out; end
                4'd3: begin fmap_c3_we=1; fmap_c3_wr_addr = pool_dest_offset[12:0]    + pool_wr_addr_out[12:0];   fmap_c3_wr_data=pool_wr_data_out; end
                4'd4: begin fmap_c4_we=1; fmap_c4_wr_addr = pool_dest_offset[10:0]    + pool_wr_addr_out[10:0];   fmap_c4_wr_data=pool_wr_data_out; end
                4'd5: begin fmap_c5_we=1; fmap_c5_wr_addr = pool_dest_offset[8:0]     + pool_wr_addr_out[8:0];    fmap_c5_wr_data=pool_wr_data_out; end
                default: ;
            endcase
        end

        // FC output → destination fmap
        if (state == S_COMPUTE && cur_type == TYPE_FC && fc_out_valid) begin
            case (cur_wr_sel)
                4'd6: begin fmap_fc1_we=1; fmap_fc1_wr_addr = ch_idx[7:0]; fmap_fc1_wr_data=fc_out_pixel; end
                4'd7: begin fmap_fc2_we=1; fmap_fc2_wr_addr = ch_idx[6:0]; fmap_fc2_wr_data=fc_out_pixel; end
                4'd8: begin fmap_head_we=1; fmap_head_wr_addr = ch_idx[4:0]; fmap_head_wr_data=fc_out_pixel; end
                default: ;
            endcase
        end
    end

    // =========================================================
    //  DMA tready / Debug
    // =========================================================
    assign s_axis_tready = (state == S_DDR_LOAD || state == S_WAIT_DMA);
    assign debug_ch_count = ch_idx[7:0];

    // =========================================================
    //  Conv <-> Patch_reader bridge (조합논리 최소)
    // =========================================================
    reg [14:0] pr_ch_offset_reg;
    reg [14:0] fmap_plane_size;
    reg [7:0]  prev_conv_ci;

    always @(*) begin
        pr_start      = conv_need_patch;
        pr_width_cfg  = conv_in_w_reg;
        pr_height_cfg = conv_in_h_reg;
        pr_target_row = conv_target_row;
        pr_target_col = conv_target_col;
        pr_ch_offset  = pr_ch_offset_reg;
    end

    // =========================================================
    //  Main FSM
    // =========================================================
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE; current_layer <= 4'd0;
            inference_done <= 1'b0; layer_ready <= 1'b0; layer_idx_out <= 4'd0;
            result_cho <= 8'd0; result_jung <= 8'd0; result_jong <= 8'd0;
            ch_idx <= 9'd0; cur_weight_base <= 18'd0; dma_wr_addr <= 18'd0;
            img_wr_addr <= 12'd0; img_we <= 1'b0;
            wbram_we <= 1'b0; wbram_wr_addr <= 18'd0; wbram_wr_data <= 8'd0;
            conv_start <= 1'b0; fc_start <= 1'b0;
            pool_start <= 1'b0; argmax_start <= 1'b0;
            cur_type <= TYPE_CONV; cur_in_w <= 7'd0; cur_in_h <= 7'd0;
            cur_c_in <= 10'd0; cur_c_out <= 9'd0;
            cur_pool_en <= 1'b0; cur_relu_en <= 1'b0;
            cur_rd_sel <= 4'd0; cur_wr_sel <= 4'd0;
            cur_per_ch <= 11'd0; cur_bias_offset <= 11'd0;
            cur_total_weight_bytes <= 18'd0;
            conv_c_in_reg <= 8'd0; conv_in_w_reg <= 7'd0; conv_in_h_reg <= 7'd0;
            conv_weight_base_reg <= 18'd0; conv_bias_base_reg <= 18'd0;
            fc_in_len_reg <= 12'd0; fc_relu_en_reg <= 1'b0;
            fc_fmap_rd_base_reg <= 15'd0; fc_bias_val <= 8'sd0;
            pool_in_w_reg <= 7'd0; pool_in_h_reg <= 7'd0;
            argmax_len_reg <= 9'd0;
            pr_ch_offset_reg <= 15'd0; fmap_plane_size <= 15'd0; prev_conv_ci <= 8'd0;
            pool_out_size <= 15'd0; pool_dest_offset <= 15'd0;
            wbram_rd_addr_fc_bias <= 18'd0;
        end else begin
            img_we <= 1'b0; wbram_we <= 1'b0;
            conv_start <= 1'b0; fc_start <= 1'b0;
            pool_start <= 1'b0; argmax_start <= 1'b0;

            case (state)
                S_IDLE: begin
                    layer_ready <= 1'b0;
                    if (start_load_img) begin
                        inference_done   <= 1'b0;
                        current_layer    <= 4'd0;      // ★ 추가
                        ch_idx           <= 9'd0;      // ★ 추가
                        cur_weight_base  <= 18'd0;     // ★ 추가
                        pool_dest_offset <= 15'd0;     // ★ 추가
                        img_wr_addr      <= 12'd0;
                        state            <= S_LOAD_IMG;
                    end else if (start_inference) begin
                        inference_done <= 1'b0;
                        current_layer  <= 4'd0;
                        state          <= S_LAYER_SETUP;
                    end
                end

                S_LOAD_IMG: begin
                    if (img_pixel_valid) begin
                        img_we <= 1'b1; img_wr_data <= img_pixel;
                        img_wr_addr <= img_wr_addr + 1;
                        if (img_wr_addr == 12'd4095) state <= S_IDLE;
                    end
                end

                S_LAYER_SETUP: begin
                    cur_type     <= lut_type;
                    cur_in_w     <= lut_in_w;   cur_in_h     <= lut_in_h;
                    cur_c_in     <= lut_c_in;   cur_c_out    <= lut_c_out;
                    cur_pool_en  <= lut_pool_en; cur_relu_en  <= lut_relu_en;
                    cur_rd_sel   <= lut_rd_sel;  cur_wr_sel   <= lut_wr_sel;
                    cur_per_ch   <= lut_per_ch;
                    cur_bias_offset <= lut_per_ch - 11'd1;
                    cur_total_weight_bytes <= lut_total_weight_bytes;
                    ch_idx          <= 9'd0;
                    cur_weight_base <= 18'd0;
                    pool_dest_offset <= 15'd0;
                    // 사전 계산 (sequential, 7bit*7bit=14bit)
                    fmap_plane_size <= lut_in_w * lut_in_h;
                    pool_out_size   <= (lut_in_w >> 1) * (lut_in_h >> 1);
                    pr_ch_offset_reg <= 15'd0;
                    prev_conv_ci     <= 8'd0;

                    if (lut_type == TYPE_ARGMAX)
                        state <= S_COMPUTE;
                    else
                        state <= S_WAIT_DMA;
                end

                S_WAIT_DMA: begin
                    layer_ready <= 1'b1; layer_idx_out <= current_layer;
                    dma_wr_addr <= 18'd0;
                    if (s_axis_tvalid) begin
                        layer_ready <= 1'b0;
                        wbram_we <= 1'b1; wbram_wr_addr <= 18'd0;
                        wbram_wr_data <= s_axis_tdata;
                        dma_wr_addr <= 18'd1; state <= S_DDR_LOAD;
                    end
                end

                S_DDR_LOAD: begin
                    if (s_axis_tvalid) begin
                        wbram_we <= 1'b1; wbram_wr_addr <= dma_wr_addr;
                        wbram_wr_data <= s_axis_tdata;
                        dma_wr_addr <= dma_wr_addr + 1;
                        if (s_axis_tlast) begin
                            if (cur_type == TYPE_CONV)
                                state <= S_CONV_SETUP;
                            else
                                state <= S_FC_BIAS_RD;
                        end 
                    end
                end

                // ---- Conv 채널별 파라미터 설정 ----
                // 가중치 배치: [ch0_w0..w8, ch0_bias, ch1_w0..w8, ch1_bias, ...]
                // cur_weight_base = ch_idx * per_ch (누적 덧셈)
                // conv에 c_out=1 전달 → co=0 → weight_base + ci*9, bias_base + 0
                S_CONV_SETUP: begin
                    conv_c_in_reg        <= cur_c_in[7:0];
                    conv_in_w_reg        <= cur_in_w;
                    conv_in_h_reg        <= cur_in_h;
                    conv_weight_base_reg <= cur_weight_base;
                    // bias = 채널 weight 끝 = cur_weight_base + per_ch - 1
                    conv_bias_base_reg   <= cur_weight_base + {7'd0, cur_bias_offset};
                    pr_ch_offset_reg     <= 15'd0;
                    prev_conv_ci         <= 8'd0;
                    state                <= S_COMPUTE;
                end

                S_COMPUTE: begin
                    case (cur_type)
                        TYPE_CONV: begin
                            // pr_ch_offset 누적 갱신
                            if (conv_need_patch) begin
                                if (conv_cur_ci == 8'd0) begin
                                    pr_ch_offset_reg <= 15'd0;
                                    prev_conv_ci     <= 8'd0;
                                end else if (conv_cur_ci != prev_conv_ci) begin
                                    pr_ch_offset_reg <= pr_ch_offset_reg + fmap_plane_size;
                                    prev_conv_ci     <= conv_cur_ci;
                                end
                            end
                            // ★★★ 아래 두 줄이 빠져 있었음 ★★★
                            if (!conv_done && !conv_start)
                                conv_start <= 1'b1;
                            if (conv_done) begin
                                if (cur_pool_en) state <= S_POOL;
                                else             state <= S_NEXT_CH;
                            end
                        end                          // ★★★ TYPE_CONV end 추가 ★★★
                        // 변경 후:
                        TYPE_FC: begin
                            if (fc_done)
                                state <= S_NEXT_CH;
                        end
                        TYPE_ARGMAX: begin
                            if (!argmax_done && !argmax_start) begin
                                case (current_layer)
                                    4'd6:  argmax_len_reg <= 9'd19;
                                    4'd8:  argmax_len_reg <= 9'd21;
                                    4'd10: argmax_len_reg <= 9'd28;
                                    default: argmax_len_reg <= 9'd19;
                                endcase
                                argmax_start <= 1'b1;
                            end
                            if (argmax_done) begin
                                case (current_layer)
                                    4'd6:  result_cho  <= argmax_result_idx;
                                    4'd8:  result_jung <= argmax_result_idx;
                                    4'd10: result_jong <= argmax_result_idx;
                                    default: ;
                                endcase
                                state <= S_LAYER_DONE;
                            end
                        end
                        default: state <= S_LAYER_DONE;
                    endcase
                end 


                // ---- FC bias prefetch (전용 3-state) ----
                S_FC_BIAS_RD: begin
                    wbram_rd_addr_fc_bias <= cur_weight_base + {7'd0, cur_bias_offset};
                    state <= S_FC_BIAS_W1;
                end
                S_FC_BIAS_W1: state <= S_FC_BIAS_W2;
                S_FC_BIAS_W2: begin
                    fc_bias_val         <= wbram_rd_data;
                    fc_in_len_reg       <= {2'd0, cur_c_in};
                    fc_relu_en_reg      <= cur_relu_en;
                    fc_fmap_rd_base_reg <= 15'd0;
                    fc_start            <= 1'b1;
                    state               <= S_COMPUTE;
                end

                S_POOL: begin
                    if (!pool_done && !pool_start) begin
                        pool_in_w_reg <= cur_in_w;
                        pool_in_h_reg <= cur_in_h;
                        pool_start    <= 1'b1;
                    end
                    if (pool_done) state <= S_NEXT_CH;
                end

                // ---- 다음 채널 (Conv/FC 공통) ----
                S_NEXT_CH: begin
                    ch_idx          <= ch_idx + 1;
                    cur_weight_base <= cur_weight_base + {7'd0, cur_per_ch};
                    if (cur_pool_en)
                        pool_dest_offset <= pool_dest_offset + pool_out_size;

                    if (ch_idx + 1 >= cur_c_out)
                        state <= S_LAYER_DONE;
                    else begin
                        if (cur_type == TYPE_CONV)
                            state <= S_CONV_SETUP;
                        else
                            state <= S_FC_BIAS_RD;
                    end
                end

                S_LAYER_DONE: begin
                    if (current_layer >= LAST_LAYER)
                        state <= S_DONE;
                    else begin
                        current_layer <= current_layer + 1;
                        state <= S_LAYER_SETUP;
                    end
                end

                S_DONE: begin
                    inference_done <= 1'b1; state <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end
    
    // 모듈 본문에 추가 (endmodule 직전)
    assign busy           = (state != S_IDLE);
    assign dbg_state_out  = state;
    assign dbg_tready_out = s_axis_tready;

endmodule
