module barrel_shifter (
    input [3:0] in,
    input [1:0] shift_amt,
    output reg [3:0] out
);

    always @(*) begin
        case(shift_amt)
            2'b00: out = in;
            2'b01: out = {in[3], in[0:2]};
            2'b10: out = {in[2:3], in[0:1]};
            2'b11: out = {in[1:3], in[0]};
        endcase
    end

endmodule