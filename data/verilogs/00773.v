module test07(a, b, c, y);
   input signed [3:0] a;
   input signed [1:0] b;
   input [1:0] c;
   output [5:0] y;

   wire [3:0] abs_a;
   assign abs_a = (a < 0) ? (~a + 1) : a;

   wire [5:0] shifted_a;
   assign shifted_a = (b < 0) ? (abs_a << -b) : (abs_a >> b);

   assign y = (c < 0) ? (shifted_a << -c) : (shifted_a >> c);

   assign y = (a < 0) ? (~y + 1) : y;
endmodule