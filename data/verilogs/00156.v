module JAND4B(A1, A2, A3, A4, O);
input   A1;
input   A2;
input   A3;
input   A4;
output  O;

wire n1, n2, n3;

JNAND3B g1(n1, A1, A2, A3);
JNAND3B g2(n2, n1, A4, n1);
JNAND3B g3(n3, n2, n2, n2);
JNAND3B g4(O, n3, n3, n3);

endmodule