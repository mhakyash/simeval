module multiplexor
  #(parameter WIDTH=5)
  (
    input              sel,
    input  [WIDTH-1:0] in0,
    input  [WIDTH-1:0] in1,
    output [WIDTH-1:0] mux_out
  );
  
  assign mux_out = sel ? in1 : in0;

endmodule