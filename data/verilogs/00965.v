module byte_reversal(
    input [31:0] in,
    output [31:0] out
);

reg [7:0] byte0, byte1, byte2, byte3;

always @(*) begin
    byte0 = in[7:0];
    byte1 = in[15:8];
    byte2 = in[23:16];
    byte3 = in[31:24];
end

assign out = {byte0, byte1, byte2, byte3};

endmodule

module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    input [31:0] in,
    output [31:0] out
);

wire [31:0] mux_out;
wire [31:0] byte_reversal_out;
wire [31:0] or_out;

byte_reversal byte_reversal_inst(
    .in(in),
    .out(byte_reversal_out)
);

assign mux_out = (sel_b1 & sel_b2) ? byte_reversal_out : a;

assign or_out = mux_out | b;

assign out = or_out;

endmodule