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

    // 추가 (AXI Stream 포트)
    input  wire        s_axis_tvalid,
    output reg         s_axis_tready,
    input  wire [7:0]  s_axis_tdata,
    input  wire        s_axis_tlast
);


    // ════════════════════════════════════════════
    //  FSM
    // ════════════════════════════════════════════
    localparam [2:0]
        S_IDLE       = 3'd0,
        S_LOAD_IMG   = 3'd1,
        S_LAYER_SETUP= 3'd2,
        S_DDR_LOAD   = 3'd3,
        S_COMPUTE    = 3'd4,
        S_POOL       = 3'd5,
        S_NEXT_CH    = 3'd6,
        S_DONE       = 3'd7;

    reg [2:0] state;
    reg [3:0] layer_idx;  // 0~12
    reg [8:0] ext_co;

    assign all_done = (state == S_DONE);
    assign busy     = (state != S_IDLE && state != S_DONE);

    // ════════════════════════════════════════════
    //  레이어 타입
    // ════════════════════════════════════════════
    localparam [1:0]
        LTYPE_CONV   = 2'd0,
        LTYPE_FC     = 2'd1,
        LTYPE_ARGMAX = 2'd2;

    // ════════════════════════════════════════════
    //  레이어 파라미터 LUT
    // ════════════════════════════════════════════
    reg [1:0]  lut_type;
    reg [6:0]  lut_in_w, lut_in_h;
    reg [9:0]  lut_c_in; 
    reg [8:0]  lut_c_out;
    reg [14:0] lut_pool_size;
    reg        lut_patch_src, lut_pool_dst;
    reg [14:0] lut_fmap_rd_base;
    reg        lut_relu_en;

    always @(*) begin
        lut_type = LTYPE_CONV;
        lut_in_w = 7'd0; lut_in_h = 7'd0;
        lut_c_in = 10'd0; lut_c_out = 9'd0;
        lut_pool_size = 15'd0;      // ← 이 줄 추가
        lut_patch_src = 1'b0; lut_pool_dst = 1'b0;
        lut_fmap_rd_base = 15'd0;
        lut_relu_en = 1'b1;

        case (layer_idx)
            // ──── Conv 레이어 ────
            4'd0: begin // Conv1: 64×64, 1→32
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd64; lut_in_h = 7'd64;
                lut_c_in = 10'd1;  lut_c_out = C1_OUT;
                lut_pool_size = 15'd1024; // 32×32
                lut_patch_src = 1'b0; lut_pool_dst = 1'b0;
            end
            4'd1: begin // Conv2: 32×32, 32→64
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd32; lut_in_h = 7'd32;
                lut_c_in = C1_OUT; lut_c_out = C2_OUT;
                lut_pool_size = 15'd256; // 16×16
                lut_patch_src = 1'b1; lut_pool_dst = 1'b1;
            end
            4'd2: begin // Conv3: 16×16, 64→128
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd16; lut_in_h = 7'd16;
                lut_c_in = C2_OUT; lut_c_out = C3_OUT;
                lut_pool_size = 15'd64; // 8×8
                lut_patch_src = 1'b0; lut_pool_dst = 1'b0;
            end
            4'd3: begin // Conv4: 8×8, 128→128
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd8; lut_in_h = 7'd8;
                lut_c_in = C3_OUT; lut_c_out = C4_OUT;
                lut_pool_size = 15'd16; // 4×4
                lut_patch_src = 1'b1; lut_pool_dst = 1'b1;
            end
            4'd4: begin // Conv5: 4×4, 128→128
                lut_type = LTYPE_CONV;
                lut_in_w = 7'd4; lut_in_h = 7'd4;
                lut_c_in = C4_OUT; lut_c_out = C5_OUT;
                lut_pool_size = 15'd4; // 2×2
                lut_patch_src = 1'b0; lut_pool_dst = 1'b0;
            end

            // ──── FC 레이어 ────
            4'd5: begin // FC_shared: 512→256, ReLU
                lut_type = LTYPE_FC;
                lut_c_in = C5_OUT * 10'd4; // 128×4=512
                lut_c_out = FC1_OUT; // 256
                lut_pool_size = 15'd1;
                lut_patch_src = 1'b1; lut_pool_dst = 1'b1; // read fmap_b, write fmap_a
                lut_fmap_rd_base = 15'd0;
                lut_relu_en = 1'b1;
            end
            4'd6: begin // FC_jong: 256→128, ReLU
                lut_type = LTYPE_FC;
                lut_c_in = FC1_OUT; // 256
                lut_c_out = FC2_OUT; // 128
                lut_pool_size = 15'd1;
                lut_patch_src = 1'b0; lut_pool_dst = 1'b0; // read fmap_a, write fmap_b
                lut_fmap_rd_base = 15'd0;
                lut_relu_en = 1'b1;
            end
                        // ──── Head + Argmax (교차 배치) ────
            4'd7: begin // head_cho: 256→19, no ReLU
                lut_type = LTYPE_FC;
                lut_c_in = FC1_OUT;
                lut_c_out = HD_CHO;
                lut_pool_size = 15'd1;
                lut_patch_src = 1'b0; lut_pool_dst = 1'b0;
                lut_fmap_rd_base = 15'd0;
                lut_relu_en = 1'b0;
            end
            4'd8: begin // Argmax cho → fmap_b 읽기
                lut_type = LTYPE_ARGMAX;
                lut_c_in = HD_CHO;
                lut_c_out = 9'd1;
                lut_patch_src = 1'b1; // fmap_b에 head_cho 결과 (pool_dst=0)
            end
            4'd9: begin // head_jung: 256→21, no ReLU
                lut_type = LTYPE_FC;
                lut_c_in = FC1_OUT;
                lut_c_out = HD_JUNG;
                lut_pool_size = 15'd1;
                lut_patch_src = 1'b0; lut_pool_dst = 1'b0;
                lut_fmap_rd_base = 15'd0;
                lut_relu_en = 1'b0;
            end
            4'd10: begin // Argmax jung → fmap_b 읽기
                lut_type = LTYPE_ARGMAX;
                lut_c_in = HD_JUNG;
                lut_c_out = 9'd1;
                lut_patch_src = 1'b1;
            end
            4'd11: begin // head_jong: 128→28, no ReLU
                lut_type = LTYPE_FC;
                lut_c_in = FC2_OUT;
                lut_c_out = HD_JONG;
                lut_pool_size = 15'd1;
                lut_patch_src = 1'b1; lut_pool_dst = 1'b1;
                lut_fmap_rd_base = 15'd0;
                lut_relu_en = 1'b0;
            end
            4'd12: begin // Argmax jong → fmap_a 읽기
                lut_type = LTYPE_ARGMAX;
                lut_c_in = HD_JONG;
                lut_c_out = 9'd1;
                lut_patch_src = 1'b0; // fmap_a에 head_jong 결과 (pool_dst=1)
            end

            default: ;
        endcase
    end

    // ════════════════════════════════════════════
    //  내부 레지스터
    // ════════════════════════════════════════════
    reg [6:0]  cur_in_w, cur_in_h;
    reg [9:0]  cur_c_in;
    reg [1:0]  cur_type;
    reg [14:0] pool_wr_offset;
    reg        patch_src, pool_dst;
    reg        cur_relu_en;

    reg        load_we_reg;
    reg [14:0] load_wr_addr_reg;
    reg [7:0]  load_wr_data_reg;
    reg [14:0] load_addr;

    // Conv
    reg        conv_start;
    wire       conv_done, conv_out_valid;
    wire signed [7:0] conv_out_pixel;
    wire [14:0] conv_out_pixel_pos;
    wire [7:0]  conv_out_ch;
    wire [17:0] conv_weight_offset;
    wire [16:0] conv_bias_offset;
    wire       conv_need_patch;
    wire [6:0] conv_target_row, conv_target_col;
    wire [7:0] conv_cur_ci;

    // Pool
    reg        pool_start;
    wire       pool_done;
    wire [14:0] pool_rd_addr, pool_wr_addr;
    wire [7:0]  pool_wr_data;
    wire        pool_wr_en;

    // Patch
    reg        patch_start, need_patch_prev;
    wire       patch_valid;
    wire [7:0] patch_out [0:2][0:2];
    wire [14:0] patch_rd_addr;
    wire [14:0] patch_ch_offset;
    wire [21:0] patch_ch_offset_wide;
    assign patch_ch_offset_wide = conv_cur_ci * cur_in_w * cur_in_h;
    assign patch_ch_offset = patch_ch_offset_wide[14:0];

    // Weight buffer
    reg        wbuf_we;
    reg [11:0] wbuf_wr_addr;
    reg [7:0]  wbuf_wr_data;
    reg [11:0] wbuf_wr_cnt;
    wire [7:0] wbuf_rd_data;
    reg signed [7:0] ddr_bias_latched;

    // FC
    reg        fc_start;
    wire       fc_done, fc_out_valid;
    wire signed [7:0] fc_out_pixel;
    wire [14:0] fc_fmap_rd_addr;
    wire [11:0] fc_weight_addr;
    reg  [14:0] fc_fmap_rd_base;
    wire [11:0] fc_in_len;

    // Argmax
    reg        argmax_start;
    wire       argmax_done;
    wire [14:0] argmax_fmap_rd_addr;
    wire [7:0]  argmax_result_idx;

    // head 출력 저장 위치 관리
    // head_cho → fmap_b offset 0~18
    // head_jung → fmap_b offset 0~20 (head_cho 덮어쓰기 OK, argmax가 먼저 처리)
    // head_jong → fmap_a offset 0~27

    // BRAM 신호
    reg         fmap_a_we;
    reg  [14:0] fmap_a_wr_addr;
    reg  [7:0]  fmap_a_wr_data;
    wire [7:0]  fmap_a_rd_data;
    wire [14:0] fmap_a_rd_addr_mux;

    reg         fmap_b_we;
    reg  [14:0] fmap_b_wr_addr;
    reg  [7:0]  fmap_b_wr_data;
    wire [7:0]  fmap_b_rd_data;
    wire [14:0] fmap_b_rd_addr_mux;

    reg         fmap_t_we;
    reg  [11:0] fmap_t_wr_addr;
    reg  [7:0]  fmap_t_wr_data;
    wire [7:0]  fmap_t_rd_data;
    wire [11:0] fmap_t_rd_addr;

    // ════════════════════════════════════════════
    //  BRAM 인스턴스
    // ════════════════════════════════════════════
    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_a (
        .clk(clk),
        .we(fmap_a_we), .addr_a(fmap_a_wr_addr), .din(fmap_a_wr_data),
        .addr_b(fmap_a_rd_addr_mux), .dout(fmap_a_rd_data)
    );

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_b (
        .clk(clk),
        .we(fmap_b_we), .addr_a(fmap_b_wr_addr), .din(fmap_b_wr_data),
        .addr_b(fmap_b_rd_addr_mux), .dout(fmap_b_rd_data)
    );

    fmap_bram #(.DEPTH(4096), .ADDR_W(12)) u_fmap_temp (
        .clk(clk),
        .we(fmap_t_we), .addr_a(fmap_t_wr_addr), .din(fmap_t_wr_data),
        .addr_b(fmap_t_rd_addr), .dout(fmap_t_rd_data)
    );

    // ════════════════════════════════════════════
    //  BRAM Read MUX + 공유 데이터
    // ════════════════════════════════════════════
    assign fmap_a_rd_addr_mux =
        (state == S_DONE) ? debug_addr :
        (!patch_src && state == S_COMPUTE && cur_type == LTYPE_CONV)   ? patch_rd_addr :
        (!patch_src && state == S_COMPUTE && cur_type == LTYPE_FC)     ? fc_fmap_rd_addr :
        (!patch_src && state == S_COMPUTE && cur_type == LTYPE_ARGMAX) ? argmax_fmap_rd_addr :
        15'd0;

    assign fmap_b_rd_addr_mux =
        (state == S_DONE) ? debug_addr :
        (patch_src && state == S_COMPUTE && cur_type == LTYPE_CONV)   ? patch_rd_addr :
        (patch_src && state == S_COMPUTE && cur_type == LTYPE_FC)     ? fc_fmap_rd_addr :
        (patch_src && state == S_COMPUTE && cur_type == LTYPE_ARGMAX) ? argmax_fmap_rd_addr :
        15'd0;

    wire [7:0] patch_bram_data;
    assign patch_bram_data = (patch_src) ? fmap_b_rd_data : fmap_a_rd_data;

    // ════════════════════════════════════════════
    //  Weight Buffer
    // ════════════════════════════════════════════
    wire [11:0] wbuf_rd_addr_mux;
    assign wbuf_rd_addr_mux = (cur_type == LTYPE_FC) ?
                               fc_weight_addr :
                               conv_weight_offset[11:0];

    weight_buf u_wbuf (
        .clk(clk),
        .we(wbuf_we), .wr_addr(wbuf_wr_addr), .wr_data(wbuf_wr_data),
        .rd_addr(wbuf_rd_addr_mux), .rd_data(wbuf_rd_data)
    );

    // ════════════════════════════════════════════
    //  Patch Reader
    // ════════════════════════════════════════════

    patch_reader u_patch (
        .clk(clk), .rst_n(rst_n),
        .start(patch_start),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .width_cfg(cur_in_w), .height_cfg(cur_in_h),
        .ch_offset(patch_ch_offset),
        .bram_addr(patch_rd_addr), .bram_data(patch_bram_data),
        .patch(patch_out), .patch_valid(patch_valid)
    );

    // ════════════════════════════════════════════
    //  Conv3x3 + ReLU
    // ════════════════════════════════════════════
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

    // ════════════════════════════════════════════
    //  MaxPool 2×2
    // ════════════════════════════════════════════
    maxpool2x2 u_pool (
        .clk(clk), .rst_n(rst_n),
        .start(pool_start),
        .in_w(cur_in_w), .in_h(cur_in_h),
        .channels(8'd1),
        .rd_addr(pool_rd_addr), .rd_data(fmap_t_rd_data),
        .wr_addr(pool_wr_addr), .wr_data(pool_wr_data),
        .wr_en(pool_wr_en), .done(pool_done)
    );

    assign fmap_t_rd_addr = pool_rd_addr[11:0];

    // ════════════════════════════════════════════
    //  FC + ReLU
    // ════════════════════════════════════════════
    assign fc_in_len = (cur_type == LTYPE_FC) ? {2'd0, cur_c_in} : 12'd0;

    fc_relu u_fc (
        .clk(clk), .rst_n(rst_n),
        .start(fc_start),
        .in_len(fc_in_len),
        .relu_en(cur_relu_en),
        .fmap_rd_addr(fc_fmap_rd_addr),
        .fmap_rd_data(patch_bram_data),
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
    argmax u_argmax (
        .clk(clk), .rst_n(rst_n),
        .start(argmax_start),
        .len(cur_c_in[8:0]),
        .fmap_rd_addr(argmax_fmap_rd_addr),
        .fmap_rd_data(patch_bram_data),
        .result_idx(argmax_result_idx),
        .done(argmax_done)
    );

    // ════════════════════════════════════════════
    //  Conv → fmap_temp 쓰기
    // ════════════════════════════════════════════
    always @(*) begin
        if (conv_out_valid && cur_type == LTYPE_CONV) begin
            fmap_t_we      = 1'b1;
            fmap_t_wr_addr = conv_out_pixel_pos[11:0];
            fmap_t_wr_data = conv_out_pixel;
        end else begin
            fmap_t_we      = 1'b0;
            fmap_t_wr_addr = 12'd0;
            fmap_t_wr_data = 8'd0;
        end
    end

    // ════════════════════════════════════════════
    //  Pool/FC → fmap_b 쓰기 MUX
    // ════════════════════════════════════════════
    always @(*) begin
        fmap_b_we = 1'b0; fmap_b_wr_addr = 15'd0; fmap_b_wr_data = 8'd0;
        if (!pool_dst && pool_wr_en) begin
            fmap_b_we      = 1'b1;
            fmap_b_wr_addr = pool_wr_offset + pool_wr_addr;
            fmap_b_wr_data = pool_wr_data;
        end else if (!pool_dst && fc_out_valid) begin
            fmap_b_we      = 1'b1;
            fmap_b_wr_addr = pool_wr_offset;
            fmap_b_wr_data = fc_out_pixel;
        end
    end

    // ════════════════════════════════════════════
    //  Load/Pool/FC → fmap_a 쓰기 MUX
    // ════════════════════════════════════════════
    always @(*) begin
        if (load_we_reg) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = load_wr_addr_reg;
            fmap_a_wr_data = load_wr_data_reg;
        end else if (pool_dst && pool_wr_en) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = pool_wr_offset + pool_wr_addr;
            fmap_a_wr_data = pool_wr_data;
        end else if (pool_dst && fc_out_valid) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = pool_wr_offset;
            fmap_a_wr_data = fc_out_pixel;
        end else begin
            fmap_a_we      = 1'b0;
            fmap_a_wr_addr = 15'd0;
            fmap_a_wr_data = 8'd0;
        end
    end

    // ════════════════════════════════════════════
    //  Patch Start Edge Detect
    // ════════════════════════════════════════════
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
    //  DDR → weight_buf 로딩
    // ════════════════════════════════════════════
    wire [11:0] weight_count;
    assign weight_count = (cur_type == LTYPE_CONV) ?
                       cur_c_in * 12'd9 :
                       {2'd0, cur_c_in};

    // ════════════════════════════════════════════
    //  Debug
    // ════════════════════════════════════════════
    always @(posedge clk) begin
        if (state == S_DONE) begin
            if (pool_dst)
                debug_data <= fmap_a_rd_data;
            else
                debug_data <= fmap_b_rd_data;
        end
    end

    // ════════════════════════════════════════════
    //  메인 FSM
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
            load_we_reg      <= 1'b0;
            load_addr        <= 15'd0;
            load_wr_addr_reg <= 15'd0;
            load_wr_data_reg <= 8'd0;
            patch_src        <= 1'b0;
            pool_dst         <= 1'b0;
            cur_in_w         <= 7'd0;
            cur_in_h         <= 7'd0;
            cur_c_in         <= 10'd0;
            pool_wr_offset   <= 15'd0;
            fc_fmap_rd_base  <= 15'd0;
            cur_relu_en      <= 1'b1;
            result_cho       <= 8'd0;
            result_jung      <= 8'd0;
            result_jong      <= 8'd0;
            s_axis_tready <= 1'b0;
            wbuf_we          <= 1'b0;       // 추가
            wbuf_wr_addr     <= 12'd0;      // 추가
            wbuf_wr_data     <= 8'd0;       // 추가
            wbuf_wr_cnt      <= 12'd0;      // 추가
            ddr_bias_latched <= 8'sd0;      // 추가
        end else begin
            conv_start   <= 1'b0;
            pool_start   <= 1'b0;
            fc_start     <= 1'b0;
            argmax_start <= 1'b0;
            load_we_reg  <= 1'b0;
            wbuf_we       <= 1'b0;   // 추가: 매 클럭 기본값

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
                        load_we_reg      <= 1'b1;
                        load_wr_addr_reg <= load_addr;
                        load_wr_data_reg <= img_pixel;
                        load_addr        <= load_addr + 1;
                        if (load_addr == 15'd4095)
                            state <= S_IDLE;
                    end
                end

                S_LAYER_SETUP: begin
                    // LUT 값 래치 (기존과 동일)
                    cur_c_in     <= lut_c_in;
                    cur_in_w     <= lut_in_w;
                    cur_in_h     <= lut_in_h;  // 추가
                    cur_type     <= lut_type;
                    cur_relu_en  <= lut_relu_en;
                    patch_src    <= lut_patch_src;
                    pool_dst     <= lut_pool_dst;
                    ext_co       <= 9'd0;
                    pool_wr_offset <= 15'd0;  // 추가

                    // Argmax는 DDR 로드 불필요
                    if (lut_type == LTYPE_ARGMAX) begin
                        argmax_start <= 1'b1;
                        state <= S_COMPUTE;
                    end else begin
                        // weight 수신 준비
                        wbuf_wr_cnt  <= 12'd0;
                        wbuf_we      <= 1'b0;
                        s_axis_tready <= 1'b1;  // Stream 수신 시작
                        state <= S_DDR_LOAD;    // 이름 유지 (실제는 Stream 수신)
                    end
                end

                S_DDR_LOAD: begin
                    if (s_axis_tvalid && s_axis_tready) begin
                        if (wbuf_wr_cnt < weight_count) begin
                            // 가중치 바이트 → weight_buf에 저장
                            wbuf_wr_data <= s_axis_tdata;
                            wbuf_wr_addr <= wbuf_wr_cnt[11:0];
                            wbuf_we      <= 1'b1;
                            wbuf_wr_cnt  <= wbuf_wr_cnt + 1;
                        end else begin
                            // weight_count 번째 바이트 = bias
                            ddr_bias_latched <= s_axis_tdata;
                            wbuf_we          <= 1'b0;
                            s_axis_tready    <= 1'b0;  // 수신 중지
                            
                            // 연산 시작
                            if (cur_type == LTYPE_CONV) begin
                                conv_start <= 1'b1;
                            end else if (cur_type == LTYPE_FC) begin
                                fc_start <= 1'b1;
                                fc_fmap_rd_base <= 15'd0;
                            end
                            state <= S_COMPUTE;
                        end
                    end
                end

                S_COMPUTE: begin
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
                    if (ext_co + 1 == lut_c_out) begin
                        // 현재 레이어 완료
                        if (layer_idx == LAST_LAYER)
                            state <= S_DONE;
                        else begin
                            layer_idx <= layer_idx + 1;
                            state <= S_LAYER_SETUP;
                        end
                    end else begin
                        // 다음 출력 채널 → 다시 Stream 수신
                        ext_co        <= ext_co + 1;
                        pool_wr_offset <= (ext_co + 1) * lut_pool_size;  // 추가
                        wbuf_wr_cnt   <= 12'd0;
                        wbuf_we       <= 1'b0;
                        s_axis_tready <= 1'b1;  // 다음 채널 가중치 수신 시작
                        state <= S_DDR_LOAD;
                    end
                end
                
                S_DONE: begin
                    // 대기
                end
            endcase
        end
    end

endmodule
