module BrzAdapt_17_9_s5_false_s5_false (
  out_0r, out_0a, out_0d,
  inp_0r, inp_0a, inp_0d
);
  input out_0r;
  output out_0a;
  output [16:0] out_0d;
  output inp_0r;
  input inp_0a;
  input [8:0] inp_0d;
  wire extend_0n;
  wire gnd;
  
  assign out_0a = inp_0a;
  assign inp_0r = out_0r;
  assign out_0d[8:0] = inp_0d;
  assign out_0d[16:9] = 0;
  
  assign extend_0n = 0;
  
  GND gnd_cell_instance (gnd);
  
endmodule