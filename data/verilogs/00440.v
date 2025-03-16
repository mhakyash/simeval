module top();

    // Inputs are registered
    reg VPWR;
    reg VGND;
    reg VPB;
    reg VNB;

    // Outputs are wires
    wire VDD;
    wire VSS;

    // Instantiate the sky130_fd_sc_hdll__tapvgnd2 module
    sky130_fd_sc_hdll__tapvgnd2 dut (.VPWR(VPWR), .VGND(VGND), .VPB(VPB), .VNB(VNB));

    // Logic to generate VDD and VSS outputs
    assign VDD = (VPWR & VGND & VPB & VNB) ? 1'b1 : 1'b0;
    assign VSS = (VPWR | VGND | VPB | VNB) ? 1'b0 : 1'b1;

endmodule