module binary_to_3bit_decoder (
    input wire [2:0] in,
    output wire o0,
    output wire o1,
    output wire o2
);

assign o0 = in[0];
assign o1 = in[1];
assign o2 = in[2];

endmodule

module nor_gate_using_nand (
    input wire a,
    input wire b,
    output wire out
);

wire temp1, temp2;

nand(temp1, a, b);
nand(temp2, temp1, temp1);
assign out = temp2;

endmodule

module top_module (
    input wire [2:0] vec,
    input wire a,
    input wire b,
    output wire out
);

wire o0, o1, o2;

binary_to_3bit_decoder decoder(vec, o0, o1, o2);
nor_gate_using_nand nor_gate(o0, o1, out_wire);
nor_gate_using_nand final_nor_gate(out_wire, o2, out);

endmodule