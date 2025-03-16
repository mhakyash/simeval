module top_module(
    input [99:0] a, b,  // Two 100-bit binary numbers
    input cin,          // Carry-in
    input [1023:0] in,  // 1024-bit input vector for the multiplexer
    input [7:0] sel,    // Selector for the multiplexer
    output [103:0] out  // 104-bit final output
);

    wire [99:0] sum;        // 100-bit sum output from the adder
    wire cout;              // Carry-out output from the adder
    wire [3:0] mux_out;     // 4-bit output from the multiplexer
    wire [255:0] mux_sel;   // 256-bit selection vector for the multiplexer
    wire [103:0] func_out;  // Output from the functional module
    
    // Instantiate the carry-select adder module
    carry_select_adder adder(
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );
    
    // Instantiate the multiplexer with barrel shifter module
    mux_barrel_shifter mux(
        .in(in),
        .sel(sel),
        .out(mux_out),
        .sel_out(mux_sel)
    );
    
    // Instantiate the functional module
    functional_module func(
        .sum(sum),
        .mux_out(mux_out),
        .out(func_out)
    );
    
    // Instantiate the control logic module
    control_logic ctrl(
        .add_en(ctrl_add_en),
        .mux_en(ctrl_mux_en),
        .sel(sel),
        .ctrl_out(ctrl_out)
    );
    
    // Connect the output of the active module to the input of the functional module
    assign func.sum_in = ctrl_add_en ? sum : {100{1'b0}};
    assign func.mux_in = ctrl_mux_en ? mux_out : {4{1'b0}};
    
    // Generate the final output by concatenating the output of the functional module with the carry-out from the adder
    assign out = {func_out, cout};
    
endmodule