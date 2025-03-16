module top_module (
    input clk,
    input reset,
    input [7:0] in,
    output reg [15:0] serial_out
);

    // Instantiate the 8-bit shift register module
    reg [7:0] shift_reg_out;
    shift_register shift_reg (
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(shift_reg_out)
    );
    
    // Instantiate the 2-to-1 multiplexer module
    reg [7:0] mux_out;
    mux_2to1 mux (
        .in0(shift_reg_out),
        .in1(in),
        .sel(reset), // Use reset signal as select signal for example purposes
        .out(mux_out)
    );
    
    // Combine the outputs of the shift register and multiplexer to generate the final serial output
    always @(posedge clk) begin
        serial_out <= {serial_out[14:0], mux_out, shift_reg_out};
    end
    
endmodule

// 8-bit shift register module
module shift_register (
    input clk,
    input reset,
    input [7:0] in,
    output reg out
);

    always @(posedge clk) begin
        if (reset) begin
            out <= 1'b0;
        end else begin
            out <= {out[6:0], in[0]};
        end
    end
    
endmodule

// 2-to-1 multiplexer module
module mux_2to1 (
    input [7:0] in0,
    input [7:0] in1,
    input sel,
    output reg [7:0] out
);

    always @(*) begin
        if (sel) begin
            out = in1;
        end else begin
            out = in0;
        end
    end
    
endmodule