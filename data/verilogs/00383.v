module ripple_addsub (
    input [3:0] A,
    input [3:0] B,
    input sub,
    output reg [3:0] sum,
    output reg carry
);

    always @* begin
        if (sub) begin
            sum = A - B;
            carry = (A >= B) ? 1'b1 : 1'b0;
        end
        else begin
            sum = A + B;
            carry = (sum[3]) ? 1'b1 : 1'b0;
        end
    end

endmodule