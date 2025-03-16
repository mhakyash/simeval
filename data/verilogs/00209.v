module JNOR8C(A1, A2, A3, A4, A5, A6, A7, A8, O);
input   A1;
input   A2;
input   A3;
input   A4;
input   A5;
input   A6;
input   A7;
input   A8;
output  O;

wire notA1, notA2, notA3, notA4, notA5, notA6, notA7, notA8;

not u1(notA1, A1);
not u2(notA2, A2);
not u3(notA3, A3);
not u4(notA4, A4);
not u5(notA5, A5);
not u6(notA6, A6);
not u7(notA7, A7);
not u8(notA8, A8);

nor g0(O, notA1, notA2, notA3, notA4, notA5, notA6, notA7, notA8);

endmodule