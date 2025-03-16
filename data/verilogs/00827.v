module test_xlconcat(
    signalA,
    signalB,
    result
);

input wire [0:0] signalA;
input wire [0:0] signalB;
output wire [1:0] result;

image_processing_2d_design_xlconcat_0_0 inst_xlconcat (
  .In0(signalA),
  .In1(signalB),
  .dout(result)
);

endmodule