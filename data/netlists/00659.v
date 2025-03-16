// Benchmark "and_gate" written by ABC on Wed Jun 26 15:22:16 2024

module and_gate ( 
    in1, in2,
    out  );
  input  in1, in2;
  output out;
  wire new_n4;
  INVX1    g0(.A(in2), .Y(new_n4));
  AND2X1   g1(.A(new_n4), .B(in1), .Y(out));
endmodule


