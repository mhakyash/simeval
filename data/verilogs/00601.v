module register (
    input d,
    input clk,
    input ena,
    input clrn,
    input prn,
    output reg q
);

always @(posedge clk or negedge clrn or negedge prn) begin
    if (!clrn) begin
        q <= 1'b0;
    end else if (!prn) begin
        q <= 1'b1;
    end else if (ena) begin
        q <= d;
    end
end

endmodule