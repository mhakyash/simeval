module buffer (input in, output out);
  assign out = in;
endmodule

module AO222EHD (output out, input a, input b, input c, input d, input e, input f);
  assign out = (a & b) | (c & d) | (e & f);
endmodule