module Pointer(clka, addra, douta);
  input clka;
  input [4:0] addra;
  output [27:0] douta;
  reg [27:0] memory [31:0]; // 32 memory locations

  always @(posedge clka) begin
    douta <= memory[addra];
  end

  // Memory initialization
  initial begin
    memory[0] = 28'h00000000;
    memory[1] = 28'h11111111;
    memory[2] = 28'h22222222;
    memory[3] = 28'h33333333;
    memory[4] = 28'h44444444;
    memory[5] = 28'h55555555;
    memory[6] = 28'h66666666;
    memory[7] = 28'h77777777;
    memory[8] = 28'h88888888;
    memory[9] = 28'h99999999;
    memory[10] = 28'haaaaaaaa;
    memory[11] = 28'hbbbbbbbb;
    memory[12] = 28'hcccccccc;
    memory[13] = 28'hdddddddd;
    memory[14] = 28'heeeeeeee;
    memory[15] = 28'hffffffff;
    memory[16] = 28'h01234567;
    memory[17] = 28'h89abcdef;
    memory[18] = 28'hfedcba98;
    memory[19] = 28'h76543210;
    memory[20] = 28'hdeadbeef;
    memory[21] = 28'hcafebabe;
    memory[22] = 28'hbaadf00d;
    memory[23] = 28'hfacefeed;
    memory[24] = 28'hbadc0ffe;
    memory[25] = 28'hdeadface;
    memory[26] = 28'hbeefcafe;
    memory[27] = 28'h0ddba11;
    memory[28] = 28'hf00dcafe;
    memory[29] = 28'hba5eba11;
    memory[30] = 28'hca5e77e;
    memory[31] = 28'h5eed5eed;
  end
endmodule