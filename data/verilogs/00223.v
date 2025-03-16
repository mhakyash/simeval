module SNPS_CLOCK_GATE_HIGH_d_ff_en_W32_0_0 ( CLK, EN, ENCLK, TE, W32 );

  input CLK, EN, TE;
  input [31:0] W32;
  output ENCLK;

  wire [31:0] D;
  wire [31:0] Q;
  wire [31:0] M;

  SNPS_CLOCK_GATE_HIGH_d_ff_en dff ( .CLK(CLK), .EN(EN), .D(D), .Q(Q) );
  SNPS_MUX2_32 mux ( .A(Q), .B(TE), .S(EN), .Y(M) );
  SNPS_BUF32 buf ( .A(M), .Y(W32) );
  SNPS_AND2_32 and ( .A(CLK), .B(EN), .Y(ENCLK) );

  assign D = M;

endmodule