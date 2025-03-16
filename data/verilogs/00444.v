module adder_subtractor(A, B, mode, cin, result, cout);
  parameter WIDTH = 4;

  input [WIDTH-1:0] A, B;
  input mode, cin;
  output [WIDTH-1:0] result;
  output cout;

  wire [WIDTH:0] C;
  wire [WIDTH-1:0] A_inv, B_inv, B_neg, sum;

  // Invert A and B for subtraction
  assign A_inv = ~A;
  assign B_inv = ~B;
  
  // Negate B for subtraction
  assign B_neg = B_inv + 1;
  
  // Perform addition or subtraction based on mode
  assign sum = (mode == 0) ? A + B : A + B_neg;
  
  // Calculate carry-out
  assign cout = C[WIDTH];

  // Generate full adders for each bit
  genvar i;
  generate
    for (i = 0; i < WIDTH; i = i + 1) begin: fa
      full_adder fa_inst(.a(sum[i]), .b(C[i]), .cin(cin), .s(result[i]), .cout(C[i+1]));
    end
  endgenerate
endmodule

module full_adder(a, b, cin, s, cout);
  input a, b, cin;
  output s, cout;

  assign s = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a ^ b));
endmodule