module unsigned_divider (
    aclr,
    clock,
    denom,
    numer,
    quotient,
    remain
);

    input aclr;
    input clock;
    input [3:0] denom;
    input [9:0] numer;
    output [9:0] quotient;
    output [3:0] remain;

    wire [9:0] sub_wire0;
    wire [3:0] sub_wire1;
    wire [9:0] quotient = sub_wire0[9:0];
    wire [3:0] remain = sub_wire1[3:0];

    lpm_divide lpm_divide_component (
        .denom(denom),
        .aclr(aclr),
        .clock(clock),
        .numer(numer),
        .quotient(sub_wire0),
        .remain(sub_wire1),
        .clken(1'b1)
    );

    assign quotient = sub_wire0;
    assign remain = sub_wire1;

endmodule