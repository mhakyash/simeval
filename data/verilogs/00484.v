module test_roi_bramis_bit0;

    // Inputs
    reg clk;
    reg [255:0] din;

    // Outputs
    wire [255:0] dout;

    // Instantiate the Unit Under Test (UUT)
    roi_bramis_bit0 uut (
        .clk(clk),
        .din(din),
        .dout(dout)
    );

    initial begin
        // Initialize Inputs
        clk = 0;
        din = 256'h0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF;

        // Wait for 100 ns for reset to complete
        #100;

        // Check the output
        if (dout !== 256'h0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF) begin
            $display("Test failed: Expected output is 256'h0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF0123456789ABCDEF, but actual output is %h", dout);
            $finish;
        end else begin
            $display("Test passed: Output is correct");
        end

        // End the simulation
        $finish;
    end

    always #5 clk = ~clk;

endmodule