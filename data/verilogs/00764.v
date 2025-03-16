module DFF_SR (
    input CLK,
    input D,
    input RST,
    output reg Q
);

always @(posedge CLK) begin
    if (RST == 1'b1) begin
        Q <= 1'b0;
    end else begin
        Q <= D;
    end
end

endmodule