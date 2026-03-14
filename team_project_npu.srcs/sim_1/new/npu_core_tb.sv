`timescale 1ns / 1ps

module npu_core_tb;

    reg        clk, rst_n;
    reg        start_load, start_conv;
    reg        img_valid;
    reg [7:0]  img_pixel;
    reg [14:0] debug_addr;
    wire [7:0] debug_data;
    wire       all_done, busy;
    wire [7:0] result_cho, result_jung, result_jong;

    // AXI Stream 신호
    reg        s_axis_tvalid;
    wire       s_axis_tready;
    reg [7:0]  s_axis_tdata;
    reg        s_axis_tlast;

    // 클럭 생성
    initial clk = 0;
    always #5 clk = ~clk;

    // DUT
    npu_core #(
        .C1_OUT(9'd4), .C2_OUT(9'd4), .C3_OUT(9'd4), .C4_OUT(9'd4),
        .C5_OUT(9'd4), .FC1_OUT(9'd4), .FC2_OUT(9'd4),
        .HD_CHO(9'd4), .HD_JUNG(9'd4), .HD_JONG(9'd4),
        .LAST_LAYER(4'd12)
    ) uut (
        .clk(clk), .rst_n(rst_n),
        .start_load(start_load),
        .img_valid(img_valid), .img_pixel(img_pixel),
        .start_conv(start_conv),
        .debug_addr(debug_addr), .debug_data(debug_data),
        .all_done(all_done), .busy(busy),
        .result_cho(result_cho),
        .result_jung(result_jung),
        .result_jong(result_jong),
        .s_axis_tvalid(s_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast)
    );

    // ════════════════════════════════════════
    //  가중치 메모리 (ddr_weight_sim 대체)
    // ════════════════════════════════════════
    reg [7:0] ddr_mem [0:1048575];
    initial $readmemh("all_weights_ddr.hex", ddr_mem);

    // ════════════════════════════════════════
    //  레이어별 가중치 크기 계산 태스크
    // ════════════════════════════════════════
    // 파라미터 (DUT와 동일)
    localparam C1 = 4, C2 = 4, C3 = 4, C4 = 4, C5 = 4;
    localparam FC1 = 4, FC2 = 4;
    localparam HD_C = 4, HD_JU = 4, HD_JO = 4;

    // 레이어별 파라미터: {c_in, c_out, is_conv}
    // Conv: weight_per_ch = c_in * 9, FC: weight_per_ch = c_in
    // 각 채널: weight_per_ch bytes + 1 bias byte
    // 총 바이트: c_out * (weight_per_ch + 1)

    integer layer_c_in  [0:9];
    integer layer_c_out [0:9];
    integer layer_is_conv [0:9];
    integer layer_ddr_offset [0:9];

    initial begin
        // Conv1: 1→4
        layer_c_in[0] = 1;   layer_c_out[0] = C1; layer_is_conv[0] = 1;
        // Conv2: 4→4
        layer_c_in[1] = C1;  layer_c_out[1] = C2; layer_is_conv[1] = 1;
        // Conv3: 4→4
        layer_c_in[2] = C2;  layer_c_out[2] = C3; layer_is_conv[2] = 1;
        // Conv4: 4→4
        layer_c_in[3] = C3;  layer_c_out[3] = C4; layer_is_conv[3] = 1;
        // Conv5: 4→4
        layer_c_in[4] = C4;  layer_c_out[4] = C5; layer_is_conv[4] = 1;
        // FC_shared: 4*4=16 → 4
        layer_c_in[5] = C5*4; layer_c_out[5] = FC1; layer_is_conv[5] = 0;
        // FC_jong: 4→4
        layer_c_in[6] = FC1; layer_c_out[6] = FC2; layer_is_conv[6] = 0;
        // head_cho: 4→4
        layer_c_in[7] = FC1; layer_c_out[7] = HD_C; layer_is_conv[7] = 0;
        // head_jung: 4→4
        layer_c_in[8] = FC1; layer_c_out[8] = HD_JU; layer_is_conv[8] = 0;
        // head_jong: 4→4
        layer_c_in[9] = FC2; layer_c_out[9] = HD_JO; layer_is_conv[9] = 0;

        // DDR offset 계산
        layer_ddr_offset[0] = 0;
        begin : calc_offsets
            integer i, w_per_ch, total;
            for (i = 0; i < 9; i = i + 1) begin
                w_per_ch = layer_is_conv[i] ? layer_c_in[i] * 9 : layer_c_in[i];
                total = layer_c_out[i] * (w_per_ch + 1);
                layer_ddr_offset[i+1] = layer_ddr_offset[i] + total;
            end
        end
    end

    // ════════════════════════════════════════
    //  Stream 공급 태스크
    // ════════════════════════════════════════
    task send_layer_weights;
        input integer layer_id;  // 0~9 (Conv1~head_jong)
        integer w_per_ch, total_per_ch, co, b, addr;
    begin
        w_per_ch = layer_is_conv[layer_id] ? layer_c_in[layer_id] * 9 : layer_c_in[layer_id];
        total_per_ch = w_per_ch + 1;  // weight + bias

        for (co = 0; co < layer_c_out[layer_id]; co = co + 1) begin
            // 각 출력 채널: tready가 올라올 때까지 대기
            wait (s_axis_tready == 1'b1);

            addr = layer_ddr_offset[layer_id] + co * total_per_ch;

            for (b = 0; b < total_per_ch; b = b + 1) begin
                @(posedge clk);
                s_axis_tvalid <= 1'b1;
                s_axis_tdata  <= ddr_mem[addr + b];
                s_axis_tlast  <= (b == total_per_ch - 1) ? 1'b1 : 1'b0;

                // tready 핸드셰이크 대기
                while (!s_axis_tready) begin
                    @(posedge clk);
                end
            end

            @(posedge clk);
            s_axis_tvalid <= 1'b0;
            s_axis_tdata  <= 8'd0;
            s_axis_tlast  <= 1'b0;

            // 연산 완료 대기 (tready가 다시 올라오거나 레이어 끝)
            if (co < layer_c_out[layer_id] - 1) begin
                wait (s_axis_tready == 1'b1 || uut.state == 3'd2); // S_LAYER_SETUP
            end
        end

        $display("[TB] Layer %0d weights sent (%0d channels)", layer_id, layer_c_out[layer_id]);
    end
    endtask

    // ════════════════════════════════════════
    //  레이어 전환 모니터
    // ════════════════════════════════════════
    reg [3:0] prev_layer_idx;
    always @(posedge clk) begin
        prev_layer_idx <= uut.layer_idx;
        if (uut.layer_idx != prev_layer_idx) begin
            case (uut.layer_idx)
                4'd0:  $display("──── Conv1 Start ────");
                4'd1:  $display("──── Conv2 Start ────");
                4'd2:  $display("──── Conv3 Start ────");
                4'd3:  $display("──── Conv4 Start ────");
                4'd4:  $display("──── Conv5 Start ────");
                4'd5:  $display("──── FC_shared Start ────");
                4'd6:  $display("──── FC_jong Start ────");
                4'd7:  $display("──── head_cho Start ────");
                4'd8:  $display("──── Argmax_cho Start ────");
                4'd9:  $display("──── head_jung Start ────");
                4'd10: $display("──── Argmax_jung Start ────");
                4'd11: $display("──── head_jong Start ────");
                4'd12: $display("──── Argmax_jong Start ────");
            endcase
        end
    end

    // ════════════════════════════════════════
    //  메인 테스트 시퀀스
    // ════════════════════════════════════════
    integer i;
    initial begin
        // 초기화
        rst_n = 0; start_load = 0; start_conv = 0;
        img_valid = 0; img_pixel = 0;
        debug_addr = 0;
        s_axis_tvalid = 0; s_axis_tdata = 0; s_axis_tlast = 0;

        repeat(10) @(posedge clk);
        rst_n = 1;
        repeat(5) @(posedge clk);

        // 1. 이미지 로드
        $display("=== Image Load Start ===");
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

        repeat(5) @(posedge clk);

        // 2. 추론 시작
        $display("=== Inference Start ===");
        @(posedge clk);
        start_conv = 1;
        @(posedge clk);
        start_conv = 0;
    end

    // ════════════════════════════════════════
    //  가중치 Stream 공급 (별도 initial)
    // ════════════════════════════════════════
    initial begin
        // 추론 시작 대기
        wait (uut.state == 3'd3);  // S_DDR_LOAD 진입 대기

        // Conv1 ~ Conv5
        send_layer_weights(0);
        send_layer_weights(1);
        send_layer_weights(2);
        send_layer_weights(3);
        send_layer_weights(4);

        // FC_shared, FC_jong
        send_layer_weights(5);
        send_layer_weights(6);

        // head_cho, head_jung, head_jong
        // (Argmax 레이어는 가중치 불필요, 자동 스킵)
        send_layer_weights(7);
        // Argmax_cho 후 head_jung 시작 대기
        wait (uut.layer_idx == 4'd9 && uut.state == 3'd3);
        send_layer_weights(8);
        // Argmax_jung 후 head_jong 시작 대기
        wait (uut.layer_idx == 4'd11 && uut.state == 3'd3);
        send_layer_weights(9);

        $display("[TB] All weights sent");
    end

    // ════════════════════════════════════════
    //  결과 확인 및 종료
    // ════════════════════════════════════════
    initial begin
        wait (all_done == 1'b1);
        repeat(10) @(posedge clk);

        $display("════════════════════════════════");
        $display("  Predicted cho  = %0d", result_cho);
        $display("  Predicted jung = %0d", result_jung);
        $display("  Predicted jong = %0d", result_jong);
        $display("════════════════════════════════");
        $display("=== Step 12-Stream Test Complete ===");
        $finish;
    end

    // 타임아웃
    initial begin
        #2_000_000_000;
        $display("TIMEOUT!");
        $finish;
    end

endmodule