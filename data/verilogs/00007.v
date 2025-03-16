module combinational_logic (
    Y ,
    A1,
    A2,
    B1,
    C1,
    D1
);

    // Module ports
    output Y ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;
    input  D1;

    // Local signals
    wire or0_out    ;
    wire nand0_out_Y;

    //   Name   Output       Other arguments
    or   or0   (or0_out    , A2, A1             );
    nand nand0 (nand0_out_Y, C1, B1, D1, or0_out);
    buf  buf0  (Y          , nand0_out_Y        );

endmodule