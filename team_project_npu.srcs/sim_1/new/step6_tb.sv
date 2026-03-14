`timescale 1ns / 1ps

module step6_tb;

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

    step6_conv12_pool12 #(.C1_OUT(8'd2), .C2_OUT(8'd2)) uut (
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

        // Pool2 결과 읽기 (fmap_a)
        // ch0: 0~255 (16×16), ch1: 256~511
        $display("\n=== Pool2 Output (ch0, first 5) ===");
        for (i = 0; i < 5; i = i + 1) begin
            @(posedge clk); debug_addr = i;
            @(posedge clk); @(posedge clk);
            $display("  ch0[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Pool2 Output (ch1, first 5) ===");
        for (i = 0; i < 5; i = i + 1) begin
            @(posedge clk); debug_addr = 15'd256 + i;
            @(posedge clk); @(posedge clk);
            $display("  ch1[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Step 6 Complete ===");
        $finish;
    end
    
        // ──── Conv2 출력 모니터 (별도 initial) ────
    integer conv2_count;
    integer conv2_nonzero;
    initial begin
        conv2_count = 0;
        conv2_nonzero = 0;
        
        // Conv2 시작 대기
        wait (uut.state == 4'd7);  // S_CONV2_RUN
        
        forever begin
            @(posedge clk);
            if (uut.conv_out_valid) begin
                conv2_count = conv2_count + 1;
                if (uut.conv_out_pixel != 0)
                    conv2_nonzero = conv2_nonzero + 1;
                if (conv2_count <= 10)
                    $display("[CONV2] #%0d pixel=%0d pos=%0d", 
                             conv2_count, $signed(uut.conv_out_pixel), uut.conv_out_pixel_pos);
            end
            if (uut.state == 4'd10) begin  // S_DONE
                $display("[CONV2] total=%0d, nonzero=%0d", conv2_count, conv2_nonzero);
            end
        end
    end
    
    // ──── Pool1 결과 확인 ────
    initial begin
        // Pool1 전체 완료 대기
        wait (uut.state == 4'd6);  // S_CONV2_SETUP
        $display("[POOL1] fmap_b mem[0]=%0d", $signed(uut.u_fmap_b.mem[0]));
        $display("[POOL1] fmap_b mem[1]=%0d", $signed(uut.u_fmap_b.mem[1]));
        $display("[POOL1] fmap_b mem[1024]=%0d", $signed(uut.u_fmap_b.mem[1024]));
        $display("[POOL1] fmap_b mem[1025]=%0d", $signed(uut.u_fmap_b.mem[1025]));
    end

        // ──── Conv2 acc 확인 (별도 initial) ────
    integer acc_count;
    initial begin
        acc_count = 0;
        wait (uut.state == 4'd7);  // S_CONV2_RUN
        forever begin
            @(posedge clk);
            if (uut.u_conv.state == uut.u_conv.S_RELU) begin
                acc_count = acc_count + 1;
                if (acc_count <= 10)
                    $display("[ACC] #%0d acc=%0d (before ReLU)", 
                             acc_count, $signed(uut.u_conv.acc));
            end
        end
    end



    // 진행 모니터
    always @(posedge clk) begin
        if (uut.state == 4'd3 && uut.conv_done)
            $display("  Conv1 ch%0d done", uut.ext_co);
        if (uut.state == 4'd4 && uut.pool_done)
            $display("  Pool1 ch%0d done", uut.ext_co);
        if (uut.state == 4'd7 && uut.conv_done)
            $display("  Conv2 ch%0d done", uut.ext_co);
        if (uut.state == 4'd8 && uut.pool_done)
            $display("  Pool2 ch%0d done", uut.ext_co);
    end

    initial begin
        #500000000;  // 500ms 타임아웃
        $display("TIMEOUT!");
        $finish;
    end

endmodule