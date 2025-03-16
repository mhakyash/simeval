module binary_to_7seg(
  input [3:0] bin_in,
  output reg [6:0] seg_out
);

  always @ (bin_in)
    case (bin_in)
      4'b0000: seg_out = 7'b0011111;
      4'b0001: seg_out = 7'b0000110;
      4'b0010: seg_out = 7'b0101101;
      4'b0011: seg_out = 7'b0100111;
      4'b0100: seg_out = 7'b0110011;
      4'b0101: seg_out = 7'b0111011;
      4'b0110: seg_out = 7'b1111011;
      4'b0111: seg_out = 7'b0001111;
      4'b1000: seg_out = 7'b1111111;
      4'b1001: seg_out = 7'b0111111;
      4'b1010: seg_out = 7'b1011111;
      4'b1011: seg_out = 7'b1111000;
      4'b1100: seg_out = 7'b0011100;
      4'b1101: seg_out = 7'b0101110;
      4'b1110: seg_out = 7'b1111101;
      4'b1111: seg_out = 7'b1110001;
      default: seg_out = 7'b1111111;
    endcase // case (bin_in)

endmodule