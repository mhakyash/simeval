module HexTo7Seg(input [3:0] hex_in, output reg [7:0] seg_out);

    always @(*)
        case(hex_in)
            4'h0: seg_out = 8'b00111111;
            4'h1: seg_out = 8'b00000110;
            4'h2: seg_out = 8'b01011011;
            4'h3: seg_out = 8'b01001111;
            4'h4: seg_out = 8'b01100110;
            4'h5: seg_out = 8'b01101101;
            4'h6: seg_out = 8'b01111101;
            4'h7: seg_out = 8'b00000111;
            4'h8: seg_out = 8'b01111111;
            4'h9: seg_out = 8'b01101111;
            4'hA: seg_out = 8'b01110111;
            4'hB: seg_out = 8'b01111100;
            4'hC: seg_out = 8'b00111001;
            4'hD: seg_out = 8'b01011110;
            4'hE: seg_out = 8'b01111001;
            4'hF: seg_out = 8'b01110001;
            default: seg_out = 8'b00000000;
        endcase

endmodule

module display4digit(
    input [15:0] A,
    input clk,
    output [7:0] segments,
    output reg [3:0] digitselect
);

    reg [18:0] counter = 0;
    wire [1:0] toptwo;
    reg [3:0] value4bit;

    always @(posedge clk)
        begin
            counter <= counter + 1'b1;
        end
    
    assign toptwo[1:0] = counter[18:17];  // (100*10^6 cycles/sec)/(2^17 cycles/refresh) = (763 refreshes/sec)
    
    always @(*)
        begin
            case(toptwo[1:0])
                2'b00: 
                    begin
                        digitselect <= ~4'b0001;
                        value4bit <= A[3:0];
                    end
                2'b01: 
                    begin
                        digitselect <= ~4'b0010;
                        value4bit <= A[7:4];
                    end
                2'b10: 
                    begin
                        digitselect <= ~4'b0100;
                        value4bit <= A[11:8];
                    end
                default:
                    begin
                        digitselect <= ~4'b1000;
                        value4bit <= A[15:12];
                    end
            endcase
        end
    
    HexTo7Seg myhexencoder(value4bit, segments);

endmodule