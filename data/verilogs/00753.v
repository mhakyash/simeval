module top_module(
    input [255:0] in,
    output [7:0] out,
    output [255:0] shift_reg_out,
    output [8:0] final_out
);

reg [255:0] shift_reg;
wire [255:0] shift_reg_out;
reg [7:0] count;
wire [8:0] final_out;

// Shift register
always @ (posedge clk) begin
    shift_reg <= {shift_reg[254:0], in[0]};
end
assign shift_reg_out = shift_reg;

// Comparator
genvar i;
generate
    for (i = 0; i < 255; i = i + 1) begin : COMP_GEN
        assign count = count + (shift_reg[i] & shift_reg[i+1]);
    end
endgenerate

// Functional module
always @ (count) begin
    case (count)
        0: final_out = 0;
        1: final_out = 0;
        2: final_out = 1;
        3: final_out = 1;
        4: final_out = 2;
        5: final_out = 2;
        6: final_out = 3;
        7: final_out = 3;
        8: final_out = 4;
        9: final_out = 4;
        10: final_out = 5;
        11: final_out = 5;
        12: final_out = 6;
        13: final_out = 6;
        14: final_out = 7;
        15: final_out = 7;
        default: final_out = 8;
    endcase
end

// Output
assign out = final_out[7:0];
assign final_out[8] = (final_out == 8) ? 1 : 0;

endmodule