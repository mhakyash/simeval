module multiplier_block (
    i_data0,
    o_data0
);

  // Port mode declarations:
  input   [31:0] i_data0;
  output  [31:0] o_data0;

  //Multipliers:

  wire [31:0]
    w1,
    w512,
    w511,
    w128,
    w129,
    w1022,
    w893,
    w7144;

  assign w1 = i_data0;
  assign w1022 = w511 << 1;
  assign w128 = w1 << 7;
  assign w129 = w1 + w128;
  assign w511 = w512 - w1;
  assign w512 = w1 << 9;
  assign w7144 = w893 << 3;
  assign w893 = w1022 - w129;

  assign o_data0 = w7144;

  //multiplier_block area estimate = 5012.88474054412;
endmodule