`timescale 1ns / 1ps

module maxpool2x2 (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,

    input  wire [6:0]  in_w,
    input  wire [6:0]  in_h,
    input  wire [7:0]  channels,

    output reg  [14:0] rd_addr,
    input  wire [7:0]  rd_data,

    output reg  [14:0] wr_addr,
    output reg  [7:0]  wr_data,
    output reg         wr_en,

    output reg         done
);

    localparam S_IDLE    = 4'd0;
    localparam S_SETUP   = 4'd1;
    localparam S_READ0   = 4'd2;
    localparam S_WAIT0   = 4'd3;
    localparam S_READ1   = 4'd4;
    localparam S_WAIT1   = 4'd5;
    localparam S_READ2   = 4'd6;
    localparam S_WAIT2   = 4'd7;
    localparam S_READ3   = 4'd8;
    localparam S_WAIT3   = 4'd9;
    localparam S_COMPARE = 4'd10;
    localparam S_WRITE   = 4'd11;
    localparam S_NEXT    = 4'd12;

    reg [3:0]  state;
    reg [7:0]  ch;
    reg [6:0]  out_row, out_col;
    wire [6:0] out_w = in_w >> 1;
    wire [6:0] out_h = in_h >> 1;

    wire [6:0]  in_row = out_row << 1;
    wire [6:0]  in_col = out_col << 1;
    wire [14:0] ch_base_in  = ch * in_w * in_h;
    wire [14:0] ch_base_out = ch * out_w * out_h;

    reg [7:0] p00, p01, p10, p11;

    wire [7:0] max_01  = (p00 >= p01) ? p00 : p01;
    wire [7:0] max_23  = (p10 >= p11) ? p10 : p11;
    wire [7:0] max_all = (max_01 >= max_23) ? max_01 : max_23;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state   <= S_IDLE;
            done    <= 0;
            wr_en   <= 0;
            rd_addr <= 0;
            wr_addr <= 0;
            wr_data <= 0;
            ch      <= 0;
            out_row <= 0;
            out_col <= 0;
            p00     <= 0;
            p01     <= 0;
            p10     <= 0;
            p11     <= 0;
        end else begin
            done  <= 0;
            wr_en <= 0;

            case (state)

                S_IDLE: begin
                    if (start) begin
                        ch      <= 0;
                        out_row <= 0;
                        out_col <= 0;
                        state   <= S_SETUP;
                    end
                end

                S_SETUP: begin
                    state <= S_READ0;
                end

                S_READ0: begin
                    rd_addr <= ch_base_in + in_row * in_w + in_col;
                    state   <= S_WAIT0;
                end

                S_WAIT0: begin
                    state <= S_READ1;
                end

                S_READ1: begin
                    p00     <= rd_data;
                    rd_addr <= ch_base_in + in_row * in_w + (in_col + 1);
                    state   <= S_WAIT1;
                end

                S_WAIT1: begin
                    state <= S_READ2;
                end

                S_READ2: begin
                    p01     <= rd_data;
                    rd_addr <= ch_base_in + (in_row + 1) * in_w + in_col;
                    state   <= S_WAIT2;
                end

                S_WAIT2: begin
                    state <= S_READ3;
                end

                S_READ3: begin
                    p10     <= rd_data;
                    rd_addr <= ch_base_in + (in_row + 1) * in_w + (in_col + 1);
                    state   <= S_WAIT3;
                end

                S_WAIT3: begin
                    state <= S_COMPARE;
                end

                S_COMPARE: begin
                    p11   <= rd_data;
                    state <= S_WRITE;
                end

                S_WRITE: begin
                    wr_data <= max_all;
                    wr_addr <= ch_base_out + out_row * out_w + out_col;
                    wr_en   <= 1;
                    state   <= S_NEXT;
                end

                S_NEXT: begin
                    if (out_col == out_w - 1) begin
                        out_col <= 0;
                        if (out_row == out_h - 1) begin
                            out_row <= 0;
                            if (ch == channels - 1) begin
                                done  <= 1;
                                state <= S_IDLE;
                            end else begin
                                ch    <= ch + 1;
                                state <= S_SETUP;
                            end
                        end else begin
                            out_row <= out_row + 1;
                            state   <= S_SETUP;
                        end
                    end else begin
                        out_col <= out_col + 1;
                        state   <= S_SETUP;
                    end
                end

                default: state <= S_IDLE;
            endcase
        end
    end

endmodule