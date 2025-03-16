module karnaugh_map(
  input wire A, B, C, D,
  output reg F
);

  always @*
    case ({A,B,C,D})
      4'b0000: F = 1'b0;
      4'b0001: F = 1'b1;
      4'b0010: F = 1'b1;
      4'b0011: F = 1'b0;
      4'b0100: F = 1'b1;
      4'b0101: F = 1'b0;
      4'b0110: F = 1'b0;
      4'b0111: F = 1'b1;
      4'b1000: F = 1'b0;
      4'b1001: F = 1'b1;
      4'b1010: F = 1'b1;
      4'b1011: F = 1'b0;
      4'b1100: F = 1'b1;
      4'b1101: F = 1'b0;
      4'b1110: F = 1'b0;
      4'b1111: F = 1'b1;
    endcase

endmodule