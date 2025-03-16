module three_to_one (
    out,
    in1,
    in2,
    in3
);

    output out;
    input  in1;
    input  in2;
    input  in3;

    // Voltage supply signals
    supply1 VDD;
    supply0 GND;

    // AND gate
    assign out = in1 & in2 & in3;

endmodule

// Testbench
module three_to_one_tb;

    reg in1, in2, in3;
    wire out;

    three_to_one dut (
        .out(out),
        .in1(in1),
        .in2(in2),
        .in3(in3)
    );

    initial begin
        // Test case 1: All inputs high
        in1 = 1;
        in2 = 1;
        in3 = 1;
        #10;
        if (out !== 1) $error("Test case 1 failed");

        // Test case 2: Only one input high
        in1 = 1;
        in2 = 0;
        in3 = 0;
        #10;
        if (out !== 0) $error("Test case 2 failed");

        // Test case 3: Two inputs high
        in1 = 1;
        in2 = 1;
        in3 = 0;
        #10;
        if (out !== 0) $error("Test case 3 failed");

        // Test case 4: All inputs low
        in1 = 0;
        in2 = 0;
        in3 = 0;
        #10;
        if (out !== 0) $error("Test case 4 failed");

        $display("All test cases passed");
    end

endmodule