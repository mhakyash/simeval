module top_module( 
    input a, 
    input b,
    input [2:0] a_bitwise,
    input [2:0] b_bitwise,
    output [2:0] out_sum
); 

    wire cout;
    wire sum;
    wire [2:0] out_or_bitwise;
    wire out_or_logical;
    wire [5:0] out_not;
    wire [2:0] out_final;
    
    half_adder ha(a, b, cout, sum);
    bitwise_OR bo(a_bitwise, b_bitwise, out_or_bitwise, out_or_logical, out_not);
    functional_module fm(cout, sum, out_or_bitwise, out_or_logical, out_not, out_final);
    
    assign out_sum = out_final;
    
endmodule

module half_adder( 
    input a, 
    input b,
    output cout, 
    output sum
);
    assign cout = a & b;
    assign sum = a ^ b;
endmodule

module bitwise_OR( 
    input [2:0] a_bitwise, 
    input [2:0] b_bitwise,
    output [2:0] out_or_bitwise,
    output out_or_logical,
    output [5:0] out_not
);
    assign out_or_bitwise = a_bitwise | b_bitwise;
    assign out_or_logical = |{a_bitwise, b_bitwise};
    assign out_not = ~{a_bitwise, b_bitwise};
endmodule

module functional_module( 
    input cout, 
    input sum,
    input [2:0] out_or_bitwise,
    input out_or_logical,
    input [5:0] out_not,
    output [2:0] out_final
);
    assign out_final = sum + out_or_bitwise;
endmodule