`timescale 1ns/1ps

module tb_axi_rtos_irqc_system;

  // ------------------------------------------------------------
  // Clock / Reset
  // ------------------------------------------------------------
  reg clk = 0;
  always #5 clk = ~clk; // 100MHz

  reg resetn = 0; // AXI reset: active-low

  // ------------------------------------------------------------
  // RTOS AXI signals (separate AXI master ports for simplicity)
  // ------------------------------------------------------------
  reg  [3:0]  r_awaddr;
  reg         r_awvalid;
  wire        r_awready;
  reg  [31:0] r_wdata;
  reg  [3:0]  r_wstrb;
  reg         r_wvalid;
  wire        r_wready;
  wire [1:0]  r_bresp;
  wire        r_bvalid;
  reg         r_bready;
  reg  [3:0]  r_araddr;
  reg         r_arvalid;
  wire        r_arready;
  wire [31:0] r_rdata;
  wire [1:0]  r_rresp;
  wire        r_rvalid;
  reg         r_rready;

  // ------------------------------------------------------------
  // IRQC AXI signals
  // ------------------------------------------------------------
  reg  [3:0]  i_awaddr;
  reg         i_awvalid;
  wire        i_awready;
  reg  [31:0] i_wdata;
  reg  [3:0]  i_wstrb;
  reg         i_wvalid;
  wire        i_wready;
  wire [1:0]  i_bresp;
  wire        i_bvalid;
  reg         i_bready;
  reg  [3:0]  i_araddr;
  reg         i_arvalid;
  wire        i_arready;
  wire [31:0] i_rdata;
  wire [1:0]  i_rresp;
  wire        i_rvalid;
  reg         i_rready;

  // ------------------------------------------------------------
  // IRQ wiring: RTOS irq_out -> IRQC irq_in[0]
  // ------------------------------------------------------------
  wire rtos_irq_out;
  reg  [7:0] irqc_irq_in;
  wire irqc_irq_out;

  always @(*) begin
    irqc_irq_in = 8'd0;
    irqc_irq_in[0] = rtos_irq_out;
  end

  // ------------------------------------------------------------
  // DUTs
  // ------------------------------------------------------------
  myip_RTOS_slave_lite_v1_0_S00_AXI u_rtos (
    .irq_out       (rtos_irq_out),

    .S_AXI_ACLK    (clk),
    .S_AXI_ARESETN (resetn),

    .S_AXI_AWADDR  (r_awaddr),
    .S_AXI_AWVALID (r_awvalid),
    .S_AXI_AWREADY (r_awready),

    .S_AXI_WDATA   (r_wdata),
    .S_AXI_WSTRB   (r_wstrb),
    .S_AXI_WVALID  (r_wvalid),
    .S_AXI_WREADY  (r_wready),

    .S_AXI_BRESP   (r_bresp),
    .S_AXI_BVALID  (r_bvalid),
    .S_AXI_BREADY  (r_bready),

    .S_AXI_ARADDR  (r_araddr),
    .S_AXI_ARVALID (r_arvalid),
    .S_AXI_ARREADY (r_arready),

    .S_AXI_RDATA   (r_rdata),
    .S_AXI_RRESP   (r_rresp),
    .S_AXI_RVALID  (r_rvalid),
    .S_AXI_RREADY  (r_rready)
  );

  myip_irq_cntr_slave_lite_v1_0_S00_AXI u_irqc (
    .irq_in        (irqc_irq_in),
    .irq_out       (irqc_irq_out),

    .S_AXI_ACLK    (clk),
    .S_AXI_ARESETN (resetn),

    .S_AXI_AWADDR  (i_awaddr),
    .S_AXI_AWVALID (i_awvalid),
    .S_AXI_AWREADY (i_awready),

    .S_AXI_WDATA   (i_wdata),
    .S_AXI_WSTRB   (i_wstrb),
    .S_AXI_WVALID  (i_wvalid),
    .S_AXI_WREADY  (i_wready),

    .S_AXI_BRESP   (i_bresp),
    .S_AXI_BVALID  (i_bvalid),
    .S_AXI_BREADY  (i_bready),

    .S_AXI_ARADDR  (i_araddr),
    .S_AXI_ARVALID (i_arvalid),
    .S_AXI_ARREADY (i_arready),

    .S_AXI_RDATA   (i_rdata),
    .S_AXI_RRESP   (i_rresp),
    .S_AXI_RVALID  (i_rvalid),
    .S_AXI_RREADY  (i_rready)
  );

  // ------------------------------------------------------------
  // Wave dump
  // ------------------------------------------------------------
  initial begin
    $dumpfile("tb_axi_rtos_irqc_system.vcd");
    $dumpvars(0, tb_axi_rtos_irqc_system);
  end

  // ------------------------------------------------------------
  // AXI BFM tasks (Write/Read) - RTOS
  // ------------------------------------------------------------
  task automatic rtos_write(input [3:0] addr, input [31:0] data);
  begin
    @(posedge clk);
    r_awaddr  <= addr;
    r_awvalid <= 1'b1;
    r_wdata   <= data;
    r_wstrb   <= 4'hF;
    r_wvalid  <= 1'b1;
    r_bready  <= 1'b1;

    wait (r_awready && r_wready);
    @(posedge clk);
    r_awvalid <= 1'b0;
    r_wvalid  <= 1'b0;

    wait (r_bvalid);
    @(posedge clk);
    r_bready <= 1'b0;
  end
  endtask

  task automatic rtos_read(input [3:0] addr, output [31:0] data);
  begin
    @(posedge clk);
    r_araddr  <= addr;
    r_arvalid <= 1'b1;
    r_rready  <= 1'b1;

    wait (r_arready);
    @(posedge clk);
    r_arvalid <= 1'b0;

    wait (r_rvalid);
    data = r_rdata;
    @(posedge clk);
    r_rready <= 1'b0;
  end
  endtask

  // ------------------------------------------------------------
  // AXI BFM tasks (Write/Read) - IRQC
  // ------------------------------------------------------------
  task automatic irqc_write(input [3:0] addr, input [31:0] data);
  begin
    @(posedge clk);
    i_awaddr  <= addr;
    i_awvalid <= 1'b1;
    i_wdata   <= data;
    i_wstrb   <= 4'hF;
    i_wvalid  <= 1'b1;
    i_bready  <= 1'b1;

    wait (i_awready && i_wready);
    @(posedge clk);
    i_awvalid <= 1'b0;
    i_wvalid  <= 1'b0;

    wait (i_bvalid);
    @(posedge clk);
    i_bready <= 1'b0;
  end
  endtask

  task automatic irqc_read(input [3:0] addr, output [31:0] data);
  begin
    @(posedge clk);
    i_araddr  <= addr;
    i_arvalid <= 1'b1;
    i_rready  <= 1'b1;

    wait (i_arready);
    @(posedge clk);
    i_arvalid <= 1'b0;

    wait (i_rvalid);
    data = i_rdata;
    @(posedge clk);
    i_rready <= 1'b0;
  end
  endtask

  // ------------------------------------------------------------
  // RTOS CTRL helper: slv_reg0 유지하면서 W1P bit만 pulse
  // slv_reg0 = {12'b0, [15:0] presc, clr_pend, clr_cnt, irq_en, en}
  // bits: [0]=en, [1]=irq_en, [2]=clr_cnt(W1P), [3]=clr_pend(W1P), [19:4]=presc
  // ------------------------------------------------------------
  reg [31:0] rtos_ctrl_shadow;

  task automatic rtos_set_ctrl_base(input en, input irq_en, input [15:0] presc);
  begin
    rtos_ctrl_shadow = 32'd0;
    rtos_ctrl_shadow[0] = en;
    rtos_ctrl_shadow[1] = irq_en;
    rtos_ctrl_shadow[19:4] = presc;
    rtos_write(4'h0, rtos_ctrl_shadow);
  end
  endtask

  task automatic rtos_pulse_clr_cnt;
  begin
    rtos_write(4'h0, rtos_ctrl_shadow | 32'h0000_0004); // bit2=1 for 1 write
    // 다음 write에서 bit2를 0으로 "복귀"시키는 건 HW에서 pulse 생성하니 필수는 아니지만
    // shadow 유지 차원에서 다시 base write 한 번 해도 됨(선택)
  end
  endtask

  task automatic rtos_pulse_clr_pend;
  begin
    rtos_write(4'h0, rtos_ctrl_shadow | 32'h0000_0008); // bit3=1 for 1 write
  end
  endtask

  // ------------------------------------------------------------
  // Test scenario:
  // 1) RTOS 설정: presc / period / enable
  // 2) IRQC enable bit0
  // 3) Poll IRQC STATUS until VALID
  // 4) ISR emu: (source ACK=RTOS clr_pend) -> (IRQC clear bit0)
  // ------------------------------------------------------------
  reg [31:0] rd_rtos, rd_irqc;
  integer k;

  initial begin
    // init all AXI signals
    r_awaddr=0; r_awvalid=0; r_wdata=0; r_wstrb=0; r_wvalid=0; r_bready=0;
    r_araddr=0; r_arvalid=0; r_rready=0;

    i_awaddr=0; i_awvalid=0; i_wdata=0; i_wstrb=0; i_wvalid=0; i_bready=0;
    i_araddr=0; i_arvalid=0; i_rready=0;

    // reset
    resetn = 1'b0;
    repeat(10) @(posedge clk);
    resetn = 1'b1;

    // --------------------------
    // RTOS init
    // --------------------------
    // PERIOD (slv_reg1 @0x04): tick_counter period_shadow
    rtos_write(4'h4, 32'd5);

    // CTRL (slv_reg0 @0x00): enable=1, irq_en=1, presc=9 (테스트용)
    rtos_set_ctrl_base(1'b1, 1'b1, 16'd9);

    // (선택) 카운터 초기화 pulse
    rtos_pulse_clr_cnt();
    rtos_pulse_clr_pend();

    // --------------------------
    // IRQC init
    // --------------------------
    // ENABLE @0x00 : bit0 enable
    irqc_write(4'h0, 32'h0000_0001);

    // --------------------------
    // Main loop: poll + service
    // --------------------------
    for (k = 0; k < 200; k = k + 1) begin
      @(posedge clk);

      // IRQC STATUS @0x0C : [0]=VALID, [2:0]=IRQ_ID  (네 래퍼에 맞춰)
      irqc_read(4'hC, rd_irqc);

      if (rd_irqc[31]) begin
        $display("[%0t] IRQC VALID=1 ID=%0d irqc_irq_out=%0d rtos_irq_out=%0d",
                 $time, rd_irqc[2:0], irqc_irq_out, rtos_irq_out);

        // 소스 ACK: RTOS clr_pend (W1P)
        rtos_pulse_clr_pend();

        // EOI: IRQC clear bit0 (W1C @0x08)
        irqc_write(4'h8, 32'h0000_0001);

        // 디버그로 pending 읽어보기(RO @0x04)
        irqc_read(4'h4, rd_irqc);
        $display("[%0t] IRQC PENDING=%b", $time, rd_irqc[7:0]);

        // RTOS STATUS 읽어보기(RO @0x08)
        rtos_read(4'h8, rd_rtos);
        $display("[%0t] RTOS STATUS=%h", $time, rd_rtos);
      end
    end

    $display("DONE");
    $finish;
  end

endmodule
