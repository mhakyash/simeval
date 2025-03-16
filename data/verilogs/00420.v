module buffer_connections(
    input in1,
    input in2,
    input in3,
    input in4,
    input in5,
    input in6,
    input in7,
    output out1,
    output out2,
    output out3,
    output out4,
    output out5,
    output out6,
    output out7
);

bw_u1_buf_40x I1 (
    .z(out1),
    .a(in1)
);

bw_u1_buf_40x I102 (
    .z(out2),
    .a(in2)
);

bw_u1_buf_40x I103 (
    .z(out3),
    .a(in3)
);

bw_u1_buf_40x I114 (
    .z(out4),
    .a(in4)
);

bw_u1_buf_40x I113 (
    .z(out5),
    .a(in5)
);

bw_u1_buf_40x I112 (
    .z(out6),
    .a(in6)
);

bw_u1_buf_40x I132 (
    .z(out7),
    .a(in7)
);

endmodule