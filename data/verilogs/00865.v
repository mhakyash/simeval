module sky130_fd_sc_hd__o311ai (
    input  A1  ,
    input  A2  ,
    input  A3  ,
    input  B1  ,
    input  C1  ,
    output Y   ,

    input  VPB ,
    input  VPWR,
    input  VGND,
    input  VNB
);
    assign Y = (A1 || (A2 && !A1) || (A3 && !A2 && !A1)) ? 1'b1 : 1'b0;
endmodule