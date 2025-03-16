module TRFSM0 (
  Reset_n_i,
  Clk_i,
  In0_i,
  In1_i,
  In2_i,
  In3_i,
  In4_i,
  In5_i,
  Out0_o,
  Out1_o,
  Out2_o,
  Out3_o,
  Out4_o,
  Out5_o,
  Out6_o,
  Out7_o,
  Out8_o,
  Out9_o,
  CfgMode_i,
  CfgClk_i,
  CfgShift_i,
  CfgDataIn_i,
  CfgDataOut_o
);

  input Reset_n_i;
  input Clk_i;
  input In0_i;
  input In1_i;
  input In2_i;
  input In3_i;
  input In4_i;
  input In5_i;
  output Out0_o;
  output Out1_o;
  output Out2_o;
  output Out3_o;
  output Out4_o;
  output Out5_o;
  output Out6_o;
  output Out7_o;
  output Out8_o;
  output Out9_o;
  input CfgMode_i;
  input CfgClk_i;
  input CfgShift_i;
  input CfgDataIn_i;
  output CfgDataOut_o;

  parameter IDLE = 2'b00;
  parameter WAIT_FOR_SENSOR_READY = 2'b01;
  parameter START_ADC_CONVERSION = 2'b10;
  parameter WAIT_FOR_ADC_CONVERSION = 2'b11;
  parameter CHECK_ADC_VALUE = 2'b100;
  parameter STORE_ADC_VALUE = 2'b101;

  reg [2:0] state;
  reg [15:0] counter;
  wire [15:0] threshold;
  wire [15:0] adc_value;
  wire [15:0] sensor_value;
  wire [15:0] abs_diff_result;
  wire carry;
  wire zero;
  wire overflow;
  wire store_new_value;

  assign threshold = In9_i;
  assign adc_value = In8_i;
  assign Out8_o = sensor_value;
  assign Out9_o = threshold;
  assign CfgDataOut_o = 1'b0;

  AbsDiff abs_diff(.A_i(adc_value), .B_i(sensor_value), .D_o(abs_diff_result));
  AddSubCmp add_sub_cmp(.A_i(abs_diff_result), .B_i(threshold), .AddOrSub_i(1'b1), .Carry_i(1'b0), .Carry_o(carry), .D_o(sensor_value), .Overflow_o(overflow), .Sign_o(), .Zero_o(zero));
  Counter counter(.Clk_i(Clk_i), .D_o(counter), .Direction_i(1'b1), .Enable_i(Out5_o), .Overflow_o(Out6_o), .PresetVal_i(In7_i), .Preset_i(Out6_o), .ResetSig_i(1'b0), .Reset_n_i(Reset_n_i), .Zero_o());
  WordRegister word_register(.Clk_i(Clk_i), .D_i(adc_value), .Enable_i(store_new_value), .Q_o(sensor_value), .Reset_n_i(Reset_n_i));

  always @(posedge Clk_i or negedge Reset_n_i) begin
    if (~Reset_n_i) begin
      state <= IDLE;
      counter <= 0;
      Out0_o <= 1'b0;
      Out1_o <= 1'b0;
      Out2_o <= 1'b0;
      Out3_o <= 1'b0;
      Out4_o <= 1'b0;
      Out5_o <= 1'b0;
      Out6_o <= 1'b0;
    end
    else begin
      case (state)
        IDLE: begin
          if (In1_i) begin
            state <= WAIT_FOR_SENSOR_READY;
            Out1_o <= 1'b1;
          end
        end
        WAIT_FOR_SENSOR_READY: begin
          if (In2_i) begin
            state <= START_ADC_CONVERSION;
            Out1_o <= 1'b0;
            Out3_o <= 1'b1;
          end
        end
        START_ADC_CONVERSION: begin
          state <= WAIT_FOR_ADC_CONVERSION;
          Out3_o <= 1'b0;
          Out4_o <= 1'b1;
        end
        WAIT_FOR_ADC_CONVERSION: begin
          if (In0_i) begin
            state <= CHECK_ADC_VALUE;
            Out4_o <= 1'b0;
          end
        end
        CHECK_ADC_VALUE: begin
          if (zero || carry || overflow) begin
            state <= STORE_ADC_VALUE;
            Out2_o <= 1'b1;
            store_new_value <= 1'b1;
          end
          else begin
            state <= WAIT_FOR_SENSOR_READY;
            Out2_o <= 1'b0;
            store_new_value <= 1'b0;
          end
        end
        STORE_ADC_VALUE: begin
          state <= WAIT_FOR_SENSOR_READY;
          Out2_o <= 1'b0;
          store_new_value <= 1'b0;
        end
      endcase
    end
  end

  assign Out0_o = (state == CHECK_ADC_VALUE) ? 1'b1 : 1'b0;
  assign Out7_o = state;

endmodule