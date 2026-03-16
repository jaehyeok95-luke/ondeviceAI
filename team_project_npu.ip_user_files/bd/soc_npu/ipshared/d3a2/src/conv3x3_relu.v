`timescale 1ns / 1ps

module conv3x3_relu (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    input  wire [6:0]  in_w,
    input  wire [6:0]  in_h,
    input  wire [7:0]  c_in,
    input  wire [7:0]  c_out,
    input  wire [17:0] weight_base,
    input  wire [17:0] bias_base,
    input  wire [7:0]  patch [0:2][0:2],
    input  wire        patch_valid,
    input  wire signed [7:0] weight_data,
    output reg  [17:0] weight_offset,
    input  wire signed [7:0] bias_data,
    output reg  [17:0] bias_offset,
    output reg  [7:0]  cur_ci,
    output reg         need_patch,
    output reg  [6:0]  target_row,
    output reg  [6:0]  target_col,
    output reg  signed [7:0] out_pixel,
    output reg  [7:0]  out_ch_idx,
    output reg  [14:0] out_pixel_pos,
    output reg         out_valid,
    output reg         done,
    output reg         reading_bias
);

    localparam S_IDLE      = 4'd0;
    localparam S_LOAD_B    = 4'd1;
    localparam S_WAIT_B    = 4'd2;
    localparam S_REQ_PATCH = 4'd3;
    localparam S_WAIT_P    = 4'd4;
    localparam S_LOAD_W    = 4'd5;
    localparam S_WAIT_W    = 4'd6;
    localparam S_MAC       = 4'd7;
    localparam S_RELU      = 4'd8;
    localparam S_OUTPUT    = 4'd9;
    localparam S_NEXT_CI   = 4'd10;
    localparam S_NEXT_POS  = 4'd11;
    localparam S_NEXT_CO   = 4'd12;
    localparam S_DONE      = 4'd13;

    reg [3:0] state;
    reg [7:0]  co, ci;
    reg [14:0] pix;
    reg [3:0]  k_idx;
    reg [14:0] total_pixels;
    reg [6:0]  cur_row, cur_col;
    reg signed [31:0] bias_saved;
    reg signed [31:0] acc;
    reg signed [7:0] patch_reg [0:8];

    wire [17:0] w_base;
    assign w_base = weight_base + co * c_in * 9 + ci * 9;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE; done <= 1'b0; out_valid <= 1'b0;
            need_patch <= 1'b0; reading_bias <= 1'b0;
            co <= 8'd0; ci <= 8'd0; pix <= 15'd0; k_idx <= 4'd0;
            acc <= 32'd0; out_pixel <= 8'd0; out_ch_idx <= 8'd0;
            out_pixel_pos <= 15'd0; weight_offset <= 18'd0;
            bias_offset <= 17'd0; cur_ci <= 8'd0; total_pixels <= 15'd0;
            target_row <= 7'd0; target_col <= 7'd0;
            cur_row <= 7'd0; cur_col <= 7'd0; bias_saved <= 32'd0;
        end else begin
            out_valid <= 1'b0; done <= 1'b0; need_patch <= 1'b0;

            case (state)
                S_IDLE: begin
                    reading_bias <= 1'b0;
                    if (start) begin
                        total_pixels <= in_w * in_h;
                        co <= 8'd0; pix <= 15'd0;
                        cur_row <= 7'd0; cur_col <= 7'd0;
                        done <= 1'b0; state <= S_LOAD_B;
                    end
                end
                S_LOAD_B: begin
                    reading_bias <= 1'b1;
                    bias_offset <= bias_base + co;
                    ci <= 8'd0; state <= S_WAIT_B;
                end
                S_WAIT_B: begin
                    bias_saved <= {{24{bias_data[7]}}, bias_data} <<< 7;
                    acc        <= {{24{bias_data[7]}}, bias_data} <<< 7;
                    reading_bias <= 1'b0;
                    state <= S_REQ_PATCH;
                end
                S_REQ_PATCH: begin
                    cur_ci <= ci; need_patch <= 1'b1;
                    target_row <= cur_row; target_col <= cur_col;
                    state <= S_WAIT_P;
                end
                S_WAIT_P: begin
                    if (patch_valid) begin
                        patch_reg[0]<=patch[0][0]; patch_reg[1]<=patch[0][1]; patch_reg[2]<=patch[0][2];
                        patch_reg[3]<=patch[1][0]; patch_reg[4]<=patch[1][1]; patch_reg[5]<=patch[1][2];
                        patch_reg[6]<=patch[2][0]; patch_reg[7]<=patch[2][1]; patch_reg[8]<=patch[2][2];
                        k_idx <= 4'd0; state <= S_LOAD_W;
                    end
                end
                S_LOAD_W: begin
                    reading_bias <= 1'b0;
                    weight_offset <= w_base + {14'd0, k_idx};
                    state <= S_WAIT_W;
                end
                S_WAIT_W: state <= S_MAC;
                S_MAC: begin
                    acc <= acc + $signed(patch_reg[k_idx]) * $signed(weight_data);
                    if (k_idx == 4'd8) state <= S_NEXT_CI;
                    else begin k_idx <= k_idx + 4'd1; state <= S_LOAD_W; end
                end
                S_NEXT_CI: begin
                    if (ci + 8'd1 == c_in) state <= S_RELU;
                    else begin ci <= ci + 8'd1; state <= S_REQ_PATCH; end
                end
                S_RELU: begin
                    if (acc < 0) out_pixel <= 8'd0;
                    else if (acc[31:7] > 127) out_pixel <= 8'd127;
                    else out_pixel <= acc[14:7];
                    state <= S_OUTPUT;
                end
                S_OUTPUT: begin
                    out_ch_idx <= co; out_pixel_pos <= pix;
                    out_valid <= 1'b1; state <= S_NEXT_POS;
                end
                S_NEXT_POS: begin
                    if (pix + 15'd1 == total_pixels) begin
                        pix <= 15'd0; cur_row <= 7'd0; cur_col <= 7'd0;
                        state <= S_NEXT_CO;
                    end else begin
                        pix <= pix + 15'd1;
                        if (cur_col + 7'd1 == in_w) begin cur_col <= 7'd0; cur_row <= cur_row + 7'd1; end
                        else cur_col <= cur_col + 7'd1;
                        ci <= 8'd0; acc <= bias_saved; state <= S_REQ_PATCH;
                    end
                end
                S_NEXT_CO: begin
                    if (co + 8'd1 == c_out) state <= S_DONE;
                    else begin co <= co + 8'd1; pix <= 15'd0; cur_row <= 7'd0; cur_col <= 7'd0; state <= S_LOAD_B; end
                end
                S_DONE: begin done <= 1'b1; state <= S_IDLE; end
                default: state <= S_IDLE;
            endcase
        end
    end
endmodule
