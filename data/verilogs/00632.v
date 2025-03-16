module Processor;
  reg clk;
  reg [31:0] pc;
  reg [31:0] instr;
  reg [4:0] opcode, rs, rt, rd;
  reg [16:0] imm;
  reg [31:0] jaddr;
  reg [31:0] usable_instruc;
  reg [31:0] newpc;
  reg [31:0] r1, r2, r3, r4, r5;
  wire zero_flag;
  
  InstructionMem im(clk, pc, opcode, rs, rt, rd, imm, jaddr, usable_instruc, newpc);
  
  always @(posedge clk) begin
    instr <= usable_instruc;
    case (opcode)
      5'd0: r1 <= r1 + imm;
      5'd8: r2 <= r2 + imm;
      5'd18: r3 <= r1 * r2;
      5'd4: if (r1 == r3) pc <= jaddr;
      5'd2: pc <= jaddr;
      5'd24: if (r2 > r1) zero_flag <= 1'b0; else zero_flag <= 1'b1;
      5'd63: $finish;
    endcase
  end
  
  initial begin
    clk <= 0;
    pc <= 0;
    r1 <= 0;
    r2 <= 0;
    r3 <= 0;
    r4 <= 0;
    r5 <= 0;
    #10;
    while (1) begin
      clk <= ~clk;
      #5;
      if (clk) begin
        case (pc)
          5'd0: pc <= pc + 1;
          5'd1: pc <= pc + 1;
          5'd2: pc <= pc + 1;
          5'd3: pc <= pc + 1;
          5'd4: pc <= pc + 1;
          5'd5: pc <= pc + 1;
          5'd6: pc <= pc + 1;
          5'd7: pc <= pc + 1;
          5'd8: pc <= pc + 1;
          5'd9: pc <= pc + 1;
          5'd10: if (zero_flag) pc <= 15; else pc <= pc + 1;
          5'd11: pc <= pc + 1;
          5'd12: pc <= pc + 1;
          5'd13: pc <= pc + 1;
          5'd14: pc <= 18;
          5'd15: pc <= pc + 1;
          5'd16: pc <= pc + 1;
          5'd17: pc <= pc + 1;
          5'd18: pc <= pc + 1;
          default: pc <= pc + 1;
        endcase
      end
    end
  end
  
  initial begin
    #100;
    $display("R1 = %d, R2 = %d, R3 = %d, R4 = %d, R5 = %d", r1, r2, r3, r4, r5);
    $finish;
  end
endmodule