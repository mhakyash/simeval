module ripple_carry_adder(a, b, cin, sum, cout);

   input [3:0] a;
   input [3:0] b;
   input cin;
   output [3:0] sum;
   output cout;

   wire [3:0] s;
   wire [3:0] c;

   compressor2 #(.width(1)) c1(a[0], b[0], s[0], c[0]);
   compressor2 #(.width(1)) c2(a[1], b[1], s[1], c[1]);
   compressor2 #(.width(1)) c3(a[2], b[2], s[2], c[2]);
   compressor2 #(.width(1)) c4(a[3], b[3], s[3], c[3]);

   assign sum = s;
   assign cout = c[3];

   assign c2.a = s[0];
   assign c3.a = s[1];
   assign c4.a = s[2];

   assign c2.b = b[1];
   assign c3.b = b[2];
   assign c4.b = b[3];

   assign c2.cin = cin;
   assign c3.cin = c[1];
   assign c4.cin = c[2];

endmodule