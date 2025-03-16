module ripple_carry_adder(
    input wire [3:0] A,
    input wire [3:0] B,
    input wire Cin,
    input wire Load,
    input wire Clear,
    input wire clock,
    output reg [3:0] S,
    output reg Cout
);

always @(posedge clock) begin
    if (Clear) begin
        S <= 4'b0;
        Cout <= 1'b0;
    end else if (Load) begin
        S <= A;
        Cout <= Cin;
    end else begin
        {Cout, S} <= A + B + Cin;
    end
end

endmodule