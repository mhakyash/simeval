module shift_register (
    input clk,
    input rst,
    input ena,
    input [15:0] data_in,
    output reg [15:0] data_out
);

    reg [15:0] shift_reg;

    always @(posedge clk) begin
        if (rst) begin
            shift_reg <= 16'b0;
        end else if (ena) begin
            shift_reg <= {shift_reg[14:0], data_in[0]};
        end
    end

    assign data_out = shift_reg;

endmodule