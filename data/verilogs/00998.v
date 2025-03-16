module bin_to_7seg(
    input [2:0] in,
    output reg a, b, c, d, e, f, g
);

always @*
begin
    case(in)
        3'b000: {a, b, c, d, e, f, g} = 7'b1000000;
        3'b001: {a, b, c, d, e, f, g} = 7'b1111001;
        3'b010: {a, b, c, d, e, f, g} = 7'b0100100;
        3'b011: {a, b, c, d, e, f, g} = 7'b0110000;
        3'b100: {a, b, c, d, e, f, g} = 7'b0011001;
        3'b101: {a, b, c, d, e, f, g} = 7'b0010010;
        3'b110: {a, b, c, d, e, f, g} = 7'b0000010;
        3'b111: {a, b, c, d, e, f, g} = 7'b1111000;
        default: {a, b, c, d, e, f, g} = 7'b1111111;
    endcase
end

endmodule