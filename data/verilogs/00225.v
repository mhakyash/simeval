module sequential_multiplier(
    input clk,
    input reset,
    input [3:0] A,
    input [3:0] B,
    output reg [7:0] Y
);

reg [3:0] a_reg, b_reg;
reg [7:0] product_reg;
reg [2:0] counter;

always @(posedge clk) begin
    if (reset) begin
        a_reg <= 4'b0;
        b_reg <= 4'b0;
        product_reg <= 8'b0;
        counter <= 3'b0;
        Y <= 8'b0;
    end
    else begin
        a_reg <= A;
        b_reg <= B;
        counter <= 3'b0;
        product_reg <= 8'b0;
        for (counter = 0; counter < 4; counter = counter + 1) begin
            if (b_reg[0] == 1'b1) begin
                product_reg <= product_reg + (a_reg << counter);
            end
            b_reg <= {b_reg[2:0], 1'b0};
        end
        Y <= product_reg;
    end
end

endmodule