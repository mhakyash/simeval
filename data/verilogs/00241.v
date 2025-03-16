module min_shift_register (
    input [7:0] a, b, c, d, // Input for finding minimum value
    input clk, d, // Data and clock input for shift register
    output [7:0] min, // Output of the minimum value module
    output q, // Output of the last flip-flop for shift register
    output [7:0] final_output // Final output of the system
);

// Priority encoder for finding the minimum value
wire [3:0] priority;
assign priority = {a < b, a < c, a < d, b < c, b < d, c < d};
wire [7:0] min_value;
assign min_value = (priority == 4'b0000) ? a :
                   (priority == 4'b0001) ? b :
                   (priority == 4'b0010) ? c :
                   (priority == 4'b0011) ? d :
                   (priority == 4'b0100) ? a :
                   (priority == 4'b0101) ? b :
                   (priority == 4'b0110) ? c :
                   (priority == 4'b0111) ? d :
                   (priority == 4'b1000) ? a :
                   (priority == 4'b1001) ? b :
                   (priority == 4'b1010) ? c :
                   (priority == 4'b1011) ? d :
                   (priority == 4'b1100) ? a :
                   (priority == 4'b1101) ? b :
                   (priority == 4'b1110) ? c :
                   (priority == 4'b1111) ? d : 8'b0;

// Shift register
reg [7:0] shift_reg [2:0];
always @(posedge clk) begin
    shift_reg[0] <= d;
    shift_reg[1] <= shift_reg[0];
    shift_reg[2] <= shift_reg[1];
end
assign q = shift_reg[2][0];

// Final output
assign final_output = min_value | shift_reg[2];

endmodule