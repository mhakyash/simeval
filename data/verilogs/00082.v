module forwarding_unit
#(
   parameter DATA_WIDTH = 32,
   parameter REG_ADDR_WIDTH = 5
 )
 (
   input [DATA_WIDTH-1:0] data_alu_a_in,
   input [DATA_WIDTH-1:0] data_alu_b_in,
   input [REG_ADDR_WIDTH-1:0] addr_alu_a_in,
   input [REG_ADDR_WIDTH-1:0] addr_alu_b_in,
   input [DATA_WIDTH-1:0] ex_mem_reg_a_data_in,
   input [DATA_WIDTH-1:0] ex_mem_reg_b_data_in,
   input [REG_ADDR_WIDTH-1:0] ex_mem_reg_a_addr_in,
   input [REG_ADDR_WIDTH-1:0] ex_mem_reg_b_addr_in,
   input ex_mem_reg_a_wr_ena_in,
   input ex_mem_reg_b_wr_ena_in,
   input [DATA_WIDTH-1:0] wb_reg_a_data_in,
   input [DATA_WIDTH-1:0] wb_reg_b_data_in,
   input [REG_ADDR_WIDTH-1:0] wb_reg_a_addr_in,
   input [REG_ADDR_WIDTH-1:0] wb_reg_b_addr_in,
   input wb_reg_a_wr_ena_in,
   input wb_reg_b_wr_ena_in,
      
   output reg [DATA_WIDTH-1:0] alu_a_mux_sel_out,
   output reg [DATA_WIDTH-1:0] alu_b_mux_sel_out
);

   // Port-A ALU input
   always@(*)begin
      // Forwarding data from MEM -> EXE
      if((addr_alu_a_in == ex_mem_reg_a_addr_in) & ex_mem_reg_a_wr_ena_in)begin
         alu_a_mux_sel_out <= ex_mem_reg_a_data_in;
      end
      else if((addr_alu_a_in == ex_mem_reg_b_addr_in) & ex_mem_reg_b_wr_ena_in)begin
         alu_a_mux_sel_out <= ex_mem_reg_b_data_in;
      end
      // Forwarding data from WB -> EXE
      else if((addr_alu_a_in == wb_reg_a_addr_in) & wb_reg_a_wr_ena_in)begin
         alu_a_mux_sel_out <= wb_reg_a_data_in;
      end
      else  if((addr_alu_a_in == wb_reg_b_addr_in) & wb_reg_b_wr_ena_in)begin
         alu_a_mux_sel_out <= wb_reg_b_data_in;
      end
      // No forwarding
      else begin
         alu_a_mux_sel_out <= data_alu_a_in;
      end
   end


   // Port-B ALU input
   always@(*)begin
      // Forwarding data from MEM -> EXE
      if((addr_alu_b_in == ex_mem_reg_a_addr_in) & ex_mem_reg_a_wr_ena_in)begin
         alu_b_mux_sel_out <= ex_mem_reg_a_data_in;
      end
      else if((addr_alu_b_in == ex_mem_reg_b_addr_in) & ex_mem_reg_b_wr_ena_in)begin
         alu_b_mux_sel_out <= ex_mem_reg_b_data_in;
      end
      // Forwarding data from WB -> EXE
      else if((addr_alu_b_in == wb_reg_a_addr_in) & wb_reg_a_wr_ena_in)begin
         alu_b_mux_sel_out <= wb_reg_a_data_in;
      end
      else if((addr_alu_b_in == wb_reg_b_addr_in) & wb_reg_b_wr_ena_in)begin
         alu_b_mux_sel_out <= wb_reg_b_data_in;
      end
      // No forwarding
      else begin
         alu_b_mux_sel_out <= data_alu_b_in;
      end
   end


endmodule