module adder_4bit(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output reg [3:0] sum,
    output reg cout
);

    always @(*) begin
        sum = a + b + cin;
        cout = (a[3] & b[3]) | (a[3] & cin) | (b[3] & cin);
    end

endmodule