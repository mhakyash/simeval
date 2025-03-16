module ao22 (
  q,
  i0,
  i1,
  i2,
  i3
);
  output q;
  input i0;
  input i1;
  input i2;
  input i3;
  wire [1:0] int_0n;
  wire qn;
  
  // AND gate for int_0n[0]
  AND2 I0 (int_0n[0], i0, i1);
  
  // AND gate for int_0n[1]
  AND2 I1 (int_0n[1], i2, i3);
  
  // OR gate for q
  OR2 I2 (q, int_0n[0], int_0n[1]);
endmodule