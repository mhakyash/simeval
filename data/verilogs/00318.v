module add_sub_split (
    input [31:0] a, // First 32-bit input
    input [31:0] b, // Second 32-bit input
    input select, // Select input to choose between addition and subtraction
    output o2, // Most significant bit of the result
    output o1, // Middle bit of the result
    output o0, // Least significant bit of the result
    output [31:0] sum, // 32-bit sum or difference
    output [2:0] outv // Three 1-bit outputs representing the result
);

    wire [31:0] add_out, sub_out;
    wire [15:0] a_lsb, b_lsb, a_msb, b_msb;
    wire [1:0] add_carry, sub_carry;
    
    // Split the input a and b into most significant and least significant bits
    assign a_lsb = a[2:0];
    assign b_lsb = b[2:0];
    assign a_msb = a[31:16];
    assign b_msb = b[31:16];
    
    // Instantiate the carry-select adder for addition
    carry_select_adder adder1 (
        .a(a_lsb),
        .b(b_lsb),
        .carry_in(1'b0),
        .sum(add_out[2:0]),
        .carry_out(add_carry[0])
    );
    
    carry_select_adder adder2 (
        .a(a_msb),
        .b(b_msb),
        .carry_in(add_carry[0]),
        .sum(add_out[31:16]),
        .carry_out(add_carry[1])
    );
    
    // Instantiate the carry-select adder for subtraction
    carry_select_adder sub (
        .a(a_lsb),
        .b(b_lsb),
        .carry_in(1'b1),
        .sum(sub_out[2:0]),
        .carry_out(sub_carry[0])
    );
    
    assign sub_out[31:16] = a_msb - b_msb - sub_carry[0];
    
    // XOR gate to select between addition and subtraction
    assign sum = select ? sub_out : add_out;
    
    // Output the most significant bit, middle bit, and least significant bit of the result
    assign o2 = sum[31];
    assign o1 = sum[15];
    assign o0 = sum[2];
    
    // Output the 3-bit binary number representing the result
    assign outv = {o2, o1, o0};
    
endmodule

// 16-bit carry-select adder module
module carry_select_adder (
    input [15:0] a, // First 16-bit input
    input [15:0] b, // Second 16-bit input
    input carry_in, // Carry input
    output [15:0] sum, // 16-bit sum
    output carry_out // Carry output
);

    wire [15:0] sum1, sum2;
    wire [15:0] a1, b1, a2, b2;
    wire [15:0] carry1, carry2;
    
    // Split the inputs a and b into two 8-bit parts
    assign a1 = a[7:0];
    assign b1 = b[7:0];
    assign a2 = a[15:8];
    assign b2 = b[15:8];
    
    // Generate the carry and sum for the first 8 bits
    full_adder adder1 (
        .a(a1),
        .b(b1),
        .carry_in(carry_in),
        .sum(sum1[7]),
        .carry_out(carry1)
    );
    
    // Generate the carry and sum for the second 8 bits
    full_adder adder2 (
        .a(a2),
        .b(b2),
        .carry_in(carry1),
        .sum(sum2[7]),
        .carry_out(carry2)
    );
    
    // Select the sum based on the carry value
    assign sum = carry2 ? sum1 + ({{8{carry1}}, a2, b2}) : sum2 + ({{8{carry2}}, a1, b1});
    
    // Output the carry value
    assign carry_out = carry2;
    
endmodule

// Full adder module
module full_adder (
    input a, // First input bit
    input b, // Second input bit
    input carry_in, // Carry input
    output sum, // Sum output bit
    output carry_out // Carry output bit
);

    assign {carry_out, sum} = a + b + carry_in;
    
endmodule