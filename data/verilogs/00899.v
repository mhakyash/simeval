module topkeyboard(PS2_CLK, PS2_DAT, clock, LEDR);

  input PS2_CLK, PS2_DAT, clock;
  output reg [3:0] LEDR;
  
  reg [10:0] ps2_data;
  reg [7:0] data_bits;
  reg parity_bit;
  reg valid_packet;
  
  always @(posedge PS2_CLK) begin
    ps2_data <= {ps2_data[9:0], PS2_DAT};
  end
  
  always @(posedge clock) begin
    if (ps2_data[0] == 0) begin
      data_bits <= ps2_data[8:1];
      parity_bit <= ps2_data[9];
      valid_packet <= (data_bits ^ {1'b0, parity_bit}) == 8'h00;
    end
    
    if (valid_packet) begin
      LEDR <= ~data_bits;
    end
  end
  
endmodule