module shift_register (
  input clk,
  input reset,
  input [7:0] data_in,
  input shift_direction,
  input load,
  output [7:0] q
);

  reg [7:0] shift_reg;
  
  always @(negedge clk or posedge reset) begin
    if (reset) begin
      shift_reg <= 8'h34;
    end else begin
      if (load) begin
        shift_reg <= data_in;
      end else begin
        if (shift_direction) begin
          shift_reg <= {shift_reg[6:0], shift_reg[7]};
        end else begin
          shift_reg <= {shift_reg[0], shift_reg[7:1]};
        end
      end
    end
  end
  
  assign q = shift_reg;
  
endmodule


module top_module (
  input clk,
  input reset,
  input [7:0] data_in,
  input [1:0] shift_direction,
  input load,
  input select,
  output [7:0] q
);

  wire [7:0] shift_reg1_q;
  wire [7:0] shift_reg2_q;
  
  shift_register shift_reg1 (
    .clk(clk),
    .reset(reset),
    .data_in(data_in),
    .shift_direction(shift_direction[0]),
    .load(load),
    .q(shift_reg1_q)
  );
  
  shift_register shift_reg2 (
    .clk(clk),
    .reset(reset),
    .data_in(data_in),
    .shift_direction(shift_direction[1]),
    .load(load),
    .q(shift_reg2_q)
  );
  
  assign q = (select) ? shift_reg2_q : shift_reg1_q;
  
endmodule