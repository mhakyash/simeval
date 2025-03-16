module exin(CCLK, rst, instr, IF);
    input CCLK, rst;
    input [31:0] instr;
    output reg [7:0] IF;

    always @(*) begin
        if (rst) begin
            IF = 8'd0;
        end else begin
            case (instr[31:26])
                6'b000000: begin
                    case (instr[5:0])
                        6'b100000: begin
                            IF = (|instr[15:11]) ? 8'd1 : 8'h0; //add 01
                        end
                        6'b100001: begin
                            IF = 8'd2; //addui 02
                        end
                        6'b100010: begin
                            IF = 8'd3; //sub 03
                        end
                        6'b100011: begin
                            IF = 8'd4; //subu 04
                        end
                        6'b100100: begin
                            IF = 8'd5; //and 05
                        end
                        6'b100101: begin
                            IF = 8'd6; //or 06
                        end
                        6'b100110: begin
                            IF = 8'd7; //xor 07
                        end
                        6'b100111: begin
                            IF = 8'd8; //nor 08
                        end
                        6'b101010: begin
                            IF = 8'd9; //slt 09
                        end
                        6'b101011: begin
                            IF = 8'd10; //sltu 0a
                        end
                        6'b000000: begin
                            IF = 8'd11; //sll 0b
                        end
                        6'b000010: begin
                            IF = 8'd12; //srl 0c
                        end
                        6'b000011: begin
                            IF = 8'd13; //sra 0d
                        end
                        6'b000100: begin
                            IF = 8'd14; //sllv 0e
                        end
                        6'b000110: begin
                            IF = 8'd15; //srlv 0f
                        end
                        6'b000111: begin
                            IF = 8'd16; //srav 10
                        end
                        6'b001000: begin
                            IF = 8'd17; //jr 11
                        end
                        default: begin
                            IF = 8'h0;
                        end
                    endcase
                end
                6'b001000: begin
                    IF = 8'd18; //addi 12
                end
                6'b001001: begin
                    IF = 8'd19; //addui 13
                end
                6'b001100: begin
                    IF = 8'd20; //andi 14
                end
                6'b001101: begin
                    IF = 8'd15; //ori 15
                end
                6'b001110: begin
                    IF = 8'd22; //xori 16
                end
                6'b001111: begin
                    IF = 8'd23; //lui 17
                end
                6'b100011: begin
                    IF = 8'd24; //lw 18
                end
                6'b101011: begin
                    IF = 8'd25; //sw 19
                end
                6'b000100: begin
                    IF = 8'd26; //beq 1a
                end
                6'b000101: begin
                    IF = 8'd27; //bne 1b
                end
                6'b001010: begin
                    IF = 8'd28; //slti 1c
                end
                6'b001011: begin
                    IF = 8'd29; //sltiu 1d
                end
                6'b000010: begin
                    IF = 8'd30; //j 1e
                end
                6'b000011: begin
                    IF = 8'd31; //jal 1f
                end
                default: begin
                    IF = 8'h0;
                end
            endcase
        end
    end
endmodule