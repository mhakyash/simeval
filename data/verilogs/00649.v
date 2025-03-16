module xor_ripple_or (
  input [3:0] A,
  input [3:0] B,
  input cin,
  input a,
  input b,
  output [3:0] sum,
  output cout,
  output reg out_comb_logic
);

  // XOR module from problem 1
  wire [3:0] xor_out;
  xor_module xor_inst(
    .A(A),
    .B(B),
    .out(xor_out)
  );

  // Ripple carry adder module from problem 2
  wire [3:0] adder_out;
  ripple_carry_adder adder_inst(
    .A(A),
    .B(B),
    .cin(cin),
    .sum(adder_out),
    .cout(cout)
  );

  // OR module for combinational logic
  always @* begin
    if (a | b | cout) begin
      out_comb_logic = 1;
    end else begin
      out_comb_logic = 0;
    end
  end

  // Output sum
  assign sum = xor_out ^ adder_out;

endmodule