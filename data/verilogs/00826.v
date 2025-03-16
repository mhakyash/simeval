module can_transmitter (
  input [7:0] msg,
  input [15:0] bt,
  output tx
);
  // Your implementation of the CAN transmitter goes here
endmodule

module can_receiver (
  input rx,
  input [15:0] bt,
  output [7:0] msg
);
  // Your implementation of the CAN receiver goes here
endmodule