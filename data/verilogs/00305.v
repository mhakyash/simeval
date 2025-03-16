module memory_protection_blocks (
  input [31:0] in1, // memory address
  input in2, // write enable signal
  output out
);

parameter start_address = 128'h00000000; // starting address of the memory region to be protected
parameter end_address = 128'h000000ff; // ending address of the memory region to be protected
parameter write_enable = 1'b0; // write access not allowed to the protected memory region

reg protected; // output signal indicating whether the memory region is protected or not

always @(*) begin
  if (in1 >= start_address && in1 <= end_address && write_enable == 0 && in2 == 1'b1) begin
    protected = 1'b1; // memory region is protected and write access is not allowed
  end else begin
    protected = 1'b0; // memory region is not protected or write access is allowed
  end
end

assign out = protected;

endmodule