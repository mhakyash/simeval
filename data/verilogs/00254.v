module carry_lookahead_adder(
  input [3:0] A,
  input [3:0] B,
  input Cin,
  output [3:0] S,
  output Cout
);

  wire [3:0] co;
  wire [3:0] o;
  wire [3:0] a_xor_b;
  wire [3:0] g;
  wire [3:0] p;

  assign a_xor_b = A ^ B;
  assign g = A & B;
  assign p = a_xor_b & ~Cin;

  CARRY_COUT_PLUG cin_plug(
    .CIN(Cin),
    .COUT(co[0])
  );

  CARRY_CO_DIRECT #(.TOP_OF_CHAIN(0)) co_direct0(
    .CO(co[0]),
    .O(o[1]),
    .S(p[0]),
    .OUT(co[1])
  );

  CARRY_CO_DIRECT #(.TOP_OF_CHAIN(0)) co_direct1(
    .CO(co[1]),
    .O(o[2]),
    .S(p[1]),
    .OUT(co[2])
  );

  CARRY_CO_DIRECT #(.TOP_OF_CHAIN(0)) co_direct2(
    .CO(co[2]),
    .O(o[3]),
    .S(p[2]),
    .OUT(co[3])
  );

  CARRY_CO_DIRECT #(.TOP_OF_CHAIN(1)) co_direct3(
    .CO(Cout),
    .O(o[4]),
    .S(p[3]),
    .DI(g[3]),
    .OUT(co[4])
  );

  assign S = a_xor_b ^ co;
endmodule