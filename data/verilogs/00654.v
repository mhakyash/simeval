module comparator_8bit (
    input [7:0] a,
    input [7:0] b,
    output gt,
    output lt,
    output eq
);

    assign gt = (a > b) ? 1'b1 : 1'b0;
    assign lt = (a < b) ? 1'b1 : 1'b0;
    assign eq = (a == b) ? 1'b1 : 1'b0;

endmodule