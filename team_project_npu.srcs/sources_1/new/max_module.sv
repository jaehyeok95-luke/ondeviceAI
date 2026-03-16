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
    input  wire [6:0]  cfg_width,     // Conv 출력 너비 (pool 전)
    input  wire [6:0]  cfg_height,    // Conv 출력 높이 (pool 전)
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
    input  wire        in_valid,
    input  wire signed [7:0] in_data,
    input  wire        last,

    output reg  [4:0]  result_idx,
    output reg         result_valid
);

    reg signed [7:0] max_val;
    reg [4:0]        max_idx;
    reg [4:0]        cur_idx;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            max_val      <= -8'sd128;
            max_idx      <= 5'd0;
            cur_idx      <= 5'd0;
            result_idx   <= 5'd0;
            result_valid <= 1'b0;
        end else begin
            result_valid <= 1'b0;

            if (start) begin
                // start가 최우선: 초기화만
                max_val <= -8'sd128;
                max_idx <= 5'd0;
                cur_idx <= 5'd0;
            end else if (in_valid) begin
                // 비교 및 업데이트
                if (in_data > max_val) begin
                    max_val <= in_data;
                    max_idx <= cur_idx;
                end

                if (last) begin
                    if (in_data > max_val)
                        result_idx <= cur_idx;
                    else
                        result_idx <= max_idx;
                    result_valid <= 1'b1;
                end

                cur_idx <= cur_idx + 5'd1;
            end
        end
    end

endmodule
