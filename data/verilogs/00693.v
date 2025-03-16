module cla_4bit_adder (
    input [3:0] A,
    input [3:0] B,
    output [3:0] Y
);

    wire [3:0] P;
    wire [3:0] G;
    wire [3:0] C;
    wire [3:0] C_prop;
    wire [3:0] C_gen;
    wire [3:0] C_out;

    assign P = A ^ B;
    assign G = A & B;
    assign C_prop[0] = G[0];
    assign C_prop[1] = G[1] + (P[1] & G[0]);
    assign C_prop[2] = G[2] + (P[2] & G[1]) + (P[2] & P[1] & G[0]);
    assign C_prop[3] = G[3] + (P[3] & G[2]) + (P[3] & P[2] & G[1]) + (P[3] & P[2] & P[1] & G[0]);
    assign C_gen[0] = G[0];
    assign C_gen[1] = P[1] & G[0];
    assign C_gen[2] = P[2] & G[1] | P[2] & P[1] & G[0];
    assign C_gen[3] = P[3] & G[2] | P[3] & P[2] & G[1] | P[3] & P[2] & P[1] & G[0];
    assign C_out[0] = C_prop[0];
    assign C_out[1] = C_prop[1] | C_gen[1] & C_prop[0];
    assign C_out[2] = C_prop[2] | C_gen[2] & C_prop[1] | C_gen[2] & C_gen[1] & C_prop[0];
    assign C_out[3] = C_prop[3] | C_gen[3] & C_prop[2] | C_gen[3] & C_gen[2] & C_prop[1] | C_gen[3] & C_gen[2] & C_gen[1] & C_prop[0];
    assign Y = P ^ C_out;

endmodule