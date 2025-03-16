module adder4 (
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);

    wire [3:0] temp_sum;
    wire [3:0] temp_carry;
    
    assign temp_sum = a + b + cin;
    assign temp_carry = {a[0], b[0], cin} + {a[1], b[1], temp_sum[0]} + {a[2], b[2], temp_sum[1]} + {a[3], b[3], temp_sum[2]};
    
    assign sum = temp_sum;
    assign cout = temp_carry[4];
    
endmodule