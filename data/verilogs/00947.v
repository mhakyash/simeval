module pipelined_full_adder(
  input a,
  input b,
  input carry_in,
  output sum,
  output carry_out
);

  reg p, g, c;
  
  assign sum = p ^ carry_in;
  assign carry_out = g | (p & carry_in);
  
  always @ (a, b, carry_in) begin
    p = a ^ b;
    g = a & b;
    c = carry_in;
  end
  
  always @ (posedge clk) begin
    carry_in <= c;
  end

endmodule

module ripple_carry_adder(
  input [3:0] a,
  input [3:0] b,
  output [3:0] sum,
  output carry_out
);

  wire [3:0] carry;
  
  pipelined_full_adder fa0(a[0], b[0], 1'b0, sum[0], carry[0]);
  pipelined_full_adder fa1(a[1], b[1], carry[0], sum[1], carry[1]);
  pipelined_full_adder fa2(a[2], b[2], carry[1], sum[2], carry[2]);
  pipelined_full_adder fa3(a[3], b[3], carry[2], sum[3], carry_out);

endmodule