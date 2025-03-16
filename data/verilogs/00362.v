module booth_multiplier (
    input [3:0] A,
    input [3:0] B,
    output [7:0] Y
);

reg [7:0] P;
reg [4:0] S;

always @(*) begin
    P = {4'b0, A} * {4'b0, B};
    S = {P[7], P[6:4]} + ({1'b0, P[3:1]} ^ {1'b0, P[2:0]});
end

assign Y = {S[4], S[3:0], P[3:0]};

endmodule