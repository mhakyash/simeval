module binary_multiplier (
  input [3:0] A,
  input [3:0] B,
  output [7:0] P
);

  // Ripple Carry Adder
  wire [3:0] S;
  wire C_out;
  ripple_carry_adder RCA(A, B, S, C_out);

  // Full Adder
  wire [3:0] partial_products [3:0];
  wire [3:0] FA_sum [3:0];
  wire [3:0] FA_carry [3:0];
  wire [4:0] OR_input;
  wire OR_output;
  
  // Generate partial products
  assign partial_products[0] = {4'b0000, B[0]};
  assign partial_products[1] = {3'b000, B[1], 1'b0};
  assign partial_products[2] = {2'b00, B[2], 2'b00};
  assign partial_products[3] = {1'b0, B[3], 3'b000};
  
  // Generate full adders
  genvar i;
  generate
    for (i = 0; i < 4; i = i + 1) begin : FA_gen
      full_adder FA(.A(A), .B(partial_products[i]), .Cin(FA_carry[i]), .Sum(FA_sum[i]), .Cout(FA_carry[i+1]));
    end
  endgenerate
  
  // Generate OR gate
  assign OR_input = {FA_carry[4], FA_sum};
  assign OR_output = |OR_input;

  // Output
  assign P = {C_out, OR_output, partial_products[0], partial_products[1], partial_products[2], partial_products[3]};

endmodule

module ripple_carry_adder (
  input [3:0] A,
  input [3:0] B,
  output [3:0] S,
  output C_out
);

  assign S = A + B;
  assign C_out = (A[3] & B[3]) | (A[3] & S[3]) | (B[3] & S[3]);

endmodule

module full_adder (
  input [3:0] A,
  input [3:0] B,
  input Cin,
  output [3:0] Sum,
  output Cout
);

  wire [1:0] HA_sum;
  wire HA_carry;
  wire [1:0] FA_sum;
  
  // Generate half adders
  half_adder HA1(.A(A[0]), .B(B[0]), .Sum(HA_sum[0]), .Carry(HA_carry));
  half_adder HA2(.A(A[1]), .B(B[1]), .Sum(HA_sum[1]), .Carry(FA_sum[0]));
  
  // Generate full adder
  full_adder FA(.A({HA_sum[1], A[2:0]}), .B({HA_sum[0], B[2:0]}), .Cin({Cin, HA_carry}), .Sum({FA_sum[1], FA_sum[0], Sum[0]}), .Cout(Cout));

endmodule

module half_adder (
  input A,
  input B,
  output Sum,
  output Carry
);

  assign Sum = A ^ B;
  assign Carry = A & B;

endmodule