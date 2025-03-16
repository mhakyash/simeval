module bin2dec(
    input [3:0] bin,
    output reg [3:0] dec
);

always @(*)
begin
    dec = bin[3]*8 + bin[2]*4 + bin[1]*2 + bin[0]*1;
end

endmodule

// Testbench
module tb_bin2dec;

    reg [3:0] bin;
    wire [3:0] dec;

    bin2dec dut (
        .bin(bin),
        .dec(dec)
    );

    initial begin
        // Test Case 1
        bin = 4'b0000;
        #10;
        if(dec !== 0) $display("Test Case 1 Failed");

        // Test Case 2
        bin = 4'b1010;
        #10;
        if(dec !== 10) $display("Test Case 2 Failed");

        // Test Case 3
        bin = 4'b1111;
        #10;
        if(dec !== 15) $display("Test Case 3 Failed");

        $display("All test cases passed!");
        $finish;
    end

endmodule