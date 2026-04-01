`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/03/2026 03:01:17 PM
// Design Name: 
// Module Name: tick_timebase
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


module tick_timebase(
    input clk, reset_p, en, 
    input [15:0] presc_value,
    output reg [31:0] now_tick
    );
    
    reg [31:0] sys_clk;
    reg ce;
    wire [31:0] presc_count = (presc_value != 16'd0) ? presc_value : 32'd100000; // default : 1ms tick enable
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            ce <= 0; sys_clk <= 0;
        end
        else if(en)begin
            ce <= 0;
            if(sys_clk >= presc_count - 1)begin
                ce <= 1;
                sys_clk <= 0;
            end
            else begin
                sys_clk <= sys_clk + 1;
            end
        end
        else begin
            ce <= 0; sys_clk <= 0;
        end
    end
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p)begin
            now_tick <= 0;
        end
        else if(ce)begin
            now_tick <= now_tick + 1;
        end
    end
endmodule

module tickless_task_scheduler_16 #(
    parameter N = 16
)(
    input  wire        clk,
    input  wire        reset_p,
    input  wire        en,
    input  wire        irq_en,

    input  wire [31:0] now_tick,

    // task enables
    input  wire [N-1:0] task_en,

    // SW가 ready clear (W1C mask)
    input  wire [N-1:0] ready_clear,

    // SW가 "delay 걸기" 요청 (set mask) + 각 task의 block tick 값 제공
    // block_set[i]=1이면 해당 task를 blocked로 만들고 next_release를 block_wake_tick[i]로 설정
    input  wire [N-1:0] block_set,
    input  wire [N*32-1:0] block_wake_tick_flat,  // i*32 +:32 = wake_tick

    // periodic 옵션 (vTaskDelayUntil offload)
    input  wire [N-1:0] periodic_en,
    input  wire [N*32-1:0] period_flat,            // i*32 +:32 = period ticks

    // outputs
    output reg  [N-1:0] ready,
    output reg  [N-1:0] blocked,
    output reg  [3:0]   next_task_id,
    output wire         irq
);

    // ---- unpack helpers ----
    // function name : get32
    // output : 32bit value 1개
    // 기능 : 전체 버스에서 특정 32bit 추출하는 용도
    function [31:0] get32;
        input [N*32-1:0] flat;
        input integer idx;
        begin
            get32 = flat[idx*32 +: 32]; // 선택범위 : [idx*32 + 31 : idx*32]
        end
    endfunction

    // ---- task table: next_release ----
    reg [N*32-1:0] next_release_flat;

    // ---- due condition (wrap 단순 버전: now_tick >= next_release) ----
    // 실무적으로 wrap-safe 비교를 넣을 수도 있지만, 일단 MVP로 단순 비교
    wire [N-1:0] due;

    genvar i;   // generate 전용 index 변수
    generate
        for(i=0;i<N;i=i+1) begin : GEN_DUE  // GEN_DUE : generate block label. ex) GEN_DUE[i].nr_i, GEN_DUE[i].due 와 같이 접근 가능
            wire [31:0] nr_i = next_release_flat[i*32 +: 32];
            assign due[i] = en & task_en[i] & blocked[i] & (now_tick >= nr_i);
        end
    endgenerate

    // ---- IRQ: ready가 하나라도 있으면 ----
    assign irq = irq_en & (|ready);

    // ---- priority encoder: lowest index wins ----
    integer k;
    reg found;
    always @(*) begin
        next_task_id = 4'd0;
        found = 1'b0;
        for(k=0; k<N; k=k+1) begin
            if(!found && ready[k]) begin
                next_task_id = k[3:0];
                found = 1'b1;
            end
        end
    end

    // ===== next-state regs =====
    reg [N-1:0]   ready_n;
    reg [N-1:0]   blocked_n;
    reg [N*32-1:0] nextrel_n;
    
    // 우선순위에 따른 ready, block state 갱신
    // 조합회로로 바로 반영한 값을 순차회로에서 실제 output에 전달
    integer t;
    always @(*) begin
        // default hold
        ready_n   = ready;
        blocked_n = blocked;
        nextrel_n = next_release_flat;

        if(!en) begin
            ready_n   = {N{1'b0}};
            blocked_n = {N{1'b0}};
            // nextrel_n은 유지/클리어 정책 선택 가능. 여기선 유지.
        end
        else begin
            // ------------------------------------------------------------
            // (4순위) ready_clear: ack (가장 낮은 우선순위)
            // ------------------------------------------------------------
            ready_n = ready_n & ~ready_clear;

            // ------------------------------------------------------------
            // (3순위) due: 만기 도달 → unblock + ready set
            //  - blocked 상태에서만 due가 올라오므로 1회성 이벤트가 됨
            // ------------------------------------------------------------
            for(t=0; t<N; t=t+1) begin
                if(due[t]) begin
                    blocked_n[t] = 1'b0;
                    ready_n[t]   = 1'b1;

                    // periodic: vTaskDelayUntil 스타일 (HW가 next_release 자동 재-arm)
                    if(periodic_en[t]) begin
                        nextrel_n[t*32 +: 32] = next_release_flat[t*32 +: 32] + get32(period_flat, t);
                    end
                end
            end

            // ------------------------------------------------------------
            // (2순위) block_set: SW가 delay 요청 → blocked=1, ready=0, next_release 갱신
            //  - due/clear보다 우선 (즉, 지금부터 잠들라고 했는데 즉시 깨우지 않음)
            // ------------------------------------------------------------
            for(t=0; t<N; t=t+1) begin
                if(block_set[t]) begin
                    blocked_n[t] = 1'b1;
                    ready_n[t]   = 1'b0;
                    nextrel_n[t*32 +: 32] = get32(block_wake_tick_flat, t);
                end
            end

            // ------------------------------------------------------------
            // (1순위) task_en: kill/disable 최우선
            //  - 비활성 task는 ready/blocked 강제 0
            // ------------------------------------------------------------
            ready_n   = ready_n   & task_en;
            blocked_n = blocked_n & task_en;
        end
    end

    // ===== sequential update =====
    always @(posedge clk or posedge reset_p) begin
        if(reset_p) begin
            ready <= {N{1'b0}};
            blocked <= {N{1'b0}};
            next_release_flat <= {N*32{1'b0}};
        end
        else begin
            ready <= ready_n;
            blocked <= blocked_n;
            next_release_flat <= nextrel_n;
        end
    end

endmodule
