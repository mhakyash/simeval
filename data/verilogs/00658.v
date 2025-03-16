module binary_edge_detector (
    input clk,
    input reset,
    input [7:0] in,
    output reg [7:0] anyedge
);

reg [1:0] state, next_state;

parameter IDLE = 2'b00;
parameter RISING_EDGE = 2'b01;
parameter FALLING_EDGE = 2'b10;

always @(posedge clk, posedge reset) begin
    if (reset) begin
        state <= IDLE;
        anyedge <= 8'b0;
    end else begin
        state <= next_state;
        anyedge <= 8'b0;
        case (state)
            IDLE: begin
                if (in != 8'b0) begin
                    next_state = RISING_EDGE;
                    anyedge = 8'b1;
                end else begin
                    next_state = IDLE;
                end
            end
            RISING_EDGE: begin
                if (in == 8'b0) begin
                    next_state = FALLING_EDGE;
                    anyedge = 8'b10;
                end else begin
                    next_state = RISING_EDGE;
                end
            end
            FALLING_EDGE: begin
                if (in != 8'b0) begin
                    next_state = RISING_EDGE;
                    anyedge = 8'b01;
                end else begin
                    next_state = FALLING_EDGE;
                end
            end
        endcase
    end
end

endmodule

module carry_select_adder (
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [31:0] S,
    output Cout
);

wire [31:0] P, G, C1, C2;

genvar i;

generate
    for (i = 0; i < 32; i = i + 1) begin : generate_blocks
        assign P[i] = A[i] ^ B[i];
        assign G[i] = A[i] & B[i];
        assign C1[i] = (i == 0) ? Cin : (G[i-1] | (P[i-1] & C1[i-1]));
        assign C2[i] = G[i] | (P[i] & C1[i]);
        assign S[i] = A[i] ^ B[i] ^ C2[i];
    end
endgenerate

assign Cout = C2[31];

endmodule

module xor_output (
    input [7:0] anyedge,
    input [31:0] S,
    output reg [7:0] out
);

always @(anyedge, S) begin
    out <= anyedge ^ S[7:0];
end

endmodule

module top_module (
    input clk,
    input reset,
    input [7:0] in,
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output [7:0] anyedge,
    output [31:0] S,
    output Cout
);

binary_edge_detector edge_detector (
    .clk(clk),
    .reset(reset),
    .in(in),
    .anyedge(anyedge)
);

carry_select_adder adder (
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

xor_output xor (
    .anyedge(anyedge),
    .S(S),
    .out()
);

endmodule