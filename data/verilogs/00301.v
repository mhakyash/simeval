module io_config (
  	datain,
  	clk,
  	ena,
  	update,
  	devclrn, 
  	devpor,
  	padtoinputregisterdelaysetting,
  	outputdelaysetting1,
  	outputdelaysetting2,
  	dutycycledelaymode,
  	dutycycledelaysettings,
  	outputfinedelaysetting1,
  	outputfinedelaysetting2,
  	outputonlydelaysetting2,
  	outputonlyfinedelaysetting2,
  	padtoinputregisterfinedelaysetting, 
  	dataout
  );
  
  input        datain;
  input        clk;
  input        ena;
  input        update;
  input        devclrn;
  input        devpor;
  
  output [3:0] padtoinputregisterdelaysetting;
  output [3:0] outputdelaysetting1;
  output [2:0] outputdelaysetting2;
  output       dataout;
  output       dutycycledelaymode;
  output [3:0] dutycycledelaysettings;
  output       outputfinedelaysetting1;
  output       outputfinedelaysetting2;
  output [2:0] outputonlydelaysetting2;
  output       outputonlyfinedelaysetting2;
  output       padtoinputregisterfinedelaysetting;
  
  reg  [10:0] shift_reg;
  reg  [10:0] output_reg;
  wire        tmp_dataout;
  wire [10:0] tmp_output;
  
  initial 
  begin
      shift_reg = 'b0;
      output_reg = 'b0;
  end
  
  always @(posedge clk)
  begin
      if (ena)
      begin
          shift_reg[0] <= datain;
          shift_reg[10:1] <= shift_reg[9:0];
      end
  end
  
  always @(posedge clk)
  begin
      if (update)
      begin  
          output_reg <= shift_reg;
      end
  end
  
  assign dataout = output_reg[10];
  assign padtoinputregisterdelaysetting = output_reg[10:7];
  assign outputdelaysetting1 = output_reg[3:0];
  assign outputdelaysetting2 = output_reg[6:4];
  assign dutycycledelaymode = 1'b0;
  assign dutycycledelaysettings = 4'h0;
  assign outputfinedelaysetting1 = 1'b0;
  assign outputfinedelaysetting2 = 1'b0;
  assign outputonlydelaysetting2 = 3'b000;
  assign outputonlyfinedelaysetting2 = 1'b0;
  assign padtoinputregisterfinedelaysetting = 1'b0;
  
endmodule