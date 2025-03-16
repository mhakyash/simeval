module OneHotStateMachine (
  input clk,
  output reg [n-1:0] out
);

parameter n = 4; // number of states in the machine

reg [n-1:0] state; // register to store the current state of the machine

always @(posedge clk) begin
  // determine the next state of the machine
  case(state)
    0: state = 1;
    1: state = 2;
    2: state = 3;
    3: state = 0;
  endcase
end

// set the output signals based on the current state of the machine
always @* begin
  case(state)
    0: out = 4'b0001;
    1: out = 4'b0010;
    2: out = 4'b0100;
    3: out = 4'b1000;
  endcase
end

endmodule