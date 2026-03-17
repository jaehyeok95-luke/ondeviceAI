`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/17/2026 01:11:51 AM
// Design Name: 
// Module Name: fsm
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

module conv_engine #(
    parameter P = 8
)(
    input  wire        clk,
    input  wire        rst_n,

    // ── 메인 FSM ──
    input  wire        start,
    output reg         done,

    // ── 레이어 파라미터 ──
    input  wire [7:0]  cfg_ci,
    input  wire [7:0]  cfg_co,
    input  wire [6:0]  cfg_w,
    input  wire [6:0]  cfg_h,
    input  wire        cfg_weight_bank,
    input  wire [3:0]  cfg_shift,       // 가변 시프트

    // ── weight_preload ──
    output reg         preload_start,
    output reg  [15:0] preload_base,
    output reg         preload_bank_sel,
    input  wire        preload_done,
    input  wire signed [7:0] preload_bias [0:P-1],

    // ── line_loader ──
    output reg         line_load_start,
    output reg  [14:0] line_load_base_addr,
    input  wire        line_load_done,

    // ── line_buffer ──
    output reg         lb_patch_read,
    output reg  [6:0]  lb_read_row,
    output reg  [6:0]  lb_read_col,
    output reg  [1:0]  lb_top_sel,
    output reg  [1:0]  lb_mid_sel,
    output reg  [1:0]  lb_bot_sel,

    // ── pe_array ──
    output wire        pe_valid,
    input  wire signed [19:0] pe_psum [0:P-1],

    // ── maxpool2x2 ──
    output reg         mp_in_valid,
    output reg  signed [7:0] mp_in_data [0:P-1],
    output reg  [6:0]  mp_row,
    output reg  [6:0]  mp_col,
    input  wire        mp_out_valid,
    input  wire signed [7:0] mp_out_data [0:P-1],
    input  wire [6:0]  mp_out_row,
    input  wire [6:0]  mp_out_col,

    // ── fmap 쓰기 (maxpool 출력 직렬화) ──
    output reg         fmap_wr_en,
    output reg  [14:0] fmap_wr_addr,
    output reg  [7:0]  fmap_wr_data,

    // ── fmap 기준 주소 ──
    input  wire [14:0] fmap_rd_base
);

    // ══════════════════════════════════════════
    //  psum_bram ×8
    // ══════════════════════════════════════════
    reg  [11:0]        psum_rd_addr;
    wire signed [31:0] psum_rd_data [0:P-1];
    reg                psum_wr_en;
    reg  [11:0]        psum_wr_addr;
    reg  signed [31:0] psum_wr_data [0:P-1];

    genvar g;
    generate
        for (g = 0; g < P; g = g + 1) begin : psum_banks
            psum_bram_bank #(.DEPTH(4096), .AW(12)) u_psum (
                .clk(clk), .rd_addr(psum_rd_addr), .rd_data(psum_rd_data[g]),
                .wr_en(psum_wr_en), .wr_addr(psum_wr_addr), .wr_data(psum_wr_data[g])
            );
        end
    endgenerate

    // ══════════════════════════════════════════
    //  FSM - 4상태
    // ══════════════════════════════════════════
    localparam C_IDLE  = 2'd0;
    localparam C_LOAD  = 2'd1;
    localparam C_PIXEL = 2'd2;
    localparam C_FLUSH = 2'd3;

    reg [1:0] state;

    // ── 루프 카운터 ──
    reg [7:0]  oc_group;
    reg [7:0]  ci_cnt;
    reg [6:0]  px_row, px_col;
    reg [11:0] pixel_addr_cnt;
    reg [15:0] w_addr_accum;
    reg [14:0] fmap_ci_addr;
    reg [14:0] fmap_plane_size;

    // ── flush 카운터 ──
    reg [11:0] flush_addr_cnt;
    reg [6:0]  flush_row, flush_col;
    reg [11:0] flush_total;
    reg        flush_pipe;
    reg last_oc_flushed;

    // ── 병렬 완료 추적 ──
    reg preload_running;
    reg line_load_running;

    // ── pooled 크기 (fmap write 주소 계산용) ──
    reg [6:0]  pooled_w;
    reg [14:0] pooled_plane_size;

    // ══════════════════════════════════════════
    //  Maxpool 출력 직렬화
    // ══════════════════════════════════════════
    reg [2:0]  ser_ch_cnt;
    reg        ser_pending;
    reg signed [7:0] ser_buf [0:P-1];
    reg [6:0]  ser_row, ser_col;

    // ══════════════════════════════════════════
    //  지연 파이프라인
    // ══════════════════════════════════════════
    reg        d1_valid, d2_valid;
    reg        d1_first_ci, d2_first_ci;
    reg [11:0] d1_pixel_addr, d2_pixel_addr;
    reg signed [19:0] d2_psum_lat [0:P-1];
    reg signed [7:0]  d2_bias_lat [0:P-1];

    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            d1_valid <= 1'b0; d2_valid <= 1'b0;
            d1_first_ci <= 1'b0; d2_first_ci <= 1'b0;
            d1_pixel_addr <= 12'd0; d2_pixel_addr <= 12'd0;
        end else begin
            d1_valid      <= lb_patch_read;
            d1_first_ci   <= (ci_cnt == 8'd0);
            d1_pixel_addr <= pixel_addr_cnt;
            d2_valid      <= d1_valid;
            d2_first_ci   <= d1_first_ci;
            d2_pixel_addr <= d1_pixel_addr;
        end
    end

    always @(posedge clk) begin
        for (i = 0; i < P; i = i + 1) begin
            d2_psum_lat[i] <= pe_psum[i];
            d2_bias_lat[i] <= preload_bias[i];
        end
    end

    assign pe_valid = d1_valid;

    // ══════════════════════════════════════════
    //  psum_bram 주소 발행
    // ══════════════════════════════════════════
    always @(posedge clk) begin
        if (d1_valid)
            psum_rd_addr <= d1_pixel_addr;
        else if (state == C_FLUSH && !ser_pending)
            psum_rd_addr <= flush_addr_cnt;
    end

    // ══════════════════════════════════════════
    //  psum 누적 쓰기 (가변 시프트 적용)
    // ══════════════════════════════════════════
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            psum_wr_en <= 1'b0;
        end else begin
            psum_wr_en <= 1'b0;
            if (d2_valid) begin
                psum_wr_en   <= 1'b1;
                psum_wr_addr <= d2_pixel_addr;
                for (i = 0; i < P; i = i + 1) begin
                    if (d2_first_ci)
                        psum_wr_data[i] <=
                            ({{24{d2_bias_lat[i][7]}}, d2_bias_lat[i]} <<< cfg_shift)
                            + {{12{d2_psum_lat[i][19]}}, d2_psum_lat[i]};
                    else
                        psum_wr_data[i] <=
                            psum_rd_data[i]
                            + {{12{d2_psum_lat[i][19]}}, d2_psum_lat[i]};
                end
            end
        end
    end

    // ══════════════════════════════════════════
    //  flush: shift + clamp + maxpool 전달
    // ══════════════════════════════════════════
    reg signed [31:0] shifted;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            mp_in_valid <= 1'b0;
            for (i = 0; i < P; i = i + 1)
                mp_in_data[i] <= 8'sd0;
            mp_row <= 7'd0;
            mp_col <= 7'd0;
        end else begin
            mp_in_valid <= 1'b0;
            if (state == C_FLUSH && flush_pipe && !ser_pending) begin
                mp_in_valid <= 1'b1;
                mp_row      <= flush_row;
                mp_col      <= flush_col;
                for (i = 0; i < P; i = i + 1) begin
                    shifted = psum_rd_data[i] >>> cfg_shift;
                    if (shifted < 32'sd0)
                        mp_in_data[i] <= 8'sd0;
                    else if (shifted > 32'sd127)
                        mp_in_data[i] <= 8'sd127;
                    else
                        mp_in_data[i] <= shifted[7:0];
                end
            end
        end
    end

    // ══════════════════════════════════════════
    //  Maxpool 출력 직렬화 → fmap 쓰기
    // ══════════════════════════════════════════
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            ser_pending  <= 1'b0;
            ser_ch_cnt   <= 3'd0;
            fmap_wr_en   <= 1'b0;
            fmap_wr_addr <= 15'd0;
            fmap_wr_data <= 8'd0;
            for (i = 0; i < P; i = i + 1)
                ser_buf[i] <= 8'sd0;
            ser_row <= 7'd0;
            ser_col <= 7'd0;
        end else begin
            fmap_wr_en <= 1'b0;

            // maxpool 출력 캡처
            if (mp_out_valid) begin
                for (i = 0; i < P; i = i + 1)
                    ser_buf[i] <= mp_out_data[i];
                ser_row     <= mp_out_row;
                ser_col     <= mp_out_col;
                ser_ch_cnt  <= 3'd0;
                ser_pending <= 1'b1;
            end

            // 직렬 기록 (8 clk per pooled pixel)
            if (ser_pending) begin
                fmap_wr_en   <= 1'b1;
                fmap_wr_data <= ser_buf[ser_ch_cnt];
                fmap_wr_addr <= ({7'd0, oc_group} + {12'd0, ser_ch_cnt})
                              * pooled_plane_size
                              + {8'd0, ser_row} * {8'd0, pooled_w}
                              + {8'd0, ser_col};

                if (ser_ch_cnt == 3'd7)
                    ser_pending <= 1'b0;
                else
                    ser_ch_cnt <= ser_ch_cnt + 3'd1;
            end
        end
    end

    // ══════════════════════════════════════════
    //  메인 FSM
    // ══════════════════════════════════════════
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state             <= C_IDLE;
            done              <= 1'b0;
            oc_group          <= 8'd0;
            ci_cnt            <= 8'd0;
            px_row            <= 7'd0;
            px_col            <= 7'd0;
            pixel_addr_cnt    <= 12'd0;
            w_addr_accum      <= 16'd0;
            fmap_ci_addr      <= 15'd0;
            fmap_plane_size   <= 15'd0;
            flush_addr_cnt    <= 12'd0;
            flush_row         <= 7'd0;
            flush_col         <= 7'd0;
            flush_total       <= 12'd0;
            flush_pipe        <= 1'b0;
            last_oc_flushed <= 1'b0;
            preload_start     <= 1'b0;
            preload_base      <= 16'd0;
            preload_bank_sel  <= 1'b0;
            line_load_start   <= 1'b0;
            line_load_base_addr <= 15'd0;
            lb_patch_read     <= 1'b0;
            lb_read_row       <= 7'd0;
            lb_read_col       <= 7'd0;
            lb_top_sel        <= 2'd0;
            lb_mid_sel        <= 2'd0;
            lb_bot_sel        <= 2'd0;
            preload_running   <= 1'b0;
            line_load_running <= 1'b0;
            pooled_w          <= 7'd0;
            pooled_plane_size <= 15'd0;
        end else begin
            done            <= 1'b0;
            preload_start   <= 1'b0;
            line_load_start <= 1'b0;
            lb_patch_read   <= 1'b0;

            if (preload_running && preload_done)
                preload_running <= 1'b0;
            if (line_load_running && line_load_done)
                line_load_running <= 1'b0;
                
            // ── done: IDLE 상태에서 직렬화 완료 후 1회 발행 ──
            if (state == C_IDLE && last_oc_flushed && !ser_pending) begin
                done            <= 1'b1;
                last_oc_flushed <= 1'b0;
            end

            case (state)

                // ═══════════════════════════
                C_IDLE: begin
                    if (start) begin
                        oc_group        <= 8'd0;
                        ci_cnt          <= 8'd0;
                        px_row          <= 7'd0;
                        px_col          <= 7'd0;
                        pixel_addr_cnt  <= 12'd0;
                        w_addr_accum    <= 16'd0;
                        fmap_ci_addr    <= fmap_rd_base;
                        fmap_plane_size <= {8'd0, cfg_w} * {8'd0, cfg_h};
                        flush_total     <= {5'd0, cfg_w} * {5'd0, cfg_h};
                        last_oc_flushed <= 1'b0;
                        pooled_w        <= {1'b0, cfg_w[6:1]};  // cfg_w / 2
                        pooled_plane_size <= {8'd0, cfg_w[6:1]} * {8'd0, cfg_h[6:1]};

                        preload_start     <= 1'b1;
                        preload_bank_sel  <= cfg_weight_bank;
                        preload_base      <= 16'd0;
                        preload_running   <= 1'b1;

                        line_load_start     <= 1'b1;
                        line_load_base_addr <= fmap_rd_base;
                        line_load_running   <= 1'b1;

                        state <= C_LOAD;
                    end
                end

                // ═══════════════════════════
                C_LOAD: begin
                    if (!preload_running && !line_load_running) begin
                        px_row         <= 7'd0;
                        px_col         <= 7'd0;
                        pixel_addr_cnt <= 12'd0;
                        state          <= C_PIXEL;
                    end
                end

                // ═══════════════════════════
                C_PIXEL: begin
                    lb_patch_read <= 1'b1;
                    lb_read_row   <= px_row;
                    lb_read_col   <= px_col;

                    lb_top_sel <= (px_row[1:0] <= 2'd1)
                                  ? px_row[1:0] + 2'd2
                                  : px_row[1:0] - 2'd2;
                    lb_mid_sel <= (px_row[1:0] == 2'd0)
                                  ? 2'd3
                                  : px_row[1:0] - 2'd1;
                    lb_bot_sel <= px_row[1:0];

                    if (px_col == cfg_w - 7'd1) begin
                        px_col <= 7'd0;
                        if (px_row == cfg_h - 7'd1) begin
                            ci_cnt         <= ci_cnt + 8'd1;
                            pixel_addr_cnt <= 12'd0;

                            if (ci_cnt == cfg_ci - 8'd1) begin
                                flush_addr_cnt <= 12'd0;
                                flush_row      <= 7'd0;
                                flush_col      <= 7'd0;
                                flush_pipe     <= 1'b0;
                                state          <= C_FLUSH;
                            end else begin
                                w_addr_accum <= w_addr_accum + 16'd20;
                                fmap_ci_addr <= fmap_ci_addr + fmap_plane_size;

                                preload_start     <= 1'b1;
                                preload_base      <= w_addr_accum + 16'd20;
                                preload_running   <= 1'b1;

                                line_load_start     <= 1'b1;
                                line_load_base_addr <= fmap_ci_addr + fmap_plane_size;
                                line_load_running   <= 1'b1;

                                state <= C_LOAD;
                            end
                        end else begin
                            px_row         <= px_row + 7'd1;
                            pixel_addr_cnt <= pixel_addr_cnt + 12'd1;
                        end
                    end else begin
                        px_col         <= px_col + 7'd1;
                        pixel_addr_cnt <= pixel_addr_cnt + 12'd1;
                    end
                end

                // ═══════════════════════════
                C_FLUSH: begin
                    if (ser_pending) begin
                        // 직렬화 진행 중 → flush 일시 정지
                    end else if (!flush_pipe) begin
                        flush_pipe <= 1'b1;
                    end else begin
                        if (flush_col == cfg_w - 7'd1) begin
                            flush_col <= 7'd0;
                            flush_row <= flush_row + 7'd1;
                        end else begin
                            flush_col <= flush_col + 7'd1;
                        end

                        flush_addr_cnt <= flush_addr_cnt + 12'd1;

                        if (flush_addr_cnt == flush_total - 12'd1) begin
                            oc_group <= oc_group + 8'd8;

                            if (oc_group + 8'd8 >= cfg_co) begin
                                last_oc_flushed <= 1'b1;
                                state <= C_IDLE;
                            end else begin
                                ci_cnt          <= 8'd0;
                                pixel_addr_cnt  <= 12'd0;
                                w_addr_accum    <= w_addr_accum + 16'd20;
                                fmap_ci_addr    <= fmap_rd_base;

                                preload_start     <= 1'b1;
                                preload_base      <= w_addr_accum + 16'd20;
                                preload_running   <= 1'b1;

                                line_load_start     <= 1'b1;
                                line_load_base_addr <= fmap_rd_base;
                                line_load_running   <= 1'b1;

                                state <= C_LOAD;
                            end
                        end
                    end
                end

                default: state <= C_IDLE;

            endcase
        end
    end

endmodule


module line_loader (
    input  wire        clk,
    input  wire        rst_n,

    // conv_engine 핸드셰이크
    input  wire        start,
    output reg         done,

    // 설정 (conv_engine이 제공)
    input  wire [14:0] base_addr,      // 이 Ci 채널의 fmap 시작 주소
    input  wire [6:0]  cfg_w,          // 레이어 입력 너비

    // fmap BRAM 읽기
    output reg  [14:0] fmap_rd_addr,
    input  wire [7:0]  fmap_rd_data,

    // line_buffer 쓰기
    output reg         lb_load_en,
    output reg  [1:0]  lb_load_line_sel,
    output reg  [6:0]  lb_load_col,
    output reg  signed [7:0] lb_load_data
);

    localparam L_IDLE = 2'd0;
    localparam L_PIPE = 2'd1;
    localparam L_LOAD = 2'd2;

    reg [1:0]  state;
    reg [14:0] addr_cur;
    reg [6:0]  col_cnt;
    reg [1:0]  row_cnt;       // 0,1,2 → 3행 로드
    reg [1:0]  line_sel;      // 라인버퍼 라인 인덱스

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= L_IDLE;
            done         <= 1'b0;
            lb_load_en   <= 1'b0;
            addr_cur     <= 15'd0;
            col_cnt      <= 7'd0;
            row_cnt      <= 2'd0;
            line_sel     <= 2'd0;
            fmap_rd_addr <= 15'd0;
            lb_load_line_sel <= 2'd0;
            lb_load_col  <= 7'd0;
            lb_load_data <= 8'sd0;
        end else begin
            done       <= 1'b0;
            lb_load_en <= 1'b0;

            case (state)
                L_IDLE: begin
                    if (start) begin
                        addr_cur     <= base_addr;
                        fmap_rd_addr <= base_addr;
                        col_cnt      <= 7'd0;
                        row_cnt      <= 2'd0;
                        line_sel     <= 2'd0;
                        state        <= L_PIPE;
                    end
                end

                L_PIPE: begin
                    // BRAM 1clk 레이턴시 흡수
                    addr_cur     <= addr_cur + 15'd1;
                    fmap_rd_addr <= addr_cur + 15'd1;
                    state        <= L_LOAD;
                end

                L_LOAD: begin
                    // fmap_rd_data는 이전 클럭 주소의 데이터
                    lb_load_en       <= 1'b1;
                    lb_load_line_sel <= line_sel;
                    lb_load_col      <= col_cnt;
                    lb_load_data     <= $signed(fmap_rd_data);

                    col_cnt      <= col_cnt + 7'd1;
                    addr_cur     <= addr_cur + 15'd1;
                    fmap_rd_addr <= addr_cur + 15'd1;

                    if (col_cnt == cfg_w - 7'd1) begin
                        col_cnt  <= 7'd0;
                        line_sel <= line_sel + 2'd1;
                        row_cnt  <= row_cnt + 2'd1;

                        if (row_cnt == 2'd2) begin
                            done  <= 1'b1;
                            state <= L_IDLE;
                        end
                    end
                end

                default: state <= L_IDLE;
            endcase
        end
    end

endmodule