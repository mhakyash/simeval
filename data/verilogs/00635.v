module clock_gate (
  input CLK,
  input EN,
  input TE,
  input [31:0] data_in,
  output reg ENCLK
);

  reg [31:0] register = 0;

  always @(posedge CLK) begin
    if (TE) begin
      ENCLK <= 1'b1;
    end else if (EN) begin
      register <= data_in;
      ENCLK <= CLK;
    end else begin
      ENCLK <= 1'b0;
    end
  end

endmodule