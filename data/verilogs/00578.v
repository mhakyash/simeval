module pipeline (
  input clk,
  input reset,
  input [7:0] instruction,
  input [2:0] stage,
  input [4:0] rs1,
  input [4:0] rs2,
  input [4:0] rd,
  input [31:0] data1,
  input [31:0] data2,
  output reg [31:0] regfile [7:0]
);

reg [7:0] instruction_reg;
reg [4:0] rs1_reg;
reg [4:0] rs2_reg;
reg [4:0] rd_reg;
reg [31:0] data1_reg;
reg [31:0] data2_reg;
reg [31:0] result_reg;
reg [31:0] alu_out_reg;
reg [1:0] function_reg;
reg [1:0] stage_reg;

always @(posedge clk) begin
  if (reset) begin
    instruction_reg <= 8'b0;
    rs1_reg <= 5'b0;
    rs2_reg <= 5'b0;
    rd_reg <= 5'b0;
    data1_reg <= 32'b0;
    data2_reg <= 32'b0;
    result_reg <= 32'b0;
    alu_out_reg <= 32'b0;
    function_reg <= 2'b0;
    stage_reg <= 2'b0;
  end else begin
    case (stage_reg)
      2'b00: begin // Stage 1: Instruction Decode
        instruction_reg <= instruction;
        rs1_reg <= rs1;
        rs2_reg <= rs2;
        rd_reg <= rd;
        function_reg <= instruction[7:6];
        stage_reg <= 2'b01;
      end
      2'b01: begin // Stage 2: Instruction Execution
        case (function_reg)
          2'b00: begin // ADD
            result_reg <= data1_reg + data2_reg;
          end
          2'b01: begin // SUB
            result_reg <= data1_reg - data2_reg;
          end
          2'b10: begin // AND
            result_reg <= data1_reg & data2_reg;
          end
          2'b11: begin // NAND
            result_reg <= ~(data1_reg & data2_reg);
          end
        endcase
        alu_out_reg <= result_reg;
        stage_reg <= 2'b10;
      end
      2'b10: begin // Stage 3: Write-Back
        regfile[rd_reg] <= alu_out_reg;
        stage_reg <= 2'b00;
      end
    endcase
  end
end

always @(posedge clk) begin
  if (reset) begin
    data1_reg <= 32'b0;
    data2_reg <= 32'b0;
  end else begin
    case (stage_reg)
      2'b00: begin // Stage 1: Instruction Decode
        data1_reg <= regfile[rs1_reg];
        data2_reg <= regfile[rs2_reg];
      end
      2'b01: begin // Stage 2: Instruction Execution
        data1_reg <= regfile[rs1_reg];
        data2_reg <= regfile[rs2_reg];
      end
      2'b10: begin // Stage 3: Write-Back
        data1_reg <= 32'b0;
        data2_reg <= 32'b0;
      end
    endcase
  end
end

endmodule