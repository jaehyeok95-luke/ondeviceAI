`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2026 11:36:55 PM
// Design Name: 
// Module Name: buffer_module
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


module line_buffer #(
    parameter MAX_W = 64
)(
    input  wire        clk,
    input  wire        rst_n,

    // 레이어 설정
    input  wire [6:0]  cfg_width,
    input  wire [6:0]  cfg_height,

    // BRAM → 라인 로딩
    input  wire        load_en,
    input  wire [1:0]  load_line_sel,  // 0~3
    input  wire [6:0]  load_col,
    input  wire signed [7:0] load_data,

    // Patch 읽기
    input  wire        patch_read,
    input  wire [1:0]  top_line_sel,   // FSM이 지정: top 행의 라인 인덱스
    input  wire [1:0]  mid_line_sel,   // FSM이 지정: mid 행의 라인 인덱스
    input  wire [1:0]  bot_line_sel,   // FSM이 지정: bot 행의 라인 인덱스
    input  wire [6:0]  read_col,
    input  wire [6:0]  read_row,

    // 출력
    output reg  signed [7:0] patch [0:8],
    output reg         patch_valid
);

    // ── 4개 라인 레지스터 ──
    // 256 bytes = 2048 FF (Zybo 53200 FF의 3.8%)
    reg signed [7:0] line [0:3][0:MAX_W-1];

    // ── 안전한 인덱스 ──
    wire [6:0] col_left  = (read_col > 7'd0)             ? read_col - 7'd1 : 7'd0;
    wire [6:0] col_right = (read_col < cfg_width - 7'd1) ? read_col + 7'd1 : cfg_width - 7'd1;

    // ── Padding 플래그 ──
    wire top_pad   = (read_row == 7'd0);
    wire bot_pad   = (read_row == cfg_height - 7'd1);
    wire left_pad  = (read_col == 7'd0);
    wire right_pad = (read_col == cfg_width - 7'd1);

    integer i, j;

    // ── 라인 로딩 ──
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 4; i = i + 1)
                for (j = 0; j < MAX_W; j = j + 1)
                    line[i][j] <= 8'sd0;
        end else if (load_en) begin
            line[load_line_sel][load_col] <= load_data;
        end
    end

    // ── Patch 생성 ──
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < 9; i = i + 1)
                patch[i] <= 8'sd0;
            patch_valid <= 1'b0;
        end else begin
            patch_valid <= 1'b0;

            if (patch_read) begin
                patch_valid <= 1'b1;

                // Top row
                if (top_pad || left_pad)
                    patch[0] <= 8'sd0;
                else
                    patch[0] <= line[top_line_sel][col_left];

                if (top_pad)
                    patch[1] <= 8'sd0;
                else
                    patch[1] <= line[top_line_sel][read_col];

                if (top_pad || right_pad)
                    patch[2] <= 8'sd0;
                else
                    patch[2] <= line[top_line_sel][col_right];

                // Mid row
                if (left_pad)
                    patch[3] <= 8'sd0;
                else
                    patch[3] <= line[mid_line_sel][col_left];

                patch[4] <= line[mid_line_sel][read_col];

                if (right_pad)
                    patch[5] <= 8'sd0;
                else
                    patch[5] <= line[mid_line_sel][col_right];

                // Bot row
                if (bot_pad || left_pad)
                    patch[6] <= 8'sd0;
                else
                    patch[6] <= line[bot_line_sel][col_left];

                if (bot_pad)
                    patch[7] <= 8'sd0;
                else
                    patch[7] <= line[bot_line_sel][read_col];

                if (bot_pad || right_pad)
                    patch[8] <= 8'sd0;
                else
                    patch[8] <= line[bot_line_sel][col_right];
            end
        end
    end

endmodule

module weight_bram_a #(
    parameter DEPTH  = 41000,   // 148 KB, conv4/conv5 최대
    parameter ADDR_W = 16
)(
    input  wire              clk,
    input  wire [ADDR_W-1:0] rd_addr,
    output reg  [31:0]       rd_data,
    input  wire              wr_en,
    input  wire [ADDR_W-1:0] wr_addr,
    input  wire [31:0]       wr_data
);

    (* ram_style = "block" *) reg [31:0] mem [0:DEPTH-1];

    always @(posedge clk)
        rd_data <= mem[rd_addr];

    always @(posedge clk)
        if (wr_en) mem[wr_addr] <= wr_data;

endmodule

module weight_bram_b #(
    parameter DEPTH  = 45000,   // 178.4 KB, FC 전체 (131+5+5+33+4 KB)
    parameter ADDR_W = 16
)(
    input  wire              clk,
    input  wire [ADDR_W-1:0] rd_addr,
    output reg  [31:0]       rd_data,
    input  wire              wr_en,
    input  wire [ADDR_W-1:0] wr_addr,
    input  wire [31:0]       wr_data
);

    (* ram_style = "block" *) reg [31:0] mem [0:DEPTH-1];

    always @(posedge clk)
        rd_data <= mem[rd_addr];

    always @(posedge clk)
        if (wr_en) mem[wr_addr] <= wr_data;

endmodule

module weight_preload #(
    parameter P = 8
)(
    input  wire        clk,
    input  wire        rst_n,

    input  wire        start,
    output reg         done,

    output reg  [15:0] bram_a_rd_addr,
    input  wire [31:0] bram_a_rd_data,

    output reg  [15:0] bram_b_rd_addr,
    input  wire [31:0] bram_b_rd_data,

    input  wire        bank_sel,
    input  wire [15:0] base_addr,

    output reg  [71:0] weight_packed [0:P-1],
    output reg  signed [15:0] bias [0:P-1]       // ★ 8 → 16bit
);

    // ──────────────────────────────────────────
    // Conv: P채널 × 12바이트(9w + 2b + 1pad) = 96바이트 = 24워드
    // ──────────────────────────────────────────
    localparam BYTES_PER_CH = 12;                    // ★ 10 → 12
    localparam TOTAL_BYTES  = P * BYTES_PER_CH;      // 96
    localparam WORDS        = TOTAL_BYTES / 4;        // ★ 20 → 24

    wire [31:0] rd_data = bank_sel ? bram_b_rd_data : bram_a_rd_data;

    reg [15:0] addr_pipe;

    always @(*) begin
        bram_a_rd_addr = addr_pipe;
        bram_b_rd_addr = addr_pipe;
    end

    // ── 바이트 버퍼 ──
    reg [7:0] byte_buf [0:TOTAL_BYTES-1];
    reg [6:0] byte_idx;
    reg [4:0] word_cnt;

    localparam S_IDLE  = 2'd0;
    localparam S_PRIME = 2'd1;
    localparam S_READ  = 2'd2;
    localparam S_PACK  = 2'd3;

    reg [1:0] state;
    integer i, j;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state     <= S_IDLE;
            done      <= 1'b0;
            word_cnt  <= 5'd0;
            addr_pipe <= 16'd0;
            byte_idx  <= 7'd0;
            for (i = 0; i < P; i = i + 1) begin
                weight_packed[i] <= 72'd0;
                bias[i]          <= 16'sd0;          // ★ 16bit
            end
        end else begin
            done <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        addr_pipe <= base_addr;
                        word_cnt  <= 5'd0;
                        byte_idx  <= 7'd0;
                        state     <= S_PRIME;
                    end
                end

                S_PRIME: begin
                    addr_pipe <= base_addr + 16'd1;
                    state     <= S_READ;
                end

                S_READ: begin
                    byte_buf[byte_idx + 0] <= rd_data[ 7: 0];
                    byte_buf[byte_idx + 1] <= rd_data[15: 8];
                    byte_buf[byte_idx + 2] <= rd_data[23:16];
                    byte_buf[byte_idx + 3] <= rd_data[31:24];
                    byte_idx  <= byte_idx + 7'd4;

                    word_cnt  <= word_cnt + 5'd1;
                    addr_pipe <= addr_pipe + 16'd1;

                    if (word_cnt == WORDS - 5'd1)
                        state <= S_PACK;
                end

                // ── 바이트 분배 ──
                // 채널당 12바이트: [0..8]=9weight, [9]=bias_lo, [10]=bias_hi, [11]=pad
                S_PACK: begin
                    for (i = 0; i < P; i = i + 1) begin
                        for (j = 0; j < 9; j = j + 1)
                            weight_packed[i][j*8 +: 8] <= byte_buf[i*BYTES_PER_CH + j];

                        // ★ 2바이트 bias (little-endian → signed 16bit)
                        bias[i] <= $signed({byte_buf[i*BYTES_PER_CH + 10],
                                            byte_buf[i*BYTES_PER_CH +  9]});
                    end
                    done  <= 1'b1;
                    state <= S_IDLE;
                end
            endcase
        end
    end

endmodule


module fmap_bram #(
    parameter DEPTH  = 32768,   // 32KB = 32768 × 8bit
    parameter ADDR_W = 15       // ceil(log2(32768)) = 15
)(
    input  wire              clk,

    // Port A: 쓰기 (Conv/Pool 출력)
    input  wire              wr_en,
    input  wire [ADDR_W-1:0] wr_addr,
    input  wire [7:0]        wr_data,

    // Port B: 읽기 (다음 레이어 입력 / Line Buffer 로딩)
    input  wire [ADDR_W-1:0] rd_addr,
    output reg  [7:0]        rd_data
);

    (* ram_style = "block" *) reg [7:0] mem [0:DEPTH-1];

    // Port A: write
    always @(posedge clk) begin
        if (wr_en)
            mem[wr_addr] <= wr_data;
    end

    // Port B: read
    always @(posedge clk) begin
        rd_data <= mem[rd_addr];
    end

endmodule

module fc_unit #(
    parameter MAX_IN = 512     // fc_shared 입력 최대
)(
    input  wire        clk,
    input  wire        rst_n,

    // 제어
    input  wire        start,
    input  wire [9:0]  cfg_in_len,     // 입력 벡터 길이 (512, 256, 128)
    input  wire [8:0]  cfg_out_len,    // 출력 뉴런 수   (256, 19, 21, 128, 28)
    input  wire        cfg_relu,       // 1=ReLU(0~127), 0=Head(-128~127)
    output reg         done,
    output reg         busy,

    // Weight BRAM B (32bit) - 읽기 전용
    output reg  [15:0] w_bram_addr,
    input  wire [31:0] w_bram_data,
    input  wire [15:0] w_base,         // 이 FC 레이어의 시작 워드 주소

    // FMap BRAM 읽기 (입력 로드용, ping 또는 pong)
    output reg  [14:0] f_rd_addr,
    input  wire [7:0]  f_rd_data,
    input  wire [14:0] f_rd_base,      // 입력 시작 주소

    // FMap BRAM 쓰기 (결과 저장용, 반대쪽 ping/pong)
    output reg         f_wr_en,
    output reg  [14:0] f_wr_addr,
    output reg  [7:0]  f_wr_data,
    input  wire [14:0] f_wr_base,       // 출력 시작 주소
    input wire [3:0] cfg_shift    // 레이어별 시프트 값 (0~15)
);

    // ══════════════════════════════════════════
    //  입력 캐시: fmap을 레지스터에 로드 후 자유 인덱싱
    //  conv5+pool 후 최대 2×2×128 = 512 B
    //  512 × 8bit = 4096 FF (Zybo 53200 FF의 7.7%)
    // ══════════════════════════════════════════
    reg signed [7:0] in_cache [0:MAX_IN-1];

    // ══════════════════════════════════════════
    //  FSM
    // ══════════════════════════════════════════
    localparam S_IDLE      = 3'd0;
    localparam S_LOAD_PIPE = 3'd1;   // fmap BRAM 레이턴시 1clk
    localparam S_LOAD      = 3'd2;   // fmap → in_cache
    localparam S_BIAS      = 3'd3;   // bias 주소 발행
    localparam S_BIAS_WAIT = 3'd4;   // bias BRAM 레이턴시 1clk + 첫 weight 주소 발행
    localparam S_MAC       = 3'd5;   // 4 MAC/clk
    localparam S_OUTPUT    = 3'd6;

    reg [2:0]  state;
    reg signed [31:0] acc;
    reg [9:0]  load_idx;       // fmap 로드 인덱스
    reg [9:0]  in_idx;         // MAC 입력 인덱스 (0, 4, 8, ...)
    reg [8:0]  neuron_idx;     // 현재 뉴런 번호
    reg [15:0] w_addr_cur;     // weight BRAM 현재 주소

    // ── weight 워드에서 4바이트 추출 ──
    wire signed [7:0] w0 = $signed(w_bram_data[ 7: 0]);
    wire signed [7:0] w1 = $signed(w_bram_data[15: 8]);
    wire signed [7:0] w2 = $signed(w_bram_data[23:16]);
    wire signed [7:0] w3 = $signed(w_bram_data[31:24]);

    // ── in_cache에서 4개 읽기 ──
    wire signed [7:0] x0 = in_cache[in_idx];
    wire signed [7:0] x1 = in_cache[in_idx + 10'd1];
    wire signed [7:0] x2 = in_cache[in_idx + 10'd2];
    wire signed [7:0] x3 = in_cache[in_idx + 10'd3];

    // ── 4-way MAC ──
    wire signed [31:0] mac4 = (w0 * x0) + (w1 * x1) + (w2 * x2) + (w3 * x3);

    // ── shift + clamp ──
    reg signed [31:0] shifted;

    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state      <= S_IDLE;
            done       <= 1'b0;
            busy       <= 1'b0;
            acc        <= 32'sd0;
            load_idx   <= 10'd0;
            in_idx     <= 10'd0;
            neuron_idx <= 8'd0;
            w_addr_cur <= 16'd0;
            w_bram_addr <= 16'd0;
            f_rd_addr  <= 15'd0;
            f_wr_en    <= 1'b0;
            f_wr_addr  <= 15'd0;
            f_wr_data  <= 8'd0;
            for (i = 0; i < MAX_IN; i = i + 1)
                in_cache[i] <= 8'sd0;
        end else begin
            done    <= 1'b0;
            f_wr_en <= 1'b0;

            case (state)

                // ────────────────────────────────
                //  대기
                // ────────────────────────────────
                S_IDLE: begin
                    busy <= 1'b0;
                    if (start) begin
                        busy      <= 1'b1;
                        load_idx  <= 10'd0;
                        f_rd_addr <= f_rd_base;     // 첫 fmap 주소 발행
                        state     <= S_LOAD_PIPE;
                    end
                end

                // ────────────────────────────────
                //  fmap BRAM 레이턴시 1clk
                // ────────────────────────────────
                S_LOAD_PIPE: begin
                    f_rd_addr <= f_rd_base + 15'd1;   // 두 번째 주소 프리페치
                    state     <= S_LOAD;
                end

                // ────────────────────────────────
                //  fmap → in_cache (1 byte/clk)
                // ────────────────────────────────
                S_LOAD: begin
                    in_cache[load_idx] <= $signed(f_rd_data);
                    load_idx <= load_idx + 10'd1;

                    if (load_idx < cfg_in_len - 10'd1)
                        f_rd_addr <= f_rd_base + {5'd0, load_idx} + 15'd2;

                    if (load_idx == cfg_in_len - 10'd1) begin
                        // 로드 완료 → 첫 뉴런 시작
                        neuron_idx <= 8'd0;
                        w_addr_cur <= w_base;
                        state      <= S_BIAS;
                    end
                end

                // ────────────────────────────────
                //  bias 주소 발행
                //  메모리 레이아웃 (뉴런당):
                //    [워드0: bias(4B 중 LSB만 유효)]
                //    [워드1: w0 w1 w2 w3]
                //    [워드2: w4 w5 w6 w7]
                //    ...
                //    [워드N: ...]
                // ────────────────────────────────
                S_BIAS: begin
                    w_bram_addr <= w_addr_cur;          // bias 워드 주소 발행
                    state       <= S_BIAS_WAIT;
                end

                // ────────────────────────────────
                //  bias 도착 + 첫 weight 주소 발행
                // ────────────────────────────────
                S_BIAS_WAIT: begin
                    // ★ bias 2byte little-endian: [7:0]=lo, [15:8]=hi
                    acc <= $signed({{16{w_bram_data[15]}}, w_bram_data[15:0]}) <<< cfg_shift;

                    w_addr_cur  <= w_addr_cur + 16'd1;
                    w_bram_addr <= w_addr_cur + 16'd1;

                    in_idx <= 10'd0;
                    state  <= S_MAC;
                end

                // ────────────────────────────────
                //  4 MAC/clk
                //  매 클럭: weight 1워드(4B) × in_cache 4개
                // ────────────────────────────────
                S_MAC: begin
                    // w_bram_data = 이전 클럭에 발행한 weight 워드
                    acc    <= acc + mac4;
                    in_idx <= in_idx + 10'd4;

                    // 다음 weight 워드 프리페치
                    w_addr_cur  <= w_addr_cur + 16'd1;
                    w_bram_addr <= w_addr_cur + 16'd1;

                    // 종료 조건: in_idx + 4 >= cfg_in_len
                    if (in_idx + 10'd4 >= cfg_in_len)
                        state <= S_OUTPUT;
                end

                // ────────────────────────────────
                //  shift(>>>7) + clamp + 결과 쓰기
                // ────────────────────────────────
                S_OUTPUT: begin
                    shifted = acc >>> cfg_shift;

                    if (cfg_relu) begin
                        if (shifted < 32'sd0)
                            f_wr_data <= 8'd0;
                        else if (shifted > 32'sd127)
                            f_wr_data <= 8'd127;
                        else
                            f_wr_data <= shifted[7:0];
                    end else begin
                        if (shifted > 32'sd127)
                            f_wr_data <= 8'sd127;
                        else if (shifted < -32'sd128)
                            f_wr_data <= -8'sd128;
                        else
                            f_wr_data <= shifted[7:0];
                    end

                    f_wr_en   <= 1'b1;
                    f_wr_addr <= f_wr_base + {7'd0, neuron_idx};

                    neuron_idx <= neuron_idx + 8'd1;

                    if (neuron_idx == cfg_out_len - 8'd1) begin
                        done  <= 1'b1;
                        state <= S_IDLE;
                    end else begin
                        // 다음 뉴런: w_addr_cur는 이미 다음 뉴런의 bias 위치
                        state <= S_BIAS;
                    end
                end

            endcase
        end
    end

endmodule

module psum_bram_bank #(
    parameter DEPTH = 64,
    parameter AW    = 7
)(
    input  wire              clk,
    input  wire [AW-1:0]     rd_addr,
    output reg  signed [31:0] rd_data,
    input  wire              wr_en,
    input  wire [AW-1:0]     wr_addr,
    input  wire signed [31:0] wr_data
);
    (* ram_style = "block" *) reg signed [31:0] mem [0:DEPTH-1];

    always @(posedge clk) rd_data <= mem[rd_addr];
    always @(posedge clk) if (wr_en) mem[wr_addr] <= wr_data;
endmodule