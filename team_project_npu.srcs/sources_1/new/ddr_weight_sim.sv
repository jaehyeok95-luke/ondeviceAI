`timescale 1ns / 1ps

module ddr_weight_sim (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        rd_req,
    input  wire [31:0] rd_addr,
    input  wire [17:0] rd_len,
    output reg         rd_valid,
    output reg  [7:0]  rd_data,
    output reg         rd_done
);

    reg [7:0] mem [0:1048575]; // 1 MB

    initial begin
        $readmemh("all_weights_ddr.hex", mem);
    end

    reg [31:0] cur_addr;
    reg [17:0] remain;
    reg        active;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            active   <= 1'b0;
            rd_valid <= 1'b0;
            rd_done  <= 1'b0;
            rd_data  <= 8'd0;
            cur_addr <= 32'd0;
            remain   <= 18'd0;
        end else begin
            rd_done <= 1'b0;

            if (rd_req && !active) begin
                cur_addr <= rd_addr;
                remain   <= rd_len;
                active   <= 1'b1;
                rd_valid <= 1'b0;
            end else if (active) begin
                rd_data  <= mem[cur_addr];
                rd_valid <= 1'b1;
                cur_addr <= cur_addr + 1;
                remain   <= remain - 1;
                if (remain == 18'd1) begin
                    rd_done <= 1'b1;
                    active  <= 1'b0;
                end
            end else begin
                rd_valid <= 1'b0;
            end
        end
    end

endmodule
