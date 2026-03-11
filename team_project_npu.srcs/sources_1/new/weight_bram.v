`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2026 09:48:02 AM
// Design Name: 
// Module Name: weight_bram
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


// weight_bram.v
// 각 레이어 가중치를 BRAM으로 선언하고 $readmemh로 초기화

module weight_bram (
    input  wire        clk,

    // Conv1 weight 읽기 포트
    input  wire [8:0]  conv1_w_addr,    // 0~287
    output reg  [7:0]  conv1_w_data,

    // Conv1 bias 읽기 포트
    input  wire [4:0]  conv1_b_addr,    // 0~31
    output reg  [7:0]  conv1_b_data,

    // Conv2 weight 읽기 포트
    input  wire [14:0] conv2_w_addr,    // 0~18431
    output reg  [7:0]  conv2_w_data,

    // Conv2 bias
    input  wire [5:0]  conv2_b_addr,    // 0~63
    output reg  [7:0]  conv2_b_data,

    // Conv3 weight
    input  wire [16:0] conv3_w_addr,    // 0~73727
    output reg  [7:0]  conv3_w_data,

    // Conv3 bias
    input  wire [6:0]  conv3_b_addr,    // 0~127
    output reg  [7:0]  conv3_b_data,

    // Conv4 weight
    input  wire [17:0] conv4_w_addr,    // 0~147455
    output reg  [7:0]  conv4_w_data,

    // Conv4 bias
    input  wire [6:0]  conv4_b_addr,
    output reg  [7:0]  conv4_b_data,

    // Conv5 weight
    input  wire [17:0] conv5_w_addr,    // 0~147455
    output reg  [7:0]  conv5_w_data,

    // Conv5 bias
    input  wire [6:0]  conv5_b_addr,
    output reg  [7:0]  conv5_b_data,

    // FC shared weight
    input  wire [16:0] fc_s_w_addr,     // 0~131071
    output reg  [7:0]  fc_s_w_data,

    // FC shared bias
    input  wire [7:0]  fc_s_b_addr,     // 0~255
    output reg  [7:0]  fc_s_b_data,

    // Head cho weight
    input  wire [12:0] cho_w_addr,      // 0~4863
    output reg  [7:0]  cho_w_data,

    // Head cho bias
    input  wire [4:0]  cho_b_addr,      // 0~18
    output reg  [7:0]  cho_b_data,

    // Head jung weight
    input  wire [12:0] jung_w_addr,     // 0~5375
    output reg  [7:0]  jung_w_data,

    // Head jung bias
    input  wire [4:0]  jung_b_addr,     // 0~20
    output reg  [7:0]  jung_b_data,

    // Head jong fc1 weight
    input  wire [14:0] jong1_w_addr,    // 0~32767
    output reg  [7:0]  jong1_w_data,

    // Head jong fc1 bias
    input  wire [6:0]  jong1_b_addr,    // 0~127
    output reg  [7:0]  jong1_b_data,

    // Head jong fc2 weight
    input  wire [11:0] jong2_w_addr,    // 0~3583
    output reg  [7:0]  jong2_w_data,

    // Head jong fc2 bias
    input  wire [4:0]  jong2_b_addr,    // 0~27
    output reg  [7:0]  jong2_b_data
);

    // ══════════════════════════════════════
    //  BRAM 선언
    // ══════════════════════════════════════
    reg [7:0] conv1_w_mem  [0:287];
    reg [7:0] conv1_b_mem  [0:31];
    reg [7:0] conv2_w_mem  [0:18431];
    reg [7:0] conv2_b_mem  [0:63];
    reg [7:0] conv3_w_mem  [0:73727];
    reg [7:0] conv3_b_mem  [0:127];
    reg [7:0] conv4_w_mem  [0:147455];
    reg [7:0] conv4_b_mem  [0:127];
    reg [7:0] conv5_w_mem  [0:147455];
    reg [7:0] conv5_b_mem  [0:127];
    reg [7:0] fc_s_w_mem   [0:131071];
    reg [7:0] fc_s_b_mem   [0:255];
    reg [7:0] cho_w_mem    [0:4863];
    reg [7:0] cho_b_mem    [0:18];
    reg [7:0] jung_w_mem   [0:5375];
    reg [7:0] jung_b_mem   [0:20];
    reg [7:0] jong1_w_mem  [0:32767];
    reg [7:0] jong1_b_mem  [0:127];
    reg [7:0] jong2_w_mem  [0:3583];
    reg [7:0] jong2_b_mem  [0:27];

    // ══════════════════════════════════════
    //  $readmemh로 hex 파일 로드
    //  (TensorFlow 때와 완전히 동일한 방식)
    // ══════════════════════════════════════
    initial begin
        $readmemh("conv1_weight.hex",      conv1_w_mem);
        $readmemh("conv1_bias.hex",        conv1_b_mem);
        $readmemh("conv2_weight.hex",      conv2_w_mem);
        $readmemh("conv2_bias.hex",        conv2_b_mem);
        $readmemh("conv3_weight.hex",      conv3_w_mem);
        $readmemh("conv3_bias.hex",        conv3_b_mem);
        $readmemh("conv4_weight.hex",      conv4_w_mem);
        $readmemh("conv4_bias.hex",        conv4_b_mem);
        $readmemh("conv5_weight.hex",      conv5_w_mem);
        $readmemh("conv5_bias.hex",        conv5_b_mem);
        $readmemh("fc_shared_weight.hex",  fc_s_w_mem);
        $readmemh("fc_shared_bias.hex",    fc_s_b_mem);
        $readmemh("head_cho_weight.hex",   cho_w_mem);
        $readmemh("head_cho_bias.hex",     cho_b_mem);
        $readmemh("head_jung_weight.hex",  jung_w_mem);
        $readmemh("head_jung_bias.hex",    jung_b_mem);
        $readmemh("head_jong_fc1_weight.hex", jong1_w_mem);
        $readmemh("head_jong_fc1_bias.hex",   jong1_b_mem);
        $readmemh("head_jong_fc2_weight.hex", jong2_w_mem);
        $readmemh("head_jong_fc2_bias.hex",   jong2_b_mem);
    end

    // ══════════════════════════════════════
    //  동기식 읽기 (1 클럭 latency)
    // ══════════════════════════════════════
    always @(posedge clk) begin
        conv1_w_data <= conv1_w_mem[conv1_w_addr];
        conv1_b_data <= conv1_b_mem[conv1_b_addr];
        conv2_w_data <= conv2_w_mem[conv2_w_addr];
        conv2_b_data <= conv2_b_mem[conv2_b_addr];
        conv3_w_data <= conv3_w_mem[conv3_w_addr];
        conv3_b_data <= conv3_b_mem[conv3_b_addr];
        conv4_w_data <= conv4_w_mem[conv4_w_addr];
        conv4_b_data <= conv4_b_mem[conv4_b_addr];
        conv5_w_data <= conv5_w_mem[conv5_w_addr];
        conv5_b_data <= conv5_b_mem[conv5_b_addr];
        fc_s_w_data  <= fc_s_w_mem[fc_s_w_addr];
        fc_s_b_data  <= fc_s_b_mem[fc_s_b_addr];
        cho_w_data   <= cho_w_mem[cho_w_addr];
        cho_b_data   <= cho_b_mem[cho_b_addr];
        jung_w_data  <= jung_w_mem[jung_w_addr];
        jung_b_data  <= jung_b_mem[jung_b_addr];
        jong1_w_data <= jong1_w_mem[jong1_w_addr];
        jong1_b_data <= jong1_b_mem[jong1_b_addr];
        jong2_w_data <= jong2_w_mem[jong2_w_addr];
        jong2_b_data <= jong2_b_mem[jong2_b_addr];
    end

endmodule
