module barrel_shifter (
    input [3:0] A,
    input [1:0] B,
    output reg [3:0] shifted
);

always @(*) begin
    case (B)
        2'b00: shifted = A;
        2'b01: shifted = {A[2:0], A[3]};
        2'b10: shifted = {A[1:0], A[3:2]};
        2'b11: shifted = {A[0], A[3:1]};
    endcase
end

endmodule

module up_down_counter (
    input clk,
    input UP,
    input DOWN,
    input reset,
    output reg [2:0] Q
);

always @(posedge clk) begin
    if (reset) begin
        Q <= 3'b000;
    end else if (UP && !DOWN) begin
        Q <= Q + 1;
    end else if (!UP && DOWN) begin
        Q <= Q - 1;
    end
end

endmodule

module functional_module (
    input [3:0] shifted,
    input [2:0] Q,
    output reg [7:0] q
);

always @(*) begin
    q = {4'b0000, shifted} + {3'b000, Q};
end

endmodule

module top_module (
    input clk,
    input reset,
    input [3:0] A,
    input [1:0] B,
    input UP,
    input DOWN,
    output [7:0] q
);

wire [3:0] shifted;
wire [2:0] Q;

barrel_shifter bs (
    .A(A),
    .B(B),
    .shifted(shifted)
);

up_down_counter udc (
    .clk(clk),
    .UP(UP),
    .DOWN(DOWN),
    .reset(reset),
    .Q(Q)
);

functional_module fm (
    .shifted(shifted),
    .Q(Q),
    .q(q)
);

endmodule