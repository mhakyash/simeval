module xor_8bit(
  input [7:0] A,
  input [7:0] B,
  output reg [7:0] C
);

  always @* begin
    C = A ^ B;
  end

endmodule

module tb_xor_8bit();

  reg [7:0] A;
  reg [7:0] B;
  wire [7:0] C;

  xor_8bit dut(
    .A(A),
    .B(B),
    .C(C)
  );

  initial begin
    #10 A = 8'b00001111;
    B = 8'b10101010;
    #10 A = 8'b01010101;
    B = 8'b11110000;
    #10 A = 8'b11111111;
    B = 8'b00000000;
  end

  always @(A, B) begin
    $display("A = %b, B = %b, C = %b", A, B, C);
  end

endmodule