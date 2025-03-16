module arithmetic_module(
    input [7:0] A,
    input [7:0] B,
    output reg [7:0] Sum,
    output reg [7:0] Diff,
    output reg [7:0] Prod,
    output reg [7:0] Quot
    );

    always @* begin
        Sum = A + B;
        Diff = A - B;
        Prod = A * B;
        if (B == 0) begin
            Quot = 8'hFF;
        end else begin
            Quot = A / B;
        end
    end
    
endmodule