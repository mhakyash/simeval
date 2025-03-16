module axi_gpio
   (s_axi_aclk,
    s_axi_aresetn,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    gpio_io_o);
  input s_axi_aclk;
  input s_axi_aresetn;
  input [8:0]s_axi_awaddr;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [8:0]s_axi_araddr;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output [7:0]gpio_io_o;

  reg [7:0]gpio_reg;

  always @(posedge s_axi_aclk) begin
    if (s_axi_aresetn == 1'b0) begin
      gpio_reg <= 8'h00;
    end else begin
      if (s_axi_awvalid && s_axi_awready) begin
        case(s_axi_awaddr[3:0])
          4'h0: gpio_reg[0] <= s_axi_wdata[0];
          4'h1: gpio_reg[1] <= s_axi_wdata[0];
          4'h2: gpio_reg[2] <= s_axi_wdata[0];
          4'h3: gpio_reg[3] <= s_axi_wdata[0];
          4'h4: gpio_reg[4] <= s_axi_wdata[0];
          4'h5: gpio_reg[5] <= s_axi_wdata[0];
          4'h6: gpio_reg[6] <= s_axi_wdata[0];
          4'h7: gpio_reg[7] <= s_axi_wdata[0];
        endcase
      end
      if (s_axi_arvalid && s_axi_arready) begin
        case(s_axi_araddr[3:0])
          4'h0: s_axi_rdata[0] <= gpio_reg[0];
          4'h1: s_axi_rdata[0] <= gpio_reg[1];
          4'h2: s_axi_rdata[0] <= gpio_reg[2];
          4'h3: s_axi_rdata[0] <= gpio_reg[3];
          4'h4: s_axi_rdata[0] <= gpio_reg[4];
          4'h5: s_axi_rdata[0] <= gpio_reg[5];
          4'h6: s_axi_rdata[0] <= gpio_reg[6];
          4'h7: s_axi_rdata[0] <= gpio_reg[7];
        endcase
      end
    end
  end

  assign s_axi_awready = 1'b1;
  assign s_axi_wready = 1'b1;
  assign s_axi_bresp = 2'b00;
  assign s_axi_bvalid = 1'b0;
  assign s_axi_arready = 1'b1;
  assign s_axi_rresp = 2'b00;
  assign s_axi_rvalid = 1'b1;
  assign gpio_io_o = gpio_reg;

endmodule