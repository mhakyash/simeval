module Multiplexer_AC__parameterized #(parameter INIT_VALUE=8'hB8)
  (ctrl,
   D0,
   D1,
   S);
  input ctrl;
  input [0:0]D0;
  input [0:0]D1;
  output [0:0]S;

  wire [0:0]D0;
  wire [0:0]D1;
  wire [0:0]S;
  wire ctrl;

  LUT3 #(
    .INIT(INIT_VALUE)) 
    \S[0]_INST_0 
       (.I0(D1),
        .I1(ctrl),
        .I2(D0),
        .O(S));
endmodule