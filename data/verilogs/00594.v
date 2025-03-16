module hex7seg(bin_num, seg_out);
  input [3:0] bin_num;    //input number
  output reg [6:0] seg_out;  //output

  always @(*)
    case(bin_num)
      4'b0000: seg_out = 7'b0100000;  //0
      4'b0001: seg_out = 7'b0111111;  //1
      4'b0010: seg_out = 7'b0010010;  //2
      4'b0011: seg_out = 7'b0011000;  //3
      4'b0100: seg_out = 7'b0001101;  //4
      4'b0101: seg_out = 7'b0001001;  //5
      4'b0110: seg_out = 7'b0000001;  //6
      4'b0111: seg_out = 7'b0111100;  //7
      4'b1000: seg_out = 7'b0000000;  //8
      4'b1001: seg_out = 7'b0001000;  //9
      4'b1010: seg_out = 7'b0000100;  //A
      4'b1011: seg_out = 7'b0000011;  //B
      4'b1100: seg_out = 7'b0000110;  //C
      4'b1101: seg_out = 7'b0010011;  //D
      4'b1110: seg_out = 7'b0000111;  //E
      4'b1111: seg_out = 7'b0001111;  //F
      default: seg_out = 7'b1111111;  //default off
    endcase
endmodule