module mux4 (
    X   ,
    A0  ,
    A1  ,
    A2  ,
    A3  ,
    S0  ,
    S1  ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output X   ;
    input  A0  ;
    input  A1  ;
    input  A2  ;
    input  A3  ;
    input  S0  ;
    input  S1  ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Local signals
    wire [3:0] data_in;
    wire [1:0] select;
    assign data_in = {A3, A2, A1, A0};
    assign select = {S1, S0};

    // MUX implementation
    assign X = data_in[select];

endmodule