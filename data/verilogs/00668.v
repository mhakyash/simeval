module four_bit_adder(
    input [3:0] A,
    input [3:0] B,
    output [3:0] S
);

    wire c1, c2, c3;
    wire [3:0] x1, x2, x3, x4, x5, x6;
    
    // Voltage supply signals
    supply1 VPWR;
    supply0 VGND;
    supply1 VPB ;
    supply0 VNB ;
    
    // First stage
    sky130_fd_sc_hdll__xor2_8 xor1 (.X(x1), .A(A[0]), .B(B[0]));
    sky130_fd_sc_hdll__and2_8 and1 (.X(c1), .A(A[0]), .B(B[0]));
    
    // Second stage
    sky130_fd_sc_hdll__xor2_8 xor2 (.X(x2), .A(A[1]), .B(B[1]));
    sky130_fd_sc_hdll__and2_8 and2 (.X(c2), .A(A[1]), .B(B[1]));
    sky130_fd_sc_hdll__xor2_8 xor3 (.X(x3), .A(x1), .B(c1));
    sky130_fd_sc_hdll__and2_8 and3 (.X(c3), .A(x1), .B(c1));
    
    // Third stage
    sky130_fd_sc_hdll__xor2_8 xor4 (.X(x4), .A(A[2]), .B(B[2]));
    sky130_fd_sc_hdll__and2_8 and4 (.X(x5), .A(x2), .B(c3));
    sky130_fd_sc_hdll__xor2_8 xor5 (.X(x6), .A(x3), .B(x5));
    
    // Fourth stage
    sky130_fd_sc_hdll__xor2_8 xor6 (.X(S[0]), .A(A[3]), .B(B[3]));
    sky130_fd_sc_hdll__and2_8 and5 (.X(x7), .A(x4), .B(c3));
    sky130_fd_sc_hdll__xor2_8 xor7 (.X(S[1]), .A(x3), .B(x7));
    sky130_fd_sc_hdll__and2_8 and6 (.X(x8), .A(x5), .B(c3));
    sky130_fd_sc_hdll__xor2_8 xor8 (.X(S[2]), .A(x6), .B(x8));
    sky130_fd_sc_hdll__or2_8  or1  (.X(S[3]), .A(c3), .B(x7));
    
endmodule