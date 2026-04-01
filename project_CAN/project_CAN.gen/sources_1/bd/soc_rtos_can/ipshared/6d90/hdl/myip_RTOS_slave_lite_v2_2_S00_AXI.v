
`timescale 1 ns / 1 ps

	`timescale 1 ns / 1 ps

module myip_RTOS_slave_lite_v2_2_S00_AXI #
(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 8
)
(
    input wire  S_AXI_ACLK,
    input wire  S_AXI_ARESETN,

    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    input wire [2 : 0] S_AXI_AWPROT,
    input wire  S_AXI_AWVALID,
    output wire  S_AXI_AWREADY,

    input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    input wire  S_AXI_WVALID,
    output wire  S_AXI_WREADY,

    output wire [1 : 0] S_AXI_BRESP,
    output wire  S_AXI_BVALID,
    input wire  S_AXI_BREADY,

    input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    input wire [2 : 0] S_AXI_ARPROT,
    input wire  S_AXI_ARVALID,
    output wire  S_AXI_ARREADY,

    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    output wire [1 : 0] S_AXI_RRESP,
    output wire  S_AXI_RVALID,
    input wire  S_AXI_RREADY,

    output wire irq_out
);

    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1; // 32-bit -> 2
    localparam integer OPT_MEM_ADDR_BITS = 5;                  // 64 regs

    // ------------------------------------------------------------
    // AXI-Lite internal signals
    // ------------------------------------------------------------
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_awaddr;
    reg axi_awready;
    reg axi_wready;
    reg [1 : 0] axi_bresp;
    reg axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_araddr;
    reg axi_arready;
    reg [1 : 0] axi_rresp;
    reg axi_rvalid;

    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

    // ------------------------------------------------------------
    // AXI-Lite slave registers (64 slots)
    // ------------------------------------------------------------
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg [0:63];
    integer byte_index;
    integer reg_index;

    // ------------------------------------------------------------
    // AXI state machine
    // ------------------------------------------------------------
    reg [1:0] state_write;
    reg [1:0] state_read;
    localparam Idle  = 2'b00,
               Raddr = 2'b10,
               Rdata = 2'b11,
               Waddr = 2'b10,
               Wdata = 2'b11;

    // ------------------------------------------------------------
    // Write state machine
    // ------------------------------------------------------------
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            axi_awready <= 1'b0;
            axi_wready  <= 1'b0;
            axi_bvalid  <= 1'b0;
            axi_bresp   <= 2'b00;
            axi_awaddr  <= {C_S_AXI_ADDR_WIDTH{1'b0}};
            state_write <= Idle;
        end
        else begin
            case(state_write)
                Idle: begin
                    axi_awready <= 1'b1;
                    axi_wready  <= 1'b1;
                    state_write <= Waddr;
                end

                Waddr: begin
                    if (S_AXI_AWVALID && S_AXI_AWREADY) begin
                        axi_awaddr <= S_AXI_AWADDR;
                        if (S_AXI_WVALID) begin
                            axi_bvalid <= 1'b1;
                            axi_awready <= 1'b1;
                            state_write <= Waddr;
                        end
                        else begin
                            axi_awready <= 1'b0;
                            state_write <= Wdata;
                        end
                    end
                    if (S_AXI_BREADY && axi_bvalid)
                        axi_bvalid <= 1'b0;
                end

                Wdata: begin
                    if (S_AXI_WVALID) begin
                        axi_bvalid  <= 1'b1;
                        axi_awready <= 1'b1;
                        state_write <= Waddr;
                    end
                    if (S_AXI_BREADY && axi_bvalid)
                        axi_bvalid <= 1'b0;
                end
            endcase
        end
    end

    // ------------------------------------------------------------
    // Read state machine
    // ------------------------------------------------------------
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            axi_arready <= 1'b0;
            axi_rvalid  <= 1'b0;
            axi_rresp   <= 2'b00;
            axi_araddr  <= {C_S_AXI_ADDR_WIDTH{1'b0}};
            state_read  <= Idle;
        end
        else begin
            case(state_read)
                Idle: begin
                    axi_arready <= 1'b1;
                    state_read  <= Raddr;
                end

                Raddr: begin
                    if (S_AXI_ARVALID && S_AXI_ARREADY) begin
                        axi_araddr  <= S_AXI_ARADDR;
                        axi_rvalid  <= 1'b1;
                        axi_arready <= 1'b0;
                        state_read  <= Rdata;
                    end
                end

                Rdata: begin
                    if (S_AXI_RVALID && S_AXI_RREADY) begin
                        axi_rvalid  <= 1'b0;
                        axi_arready <= 1'b1;
                        state_read  <= Raddr;
                    end
                end
            endcase
        end
    end

    // ------------------------------------------------------------
    // Register index decode
    // ------------------------------------------------------------
    wire [5:0] wr_addr_idx = (S_AXI_AWVALID) ?
        S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] :
        axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

    wire [5:0] rd_addr_idx = axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB];

    // ------------------------------------------------------------
    // User control wires
    // ------------------------------------------------------------
    wire        sched_en      = slv_reg[0][0];
    wire        sched_irq_en  = slv_reg[0][1];
    wire [15:0] presc_value   = slv_reg[2][15:0];
    wire [15:0] ready_clear_w = slv_reg[7][15:0];
    wire [15:0] task_en       = slv_reg[8][15:0];
    wire [15:0] periodic_en   = slv_reg[9][15:0];

    // ------------------------------------------------------------
    // Pulse regs
    // ------------------------------------------------------------
    reg [15:0] ready_clear_pulse;
    reg [15:0] block_set_pulse;

    // ------------------------------------------------------------
    // task table flatten
    // ------------------------------------------------------------
    wire [16*32-1:0] next_release_flat;
    wire [16*32-1:0] period_flat;
    wire [16*32-1:0] block_wake_tick_flat;

    genvar i;
    generate
        for(i=0;i<16;i=i+1) begin : GEN_TASK_REGS
            assign next_release_flat[i*32 +: 32]    = slv_reg[16 + i*3];
            assign period_flat[i*32 +: 32]          = slv_reg[17 + i*3];
            assign block_wake_tick_flat[i*32 +: 32] = slv_reg[18 + i*3];
        end
    endgenerate

    // ------------------------------------------------------------
    // Scheduler outputs
    // ------------------------------------------------------------
    wire [31:0] now_tick;
    wire [15:0] ready_out;
    wire [15:0] blocked_out;
    wire [3:0]  next_task_id_w;
    wire        irq_w;

    assign irq_out = irq_w;

    // ------------------------------------------------------------
    // Timebase
    // ------------------------------------------------------------
    tick_timebase u_timebase (
        .clk        (S_AXI_ACLK),
        .reset_p    (~S_AXI_ARESETN),
        .en         (sched_en),
        .presc_value(presc_value),
        .now_tick   (now_tick)
    );

    // ------------------------------------------------------------
    // Scheduler
    // ------------------------------------------------------------
    tickless_task_scheduler_16 u_sched (
        .clk                (S_AXI_ACLK),
        .reset_p            (~S_AXI_ARESETN),
        .en                 (sched_en),
        .irq_en             (sched_irq_en),
        .now_tick           (now_tick),
        .task_en            (task_en),
        .ready_clear        (ready_clear_pulse),
        .block_set          (block_set_pulse),
        .block_wake_tick_flat(block_wake_tick_flat),
        .periodic_en        (periodic_en),
        .period_flat        (period_flat),
        .ready              (ready_out),
        .blocked            (blocked_out),
        .next_task_id       (next_task_id_w),
        .irq                (irq_w)
    );

    // ------------------------------------------------------------
    // Write logic
    // ------------------------------------------------------------
    always @(posedge S_AXI_ACLK) begin
        if (!S_AXI_ARESETN) begin
            for (reg_index = 0; reg_index < 64; reg_index = reg_index + 1)
                slv_reg[reg_index] <= 32'd0;

            ready_clear_pulse <= 16'd0;
            block_set_pulse   <= 16'd0;
        end
        else begin
            // default pulse clear
            ready_clear_pulse <= 16'd0;
            block_set_pulse   <= 16'd0;

            // read-only regs 갱신
            slv_reg[1][0]      <= irq_w;
            slv_reg[1][1]      <= |ready_out;
            slv_reg[3]         <= now_tick;
            slv_reg[4][15:0]   <= ready_out;
            slv_reg[5][15:0]   <= blocked_out;
            slv_reg[6][3:0]    <= next_task_id_w;

            if (S_AXI_WVALID) begin
                case (wr_addr_idx)
                    6'd0, 6'd2, 6'd8, 6'd9: begin
                        // CTRL, PRESC, TASK_EN, PERIODIC_EN writable
                        for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                            if (S_AXI_WSTRB[byte_index])
                                slv_reg[wr_addr_idx][byte_index*8 +: 8] <= S_AXI_WDATA[byte_index*8 +: 8];
                    end

                    6'd7: begin
                        // READY_CLEAR : W1P pulse only
                        ready_clear_pulse <= S_AXI_WDATA[15:0];
                    end

                    default: begin
                        // task table direct mapping
                        if (wr_addr_idx >= 6'd16 && wr_addr_idx <= 6'd63) begin
                            for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                                if (S_AXI_WSTRB[byte_index])
                                    slv_reg[wr_addr_idx][byte_index*8 +: 8] <= S_AXI_WDATA[byte_index*8 +: 8];

                            // WAKE_TICK[i] = reg index 18 + i*3 에 write 시 block_set pulse 발생
                            if (((wr_addr_idx - 6'd16) % 3) == 2) begin
                                block_set_pulse[(wr_addr_idx - 6'd18)/3] <= 1'b1;
                            end
                        end
                    end
                endcase
            end
        end
    end

    // ------------------------------------------------------------
    // Read mux
    // ------------------------------------------------------------
    assign S_AXI_RDATA =
        (rd_addr_idx <= 6'd63) ? slv_reg[rd_addr_idx] : 32'd0;

endmodule
