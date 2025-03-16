module add_sub (
    input [3:0] a,
    input [3:0] b,
    input cin,
    input control,
    output reg [3:0] result,
    output reg overflow
);

    always @(*) begin
        if (control == 1'b0) begin // subtraction
            result = a - b - cin;
            if (a < b + cin) begin
                overflow = 1'b1;
            end else begin
                overflow = 1'b0;
            end
        end else begin // addition
            result = a + b + cin;
            if (result < a | result < b) begin
                overflow = 1'b1;
            end else begin
                overflow = 1'b0;
            end
        end
    end

endmodule