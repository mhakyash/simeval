module ones_complement (
    input [3:0] binary,
    output reg [3:0] ones_comp
);

reg [3:0] stage1;
reg [3:0] stage2;

always @ (posedge clk) begin
    stage1 <= ~binary;
end

always @ (posedge clk) begin
    stage2 <= stage1;
end

assign ones_comp = stage2;

endmodule