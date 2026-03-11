`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:26:47 AM
// Design Name: 
// Module Name: conv3x3_relu
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


// conv3x3_relu.v
// 3×3 컨볼루션 1 출력 픽셀 연산 (INT8 입력 × INT8 가중치 → INT32 누적 → INT8 ReLU 출력)
// MAC을 9×Cin 사이클에 걸쳐 순차 수행

module conv3x3_relu #(
    parameter C_IN  = 1,
    parameter C_OUT = 32
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,       // 1 출력 픽셀 연산 시작

    // 3×3×C_IN 입력 패치 (외부에서 line buffer로 준비)
    input  wire signed [7:0] patch [0:C_IN-1][0:2][0:2],

    // 가중치: C_OUT × C_IN × 3 × 3 (BRAM에서 순차 공급)
    input  wire signed [7:0] weight_data,
    output reg  [15:0]       weight_addr,

    // 바이어스 (C_OUT개, 각 INT8 → INT32 확장)
    input  wire signed [7:0] bias_data,
    output reg  [6:0]        bias_addr,

    // 출력 (C_OUT 채널, 한 번에 1채널씩 순차 출력)
    output reg  signed [7:0] out_pixel,
    output reg  [6:0]        out_ch_idx,
    output reg               out_valid,
    output reg               done
);

    // 내부 상태
    reg signed [31:0] acc;
    reg [6:0]  co;     // 출력 채널 카운터
    reg [6:0]  ci;     // 입력 채널 카운터  (최대 128)
    reg [1:0]  ky, kx; // 커널 y, x 카운터
    reg [2:0]  state;

    localparam S_IDLE    = 3'd0;
    localparam S_LOAD_B  = 3'd1;   // 바이어스 로드
    localparam S_MAC     = 3'd2;   // MAC 연산
    localparam S_RELU    = 3'd3;   // ReLU + 출력
    localparam S_NEXT_CO = 3'd4;   // 다음 출력 채널
    localparam S_DONE    = 3'd5;

    // MAC: weight_data × patch[ci][ky][kx]
    wire signed [7:0]  pixel_val = patch[ci][ky][kx];
    wire signed [15:0] mul_result = weight_data * pixel_val;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state       <= S_IDLE;
            acc         <= 0;
            co          <= 0;
            ci          <= 0;
            ky          <= 0;
            kx          <= 0;
            out_valid   <= 0;
            done        <= 0;
            weight_addr <= 0;
            bias_addr   <= 0;
            out_pixel   <= 0;
            out_ch_idx  <= 0;
        end else begin
            out_valid <= 0;
            done      <= 0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        co    <= 0;
                        state <= S_LOAD_B;
                        bias_addr <= 0;
                    end
                end

                S_LOAD_B: begin
                    // 바이어스를 INT32로 확장하여 누적기 초기화
                    // scale 보정: bias는 이미 fused 상태
                    acc   <= {{24{bias_data[7]}}, bias_data};
                    ci    <= 0;
                    ky    <= 0;
                    kx    <= 0;
                    // 첫 가중치 주소 설정: co * (C_IN * 9) + 0
                    weight_addr <= co * (C_IN * 9);
                    state <= S_MAC;
                end

                S_MAC: begin
                    // MAC 누적
                    acc <= acc + {{16{mul_result[15]}}, mul_result};

                    // 다음 가중치 주소
                    weight_addr <= weight_addr + 1;

                    // 카운터 진행: kx → ky → ci
                    if (kx == 2) begin
                        kx <= 0;
                        if (ky == 2) begin
                            ky <= 0;
                            if (ci == C_IN - 1) begin
                                // 모든 입력 채널 완료
                                state <= S_RELU;
                            end else begin
                                ci <= ci + 1;
                            end
                        end else begin
                            ky <= ky + 1;
                        end
                    end else begin
                        kx <= kx + 1;
                    end
                end

                S_RELU: begin
                    // ReLU: max(0, acc) → INT8 클리핑
                    if (acc[31]) begin
                        // 음수 → 0
                        out_pixel <= 8'd0;
                    end else if (acc > 127) begin
                        // 오버플로 → 127
                        out_pixel <= 8'd127;
                    end else begin
                        out_pixel <= acc[7:0];
                    end

                    out_ch_idx <= co;
                    out_valid  <= 1;
                    state      <= S_NEXT_CO;
                end

                S_NEXT_CO: begin
                    if (co == C_OUT - 1) begin
                        done  <= 1;
                        state <= S_IDLE;
                    end else begin
                        co        <= co + 1;
                        bias_addr <= co + 1;
                        state     <= S_LOAD_B;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule

