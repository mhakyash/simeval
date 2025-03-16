module bcd_to_7seg_decoder (
    input [3:0] BCD,   // 4-bit BCD input 
    output reg [6:0] SEG // 7-bit output for the segments of the 7-segment display 
    );

    always @(*) begin
        case (BCD)
            4'b0000: SEG = 7'b1000000; // 0
            4'b0001: SEG = 7'b1111001; // 1
            4'b0010: SEG = 7'b0100100; // 2
            4'b0011: SEG = 7'b0110000; // 3
            4'b0100: SEG = 7'b0011001; // 4
            4'b0101: SEG = 7'b0010010; // 5
            4'b0110: SEG = 7'b0000010; // 6
            4'b0111: SEG = 7'b1111000; // 7
            4'b1000: SEG = 7'b0000000; // 8
            4'b1001: SEG = 7'b0010000; // 9
            default: SEG = 7'b1111111; // Invalid input
        endcase
    end

endmodule

module multiplier (
    input [3:0] A,    // 4-bit input A 
    input [3:0] B,    // 4-bit input B 
    output reg [15:0] P // 16-bit output for the product of A and B 
    );

    always @(A, B) begin
        P = A * B;
    end

endmodule

module segment_display (
    input [15:0] P,   // 16-bit input for the product of A and B 
    output reg [6:0] SEG // 7-bit output for the segments of the 7-segment display 
    );

    bcd_to_7seg_decoder decoder1(.BCD(P[3:0]), .SEG(SEG[6:0])); // Least significant digit
    bcd_to_7seg_decoder decoder2(.BCD(P[7:4]), .SEG(SEG[13:7])); // Second least significant digit
    bcd_to_7seg_decoder decoder3(.BCD(P[11:8]), .SEG(SEG[20:14])); // Second most significant digit
    bcd_to_7seg_decoder decoder4(.BCD(P[15:12]), .SEG(SEG[27:21])); // Most significant digit

endmodule

module top_module ( 
    input clk, 
    input reset,      // Synchronous active-high reset 
    input [3:0] A,    // 4-bit BCD input A 
    input [3:0] B,    // 4-bit BCD input B 
    output reg [6:0] SEG // 7-bit output for the segments of the 7-segment display 
    );

    multiplier mult(.A(A), .B(B), .P(P));
    segment_display display(.P(P), .SEG(SEG));

endmodule