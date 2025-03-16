module adder #(parameter WIDTH=8) (
    input clk, rst, load,
    input [WIDTH-1:0] A, B,
    output [WIDTH-1:0] Q
);

    wire [WIDTH:0] carry;
    wire [WIDTH-1:0] sum;

    // Ripple-carry adder
    genvar i;
    generate 
        for (i = 0; i < WIDTH; i = i + 1) begin : adder_stage
            full_adder FA (
                .a(A[i]), .b(B[i]), .c(carry[i]),
                .sum(sum[i]), .carry(carry[i+1])
            );
        end
    endgenerate

    // D flip-flops
    reg [WIDTH-1:0] Q_reg;
    always @(posedge clk) begin
        if (rst) begin
            Q_reg <= 0;
        end else if (load) begin
            Q_reg <= sum;
        end
    end

    assign Q = Q_reg;

endmodule

module full_adder (
    input a, b, c,
    output sum, carry
);

    assign sum = a ^ b ^ c;
    assign carry = (a & b) | (a & c) | (b & c);

endmodule