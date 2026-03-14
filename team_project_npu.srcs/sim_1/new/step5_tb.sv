`timescale 1ns / 1ps

module step5_tb;

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

    step5_conv_pool_pipeline #(.C_OUT_TOTAL(8'd2)) uut (
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

        // ──── 이미지 로딩 ────
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

        // ──── 추론 시작 ────
        @(posedge clk); start_conv = 1;
        @(posedge clk); start_conv = 0;

        wait (all_done == 1);
        $display("=== All Done ===");
        #20;

        // ──── Pool1 결과 확인 ────
        $display("\n=== Pool1 Output (ch0, first 5) ===");
        for (i = 0; i < 5; i = i + 1) begin
            @(posedge clk); debug_addr = i;
            @(posedge clk); @(posedge clk);
            $display("  ch0[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Pool1 Output (ch1, first 5) ===");
        for (i = 0; i < 5; i = i + 1) begin
            @(posedge clk); debug_addr = 15'd1024 + i;
            @(posedge clk); @(posedge clk);
            $display("  ch1[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Step 5 Complete ===");
        $finish;
    end

        initial begin
        #30;  // 리셋 후
        $display("mem[0]=%0d (conv1_w[0])", $signed(uut.u_weights.mem[0]));
        $display("mem[287]=%0d (conv1_w last)", $signed(uut.u_weights.mem[287]));
        $display("mem[288]=%0d (conv1_b[0])", $signed(uut.u_weights.mem[288]));
        $display("mem[289]=%0d (conv1_b[1])", $signed(uut.u_weights.mem[289]));
        $display("mem[319]=%0d (conv1_b[31])", $signed(uut.u_weights.mem[319]));
        $display("mem[320]=%0d (conv2_w[0])", $signed(uut.u_weights.mem[320]));
    end


    // ──── 채널 진행 모니터 ────
    always @(posedge clk) begin
        if (uut.conv_done) $display("  Conv1 ch%0d done", uut.ext_co);
        if (uut.pool_done) $display("  Pool1 ch%0d done", uut.ext_co);
    end

    // ──── 타임아웃 ────
    initial begin
        #200000000;
        $display("TIMEOUT!");
        $finish;
    end

endmodule
