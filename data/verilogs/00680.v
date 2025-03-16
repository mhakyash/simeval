module mux16to1 (
  input [15:0] data_in,
  input [3:0] select,
  output reg data_out
);

always @(*)
begin
  case (select)
    0: data_out = data_in[0];
    1: data_out = data_in[1];
    2: data_out = data_in[2];
    3: data_out = data_in[3];
    4: data_out = data_in[4];
    5: data_out = data_in[5];
    6: data_out = data_in[6];
    7: data_out = data_in[7];
    8: data_out = data_in[8];
    9: data_out = data_in[9];
    10: data_out = data_in[10];
    11: data_out = data_in[11];
    12: data_out = data_in[12];
    13: data_out = data_in[13];
    14: data_out = data_in[14];
    15: data_out = data_in[15];
    default: data_out = 1'b0;
  endcase
end

endmodule