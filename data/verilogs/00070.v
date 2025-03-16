module CSLA_N4 ( A, B, Ci, S, Co );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Ci;
  output Co;

  wire [3:0] S_nocarry;
  wire [3:0] S_carry;
  wire [3:0] Co_nocarry;
  wire [3:0] Co_carry;
  wire [3:0] S_mux;
  wire Co_mux;

  // Compute sum and carry-out bits for each bit position without carry-in
  RCA_N4_27 rca_nocarry ( .A(A), .B(B), .Ci(1'b0), .S(S_nocarry), .Co(Co_nocarry) );
  
  // Compute sum and carry-out bits for each bit position with carry-in
  RCA_N4_27 rca_carry ( .A(A), .B(B), .Ci(Ci), .S(S_carry), .Co(Co_carry) );
  
  // Select correct sum and carry-out bits based on carry-in
  mux21_SIZE4_13 outmux ( .IN0(S_nocarry), .IN1(S_carry), .CTRL(Ci), .OUT1(S_mux) );
  mux21_SIZE4_13 comux ( .IN0(Co_nocarry), .IN1(Co_carry), .CTRL(Ci), .OUT1(Co_mux) );
  
  assign S = S_mux;
  assign Co = Co_mux;
endmodule