module shift_reg_32 (
    clk, 
    p_load,  
    p_data, 
    s_in,
    s_out,
    shift_en
);

input clk;
input s_in;
input p_load;
input [31:0] p_data;
input shift_en;
output s_out;

reg [31:0] shreg;

always @(posedge clk) begin
    if (p_load) begin
        shreg <= p_data;
    end else begin
        if (shift_en) begin
            shreg <= {shreg[30:0], s_in};
        end
    end
end

assign s_out = shreg[31];

endmodule