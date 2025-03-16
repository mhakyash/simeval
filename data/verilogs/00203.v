module stack_pointer(
  input CLK,
  input RST,
  input DECR,
  input INCR,
  input [7:0] DATA,
  input LD,
  output reg [7:0] Q
);

  reg [7:0] stack[0:7];
  reg [2:0] sp;

  always @(posedge CLK) begin
    if (RST) begin
      sp <= 0;
      Q <= 0;
    end else begin
      if (LD) begin
        stack[sp] <= DATA;
        sp <= (sp == 7) ? 0 : sp + 1;
      end else if (DECR) begin
        sp <= (sp == 0) ? 7 : sp - 1;
      end else if (INCR) begin
        sp <= (sp == 7) ? 0 : sp + 1;
      end
      Q <= stack[sp];
    end
  end

endmodule