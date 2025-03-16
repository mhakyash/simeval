module TimeHoldOver_Qsys_pps_interrupt (
  input   [1:0] address,
  input         chipselect,
  input         clk,
  input         in_port,
  input         reset_n,
  input         write_n,
  input  [31:0] writedata,
  output        irq,
  output [31:0] readdata
);

  wire clk_en;
  reg  d1_data_in;
  reg  d2_data_in;
  wire data_in;
  reg  edge_capture;
  wire edge_capture_wr_strobe;
  wire edge_detect;
  wire irq;
  reg  irq_mask;
  wire read_mux_out;

  assign clk_en = 1;
  assign read_mux_out = ({1 {(address == 0)}} & data_in) |
                        ({1 {(address == 2)}} & irq_mask) |
                        ({1 {(address == 3)}} & edge_capture);

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      readdata <= 0;
    end else if (clk_en) begin
      readdata <= {32'b0, read_mux_out};
    end
  end

  assign data_in = in_port;

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      irq_mask <= 0;
    end else if (chipselect && !write_n && (address == 2)) begin
      irq_mask <= writedata;
    end
  end

  assign irq = |(edge_capture & irq_mask);
  assign edge_capture_wr_strobe = chipselect && !write_n && (address == 3);

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      edge_capture <= 0;
    end else if (clk_en) begin
      if (edge_capture_wr_strobe) begin
        edge_capture <= 0;
      end else if (edge_detect) begin
        edge_capture <= -1;
      end
    end
  end

  always @(posedge clk or negedge reset_n) begin
    if (!reset_n) begin
      d1_data_in <= 0;
      d2_data_in <= 0;
    end else if (clk_en) begin
      d1_data_in <= data_in;
      d2_data_in <= d1_data_in;
    end
  end

  assign edge_detect = d1_data_in & ~d2_data_in;

endmodule