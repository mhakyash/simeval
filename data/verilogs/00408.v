module freq_synth (
  input clk_ref,
  input ctrl,
  input [31:0] ftw,
  output out
);

// Parameter definition
parameter F_REF = 10; // Reference clock frequency in MHz
parameter F_OUT_MAX = 1000; // Maximum output frequency in MHz
parameter F_OUT_MIN = 10; // Minimum output frequency in MHz
parameter BIT_RESOLUTION = 32; // Bit resolution of the frequency tuning word

// Input/output definition
input clk_ref;
input ctrl;
input [BIT_RESOLUTION-1:0] ftw;
output out;

// Internal signal definition
reg [31:0] n;
reg [31:0] m;
reg [31:0] c;
reg [31:0] p;
reg [31:0] vco;
reg [31:0] out_reg;

// PLL-based synthesis method
always @ (posedge clk_ref) begin
  if (ctrl == 1'b1) begin // PLL-based synthesis method
    n = ftw;
    m = F_OUT_MAX/F_REF;
    c = n * m;
    p = c / 2;
    vco = p * F_REF;
    out_reg <= vco;
  end
  else begin // DDS-based synthesis method
    // DDS-based synthesis method
  end
end

assign out = out_reg;

endmodule