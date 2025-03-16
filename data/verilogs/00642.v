module delay_module (
    input clk,
    input rst,
    input [31:0] A,
    output reg [31:0] X
);

    reg [31:0] shift_reg [0:9];
    integer i;

    always @ (posedge clk) begin
        if (rst) begin
            for (i = 0; i < 10; i = i + 1) begin
                shift_reg[i] <= 0;
            end
        end else begin
            shift_reg[0] <= A;
            for (i = 1; i < 10; i = i + 1) begin
                shift_reg[i] <= shift_reg[i-1];
            end
        end
    end

    assign X = shift_reg[9];

endmodule