module mux_4to1_enable (
  input [3:0] in0,
  input [3:0] in1,
  input [3:0] in2,
  input [3:0] in3,
  input [1:0] sel,
  input en,
  output [3:0] out
);

  wire [3:0] mux_out;

  assign mux_out[0] = (sel == 2'b00) ? in0[0] : (sel == 2'b01) ? in1[0] : (sel == 2'b10) ? in2[0] : in3[0];
  assign mux_out[1] = (sel == 2'b00) ? in0[1] : (sel == 2'b01) ? in1[1] : (sel == 2'b10) ? in2[1] : in3[1];
  assign mux_out[2] = (sel == 2'b00) ? in0[2] : (sel == 2'b01) ? in1[2] : (sel == 2'b10) ? in2[2] : in3[2];
  assign mux_out[3] = (sel == 2'b00) ? in0[3] : (sel == 2'b01) ? in1[3] : (sel == 2'b10) ? in2[3] : in3[3];

  assign out = (en == 1'b1) ? mux_out : 4'b0000;

endmodule
