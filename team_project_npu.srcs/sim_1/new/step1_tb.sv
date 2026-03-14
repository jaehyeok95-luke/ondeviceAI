`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2026 03:02:16 PM
// Design Name: 
// Module Name: step1_tb
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


module step1_tb;

    reg         clk = 0;
    reg         rst_n = 0;
    reg         start = 0;
    reg         img_valid = 0;
    reg  [7:0]  img_pixel = 0;
    reg  [14:0] rd_addr = 0;
    wire [7:0]  rd_data;
    wire        load_done;
    wire        busy;

    step1_img_load uut (
        .clk       (clk),
        .rst_n     (rst_n),
        .start     (start),
        .img_valid (img_valid),
        .img_pixel (img_pixel),
        .rd_addr   (rd_addr),
        .rd_data   (rd_data),
        .load_done (load_done),
        .busy      (busy)
    );

    // 10ns 주기 (100MHz)
    always #5 clk = ~clk;

    integer i;

    initial begin
        // 리셋
        rst_n = 0;
        #20;
        rst_n = 1;
        #10;

        // start 펄스
        @(posedge clk);
        start = 1;
        @(posedge clk);
        start = 0;

        // 4096 픽셀 전송 (값 = addr % 256)
        for (i = 0; i < 4096; i = i + 1) begin
            @(posedge clk);
            img_valid = 1;
            img_pixel = i % 256;
        end
        @(posedge clk);
        img_valid = 0;

        // load_done 대기
        wait (load_done == 1);
        @(posedge clk);
        @(posedge clk);

        // 저장 확인: 처음 10개 주소 읽기
        for (i = 0; i < 10; i = i + 1) begin
            @(posedge clk);
            rd_addr = i;
            @(posedge clk);  // BRAM 1클럭 레이턴시
            @(posedge clk);
            $display("addr[%0d] = %0d (expected %0d)", i, rd_data, i % 256);
        end

        // 마지막 주소 확인
        @(posedge clk);
        rd_addr = 15'd4095;
        @(posedge clk);
        @(posedge clk);
        $display("addr[4095] = %0d (expected %0d)", rd_data, 4095 % 256);

        $display("\n=== Step 1 Test Complete ===");
        $finish;
    end

endmodule
