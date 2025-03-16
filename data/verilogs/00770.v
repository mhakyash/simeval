module sky130_fd_sc_ls__a2111o (
    X ,
    A1,
    A2,
    B1,
    C1,
    D1
);

    // Module ports
    output X ;
    input  A1;
    input  A2;
    input  B1;
    input  C1;
    input  D1;

    // Local signals
    wire and0_out ;
    wire or0_out_X;

    //  Name  Output     Other arguments
    and and0 (and0_out , A1, A2              );
    or  or0  (or0_out_X, C1, B1, and0_out, D1);
    buf buf0 (X        , or0_out_X           );

endmodule