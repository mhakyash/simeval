module TopLevelModule(input clk, input reset,
    output io_in_ready,
    input  io_in_valid,
    input [31:0] io_in_bits,
    input  io_out_ready,
    output io_out_valid,
    output[31:0] io_out_bits,
    input  io_pcIn_valid,
    input  io_pcIn_bits_request,
    input [15:0] io_pcIn_bits_moduleId,
    input [7:0] io_pcIn_bits_portId,
    input [15:0] io_pcIn_bits_pcValue,
    input [3:0] io_pcIn_bits_pcType,
    output io_pcOut_valid,
    output io_pcOut_bits_request,
    output[15:0] io_pcOut_bits_moduleId,
    output[7:0] io_pcOut_bits_portId,
    output[15:0] io_pcOut_bits_pcValue,
    output[3:0] io_pcOut_bits_pcType,
    input  io_off_constOff_req_ready,
    output io_off_constOff_req_valid,
    output[31:0] io_off_constOff_req_bits,
    output io_off_constOff_rep_ready,
    input  io_off_constOff_rep_valid,
    input [31:0] io_off_constOff_rep_bits);

  wire[3:0] offComp_io_pcOut_bits_pcType;
  wire mainComp_io_pcOut_bits_request;
  wire[15:0] mainComp_io_pcOut_bits_moduleId;
  wire mainComp_io_pcOut_valid;
  wire[3:0] mainComp_io_pcOut_bits_pcType;
  wire[15:0] offComp_io_pcOut_bits_pcValue;
  wire mainComp_mainOff_constOff_rep_ready;
  wire offComp_io_out_valid;
  wire mainComp_mainOff_constOff_req_valid;
  wire[7:0] mainComp_io_pcOut_bits_portId;
  wire[15:0] mainComp_io_pcOut_bits_pcValue;
  wire offComp_io_in_ready;
  wire[7:0] offComp_io_pcOut_bits_portId;
  wire offComp_io_pcOut_bits_request;
  wire[15:0] offComp_io_pcOut_bits_moduleId;
  wire offComp_io_pcOut_valid;
  wire[31:0] mainComp_io_out_bits;
  wire[31:0] offComp_io_out_bits;
  wire mainComp_io_out_valid;
  wire mainComp_io_in_ready;

  assign io_pcOut_bits_pcType = offComp_io_pcOut_bits_pcType;
  assign io_pcOut_bits_pcValue = offComp_io_pcOut_bits_pcValue;
  assign io_pcOut_bits_portId = offComp_io_pcOut_bits_portId;
  assign io_pcOut_bits_request = offComp_io_pcOut_bits_request;
  assign io_pcOut_bits_moduleId = offComp_io_pcOut_bits_moduleId;
  assign io_pcOut_valid = offComp_io_pcOut_valid;
  assign io_out_bits = mainComp_io_out_bits;
  assign io_out_valid = mainComp_io_out_valid;
  assign io_in_ready = mainComp_io_in_ready;
  IncThroughOffloadgComponent mainComp(.clk(clk), .reset(reset),
       .io_in_ready( mainComp_io_in_ready ),
       .io_in_valid( io_in_valid ),
       .io_in_bits( io_in_bits ),
       .io_out_ready( io_out_ready ),
       .io_out_valid( mainComp_io_out_valid ),
       .io_out_bits( mainComp_io_out_bits ),
       .io_pcIn_valid( io_pcIn_valid ),
       .io_pcIn_bits_request( io_pcIn_bits_request ),
       .io_pcIn_bits_moduleId( io_pcIn_bits_moduleId ),
       .io_pcIn_bits_portId( io_pcIn_bits_portId ),
       .io_pcIn_bits_pcValue( io_pcIn_bits_pcValue ),
       .io_pcIn_bits_pcType( io_pcIn_bits_pcType ),
       .io_pcOut_valid( mainComp_io_pcOut_valid ),
       .io_pcOut_bits_request( mainComp_io_pcOut_bits_request ),
       .io_pcOut_bits_moduleId( mainComp_io_pcOut_bits_moduleId ),
       .io_pcOut_bits_portId( mainComp_io_pcOut_bits_portId ),
       .io_pcOut_bits_pcValue( mainComp_io_pcOut_bits_pcValue ),
       .io_pcOut_bits_pcType( mainComp_io_pcOut_bits_pcType ),
       .mainOff_constOff_req_ready( offComp_io_in_ready ),
       .mainOff_constOff_req_valid( mainComp_mainOff_constOff_req_valid ),
       .mainOff_constOff_req_bits(  ),
       .mainOff_constOff_rep_ready( mainComp_mainOff_constOff_rep_ready ),
       .mainOff_constOff_rep_valid( offComp_io_out_valid ),
       .mainOff_constOff_rep_bits( offComp_io_out_bits ));
  SendConstantgComonent offComp(.clk(clk), .reset(reset),
       .io_in_ready( offComp_io_in_ready ),
       .io_in_valid( mainComp_mainOff_constOff_req_valid ),
       .io_in_bits(  ),
       .io_out_ready( mainComp_mainOff_constOff_rep_ready ),
       .io_out_valid( offComp_io_out_valid ),
       .io_out_bits( offComp_io_out_bits ),
       .io_pcIn_valid( mainComp_io_pcOut_valid ),
       .io_pcIn_bits_request( mainComp_io_pcOut_bits_request ),
       .io_pcIn_bits_moduleId( mainComp_io_pcOut_bits_moduleId ),
       .io_pcIn_bits_portId( mainComp_io_pcOut_bits_portId ),
       .io_pcIn_bits_pcValue( mainComp_io_pcOut_bits_pcValue ),
       .io_pcIn_bits_pcType( mainComp_io_pcOut_bits_pcType ),
       .io_pcOut_valid( offComp_io_pcOut_valid ),
       .io_pcOut_bits_request( offComp_io_pcOut_bits_request ),
       .io_pcOut_bits_moduleId( offComp_io_pcOut_bits_moduleId ),
       .io_pcOut_bits_portId( offComp_io_pcOut_bits_portId ),
       .io_pcOut_bits_pcValue( offComp_io_pcOut_bits_pcValue ),
       .io_pcOut_bits_pcType( offComp_io_pcOut_bits_pcType ),
       .offOff_test_req_ready(  ),
       .offOff_test_req_valid(  ),
       .offOff_test_req_bits(  ),
       .offOff_test_rep_ready(  ),
       .offOff_test_rep_valid(  ),
       .offOff_test_rep_bits(  ));
endmodule