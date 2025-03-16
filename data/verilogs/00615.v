module clock_control(
    input inclk,
    input ena,
    output outclk
);

reg [1:0] state;
reg filtered_clk;

always @(posedge inclk) begin
    if (ena) begin
        state <= {state[0], inclk};
        if (state == 2'b01) begin
            filtered_clk <= 1'b1;
        end else if (state == 2'b10) begin
            filtered_clk <= 1'b0;
        end
    end else begin
        filtered_clk <= 1'b0;
    end
end

assign outclk = filtered_clk;

endmodule