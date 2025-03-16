module nand4 (
    input A,
    input B,
    input C,
    input D,
    output Y,
    input VPWR,
    input VGND
);

    wire nand1_out, nand2_out, nand3_out;

    sky130_fd_sc_hd__nand2 nand1(.A(A), .B(B), .Y(nand1_out));
    sky130_fd_sc_hd__nand2 nand2(.A(C), .B(D), .Y(nand2_out));
    sky130_fd_sc_hd__nand2 nand3(.A(nand1_out), .B(nand2_out), .Y(nand3_out));
    sky130_fd_sc_hd__inverter inv(.A(nand3_out), .Y(Y));

endmodule