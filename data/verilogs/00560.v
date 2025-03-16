module priority_encoder (
    input [3:0] D,
    output reg [1:0] Y
);

always @(*) begin
    case(D)
        4'b1000: Y = 2'b10;
        4'b0100: Y = 2'b01;
        4'b0010, 4'b0001, 4'b0110, 4'b0101, 4'b0011, 4'b1110, 4'b1101, 4'b1011, 4'b0111, 4'b1111: Y = 2'b00;
    endcase
end

endmodule