module bm_match4_str_arch(
    input clock, 
    input reset_n, 
    input [1:0] a_in, 
    input [1:0] b_in,
    input [1:0] c_in, 
    input [1:0] d_in, 
    input [1:0] e_in, 
    input [1:0] f_in, 
    output reg [3:0] out0,
    output reg [3:0] out1,
    output reg [3:0] out2,
    output wire [3:0] out3,
    output wire [3:0] out4,
    output wire [3:0] out5
);

    always @(posedge clock) begin
        if (!reset_n) begin
            out0 <= 4'b0;
            out1 <= 4'b0;
            out2 <= 4'b0;
        end else begin
            out0 <= out3 + out4 + out5;
            out1 <= c_in * d_in;
            out2 <= e_in * f_in;
        end
    end
    
    assign out3 = a_in * b_in;
    assign out4 = c_in * d_in;
    assign out5 = e_in * f_in;

endmodule