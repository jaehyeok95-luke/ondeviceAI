`timescale 1 ns / 1 ps

module myip_npu_OCR_slave_lite_v1_0_S00_AXI #
	(
		parameter integer C_S_AXI_DATA_WIDTH	= 32,
		parameter integer C_S_AXI_ADDR_WIDTH	= 5
	)
	(
		// Users to add ports here
		output wire        npu_start_load,
		output wire        npu_start_conv,
		output wire        npu_img_valid,
		output wire [7:0]  npu_img_pixel,
		input  wire        npu_busy,
		input  wire        npu_all_done,
		input  wire [7:0]  npu_result_cho,
		input  wire [7:0]  npu_result_jung,
		input  wire [7:0]  npu_result_jong,
		// User ports ends

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
		input wire  S_AXI_RREADY
	);

	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_awaddr;
	reg  	axi_awready;
	reg  	axi_wready;
	reg [1 : 0] 	axi_bresp;
	reg  	axi_bvalid;
	reg [C_S_AXI_ADDR_WIDTH-1 : 0] 	axi_araddr;
	reg  	axi_arready;
	reg [1 : 0] 	axi_rresp;
	reg  	axi_rvalid;

	localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS = 2;

	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_DATA_WIDTH-1:0]	slv_reg5;
	integer	 byte_index;

	assign S_AXI_AWREADY	= axi_awready;
	assign S_AXI_WREADY	= axi_wready;
	assign S_AXI_BRESP	= axi_bresp;
	assign S_AXI_BVALID	= axi_bvalid;
	assign S_AXI_ARREADY	= axi_arready;
	assign S_AXI_RRESP	= axi_rresp;
	assign S_AXI_RVALID	= axi_rvalid;

	reg [1:0] state_write;
	reg [1:0] state_read;
	localparam Idle = 2'b00, Raddr = 2'b10, Rdata = 2'b11, Waddr = 2'b10, Wdata = 2'b11;

	// Write state machine (마법사 원본 유지)
	always @(posedge S_AXI_ACLK)
	begin
	    if (S_AXI_ARESETN == 1'b0) begin
	        axi_awready <= 0;
	        axi_wready <= 0;
	        axi_bvalid <= 0;
	        axi_bresp <= 0;
	        axi_awaddr <= 0;
	        state_write <= Idle;
	    end else begin
	        case(state_write)
	            Idle: begin
	                if(S_AXI_ARESETN == 1'b1) begin
	                    axi_awready <= 1'b1;
	                    axi_wready <= 1'b1;
	                    state_write <= Waddr;
	                end else state_write <= state_write;
	            end
	            Waddr: begin
	                if (S_AXI_AWVALID && S_AXI_AWREADY) begin
	                    axi_awaddr <= S_AXI_AWADDR;
	                    if(S_AXI_WVALID) begin
	                        axi_awready <= 1'b1;
	                        state_write <= Waddr;
	                        axi_bvalid <= 1'b1;
	                    end else begin
	                        axi_awready <= 1'b0;
	                        state_write <= Wdata;
	                        if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
	                    end
	                end else begin
	                    state_write <= state_write;
	                    if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
	                end
	            end
	            Wdata: begin
	                if (S_AXI_WVALID) begin
	                    state_write <= Waddr;
	                    axi_bvalid <= 1'b1;
	                    axi_awready <= 1'b1;
	                end else begin
	                    state_write <= state_write;
	                    if (S_AXI_BREADY && axi_bvalid) axi_bvalid <= 1'b0;
	                end
	            end
	        endcase
	    end
	end

	// Register write logic (마법사 원본 유지)
	always @(posedge S_AXI_ACLK)
	begin
	    if (S_AXI_ARESETN == 1'b0) begin
	        slv_reg0 <= 0;
	        slv_reg1 <= 0;
	        slv_reg2 <= 0;
	        slv_reg3 <= 0;
	        slv_reg4 <= 0;
	        slv_reg5 <= 0;
	    end else begin
	        if (S_AXI_WVALID) begin
	            case ((S_AXI_AWVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
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
	                default: begin
	                    slv_reg0 <= slv_reg0;
	                    slv_reg1 <= slv_reg1;
	                    slv_reg2 <= slv_reg2;
	                    slv_reg3 <= slv_reg3;
	                    slv_reg4 <= slv_reg4;
	                    slv_reg5 <= slv_reg5;
	                end
	            endcase
	        end
	    end
	end

	// Read state machine (마법사 원본 유지)
	always @(posedge S_AXI_ACLK)
	begin
	    if (S_AXI_ARESETN == 1'b0) begin
	        axi_arready <= 1'b0;
	        axi_rvalid <= 1'b0;
	        axi_rresp <= 1'b0;
	        state_read <= Idle;
	    end else begin
	        case(state_read)
	            Idle: begin
	                if (S_AXI_ARESETN == 1'b1) begin
	                    state_read <= Raddr;
	                    axi_arready <= 1'b1;
	                end else state_read <= state_read;
	            end
	            Raddr: begin
	                if (S_AXI_ARVALID && S_AXI_ARREADY) begin
	                    state_read <= Rdata;
	                    axi_araddr <= S_AXI_ARADDR;
	                    axi_rvalid <= 1'b1;
	                    axi_arready <= 1'b0;
	                end else state_read <= state_read;
	            end
	            Rdata: begin
	                if (S_AXI_RVALID && S_AXI_RREADY) begin
	                    axi_rvalid <= 1'b0;
	                    axi_arready <= 1'b1;
	                    state_read <= Raddr;
	                end else state_read <= state_read;
	            end
	        endcase
	    end
	end

	// ════════════════════════════════════════
	//  Read data MUX (status/result는 npu에서 직접)
	// ════════════════════════════════════════
	reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
	always @(*) begin
	    case (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
	        3'h0: reg_data_out = slv_reg0;
	        3'h1: reg_data_out = {30'd0, npu_all_done, npu_busy};
	        3'h2: reg_data_out = slv_reg2;
	        3'h3: reg_data_out = {24'd0, npu_result_cho};
	        3'h4: reg_data_out = {24'd0, npu_result_jung};
	        3'h5: reg_data_out = {24'd0, npu_result_jong};
	        default: reg_data_out = 32'd0;
	    endcase
	end
	assign S_AXI_RDATA = reg_data_out;

	// ════════════════════════════════════════
	//  Control 펄스 생성
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
	            case ((S_AXI_AWVALID) ? S_AXI_AWADDR[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] : axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
	                3'h0: reg0_written <= 1'b1;
	                3'h2: reg2_written <= 1'b1;
	                default: ;
	            endcase
	        end
	    end
	end

	// ════════════════════════════════════════
	//  NPU 제어 신호 매핑
	// ════════════════════════════════════════
	assign npu_start_load = reg0_written && slv_reg0[0];
	assign npu_start_conv = reg0_written && slv_reg0[1];
	assign npu_img_valid  = reg2_written;
	assign npu_img_pixel  = slv_reg2[7:0];

	endmodule
