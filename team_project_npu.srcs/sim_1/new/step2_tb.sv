`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/13/2026 03:09:49 PM
// Design Name: 
// Module Name: step2_tb
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


module step2b_tb;

    reg         clk = 0;
    reg         rst_n = 0;

    // 이미지 로딩용
    reg         wr_en = 0;
    reg  [14:0] wr_addr = 0;
    reg  [7:0]  wr_data = 0;

    // patch_reader 제어
    reg         patch_start = 0;
    reg  [6:0]  target_row = 0;
    reg  [6:0]  target_col = 0;
    reg  [14:0] ch_offset = 0;

    wire [14:0] rd_addr;
    wire [7:0]  rd_data;
    wire [7:0]  patch_out [0:2][0:2];
    wire        patch_valid;

    // ──── BRAM ────
    fmap_bram #(.DEPTH(32768), .ADDR_W(15)) u_fmap (
        .clk    (clk),
        .we   (wr_en),
        .addr_a (wr_addr),
        .din  (wr_data),
        .addr_b (rd_addr),
        .dout (rd_data)
    );

    // ──── Patch Reader ────
    patch_reader u_patch (
        .clk        (clk),
        .rst_n      (rst_n),
        .start      (patch_start),
        .width_cfg      (7'd64),
        .height_cfg      (7'd64),
        .ch_offset  (ch_offset),
        .target_row (target_row),
        .target_col (target_col),
        .bram_addr  (rd_addr),
        .bram_data  (rd_data),
        .patch      (patch_out),
        .patch_valid(patch_valid)
    );

    always #5 clk = ~clk;

    integer i;

    // 패치 출력 태스크
    task display_patch;
        input integer test_num;
        input integer row;
        input integer col;
        begin
            $display("--- Test %0d: row=%0d, col=%0d ---", test_num, row, col);
            $display("  [%3d %3d %3d]", patch_out[0][0], patch_out[0][1], patch_out[0][2]);
            $display("  [%3d %3d %3d]", patch_out[1][0], patch_out[1][1], patch_out[1][2]);
            $display("  [%3d %3d %3d]", patch_out[2][0], patch_out[2][1], patch_out[2][2]);
        end
    endtask

    // 패치 요청 태스크
    task request_patch;
        input [6:0] row;
        input [6:0] col;
        input [14:0] ch_off;
        begin
            @(posedge clk);
            target_row  = row;
            target_col  = col;
            ch_offset   = ch_off;
            patch_start = 1;
            @(posedge clk);
            patch_start = 0;
            // patch_valid 대기
            wait (patch_valid == 1);
            @(posedge clk);
        end
    endtask

    initial begin
        // 리셋
        rst_n = 0;
        #20;
        rst_n = 1;
        #10;

        // ──── 이미지 로딩: 값 = (row*64 + col) % 256 ────
        $display("=== Loading Image ===");
        for (i = 0; i < 4096; i = i + 1) begin
            @(posedge clk);
            wr_en   = 1;
            wr_addr = i;
            wr_data = i[7:0];
        end
        @(posedge clk);
        wr_en = 0;
        #20;

        // ──── 테스트 1: 좌상단 (0,0) - 패딩 확인 ────
        $display("\n=== Patch Tests ===");
        request_patch(7'd0, 7'd0, 15'd0);
        display_patch(1, 0, 0);
        // 기대: [0,0,0], [0,0,1], [0,64,65]

        // ──── 테스트 2: (0,1) ────
        request_patch(7'd0, 7'd1, 15'd0);
        display_patch(2, 0, 1);
        // 기대: [0,0,0], [0,1,2], [64,65,66]

        // ──── 테스트 3: 중앙 (2,3) - 패딩 없음 ────
        request_patch(7'd2, 7'd3, 15'd0);
        display_patch(3, 2, 3);
        // row=1,col=2: 1*64+2=66
        // 기대: [66,67,68], [130,131,132], [194,195,196]

        // ──── 테스트 4: 우하단 (63,63) - 패딩 확인 ────
        request_patch(7'd63, 7'd63, 15'd0);
        display_patch(4, 63, 63);
        // 기대: [row62*64+62, row62*64+63, 0], [row63*64+62, row63*64+63, 0], [0,0,0]

        // ──── 테스트 5: 같은 위치 다른 채널 (ch_offset=4096) ────
        // 채널1은 주소 4096~8191에 저장되어 있다고 가정
        // 미리 채널1 데이터 로딩
        for (i = 0; i < 4096; i = i + 1) begin
            @(posedge clk);
            wr_en   = 1;
            wr_addr = 15'd4096 + i;
            wr_data = (i[7:0] + 8'd100);  // 채널1은 +100 오프셋
        end
        @(posedge clk);
        wr_en = 0;
        #20;

        request_patch(7'd0, 7'd0, 15'd4096);
        display_patch(5, 0, 0);
        // 기대: [0,0,0], [0,100,101], [0,164,165]

        // ──── 테스트 6: 같은 위치 반복 요청 (재현성 확인) ────
        request_patch(7'd2, 7'd3, 15'd0);
        display_patch(6, 2, 3);
        // 테스트3과 동일해야 함

        $display("\n=== Step 2b Test Complete ===");
        $finish;
    end

endmodule
