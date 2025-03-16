module axi_to_fifo #(
  parameter DEPTH = 16
) (
  input wire aclk,
  input wire areset_d1,
  input wire m_axi_bvalid,
  output wire m_axi_bready,
  output wire mhandshake,
  input wire mhandshake_r,
  input wire shandshake_r,
  input wire sel,
  input wire [1:0] in,
  output wire [1:0] Q,
  output wire [1:0] skid_buffer_reg
);

  wire [1:0] q_reg;
  reg [DEPTH-1:0] fifo_0;
  reg [DEPTH-1:0] fifo_1;
  reg [3:0] read_ptr_0;
  reg [3:0] read_ptr_1;
  reg [3:0] write_ptr_0;
  reg [3:0] write_ptr_1;
  reg [3:0] next_write_ptr_0;
  reg [3:0] next_write_ptr_1;
  reg [3:0] next_read_ptr_0;
  reg [3:0] next_read_ptr_1;
  reg sel_reg;
  reg [1:0] in_reg;
  reg [1:0] skid_buffer_reg_reg;
  reg [1:0] next_skid_buffer_reg_reg;
  reg [1:0] next_q_reg;
  reg [1:0] q_reg_reg;
  reg [1:0] next_q_reg_reg;
  reg mhandshake_reg;
  reg m_axi_bready_reg;
  reg m_axi_bready_reg_reg;

  always @(posedge aclk) begin
    if (areset_d1) begin
      read_ptr_0 <= 0;
      read_ptr_1 <= 0;
      write_ptr_0 <= 0;
      write_ptr_1 <= 0;
      sel_reg <= 0;
      in_reg <= 0;
      skid_buffer_reg_reg <= 0;
      next_skid_buffer_reg_reg <= 0;
      q_reg_reg <= 0;
      next_q_reg_reg <= 0;
      mhandshake_reg <= 0;
      m_axi_bready_reg <= 0;
      m_axi_bready_reg_reg <= 0;
    end else begin
      read_ptr_0 <= next_read_ptr_0;
      read_ptr_1 <= next_read_ptr_1;
      write_ptr_0 <= next_write_ptr_0;
      write_ptr_1 <= next_write_ptr_1;
      sel_reg <= sel;
      in_reg <= in;
      skid_buffer_reg_reg <= next_skid_buffer_reg_reg;
      q_reg_reg <= next_q_reg_reg;
      m_axi_bready_reg <= m_axi_bready_reg_reg;
    end
  end

  always @* begin
    next_read_ptr_0 = read_ptr_0;
    next_read_ptr_1 = read_ptr_1;
    next_write_ptr_0 = write_ptr_0;
    next_write_ptr_1 = write_ptr_1;
    next_skid_buffer_reg_reg = skid_buffer_reg_reg;
    next_q_reg_reg = q_reg_reg;
    mhandshake = 0;
    m_axi_bready = 0;
    m_axi_bready_reg_reg = 0;
    if (shandshake_r && !mhandshake_r) begin
      if (sel_reg == 0) begin
        if (write_ptr_0 == read_ptr_0) begin
          mhandshake = 1;
        end else begin
          fifo_0[write_ptr_0] = in_reg;
          next_write_ptr_0 = write_ptr_0 + 1;
          if (next_write_ptr_0 == DEPTH) begin
            next_write_ptr_0 = 0;
          end
          next_skid_buffer_reg_reg[0] = in_reg;
          m_axi_bready_reg_reg = 1;
        end
      end else begin
        if (write_ptr_1 == read_ptr_1) begin
          mhandshake = 1;
        end else begin
          fifo_1[write_ptr_1] = in_reg;
          next_write_ptr_1 = write_ptr_1 + 1;
          if (next_write_ptr_1 == DEPTH) begin
            next_write_ptr_1 = 0;
          end
          next_skid_buffer_reg_reg[1] = in_reg;
          m_axi_bready_reg_reg = 1;
        end
      end
    end else if (mhandshake_r && !shandshake_r) begin
      if (q_reg_reg == 0) begin
        if (read_ptr_0 == write_ptr_0) begin
          mhandshake = 1;
        end else begin
          next_q_reg_reg = 1;
          next_read_ptr_0 = read_ptr_0 + 1;
          if (next_read_ptr_0 == DEPTH) begin
            next_read_ptr_0 = 0;
          end
          next_skid_buffer_reg_reg[0] = fifo_0[read_ptr_0];
        end
      end else begin
        if (read_ptr_1 == write_ptr_1) begin
          mhandshake = 1;
        end else begin
          next_q_reg_reg = 0;
          next_read_ptr_1 = read_ptr_1 + 1;
          if (next_read_ptr_1 == DEPTH) begin
            next_read_ptr_1 = 0;
          end
          next_skid_buffer_reg_reg[1] = fifo_1[read_ptr_1];
        end
      end
    end
    if (m_axi_bvalid && !mhandshake_r) begin
      m_axi_bready = 1;
    end
    if (m_axi_bvalid && mhandshake_r) begin
      mhandshake = 1;
    end
    next_q_reg = q_reg_reg;
    if (m_axi_bvalid && mhandshake_r && !shandshake_r) begin
      next_q_reg = in_reg;
    end
  end

  assign Q = q_reg_reg;
  assign skid_buffer_reg = skid_buffer_reg_reg;

endmodule