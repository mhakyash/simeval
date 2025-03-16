module barrel_shifter (
    input [15:0] in,
    input [3:0] shift_amount,
    output [15:0] out
);

reg [15:0] in_reg;
reg [3:0] shift_amount_reg;
reg [15:0] out_reg;

always @(posedge clk) begin
    in_reg <= in;
    shift_amount_reg <= shift_amount;
end

always @(posedge clk) begin
    case (shift_amount_reg)
        4'b0000: out_reg <= in_reg;
        4'b0001: out_reg <= {in_reg[14:0], in_reg[15]};
        4'b0010: out_reg <= {in_reg[13:0], in_reg[15:14]};
        4'b0011: out_reg <= {in_reg[12:0], in_reg[15:13]};
        4'b0100: out_reg <= {in_reg[11:0], in_reg[15:12]};
        4'b0101: out_reg <= {in_reg[10:0], in_reg[15:11]};
        4'b0110: out_reg <= {in_reg[9:0], in_reg[15:10]};
        4'b0111: out_reg <= {in_reg[8:0], in_reg[15:9]};
        4'b1000: out_reg <= {in_reg[7:0], in_reg[15:8]};
        4'b1001: out_reg <= {in_reg[6:0], in_reg[15:7]};
        4'b1010: out_reg <= {in_reg[5:0], in_reg[15:6]};
        4'b1011: out_reg <= {in_reg[4:0], in_reg[15:5]};
        4'b1100: out_reg <= {in_reg[3:0], in_reg[15:4]};
        4'b1101: out_reg <= {in_reg[2:0], in_reg[15:3]};
        4'b1110: out_reg <= {in_reg[1:0], in_reg[15:2]};
        4'b1111: out_reg <= {in_reg[0], in_reg[15:1]};
    endcase
end

assign out = out_reg;

endmodule