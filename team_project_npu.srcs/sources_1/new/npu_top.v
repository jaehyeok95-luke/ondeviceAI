`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:34:07 AM
// Design Name: 
// Module Name: npu_top
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


// npu_top.v
// 전체 추론 파이프라인 컨트롤러 (개략 구조)

module npu_top (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start_inference,

    // AXI 또는 BRAM 인터페이스 (PS ↔ PL)
    // 입력 이미지 BRAM
    output wire [11:0] img_addr,       // 64×64 = 4096
    input  wire [7:0]  img_data,

    // 가중치 BRAM/DDR 인터페이스
    output wire [19:0] weight_addr,
    input  wire [7:0]  weight_data,

    // 결과 출력
    output reg  [4:0]  result_cho,     // 0~18
    output reg  [4:0]  result_jung,    // 0~20
    output reg  [4:0]  result_jong,    // 0~27
    output reg         result_valid,

    // 상태
    output wire        busy
);

    // ──────────────────────────────────────
    //  상태 머신
    // ──────────────────────────────────────
    reg [3:0] state;

    localparam S_IDLE       = 4'd0;
    localparam S_CONV1      = 4'd1;   // Conv1 + ReLU + Pool → [32×32×32]
    localparam S_CONV2      = 4'd2;   // Conv2 + ReLU + Pool → [64×16×16]
    localparam S_CONV3      = 4'd3;   // Conv3 + ReLU + Pool → [128×8×8]
    localparam S_CONV4      = 4'd4;   // Conv4 + ReLU + Pool → [128×4×4]
    localparam S_CONV5      = 4'd5;   // Conv5 + ReLU + Pool → [128×2×2]
    localparam S_FC_SHARED  = 4'd6;   // FC 512→256 + ReLU
    localparam S_HEAD_CHO   = 4'd7;   // FC 256→19
    localparam S_HEAD_JUNG  = 4'd8;   // FC 256→21
    localparam S_HEAD_JONG1 = 4'd9;   // FC 256→128 + ReLU
    localparam S_HEAD_JONG2 = 4'd10;  // FC 128→28
    localparam S_ARGMAX     = 4'd11;
    localparam S_DONE       = 4'd12;

    assign busy = (state != S_IDLE);

    // ──────────────────────────────────────
    //  Feature Map 저장용 BRAM
    //  더블 버퍼: fm_a, fm_b를 교대 사용
    // ──────────────────────────────────────
    // 최대 크기: Conv1 출력 32×32×32 = 32,768 bytes
    // Conv2 출력 64×16×16 = 16,384 bytes
    // → 32KB × 2 = 64KB (BRAM 32블록)

    reg  [7:0]  fm_a [0:32767];    // feature map buffer A
    reg  [7:0]  fm_b [0:32767];    // feature map buffer B
    reg         active_buf;         // 0: 읽기=a,쓰기=b  1: 반대

    // ──────────────────────────────────────
    //  가중치 주소 오프셋 테이블
    // ──────────────────────────────────────
    // export_weights.py에서 출력된 주소 맵을 여기에 반영
    // 예시 (실제 값은 export 결과에 맞춰 수정):
    //   conv1_weight: 0x000000 (288 bytes)
    //   conv1_bias:   0x000120 (32 bytes)
    //   conv2_weight: 0x000140 ...
    //   ...

    // ──────────────────────────────────────
    //  서브 모듈 인스턴스 (개략)
    // ──────────────────────────────────────
    // 실제 구현 시 conv3x3_relu, maxpool2x2, fc_layer,
    // argmax 모듈을 인스턴스화하고
    // state에 따라 파라미터(C_IN, C_OUT 등)를 멀티플렉싱

    // 컨트롤러 FSM
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= S_IDLE;
            result_valid <= 0;
            active_buf   <= 0;
        end else begin
            result_valid <= 0;

            case (state)
                S_IDLE: begin
                    if (start_inference)
                        state <= S_CONV1;
                end

                S_CONV1: begin
                    // conv3x3_relu (C_IN=1, C_OUT=32) 구동
                    // 입력: img_data (64×64)
                    // 출력: fm_b (32×32×32, pooling 후)
                    // 완료 시:
                    active_buf <= ~active_buf;
                    state <= S_CONV2;
                end

                S_CONV2: begin
                    // conv3x3_relu (C_IN=32, C_OUT=64) 구동
                    // 입력: fm_a (32×32×32)
                    // 출력: fm_b (64×16×16, pooling 후)
                    active_buf <= ~active_buf;
                    state <= S_CONV3;
                end

                S_CONV3: begin
                    active_buf <= ~active_buf;
                    state <= S_CONV4;
                end

                S_CONV4: begin
                    active_buf <= ~active_buf;
                    state <= S_CONV5;
                end

                S_CONV5: begin
                    // 출력: 128×2×2 = 512 bytes
                    active_buf <= ~active_buf;
                    state <= S_FC_SHARED;
                end

                S_FC_SHARED: begin
                    // fc_layer (512→256, ReLU)
                    state <= S_HEAD_CHO;
                end

                S_HEAD_CHO: begin
                    // fc_layer (256→19, no ReLU)
                    // argmax → result_cho
                    state <= S_HEAD_JUNG;
                end

                S_HEAD_JUNG: begin
                    // fc_layer (256→21, no ReLU)
                    // argmax → result_jung
                    state <= S_HEAD_JONG1;
                end

                S_HEAD_JONG1: begin
                    // fc_layer (256→128, ReLU)
                    state <= S_HEAD_JONG2;
                end

                S_HEAD_JONG2: begin
                    // fc_layer (128→28, no ReLU)
                    // argmax → result_jong
                    state <= S_DONE;
                end

                S_DONE: begin
                    result_valid <= 1;
                    state <= S_IDLE;
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

