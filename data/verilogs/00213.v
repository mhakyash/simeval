module power_manager (
    input clk,
    input reset,
    input sleep,
    input [7:0] voltage,
    output power_good,
    output reg [7:0] voltage_level
);

reg [7:0] voltage_rounded;

always @(*) begin
    if (sleep) begin
        voltage_level = 0;
        power_good = 0;
    end else begin
        voltage_rounded = $floor(voltage + 0.5);
        voltage_level = voltage_rounded;
        if (voltage >= 3.3) begin
            power_good = 1;
        end else begin
            power_good = 0;
        end
    end
end

always @(posedge clk) begin
    if (reset) begin
        voltage_level <= 0;
        power_good <= 0;
    end
end

endmodule