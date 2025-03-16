module barrel_shifter (
    input [3:0] A,
    input [1:0] Shift,
    input Direction,
    output [3:0] Y
);

reg [3:0] shifted_value;

always @(*) begin
    case ({Direction, Shift})
        2'b00: shifted_value = A; // No shift
        2'b01: shifted_value = A << Shift; // Left shift
        2'b10: shifted_value = A >> Shift; // Right shift
        2'b11: shifted_value = {A[0], A[3:1]}; // Rotate left
    endcase
end

assign Y = shifted_value;

endmodule

module mux_2to1 (
    input [3:0] A,
    input [3:0] B,
    input SEL,
    output [3:0] Y
);

assign Y = SEL ? B : A;

endmodule