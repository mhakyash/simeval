module addsub_4bit(A, B, sub, Y);
    input [3:0] A, B;
    input sub;
    output [3:0] Y;

    wire [3:0] X, C;

    // Calculate the 1's complement of B
    wire [3:0] B_1s_comp;
    assign B_1s_comp = ~B;

    // Add 1 to the 1's complement of B to get the 2's complement of B
    wire [3:0] B_2s_comp;
    float_add_sub_altpriority_encoder_3e8 U1(.data({1'b0, 1'b1}), .q(B_2s_comp[0]), .zero(B_2s_comp[0]));
    assign B_2s_comp[0] = sub;
    genvar i;
    generate
        for (i = 1; i < 4; i = i + 1) begin
            float_add_sub_altpriority_encoder_3e8 U2(.data({B_1s_comp[i], B_2s_comp[i-1]}), .q(B_2s_comp[i]), .zero(B_2s_comp[i]));
        end
    endgenerate

    // Perform addition or subtraction based on the value of sub
    assign X[0] = A[0] ^ B_2s_comp[0];
    float_add_sub_altpriority_encoder_3e8 U3(.data({A[1], B_2s_comp[1]}), .q(X[1]), .zero(X[1]));
    float_add_sub_altpriority_encoder_3e8 U4(.data({A[2], B_2s_comp[2]}), .q(X[2]), .zero(X[2]));
    float_add_sub_altpriority_encoder_3e8 U5(.data({A[3], B_2s_comp[3]}), .q(X[3]), .zero(X[3]));

    // Calculate the carry-out
    assign C[0] = (sub & (~X[0])) | (~sub & X[0]);
    float_add_sub_altpriority_encoder_3e8 U6(.data({C[0], X[1]}), .q(C[1]), .zero(C[1]));
    float_add_sub_altpriority_encoder_3e8 U7(.data({C[1], X[2]}), .q(C[2]), .zero(C[2]));
    float_add_sub_altpriority_encoder_3e8 U8(.data({C[2], X[3]}), .q(C[3]), .zero(C[3]));

    // Combine the sum and the carry-out to get the final result
    assign Y[0] = X[0];
    float_add_sub_altpriority_encoder_3e8 U9(.data({X[1], C[0]}), .q(Y[1]), .zero(Y[1]));
    float_add_sub_altpriority_encoder_3e8 U10(.data({X[2], C[1]}), .q(Y[2]), .zero(Y[2]));
    float_add_sub_altpriority_encoder_3e8 U11(.data({X[3], C[2]}), .q(Y[3]), .zero(Y[3]));
endmodule