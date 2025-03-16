module my_module (
    output Y ,
    input  A1,
    input  A2,
    input  A3,
    input  B1,
    input  C1
);

    // Local signals
    wire and0_out  ;
    wire nor0_out_Y;

    //  Name  Output      Other arguments
    and and0 (and0_out  , A3, A1, A2      );
    nor nor0 (nor0_out_Y, and0_out, B1, C1);
    buf buf0 (Y         , nor0_out_Y      );

endmodule

// Testbench
module testbench;
    reg A1, A2, A3, B1, C1;
    wire Y;

    my_module dut (
        .Y(Y),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .B1(B1),
        .C1(C1)
    );

    initial begin
        // Test case 1
        A1 = 1; A2 = 1; A3 = 1; B1 = 0; C1 = 0;
        #10;
        $display("Test case 1: Y = %d", Y);

        // Test case 2
        A1 = 0; A2 = 0; A3 = 0; B1 = 1; C1 = 1;
        #10;
        $display("Test case 2: Y = %d", Y);

        // Test case 3
        A1 = 1; A2 = 0; A3 = 1; B1 = 1; C1 = 0;
        #10;
        $display("Test case 3: Y = %d", Y);

        // Test case 4
        A1 = 0; A2 = 1; A3 = 0; B1 = 0; C1 = 1;
        #10;
        $display("Test case 4: Y = %d", Y);
    end
endmodule