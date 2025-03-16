module booth_encoder_5_tb;
  reg [2:0] B_in;
  wire [2:0] A_out;
  integer i;
  
  booth_encoder_5 dut (
    .B_in(B_in),
    .A_out(A_out)
  );
  
  always #5 clk = ~clk;
  
  initial begin
    clk = 0;
    for (i = 0; i < 8; i = i + 1) begin
      B_in = i;
      #10;
      if (B_in == 3) begin
        if (A_out != 3'b001) begin
          $display("Test failed for B_in = %d, expected A_out = 3'b001, got A_out = %b", B_in, A_out);
        end else begin
          $display("Test passed for B_in = %d", B_in);
        end
      end else if (B_in == 5) begin
        if (A_out != 3'b010) begin
          $display("Test failed for B_in = %d, expected A_out = 3'b010, got A_out = %b", B_in, A_out);
        end else begin
          $display("Test passed for B_in = %d", B_in);
        end
      end else if (B_in == 6) begin
        if (A_out != 3'b011) begin
          $display("Test failed for B_in = %d, expected A_out = 3'b011, got A_out = %b", B_in, A_out);
        end else begin
          $display("Test passed for B_in = %d", B_in);
        end
      end else if (B_in == 7) begin
        if (A_out != 3'b111) begin
          $display("Test failed for B_in = %d, expected A_out = 3'b111, got A_out = %b", B_in, A_out);
        end else begin
          $display("Test passed for B_in = %d", B_in);
        end
      end else begin
        if (A_out != 3'b000) begin
          $display("Test failed for B_in = %d, expected A_out = 3'b000, got A_out = %b", B_in, A_out);
        end else begin
          $display("Test passed for B_in = %d", B_in);
        end
      end
    end
    $finish;
  end
endmodule