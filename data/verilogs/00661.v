module custom_logic (
    Y   ,
    A1  ,
    A2  ,
    B1_N
);

    // Module ports
    output Y   ;
    input  A1  ;
    input  A2  ;
    input  B1_N;

    // Local signals
    wire not_B1_N;
    wire and0_out;
    wire and1_out;
    wire or0_out;
    wire nand0_out_Y;

    //   Name      Output         Other arguments
    not  not_B1_N (not_B1_N      , B1_N           );
    and  and0     (and0_out      , A1, A2         );
    and  and1     (and1_out      , not_B1_N, and0_out);
    or   or0      (or0_out       , A1, A2         );
    nand nand0    (nand0_out_Y   , and1_out, or0_out);
    buf  buf0     (Y             , nand0_out_Y    );

endmodule