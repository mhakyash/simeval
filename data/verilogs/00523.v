module adder(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] sum_wire;
    wire c1, c2, c3;

    assign sum = sum_wire;
    assign cout = c3;

    // full adder for least significant bit
    full_adder fa0(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum_wire[0]),
        .cout(c1)
    );

    // full adder for second least significant bit
    full_adder fa1(
        .a(a[1]),
        .b(b[1]),
        .cin(c1),
        .sum(sum_wire[1]),
        .cout(c2)
    );

    // full adder for third least significant bit
    full_adder fa2(
        .a(a[2]),
        .b(b[2]),
        .cin(c2),
        .sum(sum_wire[2]),
        .cout(c3)
    );

    // full adder for most significant bit
    full_adder fa3(
        .a(a[3]),
        .b(b[3]),
        .cin(c3),
        .sum(sum_wire[3]),
        .cout()
    );

endmodule


module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    wire s1, s2, s3;

    xor(s1, a, b);
    xor(sum, s1, cin);
    and(s2, a, b);
    and(s3, s1, cin);
    or(cout, s2, s3);

endmodule