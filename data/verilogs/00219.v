module tracking_camera_system_switch (
  // inputs:
  address,
  clk,
  in_port,
  reset_n,

  // outputs:
  readdata
);

  output  [31:0] readdata;
  input   [1:0]  address;
  input          clk;
  input          in_port;
  input          reset_n;

  wire clk_en;
  wire data_in;
  wire read_mux_out;
  reg  [31:0] readdata;

  // Set readdata to 0 when reset_n is low
  always @(negedge reset_n) begin
    if (!reset_n) begin
      readdata <= 0;
    end
  end

  // Update readdata on the positive edge of the clock signal
  always @(posedge clk) begin
    if (clk_en) begin
      readdata <= {32'b0, read_mux_out};
    end
  end

  // Set data_in to in_port
  assign data_in = in_port;

  // Set read_mux_out to data_in when address is 0, and 0 otherwise
  assign read_mux_out = (address == 2'b00) ? data_in : 0;

  // Enable the clock signal
  assign clk_en = 1;

endmodule