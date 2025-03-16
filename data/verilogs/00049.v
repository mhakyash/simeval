module iq_comp(
    input clk,
    input RESETn,
    input freeze_iqcomp,
    input [1:0] op_mode,
    input signed [3:0] Ix,
    input signed [3:0] Qx,
    input signed [12:0] Wr_in,
    input signed [12:0] Wj_in,
    output signed [3:0] Iy,
    output signed [3:0] Qy,
    output wire settled,
    output signed [12:0] Wr,
    output signed [12:0] Wj
);

    reg signed [3:0] Iy_reg;
    reg signed [3:0] Qy_reg;
    reg signed [12:0] Wr_reg;
    reg signed [12:0] Wj_reg;
    reg settled_reg;

    always @(posedge clk) begin
        if (RESETn == 0) begin
            Iy_reg <= 4'd0;
            Qy_reg <= 4'd0;
            Wr_reg <= 13'd0;
            Wj_reg <= 13'd0;
            settled_reg <= 0;
        end else if (freeze_iqcomp == 0) begin
            Iy_reg <= Ix - Wr_in * Qx;
            Qy_reg <= Qx + Wj_in * Ix;
            Wr_reg <= Wr_in;
            Wj_reg <= Wj_in;
            settled_reg <= 1;
        end else begin
            settled_reg <= 0;
        end
    end

    assign Iy = Iy_reg;
    assign Qy = Qy_reg;
    assign Wr = Wr_reg;
    assign Wj = Wj_reg;
    assign settled = settled_reg;

endmodule