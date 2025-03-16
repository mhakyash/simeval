module up_down_counter (
    input CLK,
    input LOAD,
    input [2:0] LOAD_VAL,
    input UP_DOWN,
    input CARRY_IN,
    output reg [2:0] Q
);

reg [2:0] Q_reg1, Q_reg2, Q_reg3;

always @(posedge CLK) begin
    Q_reg1 <= Q;
end

always @(posedge CLK) begin
    Q_reg2 <= Q_reg1;
end

always @(posedge CLK) begin
    Q_reg3 <= Q_reg2;
end

always @(posedge CLK) begin
    if (LOAD) begin
        Q <= LOAD_VAL;
    end else begin
        if (UP_DOWN) begin
            Q <= Q_reg1 + CARRY_IN;
        end else begin
            Q <= Q_reg1 - CARRY_IN;
        end
    end
end

endmodule