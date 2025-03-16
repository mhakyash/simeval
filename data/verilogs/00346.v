module stratixiv_tsdblock (
    input [5:0] offset,
    input [7:0] testin,
    input clk,
    input ce,
    input clr,
    input fdbkctrlfromcore,
    input compouttest,
    output [7:0] tsdcalo,
    output tsdcaldone,
    output tsdcompout,
    output [5:0] offsetout
);

parameter poi_cal_temperature = 85;
parameter clock_divider_enable = "on";
parameter clock_divider_value = 40;
parameter sim_tsdcalo = 0;
parameter user_offset_enable = "off";
parameter lpm_type = "stratixiv_tsdblock";

reg [7:0] tsdcalo_reg;
reg tsdcaldone_reg;
reg [5:0] offsetout_reg;
wire [7:0] tsdcompout_wire;

// Clock divider
reg [5:0] clk_divider_counter;
always @(posedge clk) begin
    if (clock_divider_enable == "on") begin
        if (clk_divider_counter == clock_divider_value - 1) begin
            clk_divider_counter <= 0;
        end else begin
            clk_divider_counter <= clk_divider_counter + 1;
        end
    end else begin
        clk_divider_counter <= 0;
    end
end

// Calibration temperature
reg [7:0] calibration_value;
always @(posedge clk) begin
    if (ce) begin
        calibration_value <= (poi_cal_temperature - 25) * 4;
    end
end

// Time-series data calibration
always @(posedge clk) begin
    if (ce) begin
        tsdcalo_reg <= sim_tsdcalo + calibration_value + testin;
    end
end

// Done signal
always @(posedge clk) begin
    if (ce) begin
        tsdcaldone_reg <= 1;
    end else if (clr) begin
        tsdcaldone_reg <= 0;
    end
end

// Time-series data comparison output
assign tsdcompout = tsdcompout_wire;
always @(posedge clk) begin
    if (ce) begin
        tsdcompout_wire <= tsdcalo_reg - compouttest;
    end
end

// Offset output
always @(posedge clk) begin
    if (ce) begin
        offsetout_reg <= offset;
    end
end

// User offset
always @(posedge clk) begin
    if (ce && user_offset_enable == "on") begin
        tsdcalo_reg <= tsdcalo_reg + offset;
    end
end

// Feedback control
always @(posedge clk) begin
    if (ce) begin
        if (fdbkctrlfromcore) begin
            tsdcalo_reg <= tsdcalo_reg + 1;
        end else begin
            tsdcalo_reg <= tsdcalo_reg - 1;
        end
    end
end

// Clear
always @(posedge clk) begin
    if (clr) begin
        tsdcalo_reg <= 0;
        tsdcaldone_reg <= 0;
        offsetout_reg <= 0;
    end
end

assign tsdcalo = tsdcalo_reg;
assign tsdcaldone = tsdcaldone_reg;
assign offsetout = offsetout_reg;

endmodule