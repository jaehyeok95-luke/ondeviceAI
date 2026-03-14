`timescale 1ns / 1ps

module argmax (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    input  wire [8:0]  len,          // 비교할 개수 (종 수)

    // fmap 읽기
    output reg  [14:0] fmap_rd_addr,
    input  wire [7:0]  fmap_rd_data,

    // 결과
    output reg  [7:0]  result_idx,
    output reg         done
);

    localparam [1:0]
        S_IDLE  = 2'd0,
        S_READ  = 2'd1,
        S_WAIT  = 2'd2,
        S_COMP  = 2'd3;

    reg [1:0] state;
    reg [8:0] idx;
    reg [7:0] max_val;
    reg [7:0] max_idx;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state        <= S_IDLE;
            done         <= 1'b0;
            result_idx   <= 8'd0;
            fmap_rd_addr <= 15'd0;
            idx          <= 9'd0;
            max_val      <= 8'd0;
            max_idx      <= 8'd0;
        end else begin
            done <= 1'b0;

            case (state)
                S_IDLE: begin
                    if (start) begin
                        idx          <= 9'd0;
                        max_val      <= 8'd0;
                        max_idx      <= 8'd0;
                        fmap_rd_addr <= 15'd0;
                        state        <= S_READ;
                    end
                end

                S_READ: begin
                    fmap_rd_addr <= idx;
                    state        <= S_WAIT;
                end

                S_WAIT: begin
                    state <= S_COMP;
                end

                S_COMP: begin
                    if (fmap_rd_data > max_val || idx == 0) begin
                        max_val <= fmap_rd_data;
                        max_idx <= idx[7:0];
                    end
                    idx <= idx + 1;
                    if (idx + 1 == len) begin
                        result_idx <= (fmap_rd_data > max_val || idx == 0) ?
                                       idx[7:0] : max_idx;
                        done       <= 1'b1;
                        state      <= S_IDLE;
                    end else begin
                        state <= S_READ;
                    end
                end
            endcase
        end
    end

endmodule
