`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2026 11:48:09 PM
// Design Name: 
// Module Name: max_module
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

module maxpool2x2 #(
    parameter P = 8
)(
    input  wire        clk,
    input  wire        rst_n,

    // 레이어 설정
    input  wire        pool_en,       // 0이면 bypass (pool 안 하는 레이어)

    // Conv 출력 스트리밍 입력 (P채널 동시)
    input  wire        in_valid,
    input  wire signed [7:0] in_data [0:P-1],
    input  wire [6:0]  in_row,
    input  wire [6:0]  in_col,

    // Pool 출력 (P채널 동시)
    output reg         out_valid,
    output reg  signed [7:0] out_data [0:P-1],
    output reg  [6:0]  out_row,       // pool 후 좌표
    output reg  [6:0]  out_col
);

    // ── 짝수 행의 짝수 열 max 임시 저장 ──
    // 한 줄분: 최대 32개 (64/2) × P채널
    reg signed [7:0] row_max [0:P-1][0:31];  // 짝수행 pair max

    // ── 현재 위치 판단 ──
    wire even_row = ~in_row[0];  // row 짝수
    wire even_col = ~in_col[0];  // col 짝수
    wire odd_row  = in_row[0];
    wire odd_col  = in_col[0];

    integer i;
    reg signed [7:0] pair_max [0:P-1];  // 현재 행의 (col, col+1) max

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            out_valid <= 1'b0;
            out_row   <= 7'd0;
            out_col   <= 7'd0;
            for (i = 0; i < P; i = i + 1) begin
                out_data[i] <= 8'sd0;
            end
        end else begin
            out_valid <= 1'b0;

            if (!pool_en && in_valid) begin
                // ── Bypass: pool 없이 그대로 출력 ──
                out_valid <= 1'b1;
                out_row   <= in_row;
                out_col   <= in_col;
                for (i = 0; i < P; i = i + 1)
                    out_data[i] <= in_data[i];

            end else if (pool_en && in_valid) begin

                if (even_row && even_col) begin
                    // ── (짝수행, 짝수열): 첫 번째 값 저장 ──
                    for (i = 0; i < P; i = i + 1)
                        row_max[i][in_col[6:1]] <= in_data[i];

                end else if (even_row && odd_col) begin
                    // ── (짝수행, 홀수열): 짝수열 값과 비교, pair max 저장 ──
                    for (i = 0; i < P; i = i + 1) begin
                        if (in_data[i] > row_max[i][in_col[6:1]])
                            row_max[i][in_col[6:1]] <= in_data[i];
                        else
                            row_max[i][in_col[6:1]] <= row_max[i][in_col[6:1]];
                    end

                end else if (odd_row && even_col) begin
                    // ── (홀수행, 짝수열): row_max와 비교, 임시 저장 ──
                    for (i = 0; i < P; i = i + 1) begin
                        if (in_data[i] > row_max[i][in_col[6:1]])
                            row_max[i][in_col[6:1]] <= in_data[i];
                        else
                            row_max[i][in_col[6:1]] <= row_max[i][in_col[6:1]];
                    end

                end else if (odd_row && odd_col) begin
                    // ── (홀수행, 홀수열): 최종 4개 중 max → 출력 ──
                    out_valid <= 1'b1;
                    out_row   <= in_row[6:1];   // /2
                    out_col   <= in_col[6:1];   // /2
                    for (i = 0; i < P; i = i + 1) begin
                        if (in_data[i] > row_max[i][in_col[6:1]])
                            out_data[i] <= in_data[i];
                        else
                            out_data[i] <= row_max[i][in_col[6:1]];
                    end
                end
            end
        end
    end

endmodule


module argmax (
    input  wire        clk,
    input  wire        rst_n,

    input  wire        start,
    input  wire [4:0]  num_classes,    // 19, 21, 28
    input  wire [14:0] fmap_rd_base,   // 읽기 시작 주소

    output reg         done,
    output reg  [4:0]  result_idx,

    // fmap BRAM 읽기
    output reg  [14:0] fmap_rd_addr,
    input  wire [7:0]  fmap_rd_data
);

    localparam A_IDLE = 2'd0;
    localparam A_PIPE = 2'd1;   // BRAM latency
    localparam A_CMP  = 2'd2;

    reg [1:0]  state;
    reg [4:0]  cur_idx;
    reg [4:0]  max_idx;
    reg signed [7:0] max_val;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= A_IDLE;
            done         <= 1'b0;
            result_idx   <= 5'd0;
            fmap_rd_addr <= 15'd0;
            cur_idx      <= 5'd0;
            max_idx      <= 5'd0;
            max_val      <= -8'sd128;
        end else begin
            done <= 1'b0;

            case (state)
                A_IDLE: begin
                    if (start) begin
                        fmap_rd_addr <= fmap_rd_base;
                        cur_idx      <= 5'd0;
                        max_idx      <= 5'd0;
                        max_val      <= -8'sd128;
                        state        <= A_PIPE;
                    end
                end

                A_PIPE: begin
                    // BRAM 1clk latency
                    fmap_rd_addr <= fmap_rd_base + 15'd1;
                    state        <= A_CMP;
                end

                A_CMP: begin
                    // fmap_rd_data = mem[이전 주소]
                    if ($signed(fmap_rd_data) > max_val) begin
                        max_val <= $signed(fmap_rd_data);
                        max_idx <= cur_idx;
                    end

                    cur_idx <= cur_idx + 5'd1;

                    if (cur_idx == num_classes - 5'd1) begin
                        // 마지막 비교 결과 반영
                        if ($signed(fmap_rd_data) > max_val)
                            result_idx <= cur_idx;
                        else
                            result_idx <= max_idx;
                        done  <= 1'b1;
                        state <= A_IDLE;
                    end else begin
                        fmap_rd_addr <= fmap_rd_base + {10'd0, cur_idx} + 15'd2;
                    end
                end

                default: state <= A_IDLE;
            endcase
        end
    end

endmodule

