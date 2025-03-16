module mux4to1(
    input wire [3:0] in,
    input wire [1:0] sel,
    output reg out
);

    wire [3:0] mux_out;
    wire [3:0] dec_out;

    // 2-to-1 multiplexer
    assign mux_out[0] = (sel[0] == 0) ? in[0] : in[1];
    assign mux_out[1] = (sel[0] == 0) ? in[2] : in[3];

    // 2-bit decoder
    assign dec_out[0] = (sel[1] == 0) ? 1'b1 : 1'b0;
    assign dec_out[1] = (sel[1] == 1) ? 1'b1 : 1'b0;
    assign dec_out[2] = (sel[1] == 2) ? 1'b1 : 1'b0;
    assign dec_out[3] = (sel[1] == 3) ? 1'b1 : 1'b0;

    // Output
    assign out = (dec_out & mux_out);

endmodule