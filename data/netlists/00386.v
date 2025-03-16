// Benchmark "shift_left_register" written by ABC on Wed Jun 26 15:22:08 2024

module shift_left_register ( clock, 
    clk, rst, load, shift, \input_data[0] , \input_data[1] ,
    \input_data[2] , \input_data[3] , \input_data[4] , \input_data[5] ,
    \input_data[6] , \input_data[7] ,
    \output_data[0] , \output_data[1] , \output_data[2] , \output_data[3] ,
    \output_data[4] , \output_data[5] , \output_data[6] , \output_data[7]   );
  input  clock;
  input  clk, rst, load, shift, \input_data[0] , \input_data[1] ,
    \input_data[2] , \input_data[3] , \input_data[4] , \input_data[5] ,
    \input_data[6] , \input_data[7] ;
  output \output_data[0] , \output_data[1] , \output_data[2] ,
    \output_data[3] , \output_data[4] , \output_data[5] , \output_data[6] ,
    \output_data[7] ;
  reg \stage1[0] , \stage1[1] , \stage1[2] , \stage1[3] , \stage1[4] ,
    \stage1[5] , \stage1[6] , \stage1[7] , \stage2[0] , \stage2[1] ,
    \stage2[2] , \stage2[3] , \stage2[4] , \stage2[5] , \stage2[6] ;
  wire new_n66, new_n67_1, new_n69, new_n70, new_n71, new_n73, new_n74,
    new_n76, new_n77_1, new_n79, new_n80, new_n82_1, new_n83, new_n85,
    new_n86, new_n88, new_n89, new_n91, new_n92_1, new_n94, new_n95,
    new_n97_1, new_n98, new_n100, new_n101, new_n103, new_n104, new_n106,
    new_n107_1, new_n109, new_n110, n42, n47, n52, n57, n62, n67, n72, n77,
    n82, n87, n92, n97, n102, n107, n112;
  NOR2X1   g00(.A(shift), .B(load), .Y(new_n66));
  AOI22X1  g01(.A0(new_n66), .A1(\stage1[0] ), .B0(\input_data[0] ), .B1(load), .Y(new_n67_1));
  NOR2X1   g02(.A(new_n67_1), .B(rst), .Y(n42));
  INVX1    g03(.A(rst), .Y(new_n69));
  MX2X1    g04(.A(\stage1[1] ), .B(\stage2[0] ), .S0(shift), .Y(new_n70));
  MX2X1    g05(.A(new_n70), .B(\input_data[1] ), .S0(load), .Y(new_n71));
  AND2X1   g06(.A(new_n71), .B(new_n69), .Y(n47));
  MX2X1    g07(.A(\stage1[2] ), .B(\stage2[1] ), .S0(shift), .Y(new_n73));
  MX2X1    g08(.A(new_n73), .B(\input_data[2] ), .S0(load), .Y(new_n74));
  AND2X1   g09(.A(new_n74), .B(new_n69), .Y(n52));
  MX2X1    g10(.A(\stage1[3] ), .B(\stage2[2] ), .S0(shift), .Y(new_n76));
  MX2X1    g11(.A(new_n76), .B(\input_data[3] ), .S0(load), .Y(new_n77_1));
  AND2X1   g12(.A(new_n77_1), .B(new_n69), .Y(n57));
  MX2X1    g13(.A(\stage1[4] ), .B(\stage2[3] ), .S0(shift), .Y(new_n79));
  MX2X1    g14(.A(new_n79), .B(\input_data[4] ), .S0(load), .Y(new_n80));
  AND2X1   g15(.A(new_n80), .B(new_n69), .Y(n62));
  MX2X1    g16(.A(\stage1[5] ), .B(\stage2[4] ), .S0(shift), .Y(new_n82_1));
  MX2X1    g17(.A(new_n82_1), .B(\input_data[5] ), .S0(load), .Y(new_n83));
  AND2X1   g18(.A(new_n83), .B(new_n69), .Y(n67));
  MX2X1    g19(.A(\stage1[6] ), .B(\stage2[5] ), .S0(shift), .Y(new_n85));
  MX2X1    g20(.A(new_n85), .B(\input_data[6] ), .S0(load), .Y(new_n86));
  AND2X1   g21(.A(new_n86), .B(new_n69), .Y(n72));
  MX2X1    g22(.A(\stage1[7] ), .B(\stage2[6] ), .S0(shift), .Y(new_n88));
  MX2X1    g23(.A(new_n88), .B(\input_data[7] ), .S0(load), .Y(new_n89));
  AND2X1   g24(.A(new_n89), .B(new_n69), .Y(n77));
  MX2X1    g25(.A(\stage2[0] ), .B(\stage1[0] ), .S0(shift), .Y(new_n91));
  MX2X1    g26(.A(new_n91), .B(\stage1[0] ), .S0(load), .Y(new_n92_1));
  AND2X1   g27(.A(new_n92_1), .B(new_n69), .Y(n82));
  MX2X1    g28(.A(\stage2[1] ), .B(\stage1[1] ), .S0(shift), .Y(new_n94));
  MX2X1    g29(.A(new_n94), .B(\stage1[1] ), .S0(load), .Y(new_n95));
  AND2X1   g30(.A(new_n95), .B(new_n69), .Y(n87));
  MX2X1    g31(.A(\stage2[2] ), .B(\stage1[2] ), .S0(shift), .Y(new_n97_1));
  MX2X1    g32(.A(new_n97_1), .B(\stage1[2] ), .S0(load), .Y(new_n98));
  AND2X1   g33(.A(new_n98), .B(new_n69), .Y(n92));
  MX2X1    g34(.A(\stage2[3] ), .B(\stage1[3] ), .S0(shift), .Y(new_n100));
  MX2X1    g35(.A(new_n100), .B(\stage1[3] ), .S0(load), .Y(new_n101));
  AND2X1   g36(.A(new_n101), .B(new_n69), .Y(n97));
  MX2X1    g37(.A(\stage2[4] ), .B(\stage1[4] ), .S0(shift), .Y(new_n103));
  MX2X1    g38(.A(new_n103), .B(\stage1[4] ), .S0(load), .Y(new_n104));
  AND2X1   g39(.A(new_n104), .B(new_n69), .Y(n102));
  MX2X1    g40(.A(\stage2[5] ), .B(\stage1[5] ), .S0(shift), .Y(new_n106));
  MX2X1    g41(.A(new_n106), .B(\stage1[5] ), .S0(load), .Y(new_n107_1));
  AND2X1   g42(.A(new_n107_1), .B(new_n69), .Y(n107));
  MX2X1    g43(.A(\stage2[6] ), .B(\stage1[6] ), .S0(shift), .Y(new_n109));
  MX2X1    g44(.A(new_n109), .B(\stage1[6] ), .S0(load), .Y(new_n110));
  AND2X1   g45(.A(new_n110), .B(new_n69), .Y(n112));
  BUFX1    g46(.A(\stage1[0] ), .Y(\output_data[0] ));
  BUFX1    g47(.A(\stage1[1] ), .Y(\output_data[1] ));
  BUFX1    g48(.A(\stage1[2] ), .Y(\output_data[2] ));
  BUFX1    g49(.A(\stage1[3] ), .Y(\output_data[3] ));
  BUFX1    g50(.A(\stage1[4] ), .Y(\output_data[4] ));
  BUFX1    g51(.A(\stage1[5] ), .Y(\output_data[5] ));
  BUFX1    g52(.A(\stage1[6] ), .Y(\output_data[6] ));
  BUFX1    g53(.A(\stage1[7] ), .Y(\output_data[7] ));
  always @ (posedge clock) begin
    \stage1[0]  <= n42;
    \stage1[1]  <= n47;
    \stage1[2]  <= n52;
    \stage1[3]  <= n57;
    \stage1[4]  <= n62;
    \stage1[5]  <= n67;
    \stage1[6]  <= n72;
    \stage1[7]  <= n77;
    \stage2[0]  <= n82;
    \stage2[1]  <= n87;
    \stage2[2]  <= n92;
    \stage2[3]  <= n97;
    \stage2[4]  <= n102;
    \stage2[5]  <= n107;
    \stage2[6]  <= n112;
  end
endmodule


