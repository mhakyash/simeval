module carry_lookahead_adder (
    input [7:0] a,
    input [7:0] b,
    output [7:0] sum,
    output carry_out
);

wire [7:0] p, g;
wire [7:0] c;

assign p = a ^ b;
assign g = a & b;

assign c[0] = g[0];
assign c[1] = g[1] | (p[1] & g[0]);
assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]);
assign c[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
assign c[4] = g[4] | (p[4] & g[3]) | (p[4] & p[3] & g[2]) | (p[4] & p[3] & p[2] & g[1]) | (p[4] & p[3] & p[2] & p[1] & g[0]);
assign c[5] = g[5] | (p[5] & g[4]) | (p[5] & p[4] & g[3]) | (p[5] & p[4] & p[3] & g[2]) | (p[5] & p[4] & p[3] & p[2] & g[1]) | (p[5] & p[4] & p[3] & p[2] & p[1] & g[0]);
assign c[6] = g[6] | (p[6] & g[5]) | (p[6] & p[5] & g[4]) | (p[6] & p[5] & p[4] & g[3]) | (p[6] & p[5] & p[4] & p[3] & g[2]) | (p[6] & p[5] & p[4] & p[3] & p[2] & g[1]) | (p[6] & p[5] & p[4] & p[3] & p[2] & p[1] & g[0]);
assign c[7] = g[7] | (p[7] & g[6]) | (p[7] & p[6] & g[5]) | (p[7] & p[6] & p[5] & g[4]) | (p[7] & p[6] & p[5] & p[4] & g[3]) | (p[7] & p[6] & p[5] & p[4] & p[3] & g[2]) | (p[7] & p[6] & p[5] & p[4] & p[3] & p[2] & g[1]) | (p[7] & p[6] & p[5] & p[4] & p[3] & p[2] & p[1] & g[0]);

assign sum = a + b + {c[7:0]};
assign carry_out = c[7];

endmodule

module register_counter (
    input clk,
    input reset,
    output reg [7:0] q,
    output reg [3:0] counter
);

always @(posedge clk) begin
    if (reset) begin
        q <= 8'b00110100;
        counter <= 4'b0000;
    end else begin
        q <= q + 1;
        counter <= counter + 1;
    end
end

endmodule

module final_output (
    input [7:0] adder_out,
    input [7:0] reg_out,
    input select,
    output [7:0] q
);

assign q = (select == 1) ? adder_out : (select == 2) ? reg_out : 8'b00000000;

endmodule

module top_module (
    input clk,
    input reset,
    input [7:0] a,
    input [7:0] b,
    input select,
    output [7:0] q
);

wire [7:0] adder_out;
wire [7:0] reg_out;
wire [3:0] counter;

carry_lookahead_adder adder_inst (
    .a(a),
    .b(b),
    .sum(adder_out),
    .carry_out()
);

register_counter reg_inst (
    .clk(clk),
    .reset(reset),
    .q(reg_out),
    .counter(counter)
);

final_output final_inst (
    .adder_out(adder_out),
    .reg_out(reg_out),
    .select(select),
    .q(q)
);

assign carry_out = adder_inst.carry_out;

endmodule