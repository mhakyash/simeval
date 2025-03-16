module binary_to_bcd_converter (
    input [7:0] BIN,
    output [3:0] BCD_HIGH1,
    output [3:0] BCD_LOW1,
    output [3:0] BCD_HIGH2,
    output [3:0] BCD_LOW2
);

reg [3:0] bcd_high1_reg, bcd_low1_reg, bcd_high2_reg, bcd_low2_reg;
reg [7:0] bin_reg;

always @(posedge clk) begin
    // Stage 1: Convert BIN to BCD_HIGH1 and BCD_LOW1
    bcd_high1_reg <= {1'b0, BIN[7], BIN[6], BIN[5]};
    bcd_low1_reg <= {1'b0, BIN[4], BIN[3], BIN[2]};
    
    // Stage 2: Convert BIN to BCD_HIGH2 and BCD_LOW2
    bcd_high2_reg <= {1'b0, BIN[1], BIN[0], 1'b0};
    bcd_low2_reg <= {1'b0, BIN[1], BIN[0], 1'b0};
end

assign BCD_HIGH1 = bcd_high1_reg;
assign BCD_LOW1 = bcd_low1_reg;
assign BCD_HIGH2 = bcd_high2_reg;
assign BCD_LOW2 = bcd_low2_reg;

endmodule