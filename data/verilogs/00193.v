module BLE_v3_20_4 (
    clk,
    pa_en
);

output clk;
output pa_en;

wire Net_72;
wire Net_71;
wire Net_70;
wire Net_90;
wire Net_89;
wire Net_88;
wire Net_91;
wire Net_92;
wire Net_93;
wire Net_94;
wire Net_95;
wire Net_96;
wire Net_97;
wire Net_98;
wire Net_99;
wire Net_100;
wire Net_101;
wire Net_102;
wire Net_53;
wire Net_60;
wire Net_55;

cy_m0s8_ble_v1_0 cy_m0s8_ble (
    .interrupt(Net_15),
    .rf_ext_pa_en(pa_en)
);

cy_isr_v1_0 #(.int_type(2'b10)) bless_isr (.int_signal(Net_15));

cy_clock_v1_0 #(
    .id("f7e4c631-7f18-4a80-b8dc-a27c020488da/5ae6fa4d-f41a-4a35-8821-7ce70389cb0c"),
    .source_clock_id("9A908CA6-5BB3-4db0-B098-959E5D90882B"),
    .divisor(0),
    .period("0"),
    .is_direct(1),
    .is_digital(0)
) LFCLK (.clock_out(Net_53));

assign Net_55 = 1'h0;

assign clk = Net_55 | Net_53;

endmodule