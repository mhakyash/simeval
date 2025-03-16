module xor_module (
  input a,
  input b,
  output out
);

  reg out;

  assign out = (a & ~b) | (~a & b);

endmodule