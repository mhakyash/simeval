module my_module (
    VPWR,
    VGND,
    X   ,
    A1  ,
    A2  ,
    B1  ,
    C1  ,
    D1
);

    // Module ports
    input  VPWR;
    input  VGND;
    output X   ;
    input  A1  ;
    input  A2  ;
    input  B1  ;
    input  C1  ;
    input  D1  ;

    // Local signals
    wire    nand0_out_A1_A2    ;
    wire    nand1_out_B1_C1    ;
    wire    nand2_out_D1_or0   ;
    wire    nand3_out_nand0_nand1;
    wire    buf0_out_nand3     ;

    //                           Name          Output              Other arguments
    nand                         nand0        (nand0_out_A1_A2    , A1, A2              );
    nand                         nand1        (nand1_out_B1_C1    , B1, C1              );
    or                           or0          (nand2_out_D1_or0   , A2, A1              );
    nand                         nand2        (nand3_out_nand0_nand1, nand0_out_A1_A2, nand1_out_B1_C1, nand2_out_D1_or0);
    buf                          buf0         (X                 , buf0_out_nand3     );
    nand                         nand3        (buf0_out_nand3     , nand3_out_nand0_nand1);

endmodule