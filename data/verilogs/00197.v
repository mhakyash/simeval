module LED_counter(
    input clk,
    input rst,
    input Start,
    input EN,
    input [31:0] P_Data,
    output reg[1:0] counter_set,
    output [15:0] LED_out,
    output wire ledclk,
    output wire ledsout,
    output wire ledclrn,
    output wire LEDEN,
    output reg[13:0] GPIOf0
);

reg [15:0] LED;

// Counter and LED output update logic
always @(negedge clk or posedge rst) begin
    if (rst) begin
        LED <= 8'h2A;
        counter_set <= 2'b00;
    end
    else if (EN) begin
        GPIOf0[13:0] <= P_Data[13:0];
        LED <= P_Data[15:0];
        counter_set <= P_Data[17:16];
    end
end

// LED clock and control logic
LEDP2S #(.DATA_BITS(16), .DATA_COUNT_BITS(4), .DIR(0)) LEDP2S_inst (
    .clk(clk),
    .rst(rst),
    .Start(Start),
    .PData(LED),
    .sclk(ledclk),
    .sclrn(ledclrn),
    .sout(ledsout),
    .EN(LEDEN)
);

endmodule