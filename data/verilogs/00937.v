module my_module (g, p, g_prec, p_prec, g_out, p_out);
  input g, p, g_prec, p_prec;
  output g_out, p_out;
  wire n5;

  // AOI21 gate implementation
  assign n5 = ~(g_prec & p | ~g & p);

  // AND2 gate implementation
  assign p_out = p & p_prec;

  // Inverter implementation
  assign g_out = ~n5;
endmodule