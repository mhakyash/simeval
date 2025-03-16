module PLL (
  input ref_clk,
  input reset,
  input enable,
  output locked_clk
);

parameter N = 2; // multiplication factor
parameter M = 1; // division factor

// Phase detector
reg pd_out;
always @(posedge ref_clk or posedge locked_clk) begin
  pd_out <= ref_clk ^ locked_clk;
end

// Charge pump
reg [1:0] cp_out;
always @(posedge pd_out) begin
  if (pd_out) begin
    cp_out <= cp_out + 2'b01;
  end else begin
    cp_out <= cp_out - 2'b01;
  end
end

// Loop filter
reg [7:0] lf_out;
always @(posedge ref_clk) begin
  lf_out <= lf_out + cp_out;
end

// Voltage-controlled oscillator (VCO)
reg [7:0] vco_count;
always @(posedge ref_clk) begin
  if (enable) begin
    vco_count <= vco_count + lf_out;
  end else begin
    vco_count <= 8'h00;
  end
end

// Locked clock output
assign locked_clk = vco_count[7:0] == 8'h00 ? 1'b1 : 1'b0;

// Reset logic
always @(posedge ref_clk) begin
  if (reset) begin
    cp_out <= 2'b00;
    lf_out <= 8'h00;
    vco_count <= 8'h00;
  end
end

endmodule