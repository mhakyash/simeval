module bar_leds(
    input ce,
    input [8:1] data,
    input rw,
    output reg [8:1] leds
);

always @(*) begin
    if (ce == 1'b0) begin
        leds = 8'b0;
    end else if (rw == 1'b0) begin
        leds = data;
    end else begin
        leds = leds;
    end
end

endmodule