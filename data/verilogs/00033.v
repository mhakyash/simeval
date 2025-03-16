module modulator(
    input adc_clk,
    input [3:0] mod_type,
    input [7:0] ssp_clk_divider,
    input after_hysteresis,
    output reg ssp_frame,
    output reg ssp_din,
    output reg modulating_carrier,
    output reg pwr_oe1,
    output reg pwr_oe3,
    output reg pwr_oe4
);

// Synchronize up the ssp_frame signal
always @(negedge adc_clk) begin
    if (mod_type == 4'b0100) begin
        if (ssp_clk_divider[8:5] == 4'b0001)
            ssp_frame <= 1'b1;
        if (ssp_clk_divider[8:5] == 4'b0101)
            ssp_frame <= 1'b0;
    end
    else begin
        if (ssp_clk_divider[7:4] == 4'b0001)
            ssp_frame <= 1'b1;
        if (ssp_clk_divider[7:4] == 4'b0101)
            ssp_frame <= 1'b0;
    end
end

// Synchronize up the after-hysteresis signal, to produce DIN.
always @(posedge ssp_clk) begin
    ssp_din <= after_hysteresis;
end

// Modulating carrier frequency is fc/64 (212kHz) to fc/16 (848kHz). Reuse ssp_clk divider for that.
always @(*) begin
    case (mod_type)
        4'b0000: modulating_carrier <= 1'b0; // no modulation
        4'b0001: modulating_carrier <= ssp_din ^ ssp_clk_divider[3]; // XOR means BPSK
        4'b0100: modulating_carrier <= ssp_din & ssp_clk_divider[5]; // switch 212kHz subcarrier on/off
        4'b0101, 4'b0110: modulating_carrier <= ssp_din & ssp_clk_divider[4]; // switch 424kHz modulation on/off
        default: modulating_carrier <= 1'b0; // yet unused
    endcase
end

// Load modulation. Toggle only one of these, since we are already producing much deeper
// modulation than a real tag would.
assign pwr_oe1 = 1'b0;                  // 33 Ohms Load
assign pwr_oe4 = modulating_carrier;    // 33 Ohms Load
// This one is always on, so that we can watch the carrier.
assign pwr_oe3 = 1'b0;                  // 10k Load

endmodule