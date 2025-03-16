module up_counter (
  input clk,
  input reset,
  input select,
  output reg [3:0] count_out
);

  reg [15:0] count_reg;
  wire [15:0] adder_out;
  wire [3:0] count_out_complement;
  wire [3:0] count_out_select;

  // Instantiate 16-bit adder module
  adder adder_inst (
    .a(count_reg),
    .b(16'h0001),
    .sum(adder_out)
  );

  // Complement output of counter
  assign count_out_complement = ~count_reg;

  // Select output based on select signal
  assign count_out_select = (select == 1) ? count_out_complement : count_reg;

  // Assign output
  always @ (posedge clk) begin
    if (reset) begin
      count_reg <= 16'h0000;
      count_out <= 4'h0;
    end
    else begin
      count_reg <= adder_out;
      count_out <= count_out_select[3:0];
    end
  end

endmodule

// 16-bit adder module
module adder (
  input [15:0] a,
  input [15:0] b,
  output reg [15:0] sum
);
  always @ (*) begin
    sum = a + b;
  end
endmodule