module ring_counter (
    input Clk,
    output reg [3:0] Q
);

always @(posedge Clk) begin
    Q <= {Q[2:0], Q[3]};
end

endmodule