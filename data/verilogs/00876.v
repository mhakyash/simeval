module four_digit_display(
    input clk, // clock signal
    input reset, // reset signal
    input [15:0] numbers, // input signal representing 4 4-bit numbers to display
    output reg [3:0] digit_select, // active-low signals to select the digit to display
    output reg [6:0] segments // active-low signals for each digit to control the segments of the 7-segment display
);

reg [3:0] count = 4'h0; // counter to keep track of which digit is being displayed
reg [6:0] abcdefg [3:0]; // array to store which segments should be active for each digit

// truth table to determine which segments should be active for each digit
always @(*) begin
    case(numbers[count*4+3:count*4])
        4'h0 : abcdefg[count] = 7'h3F;
        4'h1 : abcdefg[count] = 7'h06;
        4'h2 : abcdefg[count] = 7'h5B;
        4'h3 : abcdefg[count] = 7'h4F;
        4'h4 : abcdefg[count] = 7'h66;
        4'h5 : abcdefg[count] = 7'h6D;
        4'h6 : abcdefg[count] = 7'h7D;
        4'h7 : abcdefg[count] = 7'h07;
        4'h8 : abcdefg[count] = 7'h7F;
        4'h9 : abcdefg[count] = 7'h6F;
        default: abcdefg[count] = 7'h00; // if input is invalid, turn off all segments
    endcase
end

// increment counter every 750 ms to switch to the next digit
always @(posedge clk) begin
    if (reset) begin
        count <= 4'h0; // reset counter to 0 when reset signal is high
        digit_select <= 4'hF; // turn off all digits when reset signal is high
        segments <= 7'h00; // turn off all segments when reset signal is high
    end else if (count == 4'h3) begin
        count <= 4'h0; // reset counter to 0 when it reaches 3
        digit_select <= 4'hF; // turn off all digits
        segments <= abcdefg[count]; // output segments for first digit
    end else begin
        count <= count + 1; // increment counter
        digit_select <= ~(1 << count); // select current digit
        segments <= abcdefg[count]; // output segments for current digit
    end
end

endmodule