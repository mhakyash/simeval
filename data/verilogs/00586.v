module frame_buffer(
    input clk,
    input [15:0] write_address,
    input [15:0] data_in,
    input load,
    input [10:0] vga_h,
    input [10:0] vga_v,
    output reg pixel_out
);

    // Declare memory array
    reg [15:0] memory [0:65535];

    // Write data to memory when load signal is high
    always @(posedge clk) begin
        if (load) begin
            memory[write_address] <= data_in;
        end
    end

    // Output pixel value based on current horizontal and vertical sync signals
    always @(posedge clk) begin
        if (!load) begin
            pixel_out <= memory[(vga_v*640)+vga_h];
        end
    end

endmodule