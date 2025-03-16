module top_module (
    input clk,
    input reset,
    input [7:0] in,
    input [31:0] in2,
    output final_output
);

    // Parity bit generation module
    wire [7:0] in_xor;
    assign in_xor = ^in;
    wire parity_bit;
    assign parity_bit = in_xor[0] ^ in_xor[1] ^ in_xor[2] ^ in_xor[3] ^ in_xor[4] ^ in_xor[5] ^ in_xor[6] ^ in_xor[7];
    
    // Falling edge detection module
    reg [31:0] counter;
    wire falling_edge;
    assign falling_edge = (counter == 32'h7FFFFFFF);
    always @(posedge clk) begin
        if (reset) begin
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end
    
    // XOR module
    wire xor_output;
    assign xor_output = parity_bit ^ falling_edge;
    
    // Final output
    assign final_output = xor_output;
    
endmodule