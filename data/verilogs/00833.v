module top_module (
    input clk,
    input reset,      // Synchronous active-high reset
    input a,          // 1st input signal for the 2-to-1 MUX
    input b,          // 2nd input signal for the 2-to-1 MUX
    input sel_b1,     // Select signal for the 2-to-1 MUX
    input sel_b2,     // Select signal for the 2-to-1 MUX
    input write_en,   // Write enable signal for the dual-port RAM
    input [7:0] write_addr, // Write address for the dual-port RAM
    input [3:0] write_data, // Write data for the dual-port RAM
    input read_en,    // Read enable signal for the dual-port RAM
    input [7:0] read_addr,  // Read address for the dual-port RAM
    output reg [3:0] read_data, // Read data from the dual-port RAM
    output [3:0] final_output // Final output after adding the three input values
);

// 2-to-1 MUX
reg [3:0] mux_out;
always @(*) begin
    if (sel_b1 == 0) begin
        mux_out = a;
    end else if (sel_b2 == 0) begin
        mux_out = b;
    end else begin
        mux_out = a | b;
    end
end

// Dual-port RAM
reg [3:0] ram [0:7];
integer i;
initial begin
    for (i = 0; i < 8; i = i + 1) begin
        ram[i] = 4'b1111;
    end
end
always @(posedge clk) begin
    if (reset) begin
        for (i = 0; i < 8; i = i + 1) begin
            ram[i] <= 4'b1111;
        end
    end else begin
        if (write_en) begin
            ram[write_addr] <= write_data;
        end
        if (read_en) begin
            read_data <= ram[read_addr];
        end
    end
end

// Final output
always @(*) begin
    final_output = a + b + read_data;
end

endmodule