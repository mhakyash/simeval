module top_module (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out,
    output [4:0] num_transitions
);

    wire [31:0] transition_out;
    wire [31:0] d_ff_out;
    wire [31:0] count_out;
    
    transition_detector detector(
        .clk(clk),
        .reset(reset),
        .in(in),
        .out(transition_out)
    );
    
    d_ff flip_flop(
        .clk(clk),
        .reset(reset),
        .d(transition_out),
        .q(d_ff_out)
    );
    
    transition_counter counter(
        .clk(clk),
        .reset(reset),
        .in(d_ff_out),
        .out(count_out)
    );
    
    assign out = d_ff_out;
    assign num_transitions = count_out;
    
endmodule

module transition_detector (
    input clk,
    input reset,
    input [31:0] in,
    output [31:0] out
);

    reg [31:0] prev_in;
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            prev_in <= 32'h0;
            out <= 32'h0;
        end else begin
            out <= in & (~prev_in);
            prev_in <= in;
        end
    end
    
endmodule

module d_ff (
    input clk,
    input reset,
    input d,
    output q
);

    reg q_reg;
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            q_reg <= 1'b0;
        end else begin
            q_reg <= d;
        end
    end
    
    assign q = q_reg;
    
endmodule

module transition_counter (
    input clk,
    input reset,
    input [31:0] in,
    output reg [4:0] out
);

    reg [31:0] prev_in;
    
    always @(posedge clk, posedge reset) begin
        if (reset) begin
            prev_in <= 32'h0;
            out <= 5'b0;
        end else begin
            if (in != prev_in) begin
                out <= out + 1;
            end
            prev_in <= in;
        end
    end
    
endmodule