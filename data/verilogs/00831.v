module clock_generator (
    clk,
    RF_PA_EN
);

output clk;
output RF_PA_EN;

wire Net_15;
wire Net_53;
wire Net_55;

cy_m0s8_ble_v1_0 ble (
    .interrupt(Net_15),
    .rf_ext_pa_en(RF_PA_EN)
);

cy_isr_v1_0 bless_isr (
    .int_signal(Net_15)
);

cy_clock_v1_0 LFCLK (
    .clock_out(Net_53)
);

assign clk = Net_55 | Net_53;
assign Net_55 = 1'b0;

endmodule