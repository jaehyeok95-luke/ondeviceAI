`timescale 1ns / 1ps

module step7_tb;

    reg         clk = 0;
    reg         rst_n = 0;
    reg         start_load = 0;
    reg         start_conv = 0;
    reg         img_valid = 0;
    reg  [7:0]  img_pixel = 0;
    reg  [14:0] debug_addr = 0;
    wire [7:0]  debug_data;
    wire        all_done;
    wire        busy;

    step7_conv123_pool123 #(
        .C1_OUT(8'd2), .C2_OUT(8'd2), .C3_OUT(8'd2)
    ) uut (
        .clk(clk), .rst_n(rst_n),
        .start_load(start_load), .img_valid(img_valid), .img_pixel(img_pixel),
        .start_conv(start_conv),
        .debug_addr(debug_addr), .debug_data(debug_data),
        .all_done(all_done), .busy(busy)
    );

    always #5 clk = ~clk;

    integer i;

    initial begin
        rst_n = 0; #20; rst_n = 1; #10;

        // 이미지 로딩
        @(posedge clk); start_load = 1;
        @(posedge clk); start_load = 0;
        for (i = 0; i < 4096; i = i + 1) begin
            @(posedge clk);
            img_valid = 1;
            img_pixel = i[7:0];
        end
        @(posedge clk); img_valid = 0;
        $display("=== Image Loaded ===");
        #20;

        // 추론 시작
        @(posedge clk); start_conv = 1;
        @(posedge clk); start_conv = 0;

        wait (all_done == 1);
        $display("=== All Done ===");
        #20;

        // Pool3 결과 읽기 (fmap_b, pool_dst=0)
        // ch0: 0~63 (8×8), ch1: 64~127
        $display("\n=== Pool3 Output (ch0, first 5) ===");
        for (i = 0; i < 5; i = i + 1) begin
            @(posedge clk); debug_addr = i;
            @(posedge clk); @(posedge clk);
            $display("  ch0[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Pool3 Output (ch1, first 5) ===");
        for (i = 0; i < 5; i = i + 1) begin
            @(posedge clk); debug_addr = 15'd64 + i;
            @(posedge clk); @(posedge clk);
            $display("  ch1[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Step 7 Complete ===");
        $finish;
    end

    // 진행 모니터
    always @(posedge clk) begin
        if (uut.state == 4'd3  && uut.conv_done) $display("  Conv1 ch%0d done", uut.ext_co);
        if (uut.state == 4'd4  && uut.pool_done) $display("  Pool1 ch%0d done", uut.ext_co);
        if (uut.state == 4'd7  && uut.conv_done) $display("  Conv2 ch%0d done", uut.ext_co);
        if (uut.state == 4'd8  && uut.pool_done) $display("  Pool2 ch%0d done", uut.ext_co);
        if (uut.state == 4'd11 && uut.conv_done) $display("  Conv3 ch%0d done", uut.ext_co);
        if (uut.state == 4'd12 && uut.pool_done) $display("  Pool3 ch%0d done", uut.ext_co);
    end

    initial begin
        #500000000;
        $display("TIMEOUT!");
        $finish;
    end

endmodule