module Adder4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] temp_sum;
    wire temp_cout;

    // Full adder for bit 0
    FullAdder fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(temp_sum[0]), .cout(temp_cout));
    
    // Full adder for bit 1
    FullAdder fa1 (.a(a[1]), .b(b[1]), .cin(temp_cout), .sum(temp_sum[1]), .cout(temp_cout));
    
    // Full adder for bit 2
    FullAdder fa2 (.a(a[2]), .b(b[2]), .cin(temp_cout), .sum(temp_sum[2]), .cout(temp_cout));
    
    // Full adder for bit 3
    FullAdder fa3 (.a(a[3]), .b(b[3]), .cin(temp_cout), .sum(temp_sum[3]), .cout(cout));
    
    assign sum = temp_sum;

endmodule


module FullAdder (
    input a,
    input b,
    input cin,
    output sum,
    output cout
);

    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);

endmodule