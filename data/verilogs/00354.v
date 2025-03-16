module testbench();

    // Inputs are registered
    reg A;
    reg B;
    reg VPWR;
    reg VGND;
    reg VPB;
    reg VNB;

    // Outputs are wires
    wire X;

    // Instantiate the sky130_fd_sc_hd__or2 gate
    sky130_fd_sc_hd__or2 dut (.A(A), .B(B), .VPWR(VPWR), .VGND(VGND), .VPB(VPB), .VNB(VNB), .X(X));

    // Drive the inputs with a testbench
    initial
    begin
        // Initial state is x for all inputs.
        A    = 1'bX;
        B    = 1'bX;
        VGND = 1'bX;
        VNB  = 1'bX;
        VPB  = 1'bX;
        VPWR = 1'bX;

        #20   A    = 1'b0;
        #40   B    = 1'b0;
        #60   VGND = 1'b0;
        #80   VNB  = 1'b0;
        #100  VPB  = 1'b0;
        #120  VPWR = 1'b0;
        #140  A    = 1'b1;
        #160  B    = 1'b1;
        #180  VGND = 1'b1;
        #200  VNB  = 1'b1;
        #220  VPB  = 1'b1;
        #240  VPWR = 1'b1;
        #260  A    = 1'b0;
        #280  B    = 1'b0;
        #300  VGND = 1'b0;
        #320  VNB  = 1'b0;
        #340  VPB  = 1'b0;
        #360  VPWR = 1'b0;
        #380  VPWR = 1'b1;
        #400  VPB  = 1'b1;
        #420  VNB  = 1'b1;
        #440  VGND = 1'b1;
        #460  B    = 1'b1;
        #480  A    = 1'b1;
        #500  VPWR = 1'bx;
        #520  VPB  = 1'bx;
        #540  VNB  = 1'bx;
        #560  VGND = 1'bx;
        #580  B    = 1'bx;
        #600  A    = 1'bx;
    end

    // Check the value of X after each input change and print it out
    always @(A or B or VPWR or VGND or VPB or VNB)
    begin
        $display("X = %b", X);
    end

endmodule