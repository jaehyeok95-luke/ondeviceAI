`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:30:58 AM
// Design Name: 
// Module Name: line_buffer
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


// line_buffer.v
// 3-line buffer: 스트리밍 입력에서 3×3 패치를 추출
// 한 채널에 대해 동작, 외부에서 채널 순회

module line_buffer #(
    parameter WIDTH = 64    // feature map 가로 크기
)(
    input  wire       clk,
    input  wire       rst_n,
    input  wire       valid_in,
    input  wire [7:0] pixel_in,

    output wire [7:0] patch [0:2][0:2],  // 3×3 윈도우
    output reg        patch_valid
);

    // 3줄 저장용 SRAM (shift register 방식)
    reg [7:0] line0 [0:WIDTH-1];
    reg [7:0] line1 [0:WIDTH-1];
    reg [7:0] line2 [0:WIDTH-1];

    reg [$clog2(WIDTH)-1:0] col;
    reg [1:0] row_cnt;    // 몇 번째 줄까지 채워졌는지

    // 시프트 레지스터 (3 탭)
    reg [7:0] sr0 [0:2];  // line0의 최근 3 픽셀
    reg [7:0] sr1 [0:2];  // line1의 최근 3 픽셀
    reg [7:0] sr2 [0:2];  // line2의 최근 3 픽셀

    integer i;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            col     <= 0;
            row_cnt <= 0;
            patch_valid <= 0;
            for (i = 0; i < 3; i = i + 1) begin
                sr0[i] <= 0;
                sr1[i] <= 0;
                sr2[i] <= 0;
            end
        end else if (valid_in) begin
            // 라인 시프트: line2 → line1 → line0 → new pixel
            line0[col] <= pixel_in;
            if (row_cnt >= 1) line1[col] <= line0[col];
            if (row_cnt >= 2) line2[col] <= line1[col];

            // 시프트 레지스터 업데이트
            sr0[2] <= sr0[1]; sr0[1] <= sr0[0]; sr0[0] <= pixel_in;
            if (row_cnt >= 1) begin
                sr1[2] <= sr1[1]; sr1[1] <= sr1[0]; sr1[0] <= line0[col];
            end
            if (row_cnt >= 2) begin
                sr2[2] <= sr2[1]; sr2[1] <= sr2[0]; sr2[0] <= line1[col];
            end

            // 유효 출력 판정
            patch_valid <= (row_cnt >= 2) && (col >= 2);

            // 열 카운터
            if (col == WIDTH - 1) begin
                col <= 0;
                if (row_cnt < 2) row_cnt <= row_cnt + 1;
            end else begin
                col <= col + 1;
            end
        end else begin
            patch_valid <= 0;
        end
    end

    // 패치 출력 매핑 (가장 오래된 줄 = patch[0])
    assign patch[0][0] = sr2[2];  assign patch[0][1] = sr2[1];  assign patch[0][2] = sr2[0];
    assign patch[1][0] = sr1[2];  assign patch[1][1] = sr1[1];  assign patch[1][2] = sr1[0];
    assign patch[2][0] = sr0[2];  assign patch[2][1] = sr0[1];  assign patch[2][2] = sr0[0];

endmodule
