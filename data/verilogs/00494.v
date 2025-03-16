module dlyinv3sd1 (
    input  A,
    output Y
);

    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;
    
    // Inverter buffer
    bufif1 invbuf (A, invA, VPB, VNB);

    // Delay stages
    wire dly1, dly2, dly3;
    sky130_fd_sc_ms__dlx2 dly1_inst (.A(invA), .Y(dly1));
    sky130_fd_sc_ms__dlx2 dly2_inst (.A(dly1), .Y(dly2));
    sky130_fd_sc_ms__dlx2 dly3_inst (.A(dly2), .Y(dly3));
    
    // Skew delay
    wire skew;
    sky130_fd_sc_ms__dlx2 skew_inst (.A(dly3), .Y(skew));
    
    // Final output
    bufif1 outbuf (skew, Y, VPB, VNB);

endmodule