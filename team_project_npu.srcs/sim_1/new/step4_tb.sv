`timescale 1ns / 1ps

module step4_tb;

    reg         clk = 0;
    reg         rst_n = 0;
    reg         start_load = 0;
    reg         start_conv = 0;
    reg         img_valid = 0;
    reg  [7:0]  img_pixel = 0;
    reg  [14:0] debug_addr = 0;
    wire [7:0]  debug_data;
    wire        conv_done_out;
    wire        pool_done_out;
    wire        busy;

    step4_conv_pool_test uut (
        .clk           (clk),
        .rst_n         (rst_n),
        .start_load    (start_load),
        .img_valid     (img_valid),
        .img_pixel     (img_pixel),
        .start_conv    (start_conv),
        .debug_addr    (debug_addr),
        .debug_data    (debug_data),
        .conv_done_out (conv_done_out),
        .pool_done_out (pool_done_out),
        .busy          (busy)
    );

    always #5 clk = ~clk;

    integer i;

    initial begin
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
        // 이미지 로딩 직후, Conv 시작 전에 확인
        $display("fmap_a mem[0] = %0d", uut.u_fmap_a.mem[0]);
        $display("fmap_a mem[1] = %0d", uut.u_fmap_a.mem[1]);
        $display("fmap_a mem[64] = %0d", uut.u_fmap_a.mem[64]);

        // ──── Conv1 + Pool1 시작 ────
        $display("=== Conv1 + Pool1 Start ===");

        @(posedge clk);
        start_conv = 1;
        @(posedge clk);
        start_conv = 0;

        // Conv 완료 대기
        wait (conv_done_out == 1);
        $display("=== Conv1 Done ===");

        // Pool 완료 대기
        wait (pool_done_out == 1);
        $display("=== Pool1 Done ===");

        $display("fmap_b mem[0] = %0d", uut.u_fmap_b.mem[0]);
        $display("fmap_a mem[0] = %0d", uut.u_fmap_a.mem[0]);
        #20;

        // ──── Pool 결과 읽기 ────
        // Pool1 출력: 2채널 × 32×32 = 2048
        // 채널0: 주소 0~1023, 채널1: 주소 1024~2047
        $display("\n=== Pool1 Output (channel 0, first 10) ===");
        for (i = 0; i < 10; i = i + 1) begin
            @(posedge clk);
            debug_addr = i;
            @(posedge clk);
            @(posedge clk);
            $display("  ch0[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Pool1 Output (channel 1, first 10) ===");
        for (i = 0; i < 10; i = i + 1) begin
            @(posedge clk);
            debug_addr = 15'd1024 + i;
            @(posedge clk);
            @(posedge clk);
            $display("  ch1[%0d] = %0d", i, debug_data);
        end

        $display("\n=== Step 4 Test Complete ===");
        $finish;
    end

        // ──── 디버그 모니터 (별도 initial) ────
    initial begin
        // conv 내부 상태 추적
        wait (uut.u_conv.state == uut.u_conv.S_LOAD_B);
        @(posedge clk);
        $display("[DBG] S_LOAD_B: bias_offset=%0d", uut.u_conv.bias_offset);

        wait (uut.u_conv.state == uut.u_conv.S_WAIT_B);
        @(posedge clk);
        $display("[DBG] S_WAIT_B: bias_data=%0d (%0h)", uut.u_conv.bias_data, uut.u_conv.bias_data);

        wait (uut.u_conv.state == uut.u_conv.S_REQ_PATCH);
        $display("[DBG] S_REQ_PATCH: bias_saved=%0d, acc=%0d", 
                 uut.u_conv.bias_saved, uut.u_conv.acc);

        // 첫 MAC 시작
        wait (uut.u_conv.state == uut.u_conv.S_MAC);
        $display("[DBG] S_MAC first: patch_reg[0]=%0d, w_data=%0d, acc=%0d",
                 uut.u_conv.patch_reg[0], uut.u_conv.weight_data, uut.u_conv.acc);

        // ReLU 진입
        wait (uut.u_conv.state == uut.u_conv.S_RELU);
        $display("[DBG] S_RELU: acc=%0d (%0h)", uut.u_conv.acc, uut.u_conv.acc);

        // 첫 출력
        wait (uut.u_conv.state == uut.u_conv.S_OUTPUT);
        $display("[DBG] S_OUTPUT: out_pixel=%0d, pos=%0d, ch=%0d",
                 uut.u_conv.out_pixel, uut.u_conv.out_pixel_pos, uut.u_conv.out_ch_idx);
    end
    
        // ──── MAC 전체 추적 (별도 initial) ────
    integer mac_trace_count;
    initial begin
        mac_trace_count = 0;
        forever begin
            @(posedge clk);
            if (uut.u_conv.state == uut.u_conv.S_MAC && mac_trace_count < 20) begin
                $display("[MAC] k=%0d patch=%0d weight=%0d acc_before=%0d",
                         uut.u_conv.k_idx,
                         $signed(uut.u_conv.patch_reg[uut.u_conv.k_idx]),
                         $signed(uut.u_conv.weight_data),
                         $signed(uut.u_conv.acc));
                mac_trace_count = mac_trace_count + 1;
            end
            if (uut.u_conv.state == uut.u_conv.S_RELU && mac_trace_count < 20) begin
                $display("[RELU] final acc=%0d", $signed(uut.u_conv.acc));
                mac_trace_count = 100;  // 더 이상 출력 안 함
            end
        end
    end

    // ──── 타임아웃 ────
    initial begin
        #100000000;
        $display("TIMEOUT!");
        $finish;
    end

endmodule