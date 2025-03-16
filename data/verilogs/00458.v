module onehot_state_machine(
  input [n-1:0] in,
  output [m-1:0] out
);

parameter n = 4; // number of input signals
parameter m = 2; // number of output signals
parameter s = 5; // number of states

reg [s-1:0] state; // one-hot encoded state variables

always @ (posedge clk) begin
  case(state)
    5'b00001: state <= {in[0], in[1], in[2], in[3], 1'b0}; // transition from state 1 to state 2
    5'b00010: state <= {1'b0, in[0], in[1], in[2], in[3]}; // transition from state 2 to state 3
    5'b00100: state <= {in[0], 1'b0, in[1], in[2], in[3]}; // transition from state 3 to state 4
    5'b01000: state <= {in[0], in[1], 1'b0, in[2], in[3]}; // transition from state 4 to state 5
    5'b10000: state <= {in[0], in[1], in[2], 1'b0, in[3]}; // transition from state 5 to state 1
    default: state <= 5'b00001; // default transition from reset state to state 1
  endcase
end

assign out[0] = state[0]; // output signal 1 is the first bit of the state variable
assign out[1] = state[1]; // output signal 2 is the second bit of the state variable

endmodule