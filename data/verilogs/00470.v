module mux_xor(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output out
);

wire mux_out;
wire xor_out;

// 2-to-1 Mux
assign mux_out = sel_b1 ? b : (sel_b2 ? a : 1'b0);

// XOR Gate
assign xor_out = a ^ b;

// Output
assign out = sel_b1 | sel_b2 ? mux_out : xor_out;

endmodule