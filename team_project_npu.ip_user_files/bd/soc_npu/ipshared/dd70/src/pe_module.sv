`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2026 11:03:35 PM
// Design Name: 
// Module Name: pe_module
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

(* use_dsp = "yes" *)
module pe (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        valid,      // 입력 유효 신호
    input  wire signed [7:0] a,    // activation (input pixel)
    input  wire signed [7:0] b,    // weight
    output reg  signed [15:0] p,   // product
    output reg         p_valid     // 출력 유효 신호
);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            p       <= 16'sd0;
            p_valid <= 1'b0;
        end else begin
            p       <= a * b;
            p_valid <= valid;
        end
    end

endmodule

(* use_dsp = "yes" *)
module pe_array #(
    parameter P = 8
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        valid,

    input  wire signed [7:0] patch [0:8],
    input  wire [71:0] weight_packed [0:P-1],

    output reg  signed [31:0] psum [0:P-1],    // ★ 20 → 32bit
    output reg         psum_valid
);

    // ── weight 언패킹 ──
    wire signed [7:0] w [0:P-1][0:8];
    genvar ch, k;
    generate
        for (ch = 0; ch < P; ch = ch + 1) begin : gen_unpack
            for (k = 0; k < 9; k = k + 1) begin : gen_byte
                assign w[ch][k] = $signed(weight_packed[ch][k*8 +: 8]);
            end
        end
    endgenerate

    // ── PE 인스턴스 ──
    wire signed [15:0] products [0:P-1][0:8];
    wire               pe_valids [0:P-1][0:8];

    generate
        for (ch = 0; ch < P; ch = ch + 1) begin : gen_ch
            for (k = 0; k < 9; k = k + 1) begin : gen_k
                pe u_pe (
                    .clk(clk),
                    .rst_n(rst_n),
                    .valid(valid),
                    .a(patch[k]),
                    .b(w[ch][k]),
                    .p(products[ch][k]),
                    .p_valid(pe_valids[ch][k])
                );
            end
        end
    endgenerate

    // ── Adder tree ──
    integer i;
    reg signed [16:0] sum_01 [0:P-1];
    reg signed [16:0] sum_23 [0:P-1];
    reg signed [16:0] sum_45 [0:P-1];
    reg signed [16:0] sum_67 [0:P-1];
    reg signed [17:0] sum_0123 [0:P-1];
    reg signed [17:0] sum_4567 [0:P-1];
    reg signed [18:0] sum_01234567 [0:P-1];
    reg signed [19:0] sum_all9 [0:P-1];

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            for (i = 0; i < P; i = i + 1)
                psum[i] <= 32'sd0;
            psum_valid <= 1'b0;
        end else begin
            psum_valid <= pe_valids[0][0];
            for (i = 0; i < P; i = i + 1) begin
                sum_01[i] = $signed({products[i][0][15], products[i][0]}) +
                            $signed({products[i][1][15], products[i][1]});
                sum_23[i] = $signed({products[i][2][15], products[i][2]}) +
                            $signed({products[i][3][15], products[i][3]});
                sum_45[i] = $signed({products[i][4][15], products[i][4]}) +
                            $signed({products[i][5][15], products[i][5]});
                sum_67[i] = $signed({products[i][6][15], products[i][6]}) +
                            $signed({products[i][7][15], products[i][7]});

                sum_0123[i] = $signed({sum_01[i][16], sum_01[i]}) +
                              $signed({sum_23[i][16], sum_23[i]});
                sum_4567[i] = $signed({sum_45[i][16], sum_45[i]}) +
                              $signed({sum_67[i][16], sum_67[i]});

                sum_01234567[i] = $signed({sum_0123[i][17], sum_0123[i]}) +
                                  $signed({sum_4567[i][17], sum_4567[i]});

                sum_all9[i] = $signed({sum_01234567[i][18], sum_01234567[i]}) +
                              $signed({{4{products[i][8][15]}}, products[i][8]});

                // ★ 20bit → 32bit sign-extend
                psum[i] <= {{12{sum_all9[i][19]}}, sum_all9[i]};
            end
        end
    end

endmodule
