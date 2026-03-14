`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2026 08:12:46 AM
// Design Name: 
// Module Name: bram_test_top
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
module step1_img_load (
    input  wire        clk,
    input  wire        rst_n,

    // PS → PL 이미지 입력
    input  wire        start,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,

    // 디버그: 저장된 데이터 읽기
    input  wire [14:0] rd_addr,
    output wire [7:0]  rd_data,

    // 상태
    output reg         load_done,
    output wire        busy
);

    // ──── FSM ────
    localparam S_IDLE = 2'd0;
    localparam S_LOAD = 2'd1;
    localparam S_DONE = 2'd2;

    reg [1:0]  state;
    reg [11:0] load_addr;

    assign busy = (state != S_IDLE);

    // ──── BRAM 신호 ────
    reg         wr_en;
    reg  [14:0] wr_addr;
    reg  [7:0]  wr_data;

    // ──── fmap BRAM 인스턴스 ────
    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap (
        .clk    (clk),
        .we   (wr_en),
        .addr_a (wr_addr),
        .din  (wr_data),
        .addr_b (rd_addr),
        .dout (rd_data)
    );

    // ──── FSM ────
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state     <= S_IDLE;
            load_addr <= 12'd0;
            load_done <= 1'b0;
            wr_en     <= 1'b0;
            wr_addr   <= 15'd0;
            wr_data   <= 8'd0;
        end else begin
            wr_en <= 1'b0;  // 기본값

            case (state)
                S_IDLE: begin
                    load_done <= 1'b0;
                    load_addr <= 12'd0;
                    if (start) state <= S_LOAD;
                end

                S_LOAD: begin
                    if (img_valid) begin
                        wr_en   <= 1'b1;
                        wr_addr <= {3'd0, load_addr};
                        wr_data <= img_pixel;

                        if (load_addr == 12'd4095) begin
                            state <= S_DONE;
                        end else begin
                            load_addr <= load_addr + 12'd1;
                        end
                    end
                end

                S_DONE: begin
                    load_done <= 1'b1;
                    state     <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

module step2_patch_test (
    input  wire        clk,
    input  wire        rst_n,

    // 이미지 입력
    input  wire        start_load,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,

    // 패치 읽기 시작
    input  wire        start_patch,

    // 패치 출력
    output wire [7:0]  patch_out [0:2][0:2],
    output wire        patch_valid,
    output wire        frame_done,

    // 상태
    output wire        busy
);

    // ──── FSM ────
    localparam S_IDLE       = 2'd0;
    localparam S_LOAD_IMG   = 2'd1;
    localparam S_PATCH_READ = 2'd2;

    reg [1:0]  state;
    reg [11:0] load_addr;

    assign busy = (state != S_IDLE);

    // ──── BRAM 신호 ────
    reg         wr_en;
    reg  [14:0] wr_addr;
    reg  [7:0]  wr_data;
    wire [14:0] rd_addr;
    wire [7:0]  rd_data;

    // ──── BRAM ────
    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap (
        .clk    (clk),
        .we   (wr_en),
        .addr_a (wr_addr),
        .din  (wr_data),
        .addr_b (rd_addr),
        .dout (rd_data)
    );

    // ──── Patch Reader ────
    reg patch_start;

    patch_reader u_patch (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (patch_start),
        .width_cfg      (7'd64),
        .height_cfg      (7'd64),
        .ch_offset  (15'd0),
        .bram_addr  (rd_addr),
        .bram_data  (rd_data),
        .patch      (patch_out),
        .patch_valid(patch_valid),
        .frame_done (frame_done)
    );

    // ──── FSM ────
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= S_IDLE;
            load_addr   <= 12'd0;
            wr_en       <= 1'b0;
            wr_addr     <= 15'd0;
            wr_data     <= 8'd0;
            patch_start <= 1'b0;
        end else begin
            wr_en       <= 1'b0;
            patch_start <= 1'b0;

            case (state)
                S_IDLE: begin
                    load_addr <= 12'd0;
                    if (start_load)  state <= S_LOAD_IMG;
                    if (start_patch) begin
                        patch_start <= 1'b1;
                        state       <= S_PATCH_READ;
                    end
                end

                S_LOAD_IMG: begin
                    if (img_valid) begin
                        wr_en   <= 1'b1;
                        wr_addr <= {3'd0, load_addr};
                        wr_data <= img_pixel;

                        if (load_addr == 12'd4095)
                            state <= S_IDLE;
                        else
                            load_addr <= load_addr + 12'd1;
                    end
                end

                S_PATCH_READ: begin
                    if (frame_done)
                        state <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

module step3_conv1_test (
    input  wire        clk,
    input  wire        rst_n,

    // 이미지 입력
    input  wire        start_load,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,

    // Conv1 시작
    input  wire        start_conv,

    // Conv1 출력 관찰
    output wire signed [7:0] conv_out_pixel,
    output wire [7:0]  conv_out_ch,
    output wire [14:0] conv_out_pixel_pos,
    output wire        conv_out_valid,
    output wire        conv_done,

    // 상태
    output wire        busy
);

    // ──── FSM ────
    localparam S_IDLE     = 2'd0;
    localparam S_LOAD_IMG = 2'd1;
    localparam S_CONV1    = 2'd2;

    reg [1:0]  state;
    reg [11:0] load_addr;
    reg        conv_start;
    reg        layer_started;

    assign busy = (state != S_IDLE);

    // ──── fmap BRAM 신호 ────
    reg         fmap_wr_en;
    reg  [14:0] fmap_wr_addr;
    reg  [7:0]  fmap_wr_data;
    reg  [14:0] fmap_rd_addr;
    wire [7:0]  fmap_rd_data;

    // ──── Patch Reader 신호 ────
    reg         patch_start;
    wire [14:0] patch_rd_addr;
    wire [7:0]  patch_out [0:2][0:2];
    wire        patch_valid;
    reg  [14:0] patch_ch_offset;

    // ──── Conv 신호 ────
    wire [17:0] conv_weight_offset;
    wire [7:0]  conv_bias_offset;
    wire [7:0]  conv_cur_ci;
    wire        conv_need_patch;
    wire [6:0]  conv_target_row;
    wire [6:0]  conv_target_col;

    // ──── need_patch 엣지 검출 ────
    reg         need_patch_prev;

    // ──── BRAM 인스턴스 ────
    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap (
        .clk    (clk),
        .we     (fmap_wr_en),
        .addr_a (fmap_wr_addr),
        .din    (fmap_wr_data),
        .addr_b (fmap_rd_addr),
        .dout   (fmap_rd_data)
    );

    // ──── Weight BRAM 신호 (Conv1 전용) ────
    wire [8:0]  w_addr;
    wire [4:0]  b_addr;
    wire [7:0]  w_data;
    wire [7:0]  b_data;

    // ──── Conv1 전용 Weight BRAM ────
    weight_bram_conv1_only u_weights (
        .clk         (clk),
        .weight_addr (w_addr),
        .weight_data (w_data),
        .bias_addr   (b_addr),
        .bias_data   (b_data)
    );

    // ──── 주소 연결 (base 불필요, 직접 오프셋) ────
    assign w_addr = conv_weight_offset[8:0];
    assign b_addr = conv_bias_offset[4:0];

    // ──── Patch Reader ────
    patch_reader u_patch (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (patch_start),
        .width_cfg  (7'd64),
        .height_cfg (7'd64),
        .ch_offset  (patch_ch_offset),
        .target_row (conv_target_row),
        .target_col (conv_target_col),
        .bram_addr  (patch_rd_addr),
        .bram_data  (fmap_rd_data),
        .patch      (patch_out),
        .patch_valid(patch_valid)
    );

    // ──── Conv3x3 + ReLU ────
    conv3x3_relu u_conv (
        .clk            (clk),
        .rst_n          (rst_n),
        .start          (conv_start),
        .c_in           (8'd1),
        .c_out          (8'd2), // 원래 32
        .in_w           (7'd64),
        .in_h           (7'd64),
        .patch          (patch_out),
        .patch_valid    (patch_valid),
        .weight_data    (w_data),     // 변경
        .weight_offset  (conv_weight_offset),
        .bias_data      (b_data),     // 변경
        .bias_offset    (conv_bias_offset),
        .cur_ci         (conv_cur_ci),
        .need_patch     (conv_need_patch),
        .target_row     (conv_target_row),
        .target_col     (conv_target_col),
        .out_pixel      (conv_out_pixel),
        .out_ch_idx     (conv_out_ch),
        .out_pixel_pos  (conv_out_pixel_pos),
        .out_valid      (conv_out_valid),
        .done           (conv_done)
    );

    // ──── Patch Reader ↔ fmap BRAM ────
    always @(*) begin
        fmap_rd_addr    = patch_rd_addr;
        patch_ch_offset = conv_cur_ci * 7'd64 * 7'd64;
    end

    // ──── need_patch → patch_start 핸드셰이크 ────
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            need_patch_prev <= 1'b0;
        end else begin
            need_patch_prev <= conv_need_patch;
        end
    end

    always @(*) begin
        patch_start = conv_need_patch && !need_patch_prev;
    end

    // ──── 메인 FSM ────
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state         <= S_IDLE;
            load_addr     <= 12'd0;
            fmap_wr_en    <= 1'b0;
            fmap_wr_addr  <= 15'd0;
            fmap_wr_data  <= 8'd0;
            conv_start    <= 1'b0;
            layer_started <= 1'b0;
        end else begin
            fmap_wr_en <= 1'b0;
            conv_start <= 1'b0;

            case (state)
                S_IDLE: begin
                    load_addr     <= 12'd0;
                    layer_started <= 1'b0;
                    if (start_load) state <= S_LOAD_IMG;
                    if (start_conv) state <= S_CONV1;
                end

                S_LOAD_IMG: begin
                    if (img_valid) begin
                        fmap_wr_en   <= 1'b1;
                        fmap_wr_addr <= {3'd0, load_addr};
                        fmap_wr_data <= img_pixel;

                        if (load_addr == 12'd4095)
                            state <= S_IDLE;
                        else
                            load_addr <= load_addr + 12'd1;
                    end
                end

                S_CONV1: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_IDLE;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

module step4_conv_pool_test (
    input  wire        clk,
    input  wire        rst_n,

    // 이미지 입력
    input  wire        start_load,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,

    // 추론 시작
    input  wire        start_conv,

    // 디버그: pool 결과 읽기
    input  wire [14:0] debug_addr,
    output wire [7:0]  debug_data,

    // 상태
    output wire        conv_done_out,
    output wire        pool_done_out,
    output wire        busy
);

    // ──── FSM ────
    localparam S_IDLE     = 3'd0;
    localparam S_LOAD_IMG = 3'd1;
    localparam S_CONV1    = 3'd2;
    localparam S_POOL1    = 3'd3;
    localparam S_DONE     = 3'd4;

    reg [2:0]  state;
    reg [11:0] load_addr;
    reg        conv_start;
    reg        pool_start;
    reg        layer_started;
    
        // ──── 이미지 로딩용 레지스터 추가 ────
    reg        load_we_reg;
    reg [14:0] load_wr_addr_reg;
    reg [7:0]  load_wr_data_reg;

    
    assign busy = (state != S_IDLE && state != S_DONE);

    // ──── fmap_a BRAM 신호 (입력 이미지 + pool 출력) ────
    reg         fmap_a_we;
    reg  [14:0] fmap_a_wr_addr;
    reg  [7:0]  fmap_a_wr_data;
    reg  [14:0] fmap_a_rd_addr;
    wire [7:0]  fmap_a_rd_data;

    // ──── fmap_b BRAM 신호 (conv 출력) ────
    reg         fmap_b_we;
    reg  [14:0] fmap_b_wr_addr;
    reg  [7:0]  fmap_b_wr_data;
    wire [14:0] fmap_b_rd_addr;
    wire [7:0]  fmap_b_rd_data;

    // ──── Weight BRAM 신호 ────
    wire [8:0]  w_addr;
    wire [4:0]  b_addr;
    wire [7:0]  w_data;
    wire [7:0]  b_data;

    // ──── Patch Reader 신호 ────
    reg         patch_start;
    wire [14:0] patch_rd_addr;
    wire [7:0]  patch_out [0:2][0:2];
    wire        patch_valid;
    reg  [14:0] patch_ch_offset;

    // ──── Conv 신호 ────
    wire [17:0] conv_weight_offset;
    wire [7:0]  conv_bias_offset;
    wire [7:0]  conv_cur_ci;
    wire        conv_need_patch;
    wire [6:0]  conv_target_row;
    wire [6:0]  conv_target_col;
    wire signed [7:0] conv_out_pixel;
    wire [7:0]  conv_out_ch;
    wire [14:0] conv_out_pixel_pos;
    wire        conv_out_valid;
    wire        conv_done;

    // ──── Pool 신호 ────
    wire [14:0] pool_rd_addr;
    wire [14:0] pool_wr_addr;
    wire [7:0]  pool_wr_data;
    wire        pool_wr_en;
    wire        pool_done;

    assign conv_done_out = conv_done;
    assign pool_done_out = pool_done;

    // ──── need_patch 엣지 검출 ────
    reg need_patch_prev;

    // ══════════════════════════════════════
    //  BRAM 인스턴스
    // ══════════════════════════════════════

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_a (
        .clk    (clk),
        .we     (fmap_a_we),
        .addr_a (fmap_a_wr_addr),
        .din    (fmap_a_wr_data),
        .addr_b (fmap_a_rd_addr),
        .dout   (fmap_a_rd_data)
    );

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_b (
        .clk    (clk),
        .we     (fmap_b_we),
        .addr_a (fmap_b_wr_addr),
        .din    (fmap_b_wr_data),
        .addr_b (fmap_b_rd_addr),
        .dout   (fmap_b_rd_data)
    );

    weight_bram_conv1_only u_weights (
        .clk         (clk),
        .weight_addr (w_addr),
        .weight_data (w_data),
        .bias_addr   (b_addr),
        .bias_data   (b_data)
    );

    // ══════════════════════════════════════
    //  서브모듈 인스턴스
    // ══════════════════════════════════════

    patch_reader u_patch (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (patch_start),
        .width_cfg  (7'd64),
        .height_cfg (7'd64),
        .ch_offset  (patch_ch_offset),
        .target_row (conv_target_row),
        .target_col (conv_target_col),
        .bram_addr  (patch_rd_addr),
        .bram_data  (fmap_a_rd_data),
        .patch      (patch_out),
        .patch_valid(patch_valid)
    );

    conv3x3_relu u_conv (
        .clk            (clk),
        .rst_n          (rst_n),
        .start          (conv_start),
        .c_in           (8'd1),
        .c_out          (8'd2),         // 테스트용 2채널
        .in_w           (7'd64),
        .in_h           (7'd64),
        .patch          (patch_out),
        .patch_valid    (patch_valid),
        .weight_data    (w_data),
        .weight_offset  (conv_weight_offset),
        .bias_data      (b_data),
        .bias_offset    (conv_bias_offset),
        .cur_ci         (conv_cur_ci),
        .need_patch     (conv_need_patch),
        .target_row     (conv_target_row),
        .target_col     (conv_target_col),
        .out_pixel      (conv_out_pixel),
        .out_ch_idx     (conv_out_ch),
        .out_pixel_pos  (conv_out_pixel_pos),
        .out_valid      (conv_out_valid),
        .done           (conv_done)
    );

    maxpool2x2 u_pool (
        .clk      (clk),
        .rst_n    (rst_n),
        .start    (pool_start),
        .in_w     (7'd64),
        .in_h     (7'd64),
        .channels (8'd2),               // 테스트용 2채널
        .rd_addr  (pool_rd_addr),
        .rd_data  (fmap_b_rd_data),
        .wr_addr  (pool_wr_addr),
        .wr_data  (pool_wr_data),
        .wr_en    (pool_wr_en),
        .done     (pool_done)
    );

    // ══════════════════════════════════════
    //  주소 연결
    // ══════════════════════════════════════

    assign w_addr = conv_weight_offset[8:0];
    assign b_addr = conv_bias_offset[4:0];

    // Patch Reader ↔ fmap_a
    always @(*) begin
        if (state == S_CONV1) begin
            fmap_a_rd_addr  = patch_rd_addr;
            patch_ch_offset = conv_cur_ci * 7'd64 * 7'd64;
        end else if (state == S_DONE) begin
            fmap_a_rd_addr  = debug_addr;
            patch_ch_offset = 15'd0;
        end else begin
            fmap_a_rd_addr  = 15'd0;
            patch_ch_offset = 15'd0;
        end
    end

    // Conv 출력 → fmap_b 쓰기
    always @(*) begin
        if (conv_out_valid) begin
            fmap_b_we      = 1'b1;
            fmap_b_wr_addr = conv_out_ch * 7'd64 * 7'd64 + conv_out_pixel_pos;
            fmap_b_wr_data = conv_out_pixel;
        end else begin
            fmap_b_we      = 1'b0;
            fmap_b_wr_addr = 15'd0;
            fmap_b_wr_data = 8'd0;
        end
    end

    // Pool ↔ fmap_b 읽기 연결
    assign fmap_b_rd_addr = pool_rd_addr;

    // ──── fmap_a 쓰기 MUX ────
    always @(*) begin
        if (load_we_reg) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = load_wr_addr_reg;
            fmap_a_wr_data = load_wr_data_reg;
        end else if (state == S_POOL1) begin
            fmap_a_we      = pool_wr_en;
            fmap_a_wr_addr = pool_wr_addr;
            fmap_a_wr_data = pool_wr_data;
        end else begin
            fmap_a_we      = 1'b0;
            fmap_a_wr_addr = 15'd0;
            fmap_a_wr_data = 8'd0;
        end
    end



    // 디버그: S_DONE에서 fmap_a 읽기
    assign debug_data = fmap_a_rd_data;

    // ══════════════════════════════════════
    //  need_patch → patch_start 핸드셰이크
    // ══════════════════════════════════════
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            need_patch_prev <= 1'b0;
        else
            need_patch_prev <= conv_need_patch;
    end

    always @(*) begin
        patch_start = conv_need_patch && !need_patch_prev;
    end

    // ══════════════════════════════════════
    //  메인 FSM
    // ══════════════════════════════════════
     // ──── FSM 수정 ────
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state           <= S_IDLE;
            load_addr       <= 12'd0;
            conv_start      <= 1'b0;
            pool_start      <= 1'b0;
            layer_started   <= 1'b0;
            load_we_reg     <= 1'b0;
            load_wr_addr_reg<= 15'd0;
            load_wr_data_reg<= 8'd0;
        end else begin
            conv_start  <= 1'b0;
            pool_start  <= 1'b0;
            load_we_reg <= 1'b0;      // 매 클럭 기본값 0

            case (state)
                S_IDLE: begin
                    load_addr     <= 12'd0;
                    layer_started <= 1'b0;
                    if (start_load) state <= S_LOAD_IMG;
                    if (start_conv) state <= S_CONV1;
                end

                S_LOAD_IMG: begin
                    if (img_valid) begin
                        load_we_reg      <= 1'b1;
                        load_wr_addr_reg <= {3'd0, load_addr};
                        load_wr_data_reg <= img_pixel;

                        if (load_addr == 12'd4095)
                            state <= S_IDLE;
                        else
                            load_addr <= load_addr + 12'd1;
                    end
                end

                S_CONV1: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_POOL1;
                    end
                end

                S_POOL1: begin
                    if (!layer_started) begin
                        pool_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (pool_done) begin
                        layer_started <= 1'b0;
                        state         <= S_DONE;
                    end
                end

                S_DONE: begin
                    // 디버그 읽기 대기
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

module step5_conv_pool_pipeline #(
    parameter C_OUT_TOTAL = 8'd2   // 테스트용 2채널, 최종은 32
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_load,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,
    input  wire        start_conv,
    input  wire [14:0] debug_addr,
    output wire [7:0]  debug_data,
    output wire        all_done,
    output wire        busy
);

    // ──── FSM 상태 ────
    localparam S_IDLE        = 3'd0;
    localparam S_LOAD_IMG    = 3'd1;
    localparam S_CONV1_SETUP = 3'd2;
    localparam S_CONV1_RUN   = 3'd3;
    localparam S_POOL1_RUN   = 3'd4;
    localparam S_NEXT_CH     = 3'd5;
    localparam S_DONE        = 3'd6;

    reg [2:0]  state;
    reg [11:0] load_addr;
    reg [7:0]  ext_co;
    reg        layer_started;

    // 이미지 로딩 레지스터
    reg        load_we_reg;
    reg [14:0] load_wr_addr_reg;
    reg [7:0]  load_wr_data_reg;

    // Conv 제어
    reg        conv_start;
    reg [17:0] conv_weight_base;
    reg [16:0] conv_bias_base;

    // Pool 제어
    reg        pool_start;
    reg [14:0] pool_wr_offset;

    assign busy     = (state != S_IDLE && state != S_DONE);
    assign all_done = (state == S_DONE);

    // ──── fmap_a 신호 (이미지 저장 + patch 읽기) ────
    reg         fmap_a_we;
    reg  [14:0] fmap_a_wr_addr;
    reg  [7:0]  fmap_a_wr_data;
    reg  [14:0] fmap_a_rd_addr;
    wire [7:0]  fmap_a_rd_data;

    // ──── fmap_temp 신호 (Conv 1ch 출력 → Pool 읽기) ────
    reg         fmap_t_we;
    reg  [11:0] fmap_t_wr_addr;
    reg  [7:0]  fmap_t_wr_data;
    wire [11:0] fmap_t_rd_addr;
    wire [7:0]  fmap_t_rd_data;

    // ──── fmap_b 신호 (Pool 결과 누적 + 디버그 읽기) ────
    reg         fmap_b_we;
    reg  [14:0] fmap_b_wr_addr;
    reg  [7:0]  fmap_b_wr_data;
    reg  [14:0] fmap_b_rd_addr;
    wire [7:0]  fmap_b_rd_data;

    // ──── Weight BRAM ────
        // 선언 변경
    wire [16:0] w_addr;
    wire [16:0] b_addr;
    wire [7:0]  w_data, b_data;

    // ──── Patch Reader ────
    reg         patch_start;
    wire [14:0] patch_rd_addr;
    wire [7:0]  patch_out [0:2][0:2];
    wire        patch_valid;
    wire [14:0] patch_ch_offset;

    // ──── Conv ────
    wire [17:0] conv_weight_offset;
    wire [7:0]  conv_bias_offset;
    wire [7:0]  conv_cur_ci;
    wire        conv_need_patch;
    wire [6:0]  conv_target_row, conv_target_col;
    wire signed [7:0] conv_out_pixel;
    wire [7:0]  conv_out_ch;
    wire [14:0] conv_out_pixel_pos;
    wire        conv_out_valid, conv_done;

    // ──── Pool ────
    wire [14:0] pool_rd_addr;
    wire [14:0] pool_wr_addr;
    wire [7:0]  pool_wr_data;
    wire        pool_wr_en, pool_done;

    // ──── need_patch 엣지 검출 ────
    reg need_patch_prev;

    // ══════════════════════════════════════
    //  BRAM 인스턴스 (3개)
    // ══════════════════════════════════════

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_a (
        .clk(clk), .we(fmap_a_we),
        .addr_a(fmap_a_wr_addr), .din(fmap_a_wr_data),
        .addr_b(fmap_a_rd_addr), .dout(fmap_a_rd_data)
    );

    fmap_bram #(.DEPTH(4096), .ADDR_W(12)) u_fmap_temp (
        .clk(clk), .we(fmap_t_we),
        .addr_a(fmap_t_wr_addr), .din(fmap_t_wr_data),
        .addr_b(fmap_t_rd_addr), .dout(fmap_t_rd_data)
    );

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_b (
        .clk(clk), .we(fmap_b_we),
        .addr_a(fmap_b_wr_addr), .din(fmap_b_wr_data),
        .addr_b(fmap_b_rd_addr), .dout(fmap_b_rd_data)
    );

    // BRAM 교체
    weight_bram_conv u_weights (
        .clk(clk),
        .weight_addr(w_addr),
        .weight_data(w_data),
        .bias_addr(b_addr),
        .bias_data(b_data)
    );

    // ══════════════════════════════════════
    //  서브모듈
    // ══════════════════════════════════════

    patch_reader u_patch (
        .clk(clk), .rst_n(rst_n), .start(patch_start),
        .width_cfg(7'd64), .height_cfg(7'd64),
        .ch_offset(patch_ch_offset),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .bram_addr(patch_rd_addr), .bram_data(fmap_a_rd_data),
        .patch(patch_out), .patch_valid(patch_valid)
    );

    conv3x3_relu u_conv (
        .clk(clk), .rst_n(rst_n), .start(conv_start),
        .c_in(8'd1), .c_out(8'd1),
        .in_w(7'd64), .in_h(7'd64),
        .weight_base(conv_weight_base), .bias_base(conv_bias_base),
        .patch(patch_out), .patch_valid(patch_valid),
        .weight_data(w_data), .weight_offset(conv_weight_offset),
        .bias_data(b_data), .bias_offset(conv_bias_offset),
        .cur_ci(conv_cur_ci), .need_patch(conv_need_patch),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .out_pixel(conv_out_pixel), .out_ch_idx(conv_out_ch),
        .out_pixel_pos(conv_out_pixel_pos),
        .out_valid(conv_out_valid), .done(conv_done)
    );

    maxpool2x2 u_pool (
        .clk(clk), .rst_n(rst_n), .start(pool_start),
        .in_w(7'd64), .in_h(7'd64), .channels(8'd1),
        .rd_addr(pool_rd_addr), .rd_data(fmap_t_rd_data),
        .wr_addr(pool_wr_addr), .wr_data(pool_wr_data),
        .wr_en(pool_wr_en), .done(pool_done)
    );

    // ══════════════════════════════════════
    //  주소/데이터 연결
    // ══════════════════════════════════════

    assign w_addr = conv_weight_offset[16:0];
    assign b_addr = conv_bias_offset;

    // Pool이 fmap_temp에서 읽음
    assign fmap_t_rd_addr = pool_rd_addr[11:0];

    // fmap_a 읽기 MUX
    always @(*) begin
        if (state == S_CONV1_RUN)
            fmap_a_rd_addr = patch_rd_addr;
        else
            fmap_a_rd_addr = 15'd0;
    end

    assign patch_ch_offset = 15'd0;


    // Conv 출력 → fmap_temp 쓰기
    always @(*) begin
        if (conv_out_valid) begin
            fmap_t_we      = 1'b1;
            fmap_t_wr_addr = conv_out_pixel_pos[11:0];
            fmap_t_wr_data = conv_out_pixel;
        end else begin
            fmap_t_we      = 1'b0;
            fmap_t_wr_addr = 12'd0;
            fmap_t_wr_data = 8'd0;
        end
    end

    // fmap_a 쓰기 MUX (이미지 로딩만)
    always @(*) begin
        if (load_we_reg) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = load_wr_addr_reg;
            fmap_a_wr_data = load_wr_data_reg;
        end else begin
            fmap_a_we      = 1'b0;
            fmap_a_wr_addr = 15'd0;
            fmap_a_wr_data = 8'd0;
        end
    end

    // fmap_b 쓰기 MUX (Pool 결과)
    always @(*) begin
        if (state == S_POOL1_RUN && pool_wr_en) begin
            fmap_b_we      = 1'b1;
            fmap_b_wr_addr = pool_wr_offset + pool_wr_addr;
            fmap_b_wr_data = pool_wr_data;
        end else begin
            fmap_b_we      = 1'b0;
            fmap_b_wr_addr = 15'd0;
            fmap_b_wr_data = 8'd0;
        end
    end

    // 디버그: fmap_b 읽기
    always @(*) begin
        if (state == S_DONE)
            fmap_b_rd_addr = debug_addr;
        else
            fmap_b_rd_addr = 15'd0;
    end

    assign debug_data = fmap_b_rd_data;

    // ══════════════════════════════════════
    //  need_patch 핸드셰이크
    // ══════════════════════════════════════

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) need_patch_prev <= 1'b0;
        else        need_patch_prev <= conv_need_patch;
    end

// 새 코드:
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            patch_start <= 1'b0;
        else
            patch_start <= conv_need_patch && !need_patch_prev;
    end

    // ══════════════════════════════════════
    //  메인 FSM
    // ══════════════════════════════════════

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state            <= S_IDLE;
            load_addr        <= 12'd0;
            ext_co           <= 8'd0;
            layer_started    <= 1'b0;
            conv_start       <= 1'b0;
            pool_start       <= 1'b0;
            conv_weight_base <= 18'd0;
            conv_bias_base <= 17'd0;
            pool_wr_offset   <= 15'd0;
            load_we_reg      <= 1'b0;
            load_wr_addr_reg <= 15'd0;
            load_wr_data_reg <= 8'd0;
        end else begin
            conv_start  <= 1'b0;
            pool_start  <= 1'b0;
            load_we_reg <= 1'b0;

            case (state)
                S_IDLE: begin
                    load_addr     <= 12'd0;
                    layer_started <= 1'b0;
                    ext_co        <= 8'd0;
                    if (start_load) state <= S_LOAD_IMG;
                    if (start_conv) state <= S_CONV1_SETUP;
                end

                S_LOAD_IMG: begin
                    if (img_valid) begin
                        load_we_reg      <= 1'b1;
                        load_wr_addr_reg <= {3'd0, load_addr};
                        load_wr_data_reg <= img_pixel;
                        if (load_addr == 12'd4095)
                            state <= S_IDLE;
                        else
                            load_addr <= load_addr + 12'd1;
                    end
                end

                S_CONV1_SETUP: begin
                    conv_weight_base <= ext_co * 18'd9;       // Conv1 weight: 0~287
                    conv_bias_base   <= 17'd288 + {9'd0, ext_co};  // 17비트 연산
                    pool_wr_offset   <= ext_co * 15'd1024;
                    layer_started    <= 1'b0;
                    state            <= S_CONV1_RUN;
                end

                S_CONV1_RUN: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_POOL1_RUN;
                    end
                end

                S_POOL1_RUN: begin
                    if (!layer_started) begin
                        pool_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (pool_done) begin
                        layer_started <= 1'b0;
                        state         <= S_NEXT_CH;
                    end
                end

                S_NEXT_CH: begin
                    if (ext_co + 8'd1 == C_OUT_TOTAL) begin
                        state <= S_DONE;
                    end else begin
                        ext_co <= ext_co + 8'd1;
                        state  <= S_CONV1_SETUP;
                    end
                end

                S_DONE: begin
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

module step6_conv12_pool12 #(
    parameter C1_OUT = 8'd2,
    parameter C2_OUT = 8'd2
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_load,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,
    input  wire        start_conv,
    input  wire [14:0] debug_addr,
    output wire [7:0]  debug_data,
    output wire        all_done,
    output wire        busy
);

    // FSM
    localparam S_IDLE        = 4'd0;
    localparam S_LOAD_IMG    = 4'd1;
    localparam S_CONV1_SETUP = 4'd2;
    localparam S_CONV1_RUN   = 4'd3;
    localparam S_POOL1_RUN   = 4'd4;
    localparam S_NEXT_CH1    = 4'd5;
    localparam S_CONV2_SETUP = 4'd6;
    localparam S_CONV2_RUN   = 4'd7;
    localparam S_POOL2_RUN   = 4'd8;
    localparam S_NEXT_CH2    = 4'd9;
    localparam S_DONE        = 4'd10;

    reg [3:0] state;
    reg [11:0] load_addr;
    reg [7:0] ext_co;
    reg layer_started;

    // 이미지 로딩
    reg load_we_reg;
    reg [14:0] load_wr_addr_reg;
    reg [7:0] load_wr_data_reg;

    // 레이어 파라미터 레지스터
    reg [6:0]  cur_in_w, cur_in_h;
    reg [7:0]  cur_c_in;
    reg        patch_src;    // 0=fmap_a, 1=fmap_b
    reg        pool_dst;     // 0=fmap_b, 1=fmap_a

    // Conv 제어
    reg conv_start;
    reg [17:0] conv_weight_base;
    reg [16:0] conv_bias_base;

    // Pool 제어
    reg pool_start;
    reg [14:0] pool_wr_offset;

    assign busy = (state != S_IDLE && state != S_DONE);
    assign all_done = (state == S_DONE);

    // BRAM 신호
    reg fmap_a_we;
    reg [14:0] fmap_a_wr_addr;
    reg [7:0] fmap_a_wr_data;
    reg [14:0] fmap_a_rd_addr;
    wire [7:0] fmap_a_rd_data;

    reg fmap_t_we;
    reg [11:0] fmap_t_wr_addr;
    reg [7:0] fmap_t_wr_data;
    wire [11:0] fmap_t_rd_addr;
    wire [7:0] fmap_t_rd_data;

    reg fmap_b_we;
    reg [14:0] fmap_b_wr_addr;
    reg [7:0] fmap_b_wr_data;
    reg [14:0] fmap_b_rd_addr;
    wire [7:0] fmap_b_rd_data;

    wire [16:0] w_addr, b_addr;
    wire [7:0] w_data, b_data;

    reg patch_start;
    wire [14:0] patch_rd_addr;
    wire [7:0] patch_out [0:2][0:2];
    wire patch_valid;
    wire [14:0] patch_ch_offset;

    wire [17:0] conv_weight_offset;
    wire [16:0] conv_bias_offset;
    wire [7:0] conv_cur_ci;
    wire conv_need_patch;
    wire [6:0] conv_target_row, conv_target_col;
    wire signed [7:0] conv_out_pixel;
    wire [7:0] conv_out_ch;
    wire [14:0] conv_out_pixel_pos;
    wire conv_out_valid, conv_done;

    wire [14:0] pool_rd_addr;
    wire [14:0] pool_wr_addr;
    wire [7:0] pool_wr_data;
    wire pool_wr_en, pool_done;

    reg need_patch_prev;

    // patch_ch_offset 일반화
    assign patch_ch_offset = conv_cur_ci * cur_in_w * cur_in_h;

    // patch_reader 데이터 소스 MUX
    wire [7:0] patch_bram_data;
    assign patch_bram_data = patch_src ? fmap_b_rd_data : fmap_a_rd_data;

    // BRAM 인스턴스
    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_a (
        .clk(clk), .we(fmap_a_we),
        .addr_a(fmap_a_wr_addr), .din(fmap_a_wr_data),
        .addr_b(fmap_a_rd_addr), .dout(fmap_a_rd_data)
    );

    fmap_bram #(.DEPTH(4096), .ADDR_W(12)) u_fmap_temp (
        .clk(clk), .we(fmap_t_we),
        .addr_a(fmap_t_wr_addr), .din(fmap_t_wr_data),
        .addr_b(fmap_t_rd_addr), .dout(fmap_t_rd_data)
    );

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_b (
        .clk(clk), .we(fmap_b_we),
        .addr_a(fmap_b_wr_addr), .din(fmap_b_wr_data),
        .addr_b(fmap_b_rd_addr), .dout(fmap_b_rd_data)
    );

    weight_bram_conv u_weights (
        .clk(clk), .weight_addr(w_addr), .weight_data(w_data),
        .bias_addr(b_addr), .bias_data(b_data)
    );

    // 서브모듈
    patch_reader u_patch (
        .clk(clk), .rst_n(rst_n), .start(patch_start),
        .width_cfg(cur_in_w), .height_cfg(cur_in_h),
        .ch_offset(patch_ch_offset),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .bram_addr(patch_rd_addr), .bram_data(patch_bram_data),
        .patch(patch_out), .patch_valid(patch_valid)
    );

    conv3x3_relu u_conv (
        .clk(clk), .rst_n(rst_n), .start(conv_start),
        .c_in(cur_c_in), .c_out(8'd1),
        .in_w(cur_in_w), .in_h(cur_in_h),
        .weight_base(conv_weight_base), .bias_base(conv_bias_base),
        .patch(patch_out), .patch_valid(patch_valid),
        .weight_data(w_data), .weight_offset(conv_weight_offset),
        .bias_data(b_data), .bias_offset(conv_bias_offset),
        .cur_ci(conv_cur_ci), .need_patch(conv_need_patch),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .out_pixel(conv_out_pixel), .out_ch_idx(conv_out_ch),
        .out_pixel_pos(conv_out_pixel_pos),
        .out_valid(conv_out_valid), .done(conv_done)
    );

    maxpool2x2 u_pool (
        .clk(clk), .rst_n(rst_n), .start(pool_start),
        .in_w(cur_in_w), .in_h(cur_in_h), .channels(8'd1),
        .rd_addr(pool_rd_addr), .rd_data(fmap_t_rd_data),
        .wr_addr(pool_wr_addr), .wr_data(pool_wr_data),
        .wr_en(pool_wr_en), .done(pool_done)
    );

    // 주소 연결
    assign w_addr = conv_weight_offset[16:0];
    assign b_addr = conv_bias_offset;
    assign fmap_t_rd_addr = pool_rd_addr[11:0];

    // fmap 읽기 MUX (patch_reader용)
    always @(*) begin
        fmap_a_rd_addr = 15'd0;
        fmap_b_rd_addr = 15'd0;

        if (state == S_CONV1_RUN) begin
            fmap_a_rd_addr = patch_rd_addr;
        end else if (state == S_CONV2_RUN) begin
            fmap_b_rd_addr = patch_rd_addr;
        end else if (state == S_DONE) begin
            fmap_a_rd_addr = debug_addr;
        end
    end

    // Conv 출력 → fmap_temp 쓰기
    always @(*) begin
        if (conv_out_valid) begin
            fmap_t_we      = 1'b1;
            fmap_t_wr_addr = conv_out_pixel_pos[11:0];
            fmap_t_wr_data = conv_out_pixel;
        end else begin
            fmap_t_we      = 1'b0;
            fmap_t_wr_addr = 12'd0;
            fmap_t_wr_data = 8'd0;
        end
    end

    // fmap_a 쓰기 MUX (이미지 로딩 + Pool2 결과)
    always @(*) begin
        if (load_we_reg) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = load_wr_addr_reg;
            fmap_a_wr_data = load_wr_data_reg;
        end else if (pool_dst && state == S_POOL2_RUN && pool_wr_en) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = pool_wr_offset + pool_wr_addr;
            fmap_a_wr_data = pool_wr_data;
        end else begin
            fmap_a_we      = 1'b0;
            fmap_a_wr_addr = 15'd0;
            fmap_a_wr_data = 8'd0;
        end
    end

    // fmap_b 쓰기 MUX (Pool1 결과)
    always @(*) begin
        if (!pool_dst && state == S_POOL1_RUN && pool_wr_en) begin
            fmap_b_we      = 1'b1;
            fmap_b_wr_addr = pool_wr_offset + pool_wr_addr;
            fmap_b_wr_data = pool_wr_data;
        end else begin
            fmap_b_we      = 1'b0;
            fmap_b_wr_addr = 15'd0;
            fmap_b_wr_data = 8'd0;
        end
    end

    // 디버그
    assign debug_data = fmap_a_rd_data;

    // need_patch 핸드셰이크
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) need_patch_prev <= 1'b0;
        else        need_patch_prev <= conv_need_patch;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) patch_start <= 1'b0;
        else        patch_start <= conv_need_patch && !need_patch_prev;
    end

    // 메인 FSM
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state            <= S_IDLE;
            load_addr        <= 12'd0;
            ext_co           <= 8'd0;
            layer_started    <= 1'b0;
            conv_start       <= 1'b0;
            pool_start       <= 1'b0;
            conv_weight_base <= 18'd0;
            conv_bias_base   <= 17'd0;
            pool_wr_offset   <= 15'd0;
            load_we_reg      <= 1'b0;
            load_wr_addr_reg <= 15'd0;
            load_wr_data_reg <= 8'd0;
            cur_in_w         <= 7'd0;
            cur_in_h         <= 7'd0;
            cur_c_in         <= 8'd0;
            patch_src        <= 1'b0;
            pool_dst         <= 1'b0;
        end else begin
            conv_start  <= 1'b0;
            pool_start  <= 1'b0;
            load_we_reg <= 1'b0;

            case (state)
                S_IDLE: begin
                    load_addr     <= 12'd0;
                    layer_started <= 1'b0;
                    ext_co        <= 8'd0;
                    if (start_load) state <= S_LOAD_IMG;
                    if (start_conv) begin
                        // Conv1 레이어 파라미터 설정
                        cur_in_w  <= 7'd64;
                        cur_in_h  <= 7'd64;
                        cur_c_in  <= 8'd1;
                        patch_src <= 1'b0;   // fmap_a에서 읽기
                        pool_dst  <= 1'b0;   // fmap_b에 쓰기
                        ext_co    <= 8'd0;
                        state     <= S_CONV1_SETUP;
                    end
                end

                S_LOAD_IMG: begin
                    if (img_valid) begin
                        load_we_reg      <= 1'b1;
                        load_wr_addr_reg <= {3'd0, load_addr};
                        load_wr_data_reg <= img_pixel;
                        if (load_addr == 12'd4095)
                            state <= S_IDLE;
                        else
                            load_addr <= load_addr + 12'd1;
                    end
                end

                // ──── Conv1 + Pool1 ────
                S_CONV1_SETUP: begin
                    conv_weight_base <= ext_co * 18'd9;
                    conv_bias_base   <= 17'd288 + {9'd0, ext_co};
                    pool_wr_offset   <= ext_co * 15'd1024;  // 32×32=1024
                    layer_started    <= 1'b0;
                    state            <= S_CONV1_RUN;
                end

                S_CONV1_RUN: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_POOL1_RUN;
                    end
                end

                S_POOL1_RUN: begin
                    if (!layer_started) begin
                        pool_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (pool_done) begin
                        layer_started <= 1'b0;
                        state         <= S_NEXT_CH1;
                    end
                end

                S_NEXT_CH1: begin
                    if (ext_co + 8'd1 == C1_OUT) begin
                        // Conv1 전체 완료 → Conv2 준비
                        ext_co    <= 8'd0;
                        cur_in_w  <= 7'd32;
                        cur_in_h  <= 7'd32;
                        cur_c_in  <= C1_OUT;    // Conv2 입력 = Conv1 출력 채널 수
                        patch_src <= 1'b1;      // fmap_b에서 읽기
                        pool_dst  <= 1'b1;      // fmap_a에 쓰기
                        state     <= S_CONV2_SETUP;
                    end else begin
                        ext_co <= ext_co + 8'd1;
                        state  <= S_CONV1_SETUP;
                    end
                end

                // ──── Conv2 + Pool2 ────
                S_CONV2_SETUP: begin
                    conv_weight_base <= 18'd320 + ext_co * C1_OUT * 18'd9;
                    conv_bias_base   <= 17'd18752 + {9'd0, ext_co};
                    pool_wr_offset   <= ext_co * 15'd256;   // 16×16=256
                    layer_started    <= 1'b0;
                    state            <= S_CONV2_RUN;
                end

                S_CONV2_RUN: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_POOL2_RUN;
                    end
                end

                S_POOL2_RUN: begin
                    if (!layer_started) begin
                        pool_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (pool_done) begin
                        layer_started <= 1'b0;
                        state         <= S_NEXT_CH2;
                    end
                end

                S_NEXT_CH2: begin
                    if (ext_co + 8'd1 == C2_OUT) begin
                        state <= S_DONE;
                    end else begin
                        ext_co <= ext_co + 8'd1;
                        state  <= S_CONV2_SETUP;
                    end
                end

                S_DONE: begin
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

module step7_conv123_pool123 #(
    parameter C1_OUT = 8'd2,
    parameter C2_OUT = 8'd2,
    parameter C3_OUT = 8'd2
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_load,
    input  wire        img_valid,
    input  wire [7:0]  img_pixel,
    input  wire        start_conv,
    input  wire [14:0] debug_addr,
    output wire [7:0]  debug_data,
    output wire        all_done,
    output wire        busy
);

    // FSM
    localparam S_IDLE        = 4'd0;
    localparam S_LOAD_IMG    = 4'd1;
    localparam S_CONV1_SETUP = 4'd2;
    localparam S_CONV1_RUN   = 4'd3;
    localparam S_POOL1_RUN   = 4'd4;
    localparam S_NEXT_CH1    = 4'd5;
    localparam S_CONV2_SETUP = 4'd6;
    localparam S_CONV2_RUN   = 4'd7;
    localparam S_POOL2_RUN   = 4'd8;
    localparam S_NEXT_CH2    = 4'd9;
    localparam S_CONV3_SETUP = 4'd10;
    localparam S_CONV3_RUN   = 4'd11;
    localparam S_POOL3_RUN   = 4'd12;
    localparam S_NEXT_CH3    = 4'd13;
    localparam S_DONE        = 4'd14;

    reg [3:0] state;
    reg [11:0] load_addr;
    reg [7:0] ext_co;
    reg layer_started;

    reg load_we_reg;
    reg [14:0] load_wr_addr_reg;
    reg [7:0] load_wr_data_reg;

    reg [6:0] cur_in_w, cur_in_h;
    reg [7:0] cur_c_in;
    reg       patch_src;
    reg       pool_dst;

    reg conv_start;
    reg [17:0] conv_weight_base;
    reg [16:0] conv_bias_base;

    reg pool_start;
    reg [14:0] pool_wr_offset;

    assign busy = (state != S_IDLE && state != S_DONE);
    assign all_done = (state == S_DONE);

    // BRAM 신호
    reg fmap_a_we;
    reg [14:0] fmap_a_wr_addr;
    reg [7:0] fmap_a_wr_data;
    reg [14:0] fmap_a_rd_addr;
    wire [7:0] fmap_a_rd_data;

    reg fmap_t_we;
    reg [11:0] fmap_t_wr_addr;
    reg [7:0] fmap_t_wr_data;
    wire [11:0] fmap_t_rd_addr;
    wire [7:0] fmap_t_rd_data;

    reg fmap_b_we;
    reg [14:0] fmap_b_wr_addr;
    reg [7:0] fmap_b_wr_data;
    reg [14:0] fmap_b_rd_addr;
    wire [7:0] fmap_b_rd_data;

    wire [16:0] w_addr, b_addr;
    wire [7:0] w_data, b_data;

    reg patch_start;
    wire [14:0] patch_rd_addr;
    wire [7:0] patch_out [0:2][0:2];
    wire patch_valid;
    wire [14:0] patch_ch_offset;

    wire [17:0] conv_weight_offset;
    wire [16:0] conv_bias_offset;
    wire [7:0] conv_cur_ci;
    wire conv_need_patch;
    wire [6:0] conv_target_row, conv_target_col;
    wire signed [7:0] conv_out_pixel;
    wire [7:0] conv_out_ch;
    wire [14:0] conv_out_pixel_pos;
    wire conv_out_valid, conv_done;

    wire [14:0] pool_rd_addr;
    wire [14:0] pool_wr_addr;
    wire [7:0] pool_wr_data;
    wire pool_wr_en, pool_done;

    reg need_patch_prev;

    assign patch_ch_offset = conv_cur_ci * cur_in_w * cur_in_h;

    wire [7:0] patch_bram_data;
    assign patch_bram_data = patch_src ? fmap_b_rd_data : fmap_a_rd_data;

    // 디버그: 마지막 Pool 결과 위치에 따라 선택
    assign debug_data = pool_dst ? fmap_a_rd_data : fmap_b_rd_data;

    // BRAM
    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_a (
        .clk(clk), .we(fmap_a_we),
        .addr_a(fmap_a_wr_addr), .din(fmap_a_wr_data),
        .addr_b(fmap_a_rd_addr), .dout(fmap_a_rd_data)
    );

    fmap_bram #(.DEPTH(4096), .ADDR_W(12)) u_fmap_temp (
        .clk(clk), .we(fmap_t_we),
        .addr_a(fmap_t_wr_addr), .din(fmap_t_wr_data),
        .addr_b(fmap_t_rd_addr), .dout(fmap_t_rd_data)
    );

    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap_b (
        .clk(clk), .we(fmap_b_we),
        .addr_a(fmap_b_wr_addr), .din(fmap_b_wr_data),
        .addr_b(fmap_b_rd_addr), .dout(fmap_b_rd_data)
    );

    weight_bram_conv u_weights (
        .clk(clk), .weight_addr(w_addr), .weight_data(w_data),
        .bias_addr(b_addr), .bias_data(b_data)
    );

    // 서브모듈
    patch_reader u_patch (
        .clk(clk), .rst_n(rst_n), .start(patch_start),
        .width_cfg(cur_in_w), .height_cfg(cur_in_h),
        .ch_offset(patch_ch_offset),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .bram_addr(patch_rd_addr), .bram_data(patch_bram_data),
        .patch(patch_out), .patch_valid(patch_valid)
    );

    conv3x3_relu u_conv (
        .clk(clk), .rst_n(rst_n), .start(conv_start),
        .c_in(cur_c_in), .c_out(8'd1),
        .in_w(cur_in_w), .in_h(cur_in_h),
        .weight_base(conv_weight_base), .bias_base(conv_bias_base),
        .patch(patch_out), .patch_valid(patch_valid),
        .weight_data(w_data), .weight_offset(conv_weight_offset),
        .bias_data(b_data), .bias_offset(conv_bias_offset),
        .cur_ci(conv_cur_ci), .need_patch(conv_need_patch),
        .target_row(conv_target_row), .target_col(conv_target_col),
        .out_pixel(conv_out_pixel), .out_ch_idx(conv_out_ch),
        .out_pixel_pos(conv_out_pixel_pos),
        .out_valid(conv_out_valid), .done(conv_done)
    );

    maxpool2x2 u_pool (
        .clk(clk), .rst_n(rst_n), .start(pool_start),
        .in_w(cur_in_w), .in_h(cur_in_h), .channels(8'd1),
        .rd_addr(pool_rd_addr), .rd_data(fmap_t_rd_data),
        .wr_addr(pool_wr_addr), .wr_data(pool_wr_data),
        .wr_en(pool_wr_en), .done(pool_done)
    );

    assign w_addr = conv_weight_offset[16:0];
    assign b_addr = conv_bias_offset;
    assign fmap_t_rd_addr = pool_rd_addr[11:0];

    // fmap 읽기 MUX
    always @(*) begin
        fmap_a_rd_addr = 15'd0;
        fmap_b_rd_addr = 15'd0;

        if (state == S_CONV1_RUN || state == S_CONV3_RUN)
            fmap_a_rd_addr = patch_rd_addr;
        else if (state == S_CONV2_RUN)
            fmap_b_rd_addr = patch_rd_addr;
        else if (state == S_DONE) begin
            if (pool_dst)
                fmap_a_rd_addr = debug_addr;
            else
                fmap_b_rd_addr = debug_addr;
        end
    end

    // Conv → fmap_temp
    always @(*) begin
        if (conv_out_valid) begin
            fmap_t_we      = 1'b1;
            fmap_t_wr_addr = conv_out_pixel_pos[11:0];
            fmap_t_wr_data = conv_out_pixel;
        end else begin
            fmap_t_we      = 1'b0;
            fmap_t_wr_addr = 12'd0;
            fmap_t_wr_data = 8'd0;
        end
    end

    // fmap_a 쓰기 MUX
    always @(*) begin
        if (load_we_reg) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = load_wr_addr_reg;
            fmap_a_wr_data = load_wr_data_reg;
        end else if (pool_dst && (state == S_POOL2_RUN) && pool_wr_en) begin
            fmap_a_we      = 1'b1;
            fmap_a_wr_addr = pool_wr_offset + pool_wr_addr;
            fmap_a_wr_data = pool_wr_data;
        end else begin
            fmap_a_we      = 1'b0;
            fmap_a_wr_addr = 15'd0;
            fmap_a_wr_data = 8'd0;
        end
    end

    // fmap_b 쓰기 MUX
    always @(*) begin
        if (!pool_dst && (state == S_POOL1_RUN || state == S_POOL3_RUN) && pool_wr_en) begin
            fmap_b_we      = 1'b1;
            fmap_b_wr_addr = pool_wr_offset + pool_wr_addr;
            fmap_b_wr_data = pool_wr_data;
        end else begin
            fmap_b_we      = 1'b0;
            fmap_b_wr_addr = 15'd0;
            fmap_b_wr_data = 8'd0;
        end
    end

    // need_patch 핸드셰이크
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) need_patch_prev <= 1'b0;
        else        need_patch_prev <= conv_need_patch;
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) patch_start <= 1'b0;
        else        patch_start <= conv_need_patch && !need_patch_prev;
    end

    // 메인 FSM
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state            <= S_IDLE;
            load_addr        <= 12'd0;
            ext_co           <= 8'd0;
            layer_started    <= 1'b0;
            conv_start       <= 1'b0;
            pool_start       <= 1'b0;
            conv_weight_base <= 18'd0;
            conv_bias_base   <= 17'd0;
            pool_wr_offset   <= 15'd0;
            load_we_reg      <= 1'b0;
            load_wr_addr_reg <= 15'd0;
            load_wr_data_reg <= 8'd0;
            cur_in_w         <= 7'd0;
            cur_in_h         <= 7'd0;
            cur_c_in         <= 8'd0;
            patch_src        <= 1'b0;
            pool_dst         <= 1'b0;
        end else begin
            conv_start  <= 1'b0;
            pool_start  <= 1'b0;
            load_we_reg <= 1'b0;

            case (state)
                S_IDLE: begin
                    load_addr     <= 12'd0;
                    layer_started <= 1'b0;
                    ext_co        <= 8'd0;
                    if (start_load) state <= S_LOAD_IMG;
                    if (start_conv) begin
                        cur_in_w  <= 7'd64;
                        cur_in_h  <= 7'd64;
                        cur_c_in  <= 8'd1;
                        patch_src <= 1'b0;
                        pool_dst  <= 1'b0;
                        ext_co    <= 8'd0;
                        state     <= S_CONV1_SETUP;
                    end
                end

                S_LOAD_IMG: begin
                    if (img_valid) begin
                        load_we_reg      <= 1'b1;
                        load_wr_addr_reg <= {3'd0, load_addr};
                        load_wr_data_reg <= img_pixel;
                        if (load_addr == 12'd4095)
                            state <= S_IDLE;
                        else
                            load_addr <= load_addr + 12'd1;
                    end
                end

                // ──── Conv1 + Pool1 ────
                S_CONV1_SETUP: begin
                    conv_weight_base <= ext_co * 18'd9;
                    conv_bias_base   <= 17'd288 + {9'd0, ext_co};
                    pool_wr_offset   <= ext_co * 15'd1024;
                    layer_started    <= 1'b0;
                    state            <= S_CONV1_RUN;
                end

                S_CONV1_RUN: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_POOL1_RUN;
                    end
                end

                S_POOL1_RUN: begin
                    if (!layer_started) begin
                        pool_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (pool_done) begin
                        layer_started <= 1'b0;
                        state         <= S_NEXT_CH1;
                    end
                end

                S_NEXT_CH1: begin
                    if (ext_co + 8'd1 == C1_OUT) begin
                        ext_co    <= 8'd0;
                        cur_in_w  <= 7'd32;
                        cur_in_h  <= 7'd32;
                        cur_c_in  <= C1_OUT;
                        patch_src <= 1'b1;
                        pool_dst  <= 1'b1;
                        state     <= S_CONV2_SETUP;
                    end else begin
                        ext_co <= ext_co + 8'd1;
                        state  <= S_CONV1_SETUP;
                    end
                end

                // ──── Conv2 + Pool2 ────
                S_CONV2_SETUP: begin
                    conv_weight_base <= 18'd320 + ext_co * C1_OUT * 18'd9;
                    conv_bias_base   <= 17'd18752 + {9'd0, ext_co};
                    pool_wr_offset   <= ext_co * 15'd256;
                    layer_started    <= 1'b0;
                    state            <= S_CONV2_RUN;
                end

                S_CONV2_RUN: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_POOL2_RUN;
                    end
                end

                S_POOL2_RUN: begin
                    if (!layer_started) begin
                        pool_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (pool_done) begin
                        layer_started <= 1'b0;
                        state         <= S_NEXT_CH2;
                    end
                end

                S_NEXT_CH2: begin
                    if (ext_co + 8'd1 == C2_OUT) begin
                        ext_co    <= 8'd0;
                        cur_in_w  <= 7'd16;
                        cur_in_h  <= 7'd16;
                        cur_c_in  <= C2_OUT;
                        patch_src <= 1'b0;   // fmap_a에서 읽기
                        pool_dst  <= 1'b0;   // fmap_b에 쓰기
                        state     <= S_CONV3_SETUP;
                    end else begin
                        ext_co <= ext_co + 8'd1;
                        state  <= S_CONV2_SETUP;
                    end
                end

                // ──── Conv3 + Pool3 ────
                S_CONV3_SETUP: begin
                    conv_weight_base <= 18'd18816 + ext_co * C2_OUT * 18'd9;
                    conv_bias_base   <= 17'd92544 + {9'd0, ext_co};
                    pool_wr_offset   <= ext_co * 15'd64;   // 8×8=64
                    layer_started    <= 1'b0;
                    state            <= S_CONV3_RUN;
                end

                S_CONV3_RUN: begin
                    if (!layer_started) begin
                        conv_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (conv_done) begin
                        layer_started <= 1'b0;
                        state         <= S_POOL3_RUN;
                    end
                end

                S_POOL3_RUN: begin
                    if (!layer_started) begin
                        pool_start    <= 1'b1;
                        layer_started <= 1'b1;
                    end
                    if (pool_done) begin
                        layer_started <= 1'b0;
                        state         <= S_NEXT_CH3;
                    end
                end

                S_NEXT_CH3: begin
                    if (ext_co + 8'd1 == C3_OUT) begin
                        state <= S_DONE;
                    end else begin
                        ext_co <= ext_co + 8'd1;
                        state  <= S_CONV3_SETUP;
                    end
                end

                S_DONE: begin
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule