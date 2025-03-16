module Initial_blk_mem_gen_prim_width__parameterized20
   (douta,
    clka,
    addra);
  output [35:0]douta;
  input clka;
  input [9:0]addra;

  reg [35:0] mem [0:1023];

  always @(posedge clka) begin
    douta <= mem[addra];
  end

  always @(posedge clka) begin
    mem[addra] <= douta;
  end

endmodule