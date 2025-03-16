module tuner_slice_1k #(
    parameter dsz = 10,
              psz = 12
)
(
    input clk, reset, shf_90,
    input signed [dsz-1:0] in,
    input [psz-1:0] phs,
    output reg signed [dsz-1:0] out
);

    reg signed [dsz-1:0] sin_val, cos_val;
    reg signed [dsz-1:0] sin_out, cos_out;
    reg signed [dsz-1:0] i_out, q_out;

    always @(posedge clk)
    begin
        if(reset == 1'b1)
        begin
            sin_val <= 'sd0;
            cos_val <= 'sd0;
            sin_out <= 'sd0;
            cos_out <= 'sd0;
            i_out <= 'sd0;
            q_out <= 'sd0;
            out <= 'sd0;
        end
        else
        begin
            // Calculate sine and cosine values
            sin_val <= $signed($sin((2**10)*$itor(phs)/2**12));
            cos_val <= $signed($cos((2**10)*$itor(phs)/2**12));

            // Multiply input by sine wave
            sin_out <= sin_val * in;

            // Multiply input by cosine wave if shf_90 is high
            if(shf_90)
                cos_out <= cos_val * in;

            // Add sine and cosine outputs
            i_out <= sin_out + cos_out;
            q_out <= sin_out - cos_out;

            // Output i_out or q_out depending on shf_90
            out <= shf_90 ? q_out : i_out;
        end
    end

endmodule