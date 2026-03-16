`timescale 1 ns / 1 ps

module myip_npu_OCR #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here

		// AXI Stream Slave (DMA → NPU 가중치)
		input  wire        s_axis_aclk,
		input  wire        s_axis_aresetn,
		input  wire        s_axis_tvalid,
		output wire        s_axis_tready,
		input  wire [7:0]  s_axis_tdata,
		input  wire        s_axis_tlast,
		    // 기존 포트들 사이에 추가
        input wire [0:0] s_axis_tkeep,

		// User ports ends
		// Do not modify the ports beyond this line

		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);

	// ════════════════════════════════════════
	//  AXI-Lite ↔ NPU 내부 연결 와이어
	// ════════════════════════════════════════
	wire        npu_start_load;
	wire        npu_start_conv;
	wire        npu_img_valid;
	wire [7:0]  npu_img_pixel;
	wire        npu_busy;
	wire        npu_all_done;
	wire [7:0]  npu_result_cho;
	wire [7:0]  npu_result_jung;
	wire [7:0]  npu_result_jong;
	wire [2:0]  dbg_state;
    wire [3:0]  dbg_layer_idx;
    wire        dbg_tready;

	// Instantiation of Axi Bus Interface S00_AXI
	myip_npu_OCR_slave_lite_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) myip_npu_OCR_slave_lite_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready),
		// NPU 연결
		.dbg_state(dbg_state),
        .dbg_layer_idx(dbg_layer_idx),
        .dbg_tready(dbg_tready),

		.npu_start_load(npu_start_load),
		.npu_start_conv(npu_start_conv),
		.npu_img_valid(npu_img_valid),
		.npu_img_pixel(npu_img_pixel),
		.npu_busy(npu_busy),
		.npu_all_done(npu_all_done),
		.npu_result_cho(npu_result_cho),
		.npu_result_jung(npu_result_jung),
		.npu_result_jong(npu_result_jong)
	);

	// ════════════════════════════════════════
	//  NPU Core
	// ════════════════════════════════════════
	npu_core u_npu_core (
		.clk            (s00_axi_aclk),
		.rst_n          (s00_axi_aresetn),
		.start_load     (npu_start_load),
		.img_valid      (npu_img_valid),
		.img_pixel      (npu_img_pixel),
		.start_conv     (npu_start_conv),
		.debug_addr     (15'd0),
		.debug_data     (),
		.dbg_state(dbg_state),
        .dbg_layer_idx(dbg_layer_idx),
        .dbg_tready(dbg_tready),

		.all_done       (npu_all_done),
		.busy           (npu_busy),
		.result_cho     (npu_result_cho),
		.result_jung    (npu_result_jung),
		.result_jong    (npu_result_jong),
		// AXI Stream
		.s_axis_tvalid  (s_axis_tvalid),
		.s_axis_tready  (s_axis_tready),
		.s_axis_tdata   (s_axis_tdata),
		.s_axis_tlast   (s_axis_tlast)
	);

	endmodule
