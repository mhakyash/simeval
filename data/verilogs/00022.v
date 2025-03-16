module shift_register (
    input CLK,
    input LOAD,
    input SHIFT,
    input [3:0] DATA_IN,
    output reg [3:0] DATA_OUT
);

reg [3:0] shift_reg;

always @(posedge CLK) begin
    if (LOAD) begin
        shift_reg <= DATA_IN;
    end else if (SHIFT) begin
        shift_reg <= {shift_reg[2:0], shift_reg[3]};
    end
end

assign DATA_OUT = shift_reg;

endmodule