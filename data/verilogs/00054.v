module input_fifo_blk_mem_gen_generic_cstr
   #(parameter WIDTH = 8, DEPTH = 256)
   (D,
    clk,
    WEA,
    tmp_ram_rd_en,
    srst,
    Q,
    \gc0.count_d1_reg[9] ,
    din);

  localparam ADDR_WIDTH = $clog2(DEPTH);
  
  reg [WIDTH-1:0] mem [0:DEPTH-1];
  reg [ADDR_WIDTH-1:0] head = 0;
  reg [ADDR_WIDTH-1:0] tail = 0;
  
  assign D = mem[tail];
  
  always @(posedge clk) begin
    if (srst) begin
      head <= 0;
      tail <= 0;
    end else begin
      if (WEA && (head != tail || \gc0.count_d1_reg[9] == 0)) begin
        mem[head] <= din;
        head <= head + 1;
        \gc0.count_d1_reg[9] <= \gc0.count_d1_reg[9] + 1;
      end
      if (tmp_ram_rd_en && head != tail) begin
        tail <= tail + 1;
        \gc0.count_d1_reg[9] <= \gc0.count_d1_reg[9] - 1;
      end
    end
  end
  
endmodule