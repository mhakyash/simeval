module shift_register (
    input clk,
    input parallel_load,
    input [3:0] in,
    output reg out
);

reg [3:0] reg1, reg2, reg3, reg4;

always @(posedge clk) begin
    reg4 <= reg3;
    reg3 <= reg2;
    reg2 <= reg1;
    reg1 <= parallel_load ? in : reg1;
    out <= reg4;
end

endmodule