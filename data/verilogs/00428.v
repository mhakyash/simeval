module control(
    input [5:0] opcode,
    input [5:0] special,
    input branch_eq,
    output [1:0] if_pc_source,
    output id_rt_is_source,
    output ex_imm_command,
    output ex_alu_src_b,
    output ex_alu_rslt_src,
    output [1:0] ex_dst_reg_sel,
    output [1:0] ex_alu_op,
    output mem_read,
    output mem_write,
    output wb_mem_to_reg,
    output wb_reg_write
);

// Opcodes
localparam LW    = 6'b100011,
           SW    = 6'b101011,
           BEQ   = 6'b000100,
           RTYPE = 6'b000000,
           J     = 6'b000010,
           JAL   = 6'b000011,
           ADDI  = 6'b001000,
           ANDI  = 6'b001100,
           ORI   = 6'b001101,
           XORI  = 6'b001110,
           SLTI  = 6'b001010;

// Special opcodes
localparam JR    = 6'b001000;

// Default values
assign if_pc_source = 2'b00;
assign id_rt_is_source = 1'b0;
assign ex_imm_command = 1'b0;
assign ex_alu_src_b = 1'b0;
assign ex_alu_rslt_src = 1'b0;
assign ex_dst_reg_sel = 2'b00;
assign ex_alu_op = 2'b00;
assign mem_read = 1'b0;
assign mem_write = 1'b0;
assign wb_mem_to_reg = 1'b0;
assign wb_reg_write = 1'b0;

// Memory operations
always @* begin
    if (opcode == LW) begin
        ex_alu_src_b = 1'b1;
        ex_dst_reg_sel = 2'b00;
        ex_alu_op = 2'b00;
        wb_mem_to_reg = 1'b1;
        mem_read = 1'b1;
        wb_reg_write = 1'b1;
    end
    else if (opcode == SW) begin
        ex_alu_src_b = 1'b1;
        ex_dst_reg_sel = 2'b00;
        ex_alu_op = 2'b00;
        mem_write = 1'b1;
    end
end

// R-type operations
always @* begin
    if (opcode == RTYPE) begin
        id_rt_is_source = 1'b1;
        ex_alu_src_b = 1'b0;
        ex_dst_reg_sel = 2'b01;
        ex_alu_op = special[2:0];
        wb_reg_write = 1'b1;
    end
end

// Immediate operations
always @* begin
    if (opcode == ADDI || opcode == ANDI || opcode == ORI || opcode == XORI || opcode == SLTI) begin
        ex_imm_command = 1'b1;
        ex_alu_src_b = 1'b1;
        ex_dst_reg_sel = 2'b00;
        ex_alu_op = special[2:0];
        wb_reg_write = 1'b1;
    end
end

// Branch operations
always @* begin
    if (opcode == BEQ) begin
        if (branch_eq) begin
            if_pc_source = 2'b01;
        end
    end
end

// Jump operations
always @* begin
    if (opcode == J) begin
        if_pc_source = 2'b10;
    end
    else if (opcode == JAL) begin
        ex_dst_reg_sel = 2'b10;
        ex_alu_rslt_src = 1'b1;
        wb_reg_write = 1'b1;
    end
end

// JR operation
always @* begin
    if (opcode == RTYPE && special == JR) begin
        if_pc_source = 2'b11;
    end
end

endmodule