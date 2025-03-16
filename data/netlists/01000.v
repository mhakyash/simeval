// Benchmark "seq_detector" written by ABC on Wed Jun 26 15:22:26 2024

module seq_detector ( clock, 
    in,
    out  );
  input  clock;
  input  in;
  output out;
  reg \current_state[0] , \current_state[1] , out, \next_state[0] ,
    \next_state[1] ;
  wire new_n19, new_n20_1, new_n22, n6, n11, n16, n20, n24;
  INVX1    g0(.A(in), .Y(new_n19));
  XOR2X1   g1(.A(\current_state[1] ), .B(\current_state[0] ), .Y(new_n20_1));
  NOR2X1   g2(.A(new_n20_1), .B(new_n19), .Y(n20));
  INVX1    g3(.A(\current_state[0] ), .Y(new_n22));
  NOR3X1   g4(.A(\current_state[1] ), .B(new_n22), .C(new_n19), .Y(n24));
  ONE      g5(.Y(n16));
  BUFX1    g6(.A(\next_state[0] ), .Y(n6));
  BUFX1    g7(.A(\next_state[1] ), .Y(n11));
  always @ (posedge clock) begin
    \current_state[0]  <= n6;
    \current_state[1]  <= n11;
    out <= n16;
    \next_state[0]  <= n20;
    \next_state[1]  <= n24;
  end
  initial begin
    \current_state[0]  <= 1'b0;
    \current_state[1]  <= 1'b0;
  end
endmodule


