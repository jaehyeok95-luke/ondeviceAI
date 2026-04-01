`timescale 1ns / 1ps

module tb_stop_watch_ip;

    // ========================================
    // 1. 신호 선언
    // ========================================
    reg clk, reset_p;
    reg btn_start, btn_clear, ready;
    
    wire run, lap_flag, sign_flag;
    wire [7:0] min, sec, csec;
    wire [7:0] lap_count, lap_min, lap_sec, lap_csec;
    wire [7:0] diff_min, diff_sec, diff_csec;
    
    integer pass_count = 0;
    integer fail_count = 0;
    integer test_num   = 0;

    // ========================================
    // 2. DUT 인스턴스
    // ========================================
    stop_watch_ip DUT (
        .clk(clk), .reset_p(reset_p),
        .btn_start(btn_start), .btn_clear(btn_clear), .ready(ready),
        .run(run), .lap_flag(lap_flag), .sign_flag(sign_flag),
        .min(min), .sec(sec), .csec(csec),
        .lap_count(lap_count), .lap_min(lap_min), 
        .lap_sec(lap_sec), .lap_csec(lap_csec),
        .diff_min(diff_min), .diff_sec(diff_sec), .diff_csec(diff_csec)
    );

    // ========================================
    // 3. 클럭 생성 (100MHz, 10ns)
    // ========================================
    always #5 clk = ~clk;

    // ========================================
    // 4. 유틸리티 Task
    // ========================================
    
    // 자동 판정
    task check;
        input [255:0] test_name;
        input [7:0] actual, expected;
        begin
            test_num = test_num + 1;
            if (actual === expected) begin
                $display("[PASS] TC%0d: %0s | actual=%0d expected=%0d", 
                         test_num, test_name, actual, expected);
                pass_count = pass_count + 1;
            end else begin
                $display("[FAIL] TC%0d: %0s | actual=%0d expected=%0d", 
                         test_num, test_name, actual, expected);
                fail_count = fail_count + 1;
            end
        end
    endtask
    
    task check_1bit;
        input [255:0] test_name;
        input actual, expected;
        begin
            test_num = test_num + 1;
            if (actual === expected) begin
                $display("[PASS] TC%0d: %0s | actual=%0b expected=%0b", 
                         test_num, test_name, actual, expected);
                pass_count = pass_count + 1;
            end else begin
                $display("[FAIL] TC%0d: %0s | actual=%0b expected=%0b", 
                         test_num, test_name, actual, expected);
                fail_count = fail_count + 1;
            end
        end
    endtask

    // 1/100초(10ms = 1_000_000 클럭) 대기
    task wait_csec;
        input integer n;
        integer i;
        begin
            for (i = 0; i < n; i = i + 1)
                repeat(1_000_000) @(posedge clk);
        end
    endtask
    
    // edge_detector_p가 posedge를 감지하도록 1사이클 펄스 생성
    task pulse_start;
        begin
            @(posedge clk); btn_start <= 1;
            @(posedge clk); btn_start <= 0;
            repeat(3) @(posedge clk); // edge detector 전파 대기
        end
    endtask
    
    task pulse_clear;
        begin
            @(posedge clk); btn_clear <= 1;
            @(posedge clk); btn_clear <= 0;
            repeat(3) @(posedge clk);
        end
    endtask

    // ========================================
    // 5. 테스트 시나리오
    // ========================================
    initial begin
        clk = 0; reset_p = 1;
        btn_start = 0; btn_clear = 0; ready = 0;
        
        // 리셋 해제
        repeat(20) @(posedge clk);
        reset_p = 0;
        repeat(10) @(posedge clk);

        // =============================================
        // TC1: 리셋 후 초기값 확인
        // =============================================
        $display("\n===== TC1: Reset Initial Values =====");
        check_1bit("run",        run,        0);
        check_1bit("lap_flag",   lap_flag,   0);
        check("min",             min,        0);
        check("sec",             sec,        0);
        check("csec",            csec,       0);
        check("lap_count",       lap_count,  0);
        check("lap_min",         lap_min,    0);
        check("lap_sec",         lap_sec,    0);
        check("lap_csec",        lap_csec,   0);

        // =============================================
        // TC2: Start → 카운터 동작 확인
        // =============================================
        $display("\n===== TC2: Start and Count =====");
        pulse_start;
        check_1bit("run after start", run, 1);
        
        wait_csec(10); // 0.10초 대기
        check("csec after 0.10s",  csec, 10);
        check("sec after 0.10s",   sec,  0);

        // =============================================
        // TC3: Stop → 카운터 정지 확인
        // =============================================
        $display("\n===== TC3: Stop and Freeze =====");
        pulse_start; // stop
        check_1bit("run after stop", run, 0);
        
        wait_csec(5); // 정지 상태에서 50ms 대기
        check("csec frozen", csec, 10); // 값 변화 없어야 함

        // =============================================
        // TC4: Stop 상태에서 Clear
        // =============================================
        $display("\n===== TC4: Clear in Stop =====");
        pulse_clear;
        check("min after clear",       min,       0);
        check("sec after clear",       sec,       0);
        check("csec after clear",      csec,      0);
        check("lap_count after clear", lap_count, 0);

        // =============================================
        // TC5: csec → sec 롤오버 (99 → 0, sec+1)
        // =============================================
        $display("\n===== TC5: csec->sec Rollover =====");
        pulse_start;
        wait_csec(100); // 1.00초
        check("sec after 1.00s",  sec,  1);
        check("csec after 1.00s", csec, 0);
        
        // 정리
        pulse_start; // stop
        pulse_clear;

        // =============================================
        // TC6: sec → min 롤오버 (59초 → 0, min+1)
        //   시뮬레이션 시간이 길어서 카운터를 force로 설정
        // =============================================
        $display("\n===== TC6: sec->min Rollover =====");
        pulse_start;
        // 카운터를 59:99 근처로 강제 설정 (시뮬 시간 단축)
        force DUT.min  = 0;
        force DUT.sec  = 59;
        force DUT.csec = 98;
        repeat(5) @(posedge clk);
        release DUT.min;
        release DUT.sec;
        release DUT.csec;
        
        wait_csec(2); // 2 csec 후 롤오버 발생
        check("min after rollover", min, 1);
        check("sec after rollover", sec, 0);
        check("csec after rollover", csec, 0);
        
        pulse_start;
        pulse_clear;

        // =============================================
        // TC7: 랩 기록 기본 동작
        // =============================================
        $display("\n===== TC7: Lap Record Basic =====");
        pulse_start;               // start (lap_count = 1)
        wait_csec(30);             // 0.30초 경과
        
        pulse_clear;               // lap 기록 → lap_count 증가, 랩 카운터 리셋
        check("lap_count after 1st lap", lap_count, 2);

        wait_csec(20);             // 0.20초 더 경과
        check("lap_csec running",  lap_csec, 20); // 리셋 후 새로 카운트

        pulse_start; // stop
        pulse_clear; // clear

        // =============================================
        // TC8: 랩 갱신 - 두 번째 랩이 느린 경우 (sign_flag=1)
        // =============================================
        $display("\n===== TC8: Lap Diff - Slower Lap =====");
        ready = 1;
        pulse_start;              // start, lap_count=1
        wait_csec(20);            // 1st lap: 0.20초
        pulse_clear;              // lap 기록 (lap_count=2)
        repeat(10) @(posedge clk);
        
        wait_csec(40);            // 2nd lap: 0.40초 (더 느림)
        pulse_clear;              // lap 기록 (lap_count=3)
        repeat(100) @(posedge clk); // diff 계산 대기
        
        check_1bit("sign_flag (slower)", sign_flag, 1);
        check("diff_csec",              diff_csec,  20); // 40-20=20
        
        pulse_start;
        ready = 0;
        pulse_clear;

        // =============================================
        // TC9: 랩 갱신 - 두 번째 랩이 빠른 경우 (sign_flag=0)
        // =============================================
        $display("\n===== TC9: Lap Diff - Faster Lap =====");
        ready = 1;
        pulse_start;
        wait_csec(40);            // 1st lap: 0.40초
        pulse_clear;
        repeat(10) @(posedge clk);
        
        wait_csec(20);            // 2nd lap: 0.20초 (더 빠름)
        pulse_clear;
        repeat(100) @(posedge clk);
        
        check_1bit("sign_flag (faster)", sign_flag, 0);
        check("diff_csec",              diff_csec,  20);
        
        pulse_start;
        ready = 0;
        pulse_clear;

        // =============================================
        // TC10: Running 중 Clear 연타 (코너케이스)
        // =============================================
        $display("\n===== TC10: Rapid Lap Presses =====");
        pulse_start;
        wait_csec(5);
        pulse_clear; // lap 1
        wait_csec(3);
        pulse_clear; // lap 2 (짧은 간격)
        repeat(10) @(posedge clk);
        check("lap_count rapid", lap_count, 3);
        
        pulse_start;
        pulse_clear;

        // =============================================
        // 결과 요약
        // =============================================
        $display("\n========================================");
        $display("       TEST RESULT SUMMARY");
        $display("========================================");
        $display("  Total  : %0d", pass_count + fail_count);
        $display("  PASS   : %0d", pass_count);
        $display("  FAIL   : %0d", fail_count);
        $display("========================================");
        
        if (fail_count == 0)
            $display("  >>> ALL TESTS PASSED <<<\n");
        else
            $display("  >>> %0d TEST(S) FAILED <<<\n", fail_count);
        
        $finish;
    end

    // ========================================
    // 6. 파형 덤프
    // ========================================
    initial begin
        $dumpfile("tb_stop_watch_ip.vcd");
        $dumpvars(0, tb_stop_watch_ip);
    end

    // ========================================
    // 7. 타임아웃 방지
    // ========================================
    initial begin
        #2_000_000_000; // 2s 시뮬레이션 한계
        $display("[TIMEOUT] Simulation time limit exceeded");
        $finish;
    end

endmodule
