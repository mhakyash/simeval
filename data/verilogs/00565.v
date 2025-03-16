module regfile(
    input CLK,
    input [4:0] ADDR_1,
    input [4:0] ADDR_2,
    input [4:0] ADDR_3,
    input [4:0] ADDR_4,
    input [4:0] ADDR_5,
    input [63:0] D_IN,
    input WE,
    output [63:0] D_OUT_1,
    output [63:0] D_OUT_2,
    output [63:0] D_OUT_3,
    output [63:0] D_OUT_4,
    output [63:0] D_OUT_5
);

reg [63:0] regfile_mem [31:0];

assign D_OUT_1 = regfile_mem[ADDR_1];
assign D_OUT_2 = regfile_mem[ADDR_2];
assign D_OUT_3 = regfile_mem[ADDR_3];
assign D_OUT_4 = regfile_mem[ADDR_4];
assign D_OUT_5 = regfile_mem[ADDR_5];

always @(posedge CLK) begin
    if (WE) begin
        regfile_mem[ADDR_5] <= D_IN;
    end
end

endmodule