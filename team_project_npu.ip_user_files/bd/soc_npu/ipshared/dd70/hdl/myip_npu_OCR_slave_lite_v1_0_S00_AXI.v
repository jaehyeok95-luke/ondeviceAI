`timescale 1 ns / 1 ps

module myip_npu_OCR_slave_lite_v1_0_S00_AXI #
(
    parameter integer C_S_AXI_DATA_WIDTH = 32,
    parameter integer C_S_AXI_ADDR_WIDTH = 5
)
(
    // ════════════════════════════════════════
    //  NPU User Ports
    // ════════════════════════════════════════
    // -- Control pulses (active 1 clock) --
    output wire        npu_start_load,      // slv_reg0[0] : DMA weight 수신 모드 진입
    output wire        npu_start_conv,      // slv_reg0[1] : Conv 레이어 1회 실행
    output wire        npu_start_fc,        // slv_reg0[2] : FC 레이어 1회 실행
    output wire        npu_start_argmax,    // slv_reg0[3] : Argmax 실행

    // -- Layer config (static, slv_reg0 상위 비트) --
    output wire [2:0]  npu_layer_idx,       // slv_reg0[6:4] : 레이어 인덱스 (0-4 conv, 0-7 fc)
    output wire        npu_weight_bank,     // slv_reg0[7]   : weight BRAM bank 선택 (0=A, 1=B)

    // -- Image pixel write --
    output wire        npu_img_valid,       // slv_reg2 쓰기 시 1-clk 펄스
    output wire [7:0]  npu_img_pixel,       // slv_reg2[7:0]

    // -- Status (read-only, from npu_control) --
    input  wire        npu_busy,
    input  wire        npu_all_done,

    // -- Results (read-only, 5-bit each) --
    input  wire [4:0]  npu_result_cho,
    input  wire [4:0]  npu_result_jung,
    input  wire [4:0]  npu_result_jong,

    // -- Debug (read-only) --
    input  wire [3:0]  dbg_state,
    input  wire [2:0]  dbg_layer_idx,
    input  wire        dbg_tready,

    // ════════════════════════════════════════
    //  AXI-Lite Slave Interface
    // ════════════════════════════════════════
    input  wire  S_AXI_ACLK,
    input  wire  S_AXI_ARESETN,
    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
    input  wire [2 : 0] S_AXI_AWPROT,
    input  wire  S_AXI_AWVALID,
    output wire  S_AXI_AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
    input  wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
    input  wire  S_AXI_WVALID,
    output wire  S_AXI_WREADY,
    output wire [1 : 0] S_AXI_BRESP,
    output wire  S_AXI_BVALID,
    input  wire  S_AXI_BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
    input  wire [2 : 0] S_AXI_ARPROT,
    input  wire  S_AXI_ARVALID,
    output wire  S_AXI_ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
    output wire [1 : 0] S_AXI_RRESP,
    output wire  S_AXI_RVALID,
    input  wire  S_AXI_RREADY
);

    // ════════════════════════════════════════
    //  Internal registers
    // ════════════════════════════════════════
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_awaddr;
    reg        axi_awready;
    reg        axi_wready;
    reg [1:0]  axi_bresp;
    reg        axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0] axi_araddr;
    reg        axi_arready;
    reg [1:0]  axi_rresp;
    reg        axi_rvalid;

    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 2;

    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg0;   // Control / config
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg1;   // Reserved (read = status)
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg2;   // Image pixel data
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg3;   // Reserved (read = result_cho)
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg4;   // Reserved (read = result_jung)
    reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg5;   // Reserved (read = result_jong)
    integer byte_index;

    assign S_AXI_AWREADY = axi_awready;
    assign S_AXI_WREADY  = axi_wready;
    assign S_AXI_BRESP   = axi_bresp;
    assign S_AXI_BVALID  = axi_bvalid;
    assign S_AXI_ARREADY = axi_arready;
    assign S_AXI_RRESP   = axi_rresp;
    assign S_AXI_RVALID  = axi_rvalid;

    // ════════════════════════════════════════
    //  Write channel state machine
    // ════════════════════════════════════════
    reg [1:0] state_write;
    reg [1:0] state_read;
    localparam Idle  = 2'b00;
    localparam Raddr = 2'b10, Rdata = 2'b11;
    localparam Waddr = 2'b10, Wdata = 2'b11;

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_awready  <= 0;
            axi_wready   <= 0;
            axi_bvalid   <= 0;
            axi_bresp    <= 0;
            axi_awaddr   <= 0;
            state_write  <= Idle;
        end else begin
            case (state_write)
                Idle: begin
                    if (S_AXI_ARESETN == 1'b1) begin
                        axi_awready <= 1'b1;
                        axi_wready  <= 1'b1;
                        state_write <= Waddr;
                    end else
                        state_write <= state_write;
                end
                Waddr: begin
                    if (S_AXI_AWVALID && S_AXI_AWREADY) begin
                        axi_awaddr <= S_AXI_AWADDR;
                        if (S_AXI_WVALID) begin
                            axi_awready <= 1'b1;
                            state_write <= Waddr;
                            axi_bvalid  <= 1'b1;
                        end else begin
                            axi_awready <= 1'b0;
                            state_write <= Wdata;
                            if (S_AXI_BREADY && axi_bvalid)
                                axi_bvalid <= 1'b0;
                        end
                    end else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid)
                            axi_bvalid <= 1'b0;
                    end
                end
                Wdata: begin
                    if (S_AXI_WVALID) begin
                        state_write <= Waddr;
                        axi_bvalid  <= 1'b1;
                        axi_awready <= 1'b1;
                    end else begin
                        state_write <= state_write;
                        if (S_AXI_BREADY && axi_bvalid)
                            axi_bvalid <= 1'b0;
                    end
                end
            endcase
        end
    end

    // ════════════════════════════════════════
    //  Register write logic
    // ════════════════════════════════════════
    wire [OPT_MEM_ADDR_BITS:0] wr_addr_sel;
    assign wr_addr_sel = (S_AXI_AWVALID)
                       ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS : ADDR_LSB]
                       : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS : ADDR_LSB];

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            slv_reg0 <= 0;
            slv_reg1 <= 0;
            slv_reg2 <= 0;
            slv_reg3 <= 0;
            slv_reg4 <= 0;
            slv_reg5 <= 0;
        end else if (S_AXI_WVALID) begin
            case (wr_addr_sel)
                3'h0:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg0[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                3'h1:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg1[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                3'h2:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg2[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                3'h3:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg3[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                3'h4:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg4[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                3'h5:
                    for (byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1)
                        if (S_AXI_WSTRB[byte_index] == 1)
                            slv_reg5[(byte_index*8) +: 8] <= S_AXI_WDATA[(byte_index*8) +: 8];
                default: ; // no write
            endcase
        end
    end

    // ════════════════════════════════════════
    //  Read channel state machine
    // ════════════════════════════════════════
    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            axi_arready <= 1'b0;
            axi_rvalid  <= 1'b0;
            axi_rresp   <= 1'b0;
            state_read  <= Idle;
        end else begin
            case (state_read)
                Idle: begin
                    if (S_AXI_ARESETN == 1'b1) begin
                        state_read  <= Raddr;
                        axi_arready <= 1'b1;
                    end else
                        state_read <= state_read;
                end
                Raddr: begin
                    if (S_AXI_ARVALID && S_AXI_ARREADY) begin
                        state_read  <= Rdata;
                        axi_araddr  <= S_AXI_ARADDR;
                        axi_rvalid  <= 1'b1;
                        axi_arready <= 1'b0;
                    end else
                        state_read <= state_read;
                end
                Rdata: begin
                    if (S_AXI_RVALID && S_AXI_RREADY) begin
                        axi_rvalid  <= 1'b0;
                        axi_arready <= 1'b1;
                        state_read  <= Raddr;
                    end else
                        state_read <= state_read;
                end
            endcase
        end
    end

    // ════════════════════════════════════════
    //  Read data MUX
    // ════════════════════════════════════════
    //
    //  Register Map (Read):
    //  ┌────────┬────────────────────────────────────────────────┐
    //  │ Offset │ Field                                          │
    //  ├────────┼────────────────────────────────────────────────┤
    //  │ 0x00   │ slv_reg0 echo (control/config)                 │
    //  │ 0x04   │ [0] npu_busy                                   │
    //  │        │ [1] npu_all_done                                │
    //  │        │ [5:2] dbg_state                                 │
    //  │        │ [8:6] dbg_layer_idx                             │
    //  │        │ [9] dbg_tready                                  │
    //  │        │ [31:10] reserved (0)                            │
    //  │ 0x08   │ slv_reg2 echo (img pixel)                      │
    //  │ 0x0C   │ [4:0] npu_result_cho                           │
    //  │ 0x10   │ [4:0] npu_result_jung                          │
    //  │ 0x14   │ [4:0] npu_result_jong                          │
    //  └────────┴────────────────────────────────────────────────┘
    //
    reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
    always @(*) begin
        case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS : ADDR_LSB])
            3'h0: reg_data_out = slv_reg0;
            3'h1: reg_data_out = {22'd0,
                                  dbg_tready,           // [9]
                                  dbg_layer_idx,        // [8:6]
                                  dbg_state,            // [5:2]
                                  npu_all_done,         // [1]
                                  npu_busy};            // [0]
            3'h2: reg_data_out = slv_reg2;
            3'h3: reg_data_out = {27'd0, npu_result_cho};
            3'h4: reg_data_out = {27'd0, npu_result_jung};
            3'h5: reg_data_out = {27'd0, npu_result_jong};
            default: reg_data_out = 32'd0;
        endcase
    end
    assign S_AXI_RDATA = reg_data_out;

    // ════════════════════════════════════════
    //  Write-detect pulses (1 clock wide)
    // ════════════════════════════════════════
    reg reg0_written;
    reg reg2_written;

    always @(posedge S_AXI_ACLK) begin
        if (S_AXI_ARESETN == 1'b0) begin
            reg0_written <= 1'b0;
            reg2_written <= 1'b0;
        end else begin
            reg0_written <= 1'b0;
            reg2_written <= 1'b0;
            if (S_AXI_WVALID) begin
                case (wr_addr_sel)
                    3'h0: reg0_written <= 1'b1;
                    3'h2: reg2_written <= 1'b1;
                    default: ;
                endcase
            end
        end
    end

    // ════════════════════════════════════════
    //  NPU control signal mapping
    // ════════════════════════════════════════
    //
    //  Register Map (Write → slv_reg0):
    //  ┌──────┬──────────────────────────────┐
    //  │ Bit  │ Function                      │
    //  ├──────┼──────────────────────────────┤
    //  │  [0] │ start_load  (DMA 수신 모드)   │
    //  │  [1] │ start_conv  (Conv 1회 실행)   │
    //  │  [2] │ start_fc    (FC 1회 실행)     │
    //  │  [3] │ start_argmax                  │
    //  │ [6:4]│ layer_idx   (레이어 번호)     │
    //  │  [7] │ weight_bank (0=A, 1=B)        │
    //  │[31:8]│ reserved                      │
    //  └──────┴──────────────────────────────┘
    //
    assign npu_start_load   = reg0_written && slv_reg0[0];
    assign npu_start_conv   = reg0_written && slv_reg0[1];
    assign npu_start_fc     = reg0_written && slv_reg0[2];
    assign npu_start_argmax = reg0_written && slv_reg0[3];
    assign npu_layer_idx    = slv_reg0[6:4];
    assign npu_weight_bank  = slv_reg0[7];

    // Image pixel write
    assign npu_img_valid    = reg2_written;
    assign npu_img_pixel    = slv_reg2[7:0];

endmodule
