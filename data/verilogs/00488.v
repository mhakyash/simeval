module mux4x1(A, B, C, D, S, Y);
  input [7:0] A, B, C, D;
  input [1:0] S;
  output reg [7:0] Y;

  always @ (S or A or B or C or D) begin
    case (S)
      2'b00: Y = A;
      2'b01: Y = B;
      2'b10: Y = C;
      2'b11: Y = D;
    endcase
  end

endmodule