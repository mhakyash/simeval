module MIB (
  input clk,
  input rst,
  input [addr_width-1:0] addr,
  input wr_en,
  input [data_width-1:0] wr_data,
  input rd_en,
  output [data_width-1:0] rd_data
);

parameter data_width = 32; // width of the data bus (in bits)
parameter addr_width = 16; // width of the address bus (in bits)

reg [data_width-1:0] mem[0:2**addr_width-1]; // internal memory array

reg [1:0] state; // state variable for FSM
parameter IDLE = 2'b00;
parameter READ = 2'b01;
parameter WRITE = 2'b10;

reg [addr_width-1:0] burst_addr; // address for burst operations
reg [1:0] burst_count; // counter for burst operations
parameter BURST_IDLE = 2'b00;
parameter BURST_READ = 2'b01;
parameter BURST_WRITE = 2'b10;

always @(posedge clk) begin
  if (rst) begin
    state <= IDLE;
    burst_count <= 0;
    rd_data <= 0;
  end else begin
    case (state)
      IDLE: begin
        if (rd_en) begin
          state <= READ;
          rd_data <= mem[addr];
        end else if (wr_en) begin
          state <= WRITE;
          mem[addr] <= wr_data;
        end
      end
      READ: begin
        if (rd_en) begin
          rd_data <= mem[addr];
        end else begin
          state <= IDLE;
          rd_data <= 0;
        end
      end
      WRITE: begin
        if (wr_en) begin
          mem[addr] <= wr_data;
        end else begin
          state <= IDLE;
        end
      end
    endcase
    if (rd_en && (burst_count != 0)) begin
      burst_count <= burst_count - 1;
      burst_addr <= burst_addr + 1;
      rd_data <= mem[burst_addr];
    end else if (wr_en && (burst_count != 0)) begin
      burst_count <= burst_count - 1;
      burst_addr <= burst_addr + 1;
      mem[burst_addr] <= wr_data;
    end else if (rd_en && (burst_count == 0)) begin
      burst_count <= addr_width/2 - 1;
      burst_addr <= addr + 1;
      rd_data <= mem[addr];
      state <= BURST_READ;
    end else if (wr_en && (burst_count == 0)) begin
      burst_count <= addr_width/2 - 1;
      burst_addr <= addr + 1;
      mem[addr] <= wr_data;
      state <= BURST_WRITE;
    end else if (state == BURST_READ) begin
      if (rd_en) begin
        burst_count <= burst_count - 1;
        burst_addr <= burst_addr + 1;
        rd_data <= mem[burst_addr];
      end else begin
        state <= IDLE;
        rd_data <= 0;
      end
    end else if (state == BURST_WRITE) begin
      if (wr_en) begin
        burst_count <= burst_count - 1;
        burst_addr <= burst_addr + 1;
        mem[burst_addr] <= wr_data;
      end else begin
        state <= IDLE;
      end
    end
  end
end

endmodule