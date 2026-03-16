`timescale 1ns / 1ps

module fc_relu (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    input  wire [11:0] in_len,
    input  wire        relu_en,       // ← 추가: 1=ReLU 적용, 0=그대로

    output reg  [14:0] fmap_rd_addr,
    input  wire [7:0]  fmap_rd_data,
    input  wire [14:0] fmap_rd_base,

    output reg  [11:0] weight_addr,
    input  wire signed [7:0] weight_data,

    input  wire signed [7:0] bias_data,

    output reg  signed [7:0] out_pixel,
    output reg         out_valid,
    output reg         done
);

    localparam [2:0]
        S_IDLE    = 3'd0,
        S_BIAS    = 3'd1,
        S_READ_F  = 3'd2,
        S_WAIT_F  = 3'd3,
        S_READ_W  = 3'd4,
        S_WAIT_W  = 3'd5,
        S_MAC     = 3'd6,
        S_OUTPUT  = 3'd7;

    reg [2:0]  state;
    reg [11:0] idx;
    reg signed [31:0] acc;
    reg signed [7:0]  fmap_val;
    reg        relu_en_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= S_IDLE;
            done         <= 1'b0;
            out_valid    <= 1'b0;
            out_pixel    <= 8'sd0;
            acc          <= 32'sd0;
            idx          <= 12'd0;
            fmap_rd_addr <= 15'd0;
            weight_addr  <= 12'd0;
            fmap_val     <= 8'sd0;
            relu_en_reg  <= 1'b1;
        end else begin
            done      <= 1'b0;
            out_valid <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        acc         <= $signed(bias_data) * 32'sd128;
                        idx         <= 12'd0;
                        relu_en_reg <= relu_en;
                        state       <= S_READ_F;
                    end
                end

                S_BIAS: state <= S_READ_F;

                S_READ_F: begin
                    fmap_rd_addr <= fmap_rd_base + idx;
                    state        <= S_WAIT_F;
                end

                S_WAIT_F: state <= S_READ_W;

                S_READ_W: begin
                    fmap_val    <= fmap_rd_data;
                    weight_addr <= idx;
                    state       <= S_WAIT_W;
                end

                S_WAIT_W: state <= S_MAC;

                S_MAC: begin
                    acc <= acc + $signed({1'b0, fmap_val}) * $signed(weight_data);
                    idx <= idx + 1;
                    if (idx + 1 == in_len)
                        state <= S_OUTPUT;
                    else
                        state <= S_READ_F;
                end

                S_OUTPUT: begin
                    if (relu_en_reg) begin
                        // ReLU + 클리핑 (0~127)
                        if (acc < 0)
                            out_pixel <= 8'sd0;
                        else if (acc[31:7] > 0)
                            out_pixel <= 8'sd127;
                        else
                            out_pixel <= acc[7:0];
                    end else begin
                        // No ReLU: signed 클리핑 (-128~127)
                        if (acc > 32'sd16256)       // 127 * 128
                            out_pixel <= 8'sd127;
                        else if (acc < -32'sd16384) // -128 * 128
                            out_pixel <= -8'sd128;
                        else
                            out_pixel <= acc[14:7];  // acc / 128
                    end
                    out_valid <= 1'b1;
                    done      <= 1'b1;
                    state     <= S_IDLE;
                end
            endcase
        end
    end

endmodule
