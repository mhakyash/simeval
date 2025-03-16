module PLL_DLL (
  input ref_clk,
  input fb_clk,
  input sel,
  output out_clk
);

// module parameters
parameter ref_freq = 100; // frequency of the reference clock in MHz
parameter fb_freq = 120;  // frequency of the feedback clock in MHz
parameter sel_width = 1;  // width of the select signal

// module IO definitions
input [sel_width-1:0] sel;
input ref_clk;
input fb_clk;
output out_clk;

// PLL components
reg [31:0] phase_accumulator;
reg [31:0] phase_detector_output;
reg [31:0] loop_filter_output;
reg [31:0] vco_output;
reg [31:0] vco_frequency;
reg [31:0] vco_phase;

// DLL components
reg [31:0] delay_line_output;
reg [31:0] delay_line_input;
reg [31:0] delay_detector_output;
reg [31:0] delay_filter_output;
reg [31:0] delay_output;

// constants
localparam phase_detector_gain = 100;
localparam loop_filter_gain = 100;
localparam vco_gain = 100;
localparam delay_detector_gain = 100;
localparam delay_filter_gain = 100;

// reference clock divider
reg [31:0] ref_clk_divider;
always @(posedge ref_clk) begin
  ref_clk_divider <= ref_clk_divider + 1;
end

// feedback clock divider
reg [31:0] fb_clk_divider;
always @(posedge fb_clk) begin
  fb_clk_divider <= fb_clk_divider + 1;
end

// phase detector
always @(posedge ref_clk_divider or posedge fb_clk_divider) begin
  if (sel == 0) begin
    phase_detector_output <= (fb_clk_divider > ref_clk_divider) ? (fb_clk_divider - ref_clk_divider) : (ref_clk_divider - fb_clk_divider);
  end else begin
    phase_detector_output <= (fb_clk_divider > delay_line_output) ? (fb_clk_divider - delay_line_output) : (delay_line_output - fb_clk_divider);
  end
end

// loop filter
always @(posedge ref_clk_divider) begin
  if (sel == 0) begin
    loop_filter_output <= loop_filter_output + (phase_detector_output * loop_filter_gain);
  end else begin
    delay_filter_output <= delay_filter_output + (delay_detector_output * delay_filter_gain);
  end
end

// VCO
always @(posedge ref_clk_divider) begin
  if (sel == 0) begin
    vco_frequency <= loop_filter_output * vco_gain;
    vco_phase <= vco_phase + vco_frequency;
    vco_output <= vco_phase[31];
  end else begin
    delay_output <= delay_filter_output;
  end
end

// delay line
always @(posedge ref_clk) begin
  if (sel == 1) begin
    delay_line_input <= ref_clk;
    delay_line_output <= delay_line_input;
  end
end

// delay detector
always @(posedge ref_clk_divider or posedge fb_clk_divider) begin
  if (sel == 1) begin
    delay_detector_output <= (delay_line_output > fb_clk_divider) ? (delay_line_output - fb_clk_divider) : (fb_clk_divider - delay_line_output);
  end
end

// output clock
always @(posedge fb_clk) begin
  if (sel == 0) begin
    out_clk <= vco_output;
  end else begin
    out_clk <= #delay_output fb_clk;
  end
end

endmodule