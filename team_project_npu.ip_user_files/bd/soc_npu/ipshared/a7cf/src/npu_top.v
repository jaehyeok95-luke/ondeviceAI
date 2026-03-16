`timescale 1ns / 1ps

module npu_core #(
    parameter [8:0] C1_OUT  = 9'd32,
    parameter [8:0] C2_OUT  = 9'd64,
    parameter [8:0] C3_OUT  = 9'd128,
    parameter [8:0] C4_OUT  = 9'd128,
    parameter [8:0] C5_OUT  = 9'd128,
    parameter [8:0] FC1_OUT = 9'd256,
    parameter [8:0] FC2_OUT = 9'd128,
    parameter [8:0] HD_CHO  = 9'd19,
    parameter [8:0] HD_JUNG = 9'd21,
    parameter [8:0] HD_JONG = 9'd28,
    parameter [3:0] LAST_LAYER = 4'd12
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_load,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,
    input  wire        start_conv,
    input  wire [14:0] debug_addr,
    output reg  [7:0]  debug_data,
    output wire        all_done,
    output wire        busy,
    output reg  [7:0]  result_cho,
    output reg  [7:0]  result_jung,
    output reg  [7:0]  result_jong,

    output wire [3:0]  dbg_state,
    output wire [3:0]  dbg_layer_idx,
    output wire        dbg_tready,
    input  wire        s_axis_tvalid,
    output reg         s_axis_tready,
    input  wire [7:0]  s_axis_tdata,
    input  wire        s_axis_tlast
);

    // ════════════════════════════════════════════
    //  FSM States
    // ════════════════════════════════════════════
    localparam [3:0]
        S_IDLE        = 4'd0,
        S_LOAD_IMG    = 4'd1,
        S_LAYER_SETUP = 4'd2,
        S_DDR_LOAD    = 4'd3,
        S_COMPUTE     = 4'd4,
        S_POOL        = 4'd5,
        S_NEXT_CH     = 4'd6,
        S_DONE        = 4'd7,
        S_DDR_DONE    = 4'd8;

    reg [3:0] state;
    reg [3:0] layer_idx;
    reg [8:0] ext_co;

    assign all_done = (state == S_DONE);
    assign busy     = (state != S_IDLE && state != S_DONE);

    // ════════════════════════════════════════════
    //  Layer Types
    // ════════════════════════════════════════════
    localparam [1:0]
        LTYPE_CONV   = 2'd0,
        LTYPE_FC     = 2'd1,
        LTYPE_ARGMAX = 2'd2;

    // ════════════════════════════════════════════
    //  BRAM Selectors (registered, set once per layer)
    // ════════════════════════════════════════════
    localparam [3:0]
        SEL_IMG  = 4'd0,
        SEL_C1   = 4'd1,
        SEL_C2   = 4'd2,
        SEL_C3   = 4'd3,
        SEL_C4   = 4'd4,
        SEL_C5   = 4'd5,
        SEL_FC1  = 4'd6,
        SEL_FC2  = 4'd7,
        SEL_HEAD = 4'd8,
        SEL_NONE = 4'd15;

    reg [3:0] rd_bram_sel;
    reg [3:0] wr_bram_sel;

    // ════════════════════════════════════════════
    //  Layer Parameter LUT (combinational)
    //  Only sampled during S_LAYER_SETUP
    // ════════════════════════════════════════════
    reg [1:0]  lut_type;
    reg [6:0]  lut_in_w, lut_in_h;
    reg [9:0]  lut_c_in;
    reg [8:0]  lut_c_out;
    reg [14:0] lut_pool_size;
    reg        lut_relu_en;
    reg [3:0]  lut_rd_sel, lut_wr_sel;

    always @(*) begin
        lut_type      = LTYPE_CONV;
        lut_in_w      = 7'd0;
        lut_in_h      = 7'd0;
        lut_c_in      = 10'd0;
        lut_c_out     = 9'd0;
        lut_pool_size = 15'd0;
        lut_relu_en   = 1'b1;
        lut_rd_sel    = SEL_NONE;
        lut_wr_sel    = SEL_NONE;

        case (layer_idx)
            4'd0: begin
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd64; lut_in_h = 7'd64;
                lut_c_in = 10'd1; lut_c_out = C1_OUT;
                lut_pool_size = 15'd1024;
                lut_rd_sel = SEL_IMG; lut_wr_sel = SEL_C1;
            end
            4'd1: begin
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd32; lut_in_h = 7'd32;
                lut_c_in = C1_OUT; lut_c_out = C2_OUT;
                lut_pool_size = 15'd256;
                lut_rd_sel = SEL_C1; lut_wr_sel = SEL_C2;
            end
            4'd2: begin
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd16; lut_in_h = 7'd16;
                lut_c_in = C2_OUT; lut_c_out = C3_OUT;
                lut_pool_size = 15'd64;
                lut_rd_sel = SEL_C2; lut_wr_sel = SEL_C3;
            end
            4'd3: begin
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd8; lut_in_h = 7'd8;
                lut_c_in = C3_OUT; lut_c_out = C4_OUT;
                lut_pool_size = 15'd16;
                lut_rd_sel = SEL_C3; lut_wr_sel = SEL_C4;
            end
            4'd4: begin
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd4; lut_in_h = 7'd4;
                lut_c_in = C4_OUT; lut_c_out = C5_OUT;
                lut_pool_size = 15'd4;
                lut_rd_sel = SEL_C4; lut_wr_sel = SEL_C5;
            end
            4'd5: begin
                lut_type = LTYPE_FC;
                lut_c_in = C5_OUT * 10'd4;
                lut_c_out = FC1_OUT;
                lut_pool_size = 15'd1;
                lut_relu_en = 1'b1;
                lut_rd_sel = SEL_C5; lut_wr_sel = SEL_FC1;
            end
            4'd6: begin
                lut_type = LTYPE_FC;
                lut_c_in = FC1_OUT;
                lut_c_out = FC2_OUT;
                lut_pool_size = 15'd1;
                lut_relu_en = 1'b1;
                lut_rd_sel = SEL_FC1; lut_wr_sel = SEL_FC2;
            end
            4'd7: begin
                lut_type = LTYPE_FC;
                lut_c_in = FC1_OUT;
                lut_c_out = HD_CHO;
                lut_pool_size = 15'd1;
                lut_relu_en = 1'b0;
                lut_rd_sel = SEL_FC1; lut_wr_sel = SEL_HEAD;
            end
            4'd8: begin
                lut_type = LTYPE_ARGMAX;
                lut_c_in = HD_CHO;
                lut_c_out = 9'd1;
                lut_rd_sel = SEL_HEAD; lut_wr_sel = SEL_NONE;
            end
            4'd9: begin
                lut_type = LTYPE_FC;
                lut_c_in = FC1_OUT;
                lut_c_out = HD_JUNG;
                lut_pool_size = 15'd1;
                lut_relu_en = 1'b0;
                lut_rd_sel = SEL_FC1; lut_wr_sel = SEL_HEAD;
            end
            4'd10: begin
                lut_type = LTYPE_ARGMAX;
                lut_c_in = HD_JUNG;
                lut_c_out = 9'd1;
                lut_rd_sel = SEL_HEAD; lut_wr_sel = SEL_NONE;
            end
            4'd11: begin
                lut_type = LTYPE_FC;
                lut_c_in = FC2_OUT;
                lut_c_out = HD_JONG;
                lut_pool_size = 15'd1;
                lut_relu_en = 1'b0;
                lut_rd_sel = SEL_FC2; lut_wr_sel = SEL_HEAD;
            end
            4'd12: begin
                lut_type = LTYPE_ARGMAX;
                lut_c_in = HD_JONG;
                lut_c_out = 9'd1;
                lut_rd_sel = SEL_HEAD; lut_wr_sel = SEL_NONE;
            end
            default: ;
        endcase
    end

    // ════════════════════════════════════════════
    //  Latched Layer Parameters (all registered)
    // ════════════════════════════════════════════
    reg [6:0]  cur_in_w, cur_in_h;
    reg [9:0]  cur_c_in;
    reg [8:0]  cur_c_out;
    reg [1:0]  cur_type;
    reg [14:0] cur_pool_size;
    reg [14:0] pool_wr_offset;
    reg        cur_relu_en;
    reg [11:0] cur_weight_count;

    // ════════════════════════════════════════════
    //  Dedicated BRAM Instances (no sharing)
    // ════════════════════════════════════════════

    // --- fmap_img: 64x64x1 = 4096 ---
    reg         img_we_r;
    reg  [11:0] img_wr_addr_r;
    reg  [7:0]  img_wr_data_r;
    wire [7:0]  img_rd_data;
    wire [11:0] img_rd_addr_w;

    fmap_bram #(.DEPTH(4096), .ADDR_W(12)) u_fmap_img (
        .clk(clk),
        .we(img_we_r), .addr_a(img_wr_addr_r), .din(img_wr_data_r),
        .addr_b(img_rd_addr_w), .dout(img_rd_data)
    );

    // --- fmap_c1: 32x32x32 = 32768 ---
    wire        c1_we_w;
    wire [14:0] c1_wr_addr_w;
    wire [7:0]  c1_wr_data_w;
    wire [7:0]  c1_rd_data;
    wire [14:0] c1_rd_addr_w;

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_c1 (
        .clk(clk),
        .we(c1_we_w), .addr_a(c1_wr_addr_w), .din(c1_wr_data_w),
        .addr_b(c1_rd_addr_w), .dout(c1_rd_data)
    );

    // --- fmap_c2: 16x16x64 = 16384 ---
    wire        c2_we_w;
    wire [13:0] c2_wr_addr_w;
    wire [7:0]  c2_wr_data_w;
    wire [7:0]  c2_rd_data;
    wire [13:0] c2_rd_addr_w;

    fmap_bram #(.DEPTH(16384), .ADDR_W(14)) u_fmap_c2 (
        .clk(clk),
        .we(c2_we_w), .addr_a(c2_wr_addr_w), .din(c2_wr_data_w),
        .addr_b(c2_rd_addr_w), .dout(c2_rd_data)
    );

    // --- fmap_c3: 8x8x128 = 8192 ---
    wire        c3_we_w;
    wire [12:0] c3_wr_addr_w;
    wire [7:0]  c3_wr_data_w;
    wire [7:0]  c3_rd_data;
    wire [12:0] c3_rd_addr_w;

    fmap_bram #(.DEPTH(8192), .ADDR_W(13)) u_fmap_c3 (
        .clk(clk),
        .we(c3_we_w), .addr_a(c3_wr_addr_w), .din(c3_wr_data_w),
        .addr_b(c3_rd_addr_w), .dout(c3_rd_data)
    );

    // --- fmap_c4: 4x4x128 = 2048 ---
    wire        c4_we_w;
    wire [10:0] c4_wr_addr_w;
    wire [7:0]  c4_wr_data_w;
    wire [7:0]  c4_rd_data;
    wire [10:0] c4_rd_addr_w;

    fmap_bram #(.DEPTH(2048), .ADDR_W(11)) u_fmap_c4 (
        .clk(clk),
        .we(c4_we_w), .addr_a(c4_wr_addr_w), .din(c4_wr_data_w),
        .addr_b(c4_rd_addr_w), .dout(c4_rd_data)
    );

    // --- fmap_c5: 2x2x128 = 512 ---
    wire        c5_we_w;
    wire [8:0]  c5_wr_addr_w;
    wire [7:0]  c5_wr_data_w;
    wire [7:0]  c5_rd_data;
    wire [8:0]  c5_rd_addr_w;

    fmap_bram #(.DEPTH(512), .ADDR_W(9)) u_fmap_c5 (
        .clk(clk),
        .we(c5_we_w), .addr_a(c5_wr_addr_w), .din(c5_wr_data_w),
        .addr_b(c5_rd_addr_w), .dout(c5_rd_data)
    );

    // --- fmap_fc1: 256 ---
    wire        fc1_we_w;
    wire [7:0]  fc1_wr_addr_w;
    wire [7:0]  fc1_wr_data_w;
    wire [7:0]  fc1_rd_data;
    wire [7:0]  fc1_rd_addr_w;

    fmap_bram #(.DEPTH(256), .ADDR_W(8)) u_fmap_fc1 (
        .clk(clk),
        .we(fc1_we_w), .addr_a(fc1_wr_addr_w), .din(fc1_wr_data_w),
        .addr_b(fc1_rd_addr_w), .dout(fc1_rd_data)
    );

    // --- fmap_fc2: 128 ---
    wire        fc2_we_w;
    wire [6:0]  fc2_wr_addr_w;
    wire [7:0]  fc2_wr_data_w;
    wire [7:0]  fc2_rd_data;
    wire [6:0]  fc2_rd_addr_w;

    fmap_bram #(.DEPTH(128), .ADDR_W(7)) u_fmap_fc2 (
        .clk(clk),
        .we(fc2_we_w), .addr_a(fc2_wr_addr_w), .din(fc2_wr_data_w),
        .addr_b(fc2_rd_addr_w), .dout(fc2_rd_data)
    );

    // --- fmap_head: 32 (reused for cho/jung/jong heads) ---
    wire        head_we_w;
    wire [4:0]  head_wr_addr_w;
    wire [7:0]  head_wr_data_w;
    wire [7:0]  head_rd_data;
    wire [4:0]  head_rd_addr_w;

    fmap_bram #(.DEPTH(32), .ADDR_W(5)) u_fmap_head (
        .clk(clk),
        .we(head_we_w), .addr_a(head_wr_addr_w), .din(head_wr_data_w),
        .addr_b(head_rd_addr_w), .dout(head_rd_data)
    );

    // --- fmap_temp: conv→pool scratch 4096 ---
    wire [7:0]  temp_rd_data;
    reg         temp_we_r;
    reg  [11:0] temp_wr_addr_r;
    reg  [7:0]  temp_wr_data_r;
    wire [11:0] temp_rd_addr_w;

    fmap_bram #(.DEPTH(4096), .ADDR_W(12)) u_fmap_temp (
        .clk(clk),
        .we(temp_we_r), .addr_a(temp_wr_addr_r), .din(temp_wr_data_r),
        .addr_b(temp_rd_addr_w), .dout(temp_rd_data)
    );

    // ════════════════════════════════════════════
    //  Read Data MUX (combinational, shallow)
    //  rd_bram_sel is registered → only 1 level of MUX
    // ════════════════════════════════════════════
    reg [7:0] compute_rd_data;

    always @(*) begin
        case (rd_bram_sel)
            SEL_IMG:  compute_rd_data = img_rd_data;
            SEL_C1:   compute_rd_data = c1_rd_data;
            SEL_C2:   compute_rd_data = c2_rd_data;
            SEL_C3:   compute_rd_data = c3_rd_data;
            SEL_C4:   compute_rd_data = c4_rd_data;
            SEL_C5:   compute_rd_data = c5_rd_data;
            SEL_FC1:  compute_rd_data = fc1_rd_data;
            SEL_FC2:  compute_rd_data = fc2_rd_data;
            SEL_HEAD: compute_rd_data = head_rd_data;
            default:  compute_rd_data = 8'd0;
        endcase
    end

    // ════════════════════════════════════════════
    //  Read Address Routing (combinational, shallow)
    //  rd_bram_sel is registered → single case
    // ════════════════════════════════════════════
    wire [14:0] patch_rd_addr;
    wire [14:0] fc_fmap_rd_addr;
    wire [14:0] argmax_fmap_rd_addr;

    wire [14:0] compute_rd_addr =
        (cur_type == LTYPE_CONV)   ? patch_rd_addr :
        (cur_type == LTYPE_FC)     ? fc_fmap_rd_addr :
        (cur_type == LTYPE_ARGMAX) ? argmax_fmap_rd_addr :
        15'd0;

    // Each BRAM gets address only when selected (others get 0 = don't care)
    assign img_rd_addr_w  = (rd_bram_sel == SEL_IMG)  ? compute_rd_addr[11:0] : 12'd0;
    assign c1_rd_addr_w   = (rd_bram_sel == SEL_C1)   ? compute_rd_addr       : 15'd0;
    assign c2_rd_addr_w   = (rd_bram_sel == SEL_C2)   ? compute_rd_addr[13:0] : 14'd0;
    assign c3_rd_addr_w   = (rd_bram_sel == SEL_C3)   ? compute_rd_addr[12:0] : 13'd0;
    assign c4_rd_addr_w   = (rd_bram_sel == SEL_C4)   ? compute_rd_addr[10:0] : 11'd0;
    assign c5_rd_addr_w   = (rd_bram_sel == SEL_C5)   ? compute_rd_addr[8:0]  : 9'd0;
    assign fc1_rd_addr_w  = (rd_bram_sel == SEL_FC1)  ? compute_rd_addr[7:0]  : 8'd0;
    assign fc2_rd_addr_w  = (rd_bram_sel == SEL_FC2)  ? compute_rd_addr[6:0]  : 7'd0;
    assign head_rd_addr_w = (rd_bram_sel == SEL_HEAD) ? compute_rd_addr[4:0]  : 5'd0;

    // ════════════════════════════════════════════
    //  Write Address/Data/Enable Routing (combinational, shallow)
    //  wr_bram_sel is registered → single case
    // ════════════════════════════════════════════
    wire        pool_wr_en;
    wire [14:0] pool_wr_addr;
    wire [7:0]  pool_wr_data;
    wire        fc_out_valid;
    wire signed [7:0] fc_out_pixel;

    wire [14:0] dest_addr = pool_wr_offset + pool_wr_addr;

    // Pool write signals per BRAM
    assign c1_we_w      = (wr_bram_sel == SEL_C1)   & pool_wr_en;
    assign c1_wr_addr_w = dest_addr;
    assign c1_wr_data_w = pool_wr_data;

    assign c2_we_w      = (wr_bram_sel == SEL_C2)   & pool_wr_en;
    assign c2_wr_addr_w = dest_addr[13:0];
    assign c2_wr_data_w = pool_wr_data;

    assign c3_we_w      = (wr_bram_sel == SEL_C3)   & pool_wr_en;
    assign c3_wr_addr_w = dest_addr[12:0];
    assign c3_wr_data_w = pool_wr_data;

    assign c4_we_w      = (wr_bram_sel == SEL_C4)   & pool_wr_en;
    assign c4_wr_addr_w = dest_addr[10:0];
    assign c4_wr_data_w = pool_wr_data;

    assign c5_we_w      = (wr_bram_sel == SEL_C5)   & pool_wr_en;
    assign c5_wr_addr_w = dest_addr[8:0];
    assign c5_wr_data_w = pool_wr_data;

    // FC write signals per BRAM
    assign fc1_we_w      = (wr_bram_sel == SEL_FC1)  & fc_out_valid;
    assign fc1_wr_addr_w = pool_wr_offset[7:0];
    assign fc1_wr_data_w = fc_out_pixel;

    assign fc2_we_w      = (wr_bram_sel == SEL_FC2)  & fc_out_valid;
    assign fc2_wr_addr_w = pool_wr_offset[6:0];
    assign fc2_wr_data_w = fc_out_pixel;

    assign head_we_w      = (wr_bram_sel == SEL_HEAD) & fc_out_valid;
    assign head_wr_addr_w = pool_wr_offset[4:0];
    assign head_wr_data_w = fc_out_pixel;

    // ════════════════════════════════════════════
    //  Image Load (registered write)
    // ════════════════════════════════════════════
    reg [14:0] load_addr;

    always @(posedge clk) begin
        img_we_r <= 1'b0;
        if (state == S_LOAD_IMG && img_valid) begin
            img_we_r      <= 1'b1;
            img_wr_addr_r <= load_addr[11:0];
            img_wr_data_r <= img_pixel;
        end
    end

    // ════════════════════════════════════════════
    //  Weight Buffer
    // ════════════════════════════════════════════
    reg        wbuf_we;
    reg [11:0] wbuf_wr_addr;
    reg [7:0]  wbuf_wr_data;
    reg [11:0] wbuf_wr_cnt;
    wire [7:0] wbuf_rd_data;
    reg signed [7:0] ddr_bias_latched;

    wire [17:0] conv_weight_offset;
    wire [11:0] fc_weight_addr;

    wire [11:0] wbuf_rd_addr_mux =
        (cur_type == LTYPE_FC) ? fc_weight_addr : conv_weight_offset[11:0];

    weight_buf u_wbuf (
        .clk(clk),
        .we(wbuf_we), .wr_addr(wbuf_wr_addr), .wr_data(wbuf_wr_data),
        .rd_addr(wbuf_rd_addr_mux), .rd_data(wbuf_rd_data)
    );

    // ════════════════════════════════════════════
    //  Patch Reader
    // ════════════════════════════════════════════
    reg        patch_start, need_patch_prev;
    wire       patch_valid;
    wire [7:0] patch_out [0:2][0:2];
    wire [7:0] conv_cur_ci;
    wire [6:0] conv_target_row, conv_target_col;
    wire       conv_need_patch;

    // Registered patch channel offset
    reg [14:0] patch_ch_offset_r;
    always @(posedge clk) begin
        patch_ch_offset_r <= conv_cur_ci * cur_in_w * cur_in_h;
    end

    patch_reader u_patch (
        .clk(clk), .rst_n(rst_n),
        .start(patch_start),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .width_cfg(cur_in_w), .height_cfg(cur_in_h),
        .ch_offset(patch_ch_offset_r),
        .bram_addr(patch_rd_addr), .bram_data(compute_rd_data),
        .patch(patch_out), .patch_valid(patch_valid)
    );

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            need_patch_prev <= 1'b0;
            patch_start     <= 1'b0;
        end else begin
            need_patch_prev <= conv_need_patch;
            patch_start     <= conv_need_patch && !need_patch_prev;
        end
    end

    // ════════════════════════════════════════════
    //  Conv3x3 + ReLU
    // ════════════════════════════════════════════
    reg        conv_start;
    wire       conv_done, conv_out_valid;
    wire signed [7:0] conv_out_pixel;
    wire [14:0] conv_out_pixel_pos;
    wire [7:0]  conv_out_ch;
    wire [16:0] conv_bias_offset;

    conv3x3_relu u_conv (
        .clk(clk), .rst_n(rst_n),
        .start(conv_start),
        .in_w(cur_in_w), .in_h(cur_in_h),
        .c_in(cur_c_in[7:0]), .c_out(8'd1),
        .weight_base(18'd0), .bias_base(17'd0),
        .patch(patch_out), .patch_valid(patch_valid),
        .weight_data(wbuf_rd_data),
        .weight_offset(conv_weight_offset),
        .bias_data(ddr_bias_latched),
        .bias_offset(conv_bias_offset),
        .cur_ci(conv_cur_ci),
        .need_patch(conv_need_patch),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .out_pixel(conv_out_pixel), .out_ch_idx(conv_out_ch),
        .out_pixel_pos(conv_out_pixel_pos),
        .out_valid(conv_out_valid), .done(conv_done)
    );

    // Conv → temp BRAM (registered write)
    always @(posedge clk) begin
        temp_we_r <= 1'b0;
        if (conv_out_valid && cur_type == LTYPE_CONV) begin
            temp_we_r      <= 1'b1;
            temp_wr_addr_r <= conv_out_pixel_pos[11:0];
            temp_wr_data_r <= conv_out_pixel;
        end
    end

    // ════════════════════════════════════════════
    //  MaxPool 2x2
    // ════════════════════════════════════════════
    reg  pool_start;
    wire pool_done;
    wire [14:0] pool_rd_addr;

    maxpool2x2 u_pool (
        .clk(clk), .rst_n(rst_n),
        .start(pool_start),
        .in_w(cur_in_w), .in_h(cur_in_h),
        .channels(8'd1),
        .rd_addr(pool_rd_addr), .rd_data(temp_rd_data),
        .wr_addr(pool_wr_addr), .wr_data(pool_wr_data),
        .wr_en(pool_wr_en), .done(pool_done)
    );

    // temp BRAM read address: direct from pool (combinational, must be same-cycle)
    assign temp_rd_addr_w = pool_rd_addr[11:0];

    // ════════════════════════════════════════════
    //  FC + ReLU
    // ════════════════════════════════════════════
    reg        fc_start;
    wire       fc_done;
    reg [14:0] fc_fmap_rd_base;

    wire [11:0] fc_in_len =
        (cur_type == LTYPE_FC) ? {2'd0, cur_c_in} : 12'd0;

    fc_relu u_fc (
        .clk(clk), .rst_n(rst_n),
        .start(fc_start),
        .in_len(fc_in_len),
        .relu_en(cur_relu_en),
        .fmap_rd_addr(fc_fmap_rd_addr),
        .fmap_rd_data(compute_rd_data),
        .fmap_rd_base(fc_fmap_rd_base),
        .weight_addr(fc_weight_addr),
        .weight_data(wbuf_rd_data),
        .bias_data(ddr_bias_latched),
        .out_pixel(fc_out_pixel),
        .out_valid(fc_out_valid),
        .done(fc_done)
    );

    // ════════════════════════════════════════════
    //  Argmax
    // ════════════════════════════════════════════
    reg        argmax_start;
    wire       argmax_done;
    wire [7:0] argmax_result_idx;

    argmax u_argmax (
        .clk(clk), .rst_n(rst_n),
        .start(argmax_start),
        .len(cur_c_in[8:0]),
        .fmap_rd_addr(argmax_fmap_rd_addr),
        .fmap_rd_data(compute_rd_data),
        .result_idx(argmax_result_idx),
        .done(argmax_done)
    );

    // ════════════════════════════════════════════
    //  Debug
    // ════════════════════════════════════════════
    always @(posedge clk) begin
        if (state == S_DONE)
            debug_data <= c5_rd_data;
    end

    // ════════════════════════════════════════════
    //  Main FSM
    // ════════════════════════════════════════════
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state            <= S_IDLE;
            layer_idx        <= 4'd0;
            ext_co           <= 9'd0;
            cur_type         <= LTYPE_CONV;
            conv_start       <= 1'b0;
            pool_start       <= 1'b0;
            fc_start         <= 1'b0;
            argmax_start     <= 1'b0;
            load_addr        <= 15'd0;
            cur_in_w         <= 7'd0;
            cur_in_h         <= 7'd0;
            cur_c_in         <= 10'd0;
            cur_c_out        <= 9'd0;
            cur_pool_size    <= 15'd0;
            cur_weight_count <= 12'd0;
            pool_wr_offset   <= 15'd0;
            fc_fmap_rd_base  <= 15'd0;
            cur_relu_en      <= 1'b1;
            rd_bram_sel      <= SEL_NONE;
            wr_bram_sel      <= SEL_NONE;
            result_cho       <= 8'd0;
            result_jung      <= 8'd0;
            result_jong      <= 8'd0;
            s_axis_tready    <= 1'b0;
            wbuf_we          <= 1'b0;
            wbuf_wr_addr     <= 12'd0;
            wbuf_wr_data     <= 8'd0;
            wbuf_wr_cnt      <= 12'd0;
            ddr_bias_latched <= 8'sd0;
        end else begin
            conv_start   <= 1'b0;
            pool_start   <= 1'b0;
            fc_start     <= 1'b0;
            argmax_start <= 1'b0;
            wbuf_we      <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start_load) begin
                        state     <= S_LOAD_IMG;
                        load_addr <= 15'd0;
                    end else if (start_conv) begin
                        layer_idx <= 4'd0;
                        ext_co    <= 9'd0;
                        state     <= S_LAYER_SETUP;
                    end
                end

                S_LOAD_IMG: begin
                    if (img_valid) begin
                        load_addr <= load_addr + 1;
                        if (load_addr == 15'd4095)
                            state <= S_IDLE;
                    end
                end

                S_LAYER_SETUP: begin
                    cur_c_in         <= lut_c_in;
                    cur_c_out        <= lut_c_out;
                    cur_in_w         <= lut_in_w;
                    cur_in_h         <= lut_in_h;
                    cur_type         <= lut_type;
                    cur_relu_en      <= lut_relu_en;
                    cur_pool_size    <= lut_pool_size;
                    rd_bram_sel      <= lut_rd_sel;
                    wr_bram_sel      <= lut_wr_sel;
                    ext_co           <= 9'd0;
                    pool_wr_offset   <= 15'd0;

                    if (lut_type == LTYPE_CONV)
                        cur_weight_count <= lut_c_in * 12'd9;
                    else
                        cur_weight_count <= {2'd0, lut_c_in};

                    if (lut_type == LTYPE_ARGMAX) begin
                        argmax_start <= 1'b1;
                        state <= S_COMPUTE;
                    end else begin
                        wbuf_wr_cnt   <= 12'd0;
                        wbuf_we       <= 1'b0;
                        s_axis_tready <= 1'b1;
                        state         <= S_DDR_LOAD;
                    end
                end

                S_DDR_LOAD: begin
                    if (s_axis_tvalid && s_axis_tready) begin
                        if (wbuf_wr_cnt < cur_weight_count) begin
                            wbuf_wr_data <= s_axis_tdata;
                            wbuf_wr_addr <= wbuf_wr_cnt[11:0];
                            wbuf_we      <= 1'b1;
                            wbuf_wr_cnt  <= wbuf_wr_cnt + 1;
                        end else begin
                            ddr_bias_latched <= s_axis_tdata;
                            wbuf_we          <= 1'b0;
                            state            <= S_DDR_DONE;
                        end
                    end
                end

                S_DDR_DONE: begin
                    s_axis_tready <= 1'b0;
                    if (cur_type == LTYPE_CONV) begin
                        conv_start <= 1'b1;
                    end else if (cur_type == LTYPE_FC) begin
                        fc_start        <= 1'b1;
                        fc_fmap_rd_base <= 15'd0;
                    end
                    state <= S_COMPUTE;
                end

                S_COMPUTE: begin
                    s_axis_tready <= 1'b0;
                    case (cur_type)
                        LTYPE_CONV: begin
                            if (conv_done) begin
                                pool_start <= 1'b1;
                                state      <= S_POOL;
                            end
                        end
                        LTYPE_FC: begin
                            if (fc_done)
                                state <= S_NEXT_CH;
                        end
                        LTYPE_ARGMAX: begin
                            if (argmax_done) begin
                                case (layer_idx)
                                    4'd8:  result_cho  <= argmax_result_idx;
                                    4'd10: result_jung <= argmax_result_idx;
                                    4'd12: result_jong <= argmax_result_idx;
                                endcase
                                state <= S_NEXT_CH;
                            end
                        end
                        default: state <= S_NEXT_CH;
                    endcase
                end

                S_POOL: begin
                    if (pool_done)
                        state <= S_NEXT_CH;
                end

                S_NEXT_CH: begin
                    pool_start <= 1'b0;
                    if (ext_co + 1 == cur_c_out) begin
                        if (layer_idx == LAST_LAYER)
                            state <= S_DONE;
                        else begin
                            layer_idx <= layer_idx + 1;
                            state     <= S_LAYER_SETUP;
                        end
                    end else begin
                        ext_co         <= ext_co + 1;
                        pool_wr_offset <= pool_wr_offset + cur_pool_size;
                        wbuf_wr_cnt    <= 12'd0;
                        wbuf_we        <= 1'b0;
                        s_axis_tready  <= 1'b1;
                        state          <= S_DDR_LOAD;
                    end
                end

                S_DONE: begin
                    // wait
                end
            endcase
        end
    end

    assign dbg_state     = state;
    assign dbg_layer_idx = layer_idx;
    assign dbg_tready    = s_axis_tready;

endmodule
