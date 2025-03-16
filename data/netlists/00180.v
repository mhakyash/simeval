// Benchmark "logic_module" written by ABC on Wed Jun 26 15:22:02 2024

module logic_module ( 
    IN1, IN2, IN3,
    Q  );
  input  IN1, IN2, IN3;
  output Q;
  wire new_n5;
  NAND2X1  g0(.A(IN2), .B(IN1), .Y(new_n5));
  NOR2X1   g1(.A(new_n5), .B(IN3), .Y(Q));
endmodule


