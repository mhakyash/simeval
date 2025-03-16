module two_input_logic (
  input a,
  input b,
  input op,
  output out
);

  assign out = op ? ~a : (a ^ b);

endmodule