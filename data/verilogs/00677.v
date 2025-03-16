module top_module (
    input clk,
    input [15:0] a,
    input [15:0] b,
    input select,
    output [31:0] result
);

    wire [31:0] mul_out;
    wire [15:0] add_out;
    wire [31:0] adder_input;

    multiplier_module multiplier_inst (
        .clk(clk),
        .a(a),
        .b(b),
        .enable(select),
        .result(mul_out)
    );

    adder_module adder_inst (
        .a(a),
        .b(b),
        .carry_in(select),
        .result(add_out)
    );

    assign adder_input = {16'b0, add_out};
    assign result = select ? mul_out : adder_input;

endmodule

module multiplier_module (
    input clk,
    input [15:0] a,
    input [15:0] b,
    input enable,
    output reg [31:0] result
);

    always @(posedge clk) begin
        if (enable) begin
            result <= a * b;
        end
    end

endmodule

module adder_module (
    input [15:0] a,
    input [15:0] b,
    input carry_in,
    output reg [15:0] result
);

    assign result = a + b + carry_in;

endmodule