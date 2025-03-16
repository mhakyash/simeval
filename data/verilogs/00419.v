module full_adder(
  input a,
  input b,
  input cin,
  output sum,
  output cout
);

  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (a & cin) | (b & cin);

endmodule


module four_bit_adder(
  input [3:0] A,
  input [3:0] B,
  input Cin,
  input rst,
  output [3:0] S,
  output Cout
);

  wire [3:0] S_wire;
  wire [3:0] C_wire;

  full_adder fa0(A[0], B[0], Cin, S_wire[0], C_wire[0]);
  full_adder fa1(A[1], B[1], C_wire[0], S_wire[1], C_wire[1]);
  full_adder fa2(A[2], B[2], C_wire[1], S_wire[2], C_wire[2]);
  full_adder fa3(A[3], B[3], C_wire[2], S_wire[3], Cout);

  assign S = S_wire;

  always @(posedge rst) begin
    if (rst) begin
      S <= 0;
      Cout <= 0;
    end
  end

endmodule


module four_bit_adder_with_rca(
  input [3:0] A,
  input [3:0] B,
  input Cin,
  input rst,
  output [3:0] S,
  output Cout
);

  wire [3:0] S_wire;
  wire [3:0] C_wire;

  full_adder fa0(A[0], B[0], Cin, S_wire[0], C_wire[0]);
  full_adder fa1(A[1], B[1], C_wire[0], S_wire[1], C_wire[1]);
  full_adder fa2(A[2], B[2], C_wire[1], S_wire[2], C_wire[2]);
  full_adder fa3(A[3], B[3], C_wire[3], S_wire[3], Cout);

  assign S = S_wire;

  always @(posedge rst) begin
    if (rst) begin
      S <= 0;
      Cout <= 0;
    end
  end

endmodule