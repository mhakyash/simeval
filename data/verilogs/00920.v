module adder_4bit (
    input [3:0] a,
    input [3:0] b,
    output reg [4:0] c,
    output reg co
);

always @(*) begin
    {co, c} = a + b;
end

endmodule