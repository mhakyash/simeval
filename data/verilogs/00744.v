module rbo_test
(
  input clk,
  output reg CAL,
  output reg CS,
  output reg IS1,
  output reg IS2,
  output reg LE,
  output reg R12,
  output reg RBI,
  output reg RESET,
  output reg RPHI1,
  output reg RPHI2,
  output reg SBI,
  output reg SEB,
  output reg SPHI1,
  output reg SPHI2,
  output reg SR,
  output [15:0]Aref,
  output [15:0]RG,
  output [15:0]Vana,
  output [15:0]Vthr,
  input reset_gen
);

reg [31:0]counter;
reg [7:0]stage;
reg [15:0]stage_iter;
assign CS=0;
assign Vthr=16'H0025;
assign Aref=16'H0033;
assign Vana=16'H0066;
assign RG=16'H0033;
always @(posedge clk) begin
  if(reset_gen == 1) begin
    counter <= 0;
    stage <= 0;
    stage_iter <= 0;
    CAL <= 0;
    SBI <= 0;
    SPHI1 <= 0;
    SPHI2 <= 0;
    SEB <= 1;
    IS1 <= 1;
    IS2 <= 0;
    SR <= 1;
    RESET <= 1;
    R12 <= 1;
    RBI <= 0;
    RPHI1 <= 1;
    RPHI2 <= 1;
    LE <= 0;
  end
  else begin
    if(stage == 0) begin
      if(counter == 7) begin
        RBI <= 1;
      end
      if(counter == 16) begin
        RBI <= 0;
      end
      if(counter == 22) begin
        RPHI1 <= 0;
        RPHI2 <= 0;
      end
      if(counter == 24) begin
        RBI <= 1;
      end
      if(counter == 25) begin
        RPHI1 <= 1;
      end
      if(counter == 26) begin
        RPHI1 <= 0;
      end
      if(counter == 27) begin
        RBI <= 0;
      end
      if(counter == 28) begin
        RPHI2 <= 1;
      end
      if(counter == 29) begin
        RPHI2 <= 0;
      end
      if(counter == 29) begin
        if(stage_iter == 0) begin
          stage <= (stage + 1) % 2;
          stage_iter <= 0;
        end
        else begin
          stage_iter <= stage_iter + 1;
        end
        counter <= 0;
      end
      else begin
        counter <= counter + 1;
      end
    end
    if(stage == 1) begin
      if(counter == 1) begin
        RPHI1 <= 0;
      end
      if(counter == 2) begin
        RPHI2 <= 1;
      end
      if(counter == 3) begin
        RPHI2 <= 0;
      end
      if(counter == 3) begin
        if(stage_iter == 128) begin
          stage <= (stage + 1) % 2;
          stage_iter <= 0;
        end
        else begin
          stage_iter <= stage_iter + 1;
        end
        counter <= 0;
      end
      else begin
        counter <= counter + 1;
      end
    end
  end
end
endmodule