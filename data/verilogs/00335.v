module sky130_fd_sc_lp__nand3 (
    input A,
    input B,
    input C,
    input VPWR,
    input VGND,
    input VPB,
    input VNB,
    output Y
);

  assign Y = ~(A & B & C);

endmodule