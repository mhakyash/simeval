module test_sky130_fd_sc_ms__a32o;

    // Instantiate the module under test
    sky130_fd_sc_ms__a32o dut (
        .X   (X   ),
        .A1  (A1  ),
        .A2  (A2  ),
        .A3  (A3  ),
        .B1  (B1  ),
        .B2  (B2  ),
        .VPWR(VPWR),
        .VGND(VGND),
        .VPB (VPB ),
        .VNB (VNB )
    );

    // Declare test inputs
    reg A1, A2, A3, B1, B2, VPWR, VGND, VPB, VNB;

    // Declare test outputs
    wire X;

    // Initialize inputs
    initial begin
        A1 = 0;
        A2 = 0;
        A3 = 0;
        B1 = 0;
        B2 = 0;
        VPWR = 0;
        VGND = 0;
        VPB = 0;
        VNB = 0;
    end

    // Test case 1: all inputs are low
    initial begin
        #10;
        if (X !== 0) $error("Test case 1 failed: X should be low");
    end

    // Test case 2: A1, A2, and A3 are high, B1 and B2 are low
    initial begin
        #10;
        A1 = 1;
        A2 = 1;
        A3 = 1;
        B1 = 0;
        B2 = 0;
        if (X !== 0) $error("Test case 2 failed: X should be low");
    end

    // Test case 3: A1, A2, and A3 are low, B1 and B2 are high
    initial begin
        #10;
        A1 = 0;
        A2 = 0;
        A3 = 0;
        B1 = 1;
        B2 = 1;
        if (X !== 0) $error("Test case 3 failed: X should be low");
    end

    // Test case 4: A1, A2, and A3 are high, B1 and B2 are high
    initial begin
        #10;
        A1 = 1;
        A2 = 1;
        A3 = 1;
        B1 = 1;
        B2 = 1;
        if (X !== 1) $error("Test case 4 failed: X should be high");
    end

endmodule