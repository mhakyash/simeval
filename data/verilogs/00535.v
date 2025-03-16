module counter (
    input clk,
    input LOAD,
    input RESET,
    input [1:0] DATA,
    output reg [1:0] Q
);

reg [1:0] Q_reg1, Q_reg2;

always @(posedge clk) begin
    Q_reg1 <= Q;
end

always @(posedge clk) begin
    Q_reg2 <= Q_reg1;
end

always @(posedge clk) begin
    if (RESET) begin
        Q <= 2'b00;
    end
    else if (LOAD) begin
        Q <= DATA;
    end
    else begin
        Q <= Q_reg2 + 2'b01;
    end
end

endmodule