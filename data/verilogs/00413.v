module slice_module (
  input [31:0] in,
  output [15:0] out
);

  assign out = in[25:10];

endmodule