module bcd_to_7seg (
    input [3:0] BCD,
    output reg [6:0] SEG
);

always @ (BCD) begin
    case (BCD)
        4'b0000: SEG = 7'b111_1110; // 0
        4'b0001: SEG = 7'b011_0000; // 1
        4'b0010: SEG = 7'b110_1101; // 2
        4'b0011: SEG = 7'b111_1001; // 3
        4'b0100: SEG = 7'b011_0011; // 4
        4'b0101: SEG = 7'b101_1011; // 5
        4'b0110: SEG = 7'b101_1111; // 6
        4'b0111: SEG = 7'b111_0000; // 7
        4'b1000: SEG = 7'b111_1111; // 8
        4'b1001: SEG = 7'b111_0011; // 9
        default: SEG = 7'b000_0000; // invalid input
    endcase
end

endmodule