module shift_addsub (
    input clk,
    input reset,
    input SER,
    input [3:0] A,
    input [3:0] B,
    input sub,
    output [3:0] result
);

    reg [3:0] Q;
    wire [3:0] shifted_Q;
    wire [3:0] added_A;
    wire [3:0] subbed_A;

    shift_register shift_reg (
        .clk(clk),
        .reset(reset),
        .SER(SER),
        .SHIFT(shifted_Q),
        .LOAD(Q)
    );

    adder_subtractor addsub (
        .A(A),
        .B(shifted_Q),
        .sub(sub),
        .result(added_A),
        .sub_result(subbed_A)
    );

    assign result = (sub) ? subbed_A : added_A;

endmodule