module top_module (
  input clk,
  input reset, // Synchronous active-high reset
  input [7:0] data_in, // 8-bit input for the first given module
  input [2:0] shift_amount, // Input for shift amount
  input [49:0] in, // 50-bit input for the second given module
  input select, // Select input to choose between modules
  output [7:0] shift_out, // 8-bit output from the first given module
  output reg out_nand, // Output of a 50-input NAND gate
  output reg out_nor, // Output of a 50-input NOR gate
  output reg out_xnor, // Output of a 50-input XNOR gate
  output reg [49:0] final_output // Output of the functional module
);

// Instantiate the given parallel load and shift operation module
shift_module shift_inst (
  .clk(clk),
  .reset(reset),
  .data_in(data_in),
  .shift_amount(shift_amount),
  .shift_out(shift_out)
);

// Instantiate the given 50-input combinational circuit module
combinational_module comb_inst (
  .in(in),
  .out_nand(out_nand),
  .out_nor(out_nor),
  .out_xnor(out_xnor)
);

// Control module to select between the two given modules
always @ (posedge clk) begin
  if (reset) begin
    final_output <= 50'b0;
  end else begin
    if (select) begin
      final_output <= {50{1'b0}} | {out_nand, out_nor, out_xnor};
    end else begin
      final_output <= {50{1'b0}} | shift_out;
    end
  end
end

endmodule