module line_buffer (
    clken,
    clock,
    shiftin,
    shiftout,
    taps0x,
    taps1x,
    taps2x
);

input clken;
input clock;
input [11:0] shiftin;
output [11:0] shiftout;
output [11:0] taps0x;
output [11:0] taps1x;
output [11:0] taps2x;

wire [35:0] taps;
wire [11:0] taps0, taps1, taps2;

altshift_taps altshift_taps_component (
    .clken(clken),
    .clock(clock),
    .shiftin(shiftin),
    .taps(taps),
    .shiftout(shiftout),
    .aclr()
);

assign taps0x = taps[35:24];
assign taps1x = taps[23:12];
assign taps2x = taps[11:0];
assign taps0 = taps2x;
assign taps1 = taps1x;
assign taps2 = taps0x;

endmodule