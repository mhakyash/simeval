module int_alu(
    input clk,
    input [31:0] a,
    input [31:0] b,
    input [31:0] instr,
    output reg [31:0] out,
    inout [31:0] r
);

function [31:0] read;
    input [5:0] reg_addr;
    begin
        r[31:0] = reg_addr;
        read = r[31:0];
    end
endfunction

function write;
    input [5:0] reg_addr;
    input [31:0] data;
    begin
        r[31:0] = reg_addr;
        r[31:0] = data;
        write = 1;
    end
endfunction

always @(posedge clk) begin
    case (instr)
        6'b100000: out = read(a) + read(b); // add
        6'b100001: out = read(a) + read(b); // addu
        6'b001000: out = read(a) + b; // addi
        6'b001001: out = read(a) + b; // addiu
        6'b100100: out = read(a) & read(b); // and
        6'b001100: out = read(a) & b; // andi
        6'b011010: out = read(a) / read(b); // div
        6'b011011: out = read(a) / read(b); // divu
        6'b011000: out = read(a) * read(b); // mult
        6'b011001: out = read(a) * read(b); // multu
        6'b100111: out = ~(read(a) | read(b)); // nor
        6'b100101: out = read(a) | read(b); // or
        6'b001101: out = read(a) | b; // ori
        6'b000000: out = read(a) << b; // sll
        6'b000100: out = read(a) << read(b); // sllv
        6'b000011: out = $signed(read(a)) >>> b; // sra
        6'b000111: out = $signed(read(a)) >>> read(b); // srav
        6'b000010: out = read(a) >>> b; // srl
        6'b000110: out = read(a) >>> read(b); // srlv
        6'b100010: out = read(a) - read(b); // sub
        6'b100011: out = read(a) - read(b); // subu
        6'b100110: out = read(a) ^ read(b); // xor
        6'b001110: out = read(a) ^ b; // xori
        default: out = 0;
    endcase
end

endmodule