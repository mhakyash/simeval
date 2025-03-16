module axi_stream_fifo (
   input                   axi_tclk,
   input                   axi_tresetn,

   input       [7:0]       rx_axis_fifo_tdata_in,
   input                   rx_axis_fifo_tvalid_in,
   input                   rx_axis_fifo_tlast_in,
   output                  rx_axis_fifo_tready_in,

   output      [7:0]       rx_axis_fifo_tdata_out,
   output                  rx_axis_fifo_tvalid_out,
   output                  rx_axis_fifo_tlast_out,
   input                   rx_axis_fifo_tready_out
);

reg      [5:0]             rd_addr;
reg      [5:0]             wr_addr;
reg      [5:0]             next_wr_addr;
reg                        wea;
reg                        rx_axis_fifo_tready_int;
reg                        rx_axis_fifo_tvalid_int;
wire     [1:0]             wr_block;
wire     [1:0]             rd_block;

assign rx_axis_fifo_tready_in  = rx_axis_fifo_tready_int;
assign rx_axis_fifo_tvalid_out = rx_axis_fifo_tvalid_int;

// should always write when valid data is accepted
always @(rx_axis_fifo_tvalid_in or rx_axis_fifo_tready_int)
begin
   wea = rx_axis_fifo_tvalid_in & rx_axis_fifo_tready_int;
end

// simply increment the write address after any valid write
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      wr_addr <= 0;
   end
   else begin
      if (wea) begin
         next_wr_addr <= wr_addr + 1;
         if (next_wr_addr == 64) begin
            next_wr_addr <= 0;
         end
      end
      else begin
         next_wr_addr <= wr_addr;
      end
   end
end

// simply increment the read address after any validated read
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      rd_addr <= 0;
   end
   else begin
      if (rx_axis_fifo_tvalid_int & rx_axis_fifo_tready_out) begin
         rd_addr <= rd_addr + 1;
         if (rd_addr == 63) begin
            rd_addr <= 0;
         end
      end
   end
end

assign wr_block = wr_addr[5:4];
assign rd_block = rd_addr[5:4]-1;

// need to generate the ready output - this is entirely dependant upon the full state
// of the fifo
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      rx_axis_fifo_tready_int <= 0;
   end
   else begin
      if (wr_block == rd_block) begin
         rx_axis_fifo_tready_int <= 0;
      end
      else begin
         rx_axis_fifo_tready_int <= 1;
      end
   end
end

// need to generate the valid output - this is entirely dependant upon the full state
// of the fifo
always @(rd_addr or next_wr_addr)
begin
   if (rd_addr == next_wr_addr) begin
      rx_axis_fifo_tvalid_int <= 0;
   end
   else begin
      rx_axis_fifo_tvalid_int <= 1;
   end
end

reg [7:0] fifo_mem [0:63];

// write data to the fifo
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      wr_addr <= 0;
   end
   else begin
      if (wea) begin
         fifo_mem[wr_addr] <= rx_axis_fifo_tdata_in;
         wr_addr <= next_wr_addr;
      end
   end
end

// read data from the fifo
always @(posedge axi_tclk)
begin
   if (!axi_tresetn) begin
      rd_addr <= 0;
   end
   else begin
      if (rx_axis_fifo_tvalid_int & rx_axis_fifo_tready_out) begin
         rx_axis_fifo_tdata_out <= fifo_mem[rd_addr];
         rx_axis_fifo_tlast_out <= (rd_addr == 63) ? rx_axis_fifo_tlast_in : 0;
         rd_addr <= rd_addr + 1;
         if (rd_addr == 63) begin
            rd_addr <= 0;
         end
      end
   end
end

endmodule