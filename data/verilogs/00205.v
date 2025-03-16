module sdio_function_template (
  input                     clk,
  input                     rst,
  output reg   [7:0]       o_reg_example,
  input         [7:0]       i_reg_example
);

  //local parameters
  localparam     PARAM1  = 32'h00000000;
  
  //registers/wires
  reg [7:0] temp_reg;
  
  //asynchronous logic
  always @ (posedge rst) begin
    o_reg_example <= 8'b0;
  end
  
  //synchronous logic
  always @ (posedge clk) begin
    temp_reg <= i_reg_example;
    o_reg_example <= temp_reg;
  end
  
endmodule