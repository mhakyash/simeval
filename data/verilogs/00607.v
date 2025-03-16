module shift_register (
  input data_in,
  input load,
  input shift_left,
  input shift_right,
  input clk,
  output data_out,
  output [n-1:0] parallel_out
);

parameter n = 8; // number of bits in the shift register

reg [n-1:0] shift_reg;

always @(posedge clk) begin
  if (load) begin
    shift_reg <= parallel_out;
  end else if (shift_left && !shift_right) begin
    shift_reg <= {shift_reg[n-2:0], data_in};
  end else if (shift_right && !shift_left) begin
    shift_reg <= {data_in, shift_reg[0:n-2]};
  end else begin // serial shift right
    shift_reg <= {shift_reg[n-2:0], data_in};
  end
end

assign data_out = shift_reg[n-1];
assign parallel_out = shift_reg;

endmodule