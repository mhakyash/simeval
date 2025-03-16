module two_input_and_gate(
    input A,
    input B,
    output Y
);

    wire a_not, b_not, ab_and;
    not u1 (.A(A), .Y(a_not));
    not u2 (.A(B), .Y(b_not));
    and u3 (.A(a_not), .B(b_not), .Y(ab_and));
    not u4 (.A(ab_and), .Y(Y));
    
endmodule