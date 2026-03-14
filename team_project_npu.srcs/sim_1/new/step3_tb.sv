`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2026 03:17:33 PM
// Design Name: 
// Module Name: step3_tb
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


module step3_tb;

    reg         clk = 0;
    reg         rst_n = 0;
    reg         start_load = 0;
    reg         start_conv = 0;
    reg         img_valid = 0;
    reg  [7:0]  img_pixel = 0;

    wire signed [7:0] conv_out_pixel;
    wire [7:0]  conv_out_ch;
    wire [14:0] conv_out_pixel_pos;
    wire        conv_out_valid;
    wire        conv_done;
    wire        busy;

    step3_conv1_test uut (
        .clk              (clk),
        .rst_n            (rst_n),
        .start_load       (start_load),
        .img_valid        (img_valid),
        .img_pixel        (img_pixel),
        .start_conv       (start_conv),
        .conv_out_pixel   (conv_out_pixel),
        .conv_out_ch      (conv_out_ch),
        .conv_out_pixel_pos(conv_out_pixel_pos),
        .conv_out_valid   (conv_out_valid),
        .conv_done        (conv_done),
        .busy             (busy)
    );

    always #5 clk = ~clk;

    integer i, out_count;

    initial begin
        out_count = 0;

        // 리셋
        rst_n = 0;
        #20;
        rst_n = 1;
        #10;

        // ──── 이미지 로딩 ────
        $display("=== Loading Image ===");
        @(posedge clk);
        start_load = 1;
        @(posedge clk);
        start_load = 0;

        for (i = 0; i < 4096; i = i + 1) begin
            @(posedge clk);
            img_valid = 1;
            img_pixel = i[7:0];
        end
        @(posedge clk);
        img_valid = 0;

        $display("=== Image Loaded ===");
        #20;

        // ──── Conv1 시작 ────
        $display("=== Conv1 Start ===");
        @(posedge clk);
        start_conv = 1;
        @(posedge clk);
        start_conv = 0;

         // 출력 모니터링
         fork
            forever begin
                @(posedge clk);
                if (conv_out_valid) begin
                    out_count = out_count + 1;
                    // 각 채널의 처음 5개만 출력
                    if (out_count <= 5 || 
                        (out_count >= 4097 && out_count <= 4101)) begin
                        $display("out[%0d] ch=%0d pos=%0d val=%0d",
                                 out_count, conv_out_ch,
                                 conv_out_pixel_pos, conv_out_pixel);
                    end
                    // 채널 전환 시점 표시
                    if (out_count == 4096)
                        $display("--- channel 0 done, channel 1 start ---");
                end
            end

            begin
                wait (conv_done == 1);
                @(posedge clk);
                $display("\n=== Conv1 Done! Total outputs: %0d ===", out_count);
                $display("Expected: %0d (2 channels x 4096 pixels)", 2 * 4096);
                #20;
                $finish;
            end

            begin
                #60000000;
                $display("TIMEOUT! outputs so far: %0d", out_count);
                $finish;
            end
        join
    end

endmodule
