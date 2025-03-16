module control_register_block (
  input clk,
  input reset,
  input enable,
  input [n-1:0] data_in,
  input [m-1:0] control,
  output [n-1:0] out
);

parameter n = 8; // number of bits in the data input and output signals
parameter m = 4; // number of bits in the control signal

reg [n-1:0] data_reg; // register to store the input data
reg [n-1:0] default_data = 0; // default value for the data register

always @(posedge clk) begin
  if (reset) begin
    data_reg <= default_data; // reset the data register
  end else if (enable) begin
    data_reg <= data_in; // store the input data
  end
end

always @(*) begin
  case (control)
    // define the control pattern to output the stored data
    4'b0001: out = data_reg;
    4'b0010: out = data_reg;
    4'b0100: out = data_reg;
    4'b1000: out = data_reg;
    default: out = 0; // default output value
  endcase
end

endmodule