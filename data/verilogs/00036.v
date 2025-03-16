module sky130_fd_sc_hvl__and3 (
    input A,
    input B,
    input C,
    input VPWR,
    input VGND,
    input VPB,
    input VNB,
    output reg X
);

    always @(A, B, C)
    begin
        if (A && B && C)
            #5 X = 1;
        else
            #5 X = 0;
    end

endmodule