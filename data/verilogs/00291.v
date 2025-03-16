module d_to_jk_ff (
    input clk,
    input d,
    output reg q );
    
    reg j, k;
    
    always @(posedge clk) begin
        j <= d;
        k <= ~d;
        q <= j ^ q;
        q <= ~k ^ q;
    end
    
endmodule