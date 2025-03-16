module top_module ( 
    input wire [2:0] vec,
    input wire select,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  );
    
    wire [2:0] mux_out;
    wire [7:0] decoder_out;
    
    // Multiplexers
    assign mux_out[0] = select ? vec[0] : 1'b0;
    assign mux_out[1] = select ? vec[1] : 1'b0;
    assign mux_out[2] = select ? vec[2] : 1'b0;
    
    // Decoders
    assign decoder_out[vec] = 1'b1;
    
    // Output assignments
    assign outv = vec;
    assign o0 = decoder_out[0];
    assign o1 = decoder_out[1];
    assign o2 = decoder_out[2];
    
endmodule