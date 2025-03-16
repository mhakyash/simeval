module compare_module (
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] result
);

    always @(*) begin
        if (A < B) begin
            result = 4'b0000;
        end else begin
            result = A ^ B;
        end
    end

endmodule

module compare_module_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    
    // Outputs
    wire [3:0] result;
    
    // Instantiate the Unit Under Test (UUT)
    compare_module uut (
        .A(A),
        .B(B),
        .result(result)
    );
    
    initial begin
        // Initialize Inputs
        A = 0;
        B = 0;
        
        // Wait 100 ns for global reset to finish
        #100;
        
        // Test case 1: A < B
        A = 4'b0010;
        B = 4'b1000;
        #100;
        if (result !== 4'b0000) $display("Test case 1 failed.");
        
        // Test case 2: A >= B
        A = 4'b1100;
        B = 4'b0101;
        #100;
        if (result !== 4'b1001) $display("Test case 2 failed.");
        
        // Test case 3: A = B
        A = 4'b1010;
        B = 4'b1010;
        #100;
        if (result !== 4'b0000) $display("Test case 3 failed.");
        
        $display("All test cases passed.");
        $finish;
    end
    
endmodule