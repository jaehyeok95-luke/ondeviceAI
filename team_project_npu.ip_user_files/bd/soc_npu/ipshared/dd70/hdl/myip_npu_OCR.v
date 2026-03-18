`timescale 1 ns / 1 ps

module myip_npu_OCR #(
    parameter integer C_S00_AXI_DATA_WIDTH = 32,
    parameter integer C_S00_AXI_ADDR_WIDTH = 5,
    parameter integer P = 8
)(
    // ════════════════════════════════════════
    //  AXI-Lite Slave Interface
    // ════════════════════════════════════════
    input  wire        s00_axi_aclk,
    input  wire        s00_axi_aresetn,
    input  wire [C_S00_AXI_ADDR_WIDTH-1:0] s00_axi_awaddr,
    input  wire [2:0]  s00_axi_awprot,
    input  wire        s00_axi_awvalid,
    output wire        s00_axi_awready,
    input  wire [C_S00_AXI_DATA_WIDTH-1:0] s00_axi_wdata,
    input  wire [(C_S00_AXI_DATA_WIDTH/8)-1:0] s00_axi_wstrb,
    input  wire        s00_axi_wvalid,
    output wire        s00_axi_wready,
    output wire [1:0]  s00_axi_bresp,
    output wire        s00_axi_bvalid,
    input  wire        s00_axi_bready,
    input  wire [C_S00_AXI_ADDR_WIDTH-1:0] s00_axi_araddr,
    input  wire [2:0]  s00_axi_arprot,
    input  wire        s00_axi_arvalid,
    output wire        s00_axi_arready,
    output wire [C_S00_AXI_DATA_WIDTH-1:0] s00_axi_rdata,
    output wire [1:0]  s00_axi_rresp,
    output wire        s00_axi_rvalid,
    input  wire        s00_axi_rready,

    // ════════════════════════════════════════
    //  AXI-Stream Slave (DMA weight reception, 8-bit)
    // ════════════════════════════════════════
    input  wire [7:0]  s_axis_tdata,
    input  wire        s_axis_tvalid,
    output wire        s_axis_tready,
    input  wire        s_axis_tlast,
    input  wire        s_axis_tkeep
);

    // ════════════════════════════════════════
    //  Clock / Reset
    // ════════════════════════════════════════
    wire clk   = s00_axi_aclk;
    wire rst_n = s00_axi_aresetn;

    // ════════════════════════════════════════
    //  Slave-Lite ↔ NPU wires
    // ════════════════════════════════════════
    wire        sl_start_load;
    wire        sl_start_conv;
    wire        sl_start_fc;
    wire        sl_start_argmax;
    wire [2:0]  sl_layer_idx;
    wire        sl_weight_bank;
    wire        sl_img_valid;
    wire [7:0]  sl_img_pixel;
    wire        npu_busy;
    wire        npu_all_done;
    wire [4:0]  npu_result_cho;
    wire [4:0]  npu_result_jung;
    wire [4:0]  npu_result_jong;
    wire [3:0]  dbg_state;
    wire [2:0]  dbg_layer_idx;
    wire        dbg_tready;

    // ════════════════════════════════════════
    //  npu_control → sub-module config wires
    // ════════════════════════════════════════
    wire        ctrl_conv_start;
    wire [7:0]  ctrl_conv_cfg_ci;
    wire [7:0]  ctrl_conv_cfg_co;
    wire [6:0]  ctrl_conv_cfg_w;
    wire [6:0]  ctrl_conv_cfg_h;
    wire        ctrl_conv_cfg_weight_bank;
    wire [14:0] ctrl_conv_fmap_rd_base;
    wire        ctrl_conv_done;
    wire [3:0]  ctrl_conv_cfg_shift;

    wire        ctrl_fc_start;
    wire [9:0]  ctrl_fc_cfg_in_len;
    wire [8:0]  ctrl_fc_cfg_out_len;
    wire [15:0] ctrl_fc_cfg_weight_base;
    wire        ctrl_fc_cfg_relu_en;
    wire [14:0] ctrl_fc_fmap_rd_base;
    wire [14:0] ctrl_fc_fmap_wr_base;
    wire        ctrl_fc_done;
    wire [3:0]  ctrl_fc_cfg_shift;

    wire        ctrl_argmax_start;
    wire [4:0]  ctrl_argmax_num_classes;
    wire [14:0] ctrl_argmax_fmap_rd_base;
    wire        ctrl_argmax_done;
    wire [4:0]  ctrl_argmax_result;

    wire [1:0]  ctrl_mode;
    wire        ctrl_ping_is_input;

    // ════════════════════════════════════════
    //  Debug assign
    // ════════════════════════════════════════
    assign dbg_state     = {2'd0, ctrl_mode};
    assign dbg_layer_idx = sl_layer_idx;

    // ════════════════════════════════════════
    //  Weight preload wires
    // ════════════════════════════════════════
    wire        wp_start;
    wire        wp_done;
    wire        wp_bank_sel;
    wire [15:0] wp_base_addr;
    wire [15:0] wp_bram_a_rd_addr;
    wire [15:0] wp_bram_b_rd_addr;
    wire [71:0] wp_weight_packed [0:P-1];
    wire signed [15:0]  wp_bias          [0:P-1];

    // ════════════════════════════════════════
    //  Line buffer wires
    // ════════════════════════════════════════
    wire        lb_load_en;
    wire [1:0]  lb_load_line_sel;
    wire [6:0]  lb_load_col;
    wire signed [7:0] lb_load_data;
    wire        lb_patch_read;
    wire [6:0]  lb_read_col;
    wire [6:0]  lb_read_row;
    wire [1:0]  lb_top_line_sel;
    wire [1:0]  lb_mid_line_sel;
    wire [1:0]  lb_bot_line_sel;
    wire signed [7:0] lb_patch [0:8];
    wire        lb_patch_valid;

    // ════════════════════════════════════════
    //  Line loader wires
    // ════════════════════════════════════════
    wire        ll_start;
    wire        ll_done;
    wire [14:0] ll_base_addr;
    wire [14:0] ll_fmap_rd_addr;

    // ════════════════════════════════════════
    //  PE array wires
    // ════════════════════════════════════════
    wire        pe_valid;
    wire signed [31:0] pe_psum [0:P-1];
    wire        pe_psum_valid;

    // ════════════════════════════════════════
    //  Maxpool wires
    // ════════════════════════════════════════
    wire        mp_in_valid;
    wire signed [7:0] mp_in_data [0:P-1];
    wire [6:0]  mp_in_row;
    wire [6:0]  mp_in_col;
    wire        mp_out_valid;
    wire signed [7:0] mp_out_data [0:P-1];
    wire [6:0]  mp_out_row;
    wire [6:0]  mp_out_col;

    // ════════════════════════════════════════
    //  Conv engine fmap write wires
    // ════════════════════════════════════════
    wire        conv_fmap_wr_en;
    wire [14:0] conv_fmap_wr_addr;
    wire [7:0]  conv_fmap_wr_data;

    // ════════════════════════════════════════
    //  FC unit wires
    // ════════════════════════════════════════
    wire [15:0] fc_bram_b_rd_addr;
    wire [14:0] fc_fmap_rd_addr;
    wire        fc_fmap_wr_en;
    wire [14:0] fc_fmap_wr_addr;
    wire [7:0]  fc_fmap_wr_data;

    // ════════════════════════════════════════
    //  Argmax wires
    // ════════════════════════════════════════
    wire [14:0] argmax_fmap_rd_addr;

    // ════════════════════════════════════════
    //  Shared MUX wires
    // ════════════════════════════════════════
    wire [14:0] fmap_rd_addr_src;
    wire [7:0]  fmap_rd_data_src;
    wire        fmap_wr_en_dst;
    wire [14:0] fmap_wr_addr_dst;
    wire [7:0]  fmap_wr_data_dst;

    // ════════════════════════════════════════
    //  Fmap BRAM port wires
    // ════════════════════════════════════════
    wire        fmap_ping_wr_en;
    wire [14:0] fmap_ping_wr_addr;
    wire [7:0]  fmap_ping_wr_data;
    wire [14:0] fmap_ping_rd_addr;
    wire [7:0]  fmap_ping_rd_data;

    wire        fmap_pong_wr_en;
    wire [14:0] fmap_pong_wr_addr;
    wire [7:0]  fmap_pong_wr_data;
    wire [14:0] fmap_pong_rd_addr;
    wire [7:0]  fmap_pong_rd_data;

    // ════════════════════════════════════════
    //  Weight BRAM data wires
    // ════════════════════════════════════════
    wire [31:0] wbram_a_rd_data;
    wire [31:0] wbram_b_rd_data;

    // ════════════════════════════════════════
    //  [1] AXI-Lite Slave
    // ════════════════════════════════════════
    myip_npu_OCR_slave_lite_v1_0_S00_AXI #(
        .C_S_AXI_DATA_WIDTH (C_S00_AXI_DATA_WIDTH),
        .C_S_AXI_ADDR_WIDTH (C_S00_AXI_ADDR_WIDTH)
    ) u_slave_lite (
        .S_AXI_ACLK      (clk),
        .S_AXI_ARESETN    (rst_n),
        .S_AXI_AWADDR     (s00_axi_awaddr),
        .S_AXI_AWPROT     (s00_axi_awprot),
        .S_AXI_AWVALID    (s00_axi_awvalid),
        .S_AXI_AWREADY    (s00_axi_awready),
        .S_AXI_WDATA      (s00_axi_wdata),
        .S_AXI_WSTRB      (s00_axi_wstrb),
        .S_AXI_WVALID     (s00_axi_wvalid),
        .S_AXI_WREADY     (s00_axi_wready),
        .S_AXI_BRESP      (s00_axi_bresp),
        .S_AXI_BVALID     (s00_axi_bvalid),
        .S_AXI_BREADY     (s00_axi_bready),
        .S_AXI_ARADDR     (s00_axi_araddr),
        .S_AXI_ARPROT     (s00_axi_arprot),
        .S_AXI_ARVALID    (s00_axi_arvalid),
        .S_AXI_ARREADY    (s00_axi_arready),
        .S_AXI_RDATA      (s00_axi_rdata),
        .S_AXI_RRESP      (s00_axi_rresp),
        .S_AXI_RVALID     (s00_axi_rvalid),
        .S_AXI_RREADY     (s00_axi_rready),
        .npu_start_load   (sl_start_load),
        .npu_start_conv   (sl_start_conv),
        .npu_start_fc     (sl_start_fc),
        .npu_start_argmax (sl_start_argmax),
        .npu_layer_idx    (sl_layer_idx),
        .npu_weight_bank  (sl_weight_bank),
        .npu_img_valid    (sl_img_valid),
        .npu_img_pixel    (sl_img_pixel),
        .npu_busy         (npu_busy),
        .npu_all_done     (npu_all_done),
        .npu_result_cho   (npu_result_cho),
        .npu_result_jung  (npu_result_jung),
        .npu_result_jong  (npu_result_jong),
        .dbg_state        (dbg_state),
        .dbg_layer_idx    (dbg_layer_idx),
        .dbg_tready       (dbg_tready)
    );

    // ════════════════════════════════════════
    //  [2] AXI-Stream DMA → 8-to-32 Packer
    // ════════════════════════════════════════
    reg        dma_loading;
    reg        dma_bank_sel;
    reg [15:0] dma_wr_addr;
    reg [1:0]  dma_byte_cnt;
    reg [23:0] dma_pack_reg;

    assign s_axis_tready = dma_loading;
    assign dbg_tready    = dma_loading;

    wire        dma_wr_valid = dma_loading && s_axis_tvalid && (dma_byte_cnt == 2'd3);
    wire [31:0] dma_wr_word  = {s_axis_tdata, dma_pack_reg};

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            dma_loading  <= 1'b0;
            dma_bank_sel <= 1'b0;
            dma_wr_addr  <= 16'd0;
            dma_byte_cnt <= 2'd0;
            dma_pack_reg <= 24'd0;
        end else begin
            if (sl_start_load && !dma_loading) begin
                dma_loading  <= 1'b1;
                dma_bank_sel <= sl_weight_bank;
                dma_wr_addr  <= 16'd0;
                dma_byte_cnt <= 2'd0;
                dma_pack_reg <= 24'd0;
            end else if (dma_loading && s_axis_tvalid) begin
                case (dma_byte_cnt)
                    2'd0: dma_pack_reg[7:0]   <= s_axis_tdata;
                    2'd1: dma_pack_reg[15:8]  <= s_axis_tdata;
                    2'd2: dma_pack_reg[23:16] <= s_axis_tdata;
                    default: ;
                endcase
                if (dma_byte_cnt == 2'd3) begin
                    dma_byte_cnt <= 2'd0;
                    dma_wr_addr  <= dma_wr_addr + 16'd1;
                end else begin
                    dma_byte_cnt <= dma_byte_cnt + 2'd1;
                end
                if (s_axis_tlast)
                    dma_loading <= 1'b0;
            end
        end
    end

    // ════════════════════════════════════════
    //  [3] Weight BRAM A (Conv)
    // ════════════════════════════════════════
    weight_bram_a u_weight_bram_a (
        .clk     (clk),
        .wr_en   (dma_wr_valid && !dma_bank_sel),
        .wr_addr (dma_wr_addr),
        .wr_data (dma_wr_word),
        .rd_addr (wp_bram_a_rd_addr),
        .rd_data (wbram_a_rd_data)
    );

    // ════════════════════════════════════════
    //  [4] Weight BRAM B (FC)
    // ════════════════════════════════════════
    wire [15:0] wbram_b_rd_addr_mux;
    assign wbram_b_rd_addr_mux = (ctrl_mode == 2'd1) ? fc_bram_b_rd_addr
                                                      : 16'd0;

    weight_bram_b u_weight_bram_b (
        .clk     (clk),
        .wr_en   (dma_wr_valid && dma_bank_sel),
        .wr_addr (dma_wr_addr),
        .wr_data (dma_wr_word),
        .rd_addr (wbram_b_rd_addr_mux),
        .rd_data (wbram_b_rd_data)
    );

    // ════════════════════════════════════════
    //  [5] Fmap BRAM Ping
    // ════════════════════════════════════════
    fmap_bram u_fmap_ping (
        .clk     (clk),
        .wr_en   (fmap_ping_wr_en),
        .wr_addr (fmap_ping_wr_addr),
        .wr_data (fmap_ping_wr_data),
        .rd_addr (fmap_ping_rd_addr),
        .rd_data (fmap_ping_rd_data)
    );

    // ════════════════════════════════════════
    //  [6] Fmap BRAM Pong
    // ════════════════════════════════════════
    fmap_bram u_fmap_pong (
        .clk     (clk),
        .wr_en   (fmap_pong_wr_en),
        .wr_addr (fmap_pong_wr_addr),
        .wr_data (fmap_pong_wr_data),
        .rd_addr (fmap_pong_rd_addr),
        .rd_data (fmap_pong_rd_data)
    );

    // ════════════════════════════════════════
    //  [7] NPU Control
    // ════════════════════════════════════════
    npu_control u_npu_control (
        .clk                  (clk),
        .rst_n                (rst_n),
        .cmd_start_conv       (sl_start_conv),
        .cmd_start_fc         (sl_start_fc),
        .cmd_start_argmax     (sl_start_argmax),
        .cmd_layer_idx        (sl_layer_idx),
        .cmd_weight_bank      (sl_weight_bank),
        .cmd_done             (npu_all_done),
        .cmd_busy             (npu_busy),
        .result_cho           (npu_result_cho),
        .result_jung          (npu_result_jung),
        .result_jong          (npu_result_jong),
        .conv_start           (ctrl_conv_start),
        .conv_cfg_ci          (ctrl_conv_cfg_ci),
        .conv_cfg_co          (ctrl_conv_cfg_co),
        .conv_cfg_w           (ctrl_conv_cfg_w),
        .conv_cfg_h           (ctrl_conv_cfg_h),
        .conv_cfg_weight_bank (ctrl_conv_cfg_weight_bank),
        .conv_fmap_rd_base    (ctrl_conv_fmap_rd_base),
        .conv_done            (ctrl_conv_done),
        .conv_cfg_shift       (ctrl_conv_cfg_shift),
        .fc_start             (ctrl_fc_start),
        .fc_cfg_in_len        (ctrl_fc_cfg_in_len),
        .fc_cfg_out_len       (ctrl_fc_cfg_out_len),
        .fc_cfg_relu          (ctrl_fc_cfg_relu_en),
        .fc_w_base            (ctrl_fc_cfg_weight_base),
        .fc_f_rd_base         (ctrl_fc_fmap_rd_base),
        .fc_f_wr_base         (ctrl_fc_fmap_wr_base),
        .fc_done              (ctrl_fc_done),
        .fc_cfg_shift         (ctrl_fc_cfg_shift),
        .argmax_start         (ctrl_argmax_start),
        .argmax_done          (ctrl_argmax_done),
        .argmax_result        (ctrl_argmax_result),
        .argmax_num_classes   (ctrl_argmax_num_classes),
        .argmax_fmap_rd_base  (ctrl_argmax_fmap_rd_base),
        .mode                 (ctrl_mode),
        .ping_is_input        (ctrl_ping_is_input)
    );

    // ════════════════════════════════════════
    //  [8] Weight Preload
    // ════════════════════════════════════════
    weight_preload #(.P(P)) u_weight_preload (
        .clk            (clk),
        .rst_n          (rst_n),
        .start          (wp_start),
        .bank_sel       (wp_bank_sel),
        .base_addr      (wp_base_addr),
        .done           (wp_done),
        .bram_a_rd_addr (wp_bram_a_rd_addr),
        .bram_a_rd_data (wbram_a_rd_data),
        .bram_b_rd_addr (wp_bram_b_rd_addr),
        .bram_b_rd_data (wbram_b_rd_data),
        .weight_packed  (wp_weight_packed),
        .bias           (wp_bias)
    );

    // ════════════════════════════════════════
    //  [9] Line Buffer
    // ════════════════════════════════════════
    line_buffer u_line_buffer (
        .clk            (clk),
        .rst_n          (rst_n),
        .cfg_width      (ctrl_conv_cfg_w),
        .cfg_height     (ctrl_conv_cfg_h),
        .load_en        (lb_load_en),
        .load_line_sel  (lb_load_line_sel),
        .load_col       (lb_load_col),
        .load_data      (lb_load_data),
        .patch_read     (lb_patch_read),
        .read_col       ({1'b0, lb_read_col[5:0]}),
        .read_row       ({1'b0, lb_read_row[5:0]}),
        .top_line_sel   (lb_top_line_sel),
        .mid_line_sel   (lb_mid_line_sel),
        .bot_line_sel   (lb_bot_line_sel),
        .patch          (lb_patch),
        .patch_valid    (lb_patch_valid)
    );

    // ════════════════════════════════════════
    //  [10] Line Loader
    // ════════════════════════════════════════
    line_loader u_line_loader (
        .clk            (clk),
        .rst_n          (rst_n),
        .start          (ll_start),
        .cfg_w          (ctrl_conv_cfg_w),
        .base_addr      (ll_base_addr),
        .done           (ll_done),
        .fmap_rd_addr   (ll_fmap_rd_addr),
        .fmap_rd_data   (fmap_rd_data_src),
        .lb_load_en     (lb_load_en),
        .lb_load_line_sel (lb_load_line_sel),
        .lb_load_col    (lb_load_col),
        .lb_load_data   (lb_load_data)
    );

    // ════════════════════════════════════════
    //  [11] PE Array
    // ════════════════════════════════════════
    pe_array #(.P(P)) u_pe_array (
        .clk              (clk),
        .rst_n            (rst_n),
        .valid            (pe_valid),
        .patch            (lb_patch),
        .weight_packed    (wp_weight_packed),
        .psum             (pe_psum),
        .psum_valid       (pe_psum_valid)
    );

    // ════════════════════════════════════════
    //  [12] Maxpool 2x2
    // ════════════════════════════════════════
    maxpool2x2 #(.P(P)) u_maxpool (
        .clk         (clk),
        .rst_n       (rst_n),
        .pool_en     (1'b1),
        .in_valid    (mp_in_valid),
        .in_data     (mp_in_data),
        .in_row      (mp_in_row),
        .in_col      (mp_in_col),
        .out_valid   (mp_out_valid),
        .out_data    (mp_out_data),
        .out_row     (mp_out_row),
        .out_col     (mp_out_col)
    );

    // ════════════════════════════════════════
    //  [13] Conv Engine
    // ════════════════════════════════════════
    conv_engine #(.P(P)) u_conv_engine (
        .clk              (clk),
        .rst_n            (rst_n),
        .start            (ctrl_conv_start),
        .done             (ctrl_conv_done),
        .cfg_ci           (ctrl_conv_cfg_ci),
        .cfg_co           (ctrl_conv_cfg_co),
        .cfg_w            (ctrl_conv_cfg_w),
        .cfg_h            (ctrl_conv_cfg_h),
        .cfg_weight_bank  (ctrl_conv_cfg_weight_bank),
        .cfg_shift        (ctrl_conv_cfg_shift),
        .preload_start    (wp_start),
        .preload_done     (wp_done),
        .preload_bank_sel (wp_bank_sel),
        .preload_base     (wp_base_addr),
        .preload_bias     (wp_bias),
        .line_load_start  (ll_start),
        .line_load_done   (ll_done),
        .line_load_base_addr (ll_base_addr),
        .lb_patch_read    (lb_patch_read),
        .lb_read_row      (lb_read_row),
        .lb_read_col      (lb_read_col),
        .lb_top_sel       (lb_top_line_sel),
        .lb_mid_sel       (lb_mid_line_sel),
        .lb_bot_sel       (lb_bot_line_sel),
        .pe_valid         (pe_valid),
        .pe_psum          (pe_psum),
        .mp_in_valid      (mp_in_valid),
        .mp_in_data       (mp_in_data),
        .mp_row           (mp_in_row),
        .mp_col           (mp_in_col),
        .mp_out_valid     (mp_out_valid),
        .mp_out_data      (mp_out_data),
        .mp_out_row       (mp_out_row),
        .mp_out_col       (mp_out_col),
        .fmap_wr_en       (conv_fmap_wr_en),
        .fmap_wr_addr     (conv_fmap_wr_addr),
        .fmap_wr_data     (conv_fmap_wr_data),
        .fmap_rd_base     (ctrl_conv_fmap_rd_base)
    );

    // ════════════════════════════════════════
    //  [14] FC Unit
    // ════════════════════════════════════════
    fc_unit u_fc_unit (
        .clk              (clk),
        .rst_n            (rst_n),
        .start            (ctrl_fc_start),
        .done             (ctrl_fc_done),
        .cfg_in_len       (ctrl_fc_cfg_in_len),
        .cfg_out_len      (ctrl_fc_cfg_out_len),
        .cfg_relu         (ctrl_fc_cfg_relu_en),
        .cfg_shift        (ctrl_fc_cfg_shift),
        .w_base           (ctrl_fc_cfg_weight_base),
        .w_bram_addr      (fc_bram_b_rd_addr),
        .w_bram_data      (wbram_b_rd_data),
        .f_rd_base        (ctrl_fc_fmap_rd_base),
        .f_rd_addr        (fc_fmap_rd_addr),
        .f_rd_data        (fmap_rd_data_src),
        .f_wr_base        (ctrl_fc_fmap_wr_base),
        .f_wr_en          (fc_fmap_wr_en),
        .f_wr_addr        (fc_fmap_wr_addr),
        .f_wr_data        (fc_fmap_wr_data)
    );

    // ════════════════════════════════════════
    //  [15] Argmax
    // ════════════════════════════════════════
    argmax u_argmax (
        .clk            (clk),
        .rst_n          (rst_n),
        .start          (ctrl_argmax_start),
        .num_classes    (ctrl_argmax_num_classes),
        .fmap_rd_base   (ctrl_argmax_fmap_rd_base),
        .done           (ctrl_argmax_done),
        .result_idx     (ctrl_argmax_result),
        .fmap_rd_addr   (argmax_fmap_rd_addr),
        .fmap_rd_data   (fmap_rd_data_src)
    );

    // ════════════════════════════════════════
    //  Image Write (PS → fmap_ping)
    // ════════════════════════════════════════
    reg [14:0] img_wr_addr;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            img_wr_addr <= 15'd0;
        else if (sl_start_conv)
            img_wr_addr <= 15'd0;
        else if (sl_img_valid)
            img_wr_addr <= img_wr_addr + 15'd1;
    end

    // ════════════════════════════════════════
    //  MUX: Fmap read address
    //  mode: 0=conv, 1=fc, 2=argmax
    // ════════════════════════════════════════
    assign fmap_rd_addr_src = (ctrl_mode == 2'd0) ? ll_fmap_rd_addr :
                              (ctrl_mode == 2'd1) ? fc_fmap_rd_addr :
                              (ctrl_mode == 2'd2) ? argmax_fmap_rd_addr :
                              15'd0;

    // ════════════════════════════════════════
    //  MUX: Fmap write source
    // ════════════════════════════════════════
    assign fmap_wr_en_dst   = (ctrl_mode == 2'd0) ? conv_fmap_wr_en :
                              (ctrl_mode == 2'd1) ? fc_fmap_wr_en :
                              1'b0;
    assign fmap_wr_addr_dst = (ctrl_mode == 2'd0) ? conv_fmap_wr_addr :
                              (ctrl_mode == 2'd1) ? fc_fmap_wr_addr :
                              15'd0;
    assign fmap_wr_data_dst = (ctrl_mode == 2'd0) ? conv_fmap_wr_data :
                              (ctrl_mode == 2'd1) ? fc_fmap_wr_data :
                              8'd0;

    // ════════════════════════════════════════
    //  Ping-Pong Steering
    // ════════════════════════════════════════

    // Read addresses
    assign fmap_ping_rd_addr = ctrl_ping_is_input ? fmap_rd_addr_src : 15'd0;
    assign fmap_pong_rd_addr = !ctrl_ping_is_input ? fmap_rd_addr_src : 15'd0;

    // Read data selection
    assign fmap_rd_data_src = ctrl_ping_is_input ? fmap_ping_rd_data
                                                 : fmap_pong_rd_data;

    // Ping write
    assign fmap_ping_wr_en   = (!npu_busy) ? sl_img_valid :
                               (!ctrl_ping_is_input) ? fmap_wr_en_dst :
                               1'b0;
    assign fmap_ping_wr_addr = (!npu_busy) ? img_wr_addr :
                               (!ctrl_ping_is_input) ? fmap_wr_addr_dst :
                               15'd0;
    assign fmap_ping_wr_data = (!npu_busy) ? sl_img_pixel :
                               (!ctrl_ping_is_input) ? fmap_wr_data_dst :
                               8'd0;

    // Pong write
    assign fmap_pong_wr_en   = ctrl_ping_is_input ? fmap_wr_en_dst : 1'b0;
    assign fmap_pong_wr_addr = ctrl_ping_is_input ? fmap_wr_addr_dst : 15'd0;
    assign fmap_pong_wr_data = ctrl_ping_is_input ? fmap_wr_data_dst : 8'd0;

endmodule