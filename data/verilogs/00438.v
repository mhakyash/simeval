module excess_3_converter (
    input [3:0] binary,
    output reg [7:0] excess_3
);

reg [3:0] binary_reg;
reg [3:0] excess_3_reg;

always @ (posedge clk) begin
    binary_reg <= binary;
    excess_3_reg <= binary_reg + 4'b0011;
end

assign excess_3 = {4'b0000, excess_3_reg};

endmodule