// Benchmark "dff_negedge_reset" written by ABC on Wed Jun 26 15:22:18 2024

module dff_negedge_reset ( clock, 
    D, C, R,
    Q  );
  input  clock;
  input  D, C, R;
  output Q;
  reg Q;
  wire new_n8, n10;
  INVX1    g0(.A(R), .Y(new_n8));
  AND2X1   g1(.A(new_n8), .B(D), .Y(n10));
  always @ (posedge clock) begin
    Q <= n10;
  end
endmodule


