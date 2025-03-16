module my_design_module(
  input [17:0] Din,
  output [9:0] Dout
);

  wire [9:0] rat_out;

  RAT_xlslice_0_0 rat_inst (
    .Din(Din),
    .Dout(rat_out)
  );

  assign Dout = rat_out;

endmodule