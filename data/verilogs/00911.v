module top_module (
    input clk,
    input reset,
    input [7:0] in,
    output [7:0] final_out
);

    // Inputs for the given modules
    wire [7:0] anyedge;
    wire [31:0] transition_out;
    
    // Instantiate the given modules
    shift_register shift_reg(clk, in, anyedge);
    transition_capture trans_cap(clk, reset, anyedge[0], transition_out);
    
    // Functional module to combine the outputs
    reg [7:0] final_reg;
    always @(posedge clk) begin
        if (reset) begin
            final_reg <= 8'b0;
        end else begin
            final_reg <= {transition_out[31], transition_out[31], transition_out[31], transition_out[31], 
                          transition_out[30], transition_out[29], transition_out[28], transition_out[27]} & ~anyedge;
        end
    end
    
    assign final_out = final_reg;
    
endmodule

// Given modules
module shift_register (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
    reg [7:0] reg_in;
    always @(posedge clk) begin
        reg_in <= in;
    end
    
    assign anyedge = reg_in & ~$past(reg_in);
    
endmodule

module transition_capture (
    input clk,
    input reset,
    input [0:0] in,
    output [31:0] out
);
    reg [31:0] reg_in;
    always @(posedge clk) begin
        if (reset) begin
            reg_in <= 32'b0;
        end else begin
            reg_in <= {reg_in[30:0], in};
        end
    end
    
    assign out = reg_in;
    
endmodule