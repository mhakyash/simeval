module BCD_to_Binary (
  input [3:0] bcd_in,
  output [7:0] bin_out
);

  always @(*) begin
    case(bcd_in)
      4'b0000: bin_out = 8'b00000000;
      4'b0001: bin_out = 8'b00000001;
      4'b0010: bin_out = 8'b00000010;
      4'b0011: bin_out = 8'b00000011;
      4'b0100: bin_out = 8'b00000100;
      4'b0101: bin_out = 8'b00000101;
      4'b0110: bin_out = 8'b00000110;
      4'b0111: bin_out = 8'b00000111;
      4'b1000: bin_out = 8'b00001000;
      4'b1001: bin_out = 8'b00001001;
      default: bin_out = 8'b00000000;
    endcase
  end

endmodule