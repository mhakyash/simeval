module counter (
    input CLK,
    input RST,
    input enable,
    output reg [3:0] count_out
);

always @(posedge CLK) begin
    if (RST) begin
        count_out <= 4'b0;
    end else if (enable) begin
        count_out <= count_out + 4'b1;
    end
end

endmodule