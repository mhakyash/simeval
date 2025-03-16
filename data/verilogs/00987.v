module shift_register_4bit (
    input [3:0] A,
    input [3:0] B,
    input [3:0] C,
    input [3:0] D,
    input load,
    input clk,
    output reg [3:0] Q
);

reg [3:0] Q1, Q2, Q3, Q4;

always @(posedge clk) begin
    if (load) begin
        Q1 <= A;
        Q2 <= B;
        Q3 <= C;
        Q4 <= D;
    end else begin
        Q1 <= Q2;
        Q2 <= Q3;
        Q3 <= Q4;
        Q4 <= Q;
    end
end

assign Q = Q1;

endmodule