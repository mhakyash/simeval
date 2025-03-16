module multi_gate_module (
    input A,
    input B,
    input C,
    input D,
    input E,
    output Y
);

    wire a_not, b_not, c_not, d_not, e_not;
    wire ab_and, cd_and, ae_xor_b_and;
    
    assign a_not = ~A;
    assign b_not = ~B;
    assign c_not = ~C;
    assign d_not = ~D;
    assign e_not = ~E;
    
    assign ab_and = A & B;
    assign cd_and = C & D;
    assign ae_xor_b_and = E & (A ^ B);
    
    assign Y = A & B & C & D & E;
    assign Y = A | B | C | D | E;
    assign Y = a_not;
    assign Y = b_not;
    assign Y = c_not;
    assign Y = d_not;
    assign Y = e_not;
    assign Y = ab_and | cd_and | ae_xor_b_and;

endmodule