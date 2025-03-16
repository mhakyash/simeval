module and_control(
    input [3:0] in1,
    input [3:0] in2,
    input select,
    output [3:0] out);

    wire [3:0] and_output;
    functional_module func_module(.in1(in1), .in2(in2), .out(and_output));

    assign out = (select == 1'b0) ? and_output : in1;

endmodule

module functional_module(
    input [3:0] in1,
    input [3:0] in2,
    output [3:0] out);

    assign out = in1 & in2;

endmodule

module top_module(
    input [3:0] in1,
    input [3:0] in2,
    input select,
    output [3:0] out);

    and_control and_module(.in1(in1), .in2(in2), .select(select), .out(out));

endmodule