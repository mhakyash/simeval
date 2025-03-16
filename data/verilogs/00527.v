module majority (
    input A,
    input B,
    input C,
    input VPWR,
    input VGND,
    input VPB,
    input VNB,
    output X
);

    wire M1, M2, M3, M4, M5, M6, M7, M8, M9, M10, M11, M12, M13, M14, M15;
    wire N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15;

    sky130_fd_sc_lp__maj3_lp maj1 (
        .X(M1),
        .A(A),
        .B(B),
        .C(C),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj2 (
        .X(M2),
        .A(A),
        .B(C),
        .C(B),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj3 (
        .X(M3),
        .A(B),
        .B(A),
        .C(C),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj4 (
        .X(M4),
        .A(B),
        .B(C),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj5 (
        .X(M5),
        .A(C),
        .B(A),
        .C(B),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj6 (
        .X(M6),
        .A(C),
        .B(B),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj7 (
        .X(M7),
        .A(A),
        .B(A),
        .C(B),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj8 (
        .X(M8),
        .A(A),
        .B(B),
        .C(B),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj9 (
        .X(M9),
        .A(B),
        .B(B),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj10 (
        .X(M10),
        .A(B),
        .B(A),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj11 (
        .X(M11),
        .A(C),
        .B(C),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj12 (
        .X(M12),
        .A(C),
        .B(A),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj13 (
        .X(M13),
        .A(A),
        .B(B),
        .C(C),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj14 (
        .X(M14),
        .A(B),
        .B(C),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    sky130_fd_sc_lp__maj3_lp maj15 (
        .X(M15),
        .A(C),
        .B(B),
        .C(A),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB(VPB),
        .VNB(VNB)
    );

    assign N1 = ~(M1 & M2 & M3 & M4 & M5 & M6);
    assign N2 = ~(M7 & M8 & M9 & M10 & M11 & M12);
    assign N3 = ~(M13 & M14 & M15);
    assign X = ~(N1 & N2 & N3);

endmodule