module sky130_fd_sc_lp__inputiso0p (
    X    ,
    A    ,
    SLEEP
);

    // Module ports
    output X    ;
    input  A    ;
    input  SLEEP;

    // Module supplies
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;

    // Local signals
    wire sleepn;

    //  Name  Output  Other arguments
    not not0 (sleepn, SLEEP          );
    and and0 (X     , A, sleepn      );

endmodule