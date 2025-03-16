module two_to_four_decoder (
    input enable,
    input [1:0] in,
    output reg [3:0] out
);

always @ (enable or in) begin
    if (enable) begin
        case (in)
            2'b00: out = 4'b0001;
            2'b01: out = 4'b0010;
            2'b10: out = 4'b0100;
            2'b11: out = 4'b1000;
        endcase
    end
    else begin
        out = 4'b0000;
    end
end

endmodule