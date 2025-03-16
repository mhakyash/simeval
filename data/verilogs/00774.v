module four_bit_adder (
  input [3:0] a,
  input [3:0] b,
  input cin,
  output [3:0] sum,
  output cout
);

  wire c1, c2, c3;
  wire [3:0] s1, s2, s3;

  // First stage
  full_adder fa1 (
    .a(a[0]),
    .b(b[0]),
    .cin(cin),
    .sum(s1[0]),
    .cout(c1)
  );

  // Second stage
  full_adder fa2 (
    .a(a[1]),
    .b(b[1]),
    .cin(c1),
    .sum(s1[1]),
    .cout(c2)
  );

  // Third stage
  full_adder fa3 (
    .a(a[2]),
    .b(b[2]),
    .cin(c2),
    .sum(s1[2]),
    .cout(c3)
  );

  // Fourth stage
  full_adder fa4 (
    .a(a[3]),
    .b(b[3]),
    .cin(c3),
    .sum(s1[3]),
    .cout(cout)
  );

  assign sum = s1;

endmodule

module full_adder (
  input a,
  input b,
  input cin,
  output sum,
  output cout
);

  wire c1, c2, c3;

  xor x1 (
    .a(a),
    .b(b),
    .xn(c1)
  );

  xor x2 (
    .a(c1),
    .b(cin),
    .xn(sum)
  );

  and a1 (
    .a(a),
    .b(b),
    .zn(c2)
  );

  and a2 (
    .a(c1),
    .b(cin),
    .zn(c3)
  );

  or o1 (
    .a(c2),
    .b(c3),
    .zn(cout)
  );

endmodule