module jtag__jtagIRControl(capture, phi1_fb, phi1_in, phi2_fb, phi2_in, shift, 
      update, phi1_out, phi2_out, read, write);
  input capture;
  input phi1_fb;
  input phi1_in;
  input phi2_fb;
  input phi2_in;
  input shift;
  input update;
  output phi1_out;
  output phi2_out;
  output read;
  output write;

  wire phi1_sel;
  wire phi2_sel;
  wire shift_sel;
  wire update_sel;
  assign phi1_sel = phi1_fb & phi2_fb & ~phi1_in & ~phi2_in & ~shift & ~update;
  assign phi2_sel = phi1_fb & phi2_fb & ~phi1_in & ~phi2_in & ~shift & ~update;
  assign shift_sel = phi1_in & phi2_fb & ~phi1_fb & ~phi2_in & shift & ~update;
  assign update_sel = phi1_fb & phi2_in & ~phi1_in & ~phi2_fb & ~shift & update;

  jtag__capture_ctl capture__0(.capture(capture), .phi2(phi2_in), .sel(phi2_sel), 
      .out(read), .phi1(phi1_in));
  jtag__shift_ctl shift_ct_0(.phi1_fb(phi1_fb), .phi2_fb(phi2_fb), .sel(shift_sel), 
      .shift(shift), .phi1_out(phi1_out), .phi2_out(phi2_out), 
      .phi1_in(phi1_in), .phi2_in(phi2_in));
  jtag__update_ctl update_c_0(.sel(update_sel), .update(update), .out(write), 
      .phi2(phi2_in));
endmodule