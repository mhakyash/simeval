module shift_register (
    input clk,
    input [3:0] in,
    input load,
    output reg [3:0] out,
    output reg valid
);

reg [3:0] reg1, reg2, reg3, reg4;

always @(posedge clk) begin
    if (load) begin
        reg1 <= in;
        reg2 <= reg1;
        reg3 <= reg2;
        reg4 <= reg3;
        valid <= 1;
    end else begin
        reg1 <= reg2;
        reg2 <= reg3;
        reg3 <= reg4;
        reg4 <= 0;
        valid <= 0;
    end
end

assign out = reg4;

endmodule