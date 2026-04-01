`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2026 04:42:19 PM
// Design Name: 
// Module Name: tb_rtos_core
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


module tb_rtos_irq_system;

  // -----------------------
  // Clock / Reset
  // -----------------------
  reg clk = 0;
  always #5 clk = ~clk; // 100MHz

  reg reset_p = 1;

  // -----------------------
  // RTOS tick core controls (AXI 없이 직접 구동)
  // -----------------------
  reg        rtos_en;
  reg        rtos_irq_en;
  reg [31:0] presc_value;     // timebase 설정
  reg [31:0] period_shadow;   // tick_counter period
  reg        clr_cnt_pulse;
  reg        clr_pend_pulse;

  // -----------------------
  // Wires between RTOS blocks
  // -----------------------
  wire CE;
  wire TICK_EVENT;
  wire PEND, MISSED, RTOS_IRQ;
  wire [31:0] COUNT;

  // -----------------------
  // IRQ Controller core I/O
  // -----------------------
  reg  [7:0] irq_in;
  reg  [7:0] irq_en;
  reg  [7:0] irq_clear_pulse;

  wire [7:0] pending_vec;
  wire [2:0] irq_id;
  wire irq_out, valid;

  // -----------------------
  // Instantiate RTOS tick core
  // -----------------------
  tick_timebase u_timebase (
    .clk(clk),
    .reset_p(reset_p),
    .en(rtos_en),
    .presc_value(presc_value),
    .ce(CE)
  );

  tick_counter u_counter (
    .clk(clk),
    .reset_p(reset_p),
    .en(rtos_en),
    .ce(CE),
    .clear(clr_cnt_pulse),
    .period_shadow(period_shadow), // shadow/active 포함 버전 기준
    .tick_event(TICK_EVENT),
    .count(COUNT)
  );

  irq_latch u_irq_latch (
    .clk(clk),
    .reset_p(reset_p),
    .tick_event(TICK_EVENT),
    .irq_en(rtos_irq_en),
    .clr_pend(clr_pend_pulse),
    .pend(PEND),
    .missed(MISSED),
    .irq(RTOS_IRQ)
  );

  // -----------------------
  // IRQ input wiring
  //  - irq_in[0] = RTOS tick IRQ (레벨)
  //  - irq_in[1] = 외부 펄스 이벤트 (펄스)
  // -----------------------
  always @(*) begin
    irq_in[0] = RTOS_IRQ;
    // irq_in[1]은 TB에서 따로 reg로 토글해 주기 위해 아래에서 override
  end

  // irq_in[1]은 별도 reg로 구동(아래 always에서)
  reg ext_pulse;
  always @(*) begin
    irq_in[1] = ext_pulse;
    irq_in[7:2] = 6'b0;
  end

  // -----------------------
  // Instantiate IRQ Controller core
  // -----------------------
  irq_cntr u_irq_cntr (
    .clk(clk),
    .reset_p(reset_p),
    .irq_in(irq_in),
    .en(irq_en),
    .clear(irq_clear_pulse),
    .pending(pending_vec),
    .irq_id(irq_id),
    .irq_out(irq_out),
    .valid(valid)
  );

  // -----------------------
  // "ISR Emulation" in TB
  //  - irq_out 올라오면 id 읽고:
  //    1) 소스 ACK(필요시)
  //    2) INTC clear(id)
  // -----------------------
  task automatic do_isr_once;
    reg [7:0] clear_mask;
    begin
      clear_mask = 8'd0;

      // (1) 소스 ACK
      // id==0: RTOS irq_latch pend를 클리어해야 함 (레벨 소스라서)
      if (irq_id == 3'd0) begin
        clr_pend_pulse <= 1'b1;
      end

      // (2) 컨트롤러 pending clear (W1C 1-cycle)
      clear_mask[irq_id] = 1'b1;
      irq_clear_pulse <= clear_mask;

      @(posedge clk);
      clr_pend_pulse   <= 1'b0;
      irq_clear_pulse  <= 8'd0;
    end
  endtask

  // -----------------------
  // Stimulus
  // -----------------------
  initial begin
    // init
    rtos_en        = 0;
    rtos_irq_en    = 0;
    presc_value    = 32'd9;     // CE 생성 주기(테스트용으로 작게)
    period_shadow  = 32'd5;     // CE 기준 5번마다 tick_event
    clr_cnt_pulse  = 0;
    clr_pend_pulse = 0;

    irq_en         = 8'b0000_0011; // [0]=RTOS, [1]=ext_pulse enable
    irq_clear_pulse= 8'd0;
    ext_pulse      = 0;

    // reset
    reset_p = 1;
    repeat(3) @(posedge clk);
    reset_p = 0;
    repeat(3) @(posedge clk);
    reset_p = 1;
    repeat(3) @(posedge clk);
    reset_p = 0; // active-high reset이라면 여기 반대로. (너 모듈 reset_p가 active-high라면 reset_p=1이 리셋)

    // ---- 주의 ----
    // 너 모듈들은 reset_p가 active-high였지?
    // 그러면 아래처럼 해야 함:
    // reset_p=1(리셋), reset_p=0(해제)
  end

  // 위 initial 블록에서 reset_p polarity가 헷갈릴 수 있으니
  // 여기서 명확히 다시 설정(너 모듈 reset_p는 posedge reset_p 리셋이므로 active-high)
  initial begin
    reset_p = 1'b1;
    rtos_en = 1'b0;
    rtos_irq_en = 1'b0;

    repeat(5) @(posedge clk);
    reset_p = 1'b0;

    // enable start
    @(posedge clk);
    rtos_en     <= 1'b1;
    rtos_irq_en <= 1'b1;

    // ext pulse 하나 발생(펄스 입력 테스트)
    repeat(20) @(posedge clk);
    ext_pulse <= 1'b1;
    @(posedge clk);
    ext_pulse <= 1'b0;

    // 정상 ISR 처리: irq_out 올라오면 처리
    repeat(200) begin
      @(posedge clk);

      if (irq_out) begin
        $display("[%0t] IRQ_OUT=1 id=%0d pending=%b (RTOS pend=%0d missed=%0d count=%0d)",
                 $time, irq_id, pending_vec, PEND, MISSED, COUNT);
        do_isr_once();
      end
    end

    // 일부러 ACK 늦춰서 MISSED 유도
    $display("---- Now delay ISR to force MISSED ----");
    repeat(200) begin
      @(posedge clk);

      // irq_out가 떠도 일부러 무시(몇 번)
      if (irq_out) begin
        $display("[%0t] (NO ACK) IRQ_OUT=1 id=%0d pending=%b RTOS(PEND=%0d MISSED=%0d)",
                 $time, irq_id, pending_vec, PEND, MISSED);
      end
    end

    // 이제 한 번에 처리
    if (irq_out) begin
      $display("[%0t] Now ACK after delay: id=%0d", $time, irq_id);
      do_isr_once();
    end

    repeat(50) @(posedge clk);
    $finish;
  end

endmodule
