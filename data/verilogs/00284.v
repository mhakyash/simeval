module carry_select_adder(
    input [99:0] a, b,
    input cin,
    output [99:0] sum,
    output cout
);

wire [99:0] p, g;
wire [99:0] c;
wire [99:0] s;

genvar i;

generate
    for (i = 0; i < 100; i = i + 1) begin : gen
        assign p[i] = a[i] | b[i];
        assign g[i] = a[i] & b[i];
        assign c[i] = (i == 0) ? cin : (g[i-1] | (p[i-1] & c[i-1]));
        assign s[i] = a[i] ^ b[i] ^ c[i];
    end
endgenerate

assign sum = s;
assign cout = c[99];

endmodule

module binary_tree_mux(
    input [1023:0] in,
    input [7:0] sel,
    output reg [3:0] q
);

reg [1023:0] temp;
integer i;

always @(*) begin
    temp = in;
    for (i = 0; i < 8; i = i + 1) begin
        temp = {temp[127:0] + temp[255:128], temp[383:256] + temp[511:384], temp[639:512] + temp[767:640], temp[895:768] + temp[1023:896]};
    end
    q = temp[(sel*4)+3:(sel*4)];
end

endmodule

module functional_module(
    input [99:0] sum,
    input [3:0] mux_out,
    input op,
    output [7:0] q
);

reg [7:0] temp;

always @(*) begin
    case (op)
        2'b00: temp = sum + mux_out;
        2'b01: temp = sum - mux_out;
        2'b10: temp = sum * mux_out;
        default: temp = sum + mux_out;
    endcase
    q = temp;
end

endmodule

module control_logic(
    input [99:0] a, b,
    input cin,
    input [1023:0] in,
    input [7:0] sel,
    input op,
    output cout,
    output [7:0] q
);

wire [99:0] sum;
wire [3:0] mux_out;

carry_select_adder csa(
    .a(a),
    .b(b),
    .cin(cin),
    .sum(sum),
    .cout(cout)
);

binary_tree_mux mux(
    .in(in),
    .sel(sel),
    .q(mux_out)
);

functional_module func(
    .sum(sum),
    .mux_out(mux_out),
    .op(op),
    .q(q)
);

endmodule

module top_module(
    input clk,
    input reset,
    input [99:0] a, b,
    input cin,
    input [1023:0] in,
    input [7:0] sel,
    input op,
    output cout,
    output [7:0] q
);

control_logic cl(
    .a(a),
    .b(b),
    .cin(cin),
    .in(in),
    .sel(sel),
    .op(op),
    .cout(cout),
    .q(q)
);

endmodule