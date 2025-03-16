module binary_adder (
  input [3:0] addend1,
  input [3:0] addend2,
  input carry_in,
  output [3:0] sum,
  output carry_out
);

  wire [3:0] adder_output;
  wire carry;

  assign {carry, sum} = addend1 + addend2 + carry_in;

  assign carry_out = carry;
  assign adder_output = sum;

endmodule