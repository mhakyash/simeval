// Benchmark "io_config" written by ABC on Wed Jun 26 15:22:06 2024

module io_config ( clock, 
    datain, clk, ena, update, devclrn, devpor,
    \padtoinputregisterdelaysetting[0] ,
    \padtoinputregisterdelaysetting[1] ,
    \padtoinputregisterdelaysetting[2] ,
    \padtoinputregisterdelaysetting[3] , \outputdelaysetting1[0] ,
    \outputdelaysetting1[1] , \outputdelaysetting1[2] ,
    \outputdelaysetting1[3] , \outputdelaysetting2[0] ,
    \outputdelaysetting2[1] , \outputdelaysetting2[2] , dutycycledelaymode,
    \dutycycledelaysettings[0] , \dutycycledelaysettings[1] ,
    \dutycycledelaysettings[2] , \dutycycledelaysettings[3] ,
    outputfinedelaysetting1, outputfinedelaysetting2,
    \outputonlydelaysetting2[0] , \outputonlydelaysetting2[1] ,
    \outputonlydelaysetting2[2] , outputonlyfinedelaysetting2,
    padtoinputregisterfinedelaysetting, dataout  );
  input  clock;
  input  datain, clk, ena, update, devclrn, devpor;
  output \padtoinputregisterdelaysetting[0] ,
    \padtoinputregisterdelaysetting[1] ,
    \padtoinputregisterdelaysetting[2] ,
    \padtoinputregisterdelaysetting[3] , \outputdelaysetting1[0] ,
    \outputdelaysetting1[1] , \outputdelaysetting1[2] ,
    \outputdelaysetting1[3] , \outputdelaysetting2[0] ,
    \outputdelaysetting2[1] , \outputdelaysetting2[2] , dutycycledelaymode,
    \dutycycledelaysettings[0] , \dutycycledelaysettings[1] ,
    \dutycycledelaysettings[2] , \dutycycledelaysettings[3] ,
    outputfinedelaysetting1, outputfinedelaysetting2,
    \outputonlydelaysetting2[0] , \outputonlydelaysetting2[1] ,
    \outputonlydelaysetting2[2] , outputonlyfinedelaysetting2,
    padtoinputregisterfinedelaysetting, dataout;
  reg \output_reg[0] , \output_reg[1] , \output_reg[2] , \output_reg[3] ,
    \output_reg[4] , \output_reg[5] , \output_reg[6] , \output_reg[7] ,
    \output_reg[8] , \output_reg[9] , \output_reg[10] , \shift_reg[0] ,
    \shift_reg[1] , \shift_reg[2] , \shift_reg[3] , \shift_reg[4] ,
    \shift_reg[5] , \shift_reg[6] , \shift_reg[7] , \shift_reg[8] ,
    \shift_reg[9] , \shift_reg[10] ;
  wire n62, n67, n72, n77, n82, n87, n92, n97, n102, n107, n112, n117, n122,
    n127, n132, n137, n142, n147, n152, n157, n162, n167;
  MX2X1    g00(.A(\output_reg[0] ), .B(\shift_reg[0] ), .S0(update), .Y(n62));
  MX2X1    g01(.A(\output_reg[1] ), .B(\shift_reg[1] ), .S0(update), .Y(n67));
  MX2X1    g02(.A(\output_reg[2] ), .B(\shift_reg[2] ), .S0(update), .Y(n72));
  MX2X1    g03(.A(\output_reg[3] ), .B(\shift_reg[3] ), .S0(update), .Y(n77));
  MX2X1    g04(.A(\output_reg[4] ), .B(\shift_reg[4] ), .S0(update), .Y(n82));
  MX2X1    g05(.A(\output_reg[5] ), .B(\shift_reg[5] ), .S0(update), .Y(n87));
  MX2X1    g06(.A(\output_reg[6] ), .B(\shift_reg[6] ), .S0(update), .Y(n92));
  MX2X1    g07(.A(\output_reg[7] ), .B(\shift_reg[7] ), .S0(update), .Y(n97));
  MX2X1    g08(.A(\output_reg[8] ), .B(\shift_reg[8] ), .S0(update), .Y(n102));
  MX2X1    g09(.A(\output_reg[9] ), .B(\shift_reg[9] ), .S0(update), .Y(n107));
  MX2X1    g10(.A(\output_reg[10] ), .B(\shift_reg[10] ), .S0(update), .Y(n112));
  MX2X1    g11(.A(\shift_reg[0] ), .B(datain), .S0(ena), .Y(n117));
  MX2X1    g12(.A(\shift_reg[1] ), .B(\shift_reg[0] ), .S0(ena), .Y(n122));
  MX2X1    g13(.A(\shift_reg[2] ), .B(\shift_reg[1] ), .S0(ena), .Y(n127));
  MX2X1    g14(.A(\shift_reg[3] ), .B(\shift_reg[2] ), .S0(ena), .Y(n132));
  MX2X1    g15(.A(\shift_reg[4] ), .B(\shift_reg[3] ), .S0(ena), .Y(n137));
  MX2X1    g16(.A(\shift_reg[5] ), .B(\shift_reg[4] ), .S0(ena), .Y(n142));
  MX2X1    g17(.A(\shift_reg[6] ), .B(\shift_reg[5] ), .S0(ena), .Y(n147));
  MX2X1    g18(.A(\shift_reg[7] ), .B(\shift_reg[6] ), .S0(ena), .Y(n152));
  MX2X1    g19(.A(\shift_reg[8] ), .B(\shift_reg[7] ), .S0(ena), .Y(n157));
  MX2X1    g20(.A(\shift_reg[9] ), .B(\shift_reg[8] ), .S0(ena), .Y(n162));
  MX2X1    g21(.A(\shift_reg[10] ), .B(\shift_reg[9] ), .S0(ena), .Y(n167));
  ZERO     g22(.Y(dutycycledelaymode));
  ZERO     g23(.Y(\dutycycledelaysettings[0] ));
  ZERO     g24(.Y(\dutycycledelaysettings[1] ));
  ZERO     g25(.Y(\dutycycledelaysettings[2] ));
  ZERO     g26(.Y(\dutycycledelaysettings[3] ));
  ZERO     g27(.Y(outputfinedelaysetting1));
  ZERO     g28(.Y(outputfinedelaysetting2));
  ZERO     g29(.Y(\outputonlydelaysetting2[0] ));
  ZERO     g30(.Y(\outputonlydelaysetting2[1] ));
  ZERO     g31(.Y(\outputonlydelaysetting2[2] ));
  ZERO     g32(.Y(outputonlyfinedelaysetting2));
  ZERO     g33(.Y(padtoinputregisterfinedelaysetting));
  BUFX1    g34(.A(\output_reg[7] ), .Y(\padtoinputregisterdelaysetting[0] ));
  BUFX1    g35(.A(\output_reg[8] ), .Y(\padtoinputregisterdelaysetting[1] ));
  BUFX1    g36(.A(\output_reg[9] ), .Y(\padtoinputregisterdelaysetting[2] ));
  BUFX1    g37(.A(\output_reg[10] ), .Y(\padtoinputregisterdelaysetting[3] ));
  BUFX1    g38(.A(\output_reg[0] ), .Y(\outputdelaysetting1[0] ));
  BUFX1    g39(.A(\output_reg[1] ), .Y(\outputdelaysetting1[1] ));
  BUFX1    g40(.A(\output_reg[2] ), .Y(\outputdelaysetting1[2] ));
  BUFX1    g41(.A(\output_reg[3] ), .Y(\outputdelaysetting1[3] ));
  BUFX1    g42(.A(\output_reg[4] ), .Y(\outputdelaysetting2[0] ));
  BUFX1    g43(.A(\output_reg[5] ), .Y(\outputdelaysetting2[1] ));
  BUFX1    g44(.A(\output_reg[6] ), .Y(\outputdelaysetting2[2] ));
  BUFX1    g45(.A(\output_reg[10] ), .Y(dataout));
  always @ (posedge clock) begin
    \output_reg[0]  <= n62;
    \output_reg[1]  <= n67;
    \output_reg[2]  <= n72;
    \output_reg[3]  <= n77;
    \output_reg[4]  <= n82;
    \output_reg[5]  <= n87;
    \output_reg[6]  <= n92;
    \output_reg[7]  <= n97;
    \output_reg[8]  <= n102;
    \output_reg[9]  <= n107;
    \output_reg[10]  <= n112;
    \shift_reg[0]  <= n117;
    \shift_reg[1]  <= n122;
    \shift_reg[2]  <= n127;
    \shift_reg[3]  <= n132;
    \shift_reg[4]  <= n137;
    \shift_reg[5]  <= n142;
    \shift_reg[6]  <= n147;
    \shift_reg[7]  <= n152;
    \shift_reg[8]  <= n157;
    \shift_reg[9]  <= n162;
    \shift_reg[10]  <= n167;
  end
  initial begin
    \output_reg[0]  <= 1'b0;
    \output_reg[1]  <= 1'b0;
    \output_reg[2]  <= 1'b0;
    \output_reg[3]  <= 1'b0;
    \output_reg[4]  <= 1'b0;
    \output_reg[5]  <= 1'b0;
    \output_reg[6]  <= 1'b0;
    \output_reg[7]  <= 1'b0;
    \output_reg[8]  <= 1'b0;
    \output_reg[9]  <= 1'b0;
    \output_reg[10]  <= 1'b0;
    \shift_reg[0]  <= 1'b0;
    \shift_reg[1]  <= 1'b0;
    \shift_reg[2]  <= 1'b0;
    \shift_reg[3]  <= 1'b0;
    \shift_reg[4]  <= 1'b0;
    \shift_reg[5]  <= 1'b0;
    \shift_reg[6]  <= 1'b0;
    \shift_reg[7]  <= 1'b0;
    \shift_reg[8]  <= 1'b0;
    \shift_reg[9]  <= 1'b0;
    \shift_reg[10]  <= 1'b0;
  end
endmodule


