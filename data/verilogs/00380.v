module ddr3_int_phy_alt_mem_phy_mimic_debug(
        // Inputs
        
        // Clocks 
        measure_clk,    // full rate clock from PLL

        // Active low reset                             
        reset_measure_clk_n, 

        mimic_recapture_debug_data, // from user board button
        
        mmc_seq_done,   // mimic calibration finished for the current PLL phase
        mmc_seq_value   // result value of the mimic calibration        

        );


   // Parameters 

   parameter NUM_DEBUG_SAMPLES_TO_STORE = 4096;   // can range from 4096 to 524288
   parameter PLL_STEPS_PER_CYCLE        = 24;     // can  range from 16 to 48  
   
   input wire measure_clk;  
   input wire reset_measure_clk_n;

   input wire mimic_recapture_debug_data;

   input wire mmc_seq_done; 
   input wire mmc_seq_value; 


   function integer clogb2;
      input [31:0] value;
      for (clogb2=0; value>0; clogb2=clogb2+1)
          value = value >> 1;
   endfunction // clogb2
   

   parameter RAM_WR_ADDRESS_WIDTH = clogb2(NUM_DEBUG_SAMPLES_TO_STORE - 1); // can range from 12 to 19 


   reg                                       s_clr_ram_wr_address_count; 

   reg [(clogb2(PLL_STEPS_PER_CYCLE)-1) : 0] mimic_sample_count;        

   reg [RAM_WR_ADDRESS_WIDTH-1 : 0 ]         ram_write_address; 
   wire                                      ram_wr_enable;             
   wire [0:0]                                debug_ram_data;            
   reg                                       clear_ram_wr_enable;               

   reg [1:0]                                 mimic_recapture_debug_data_metastable; 

   wire                                      mimic_done_in_dbg; // for internal use, just 1 measure_clk cycles long
   reg                                       mmc_seq_done_r;               
  

   // generate mimic_done_in_debug : a single clock wide pulse based on the rising edge of mmc_seq_done:

   always @ (posedge measure_clk or negedge reset_measure_clk_n)
   begin  
     if (reset_measure_clk_n == 1'b0)      // asynchronous reset (active low)
     begin
         mmc_seq_done_r <= 1'b0;
     end
     else

     begin
         mmc_seq_done_r <= mmc_seq_done;
     end
      
   end


   assign mimic_done_in_dbg   = mmc_seq_done && !mmc_seq_done_r;  

   assign ram_wr_enable       = mimic_done_in_dbg && !clear_ram_wr_enable;
   assign debug_ram_data[0]   = mmc_seq_value;

    

  altsyncram #(

                .clock_enable_input_a   ( "BYPASS"),
                .clock_enable_output_a  ( "BYPASS"),
                .intended_device_family ( "Stratix II"),
                .lpm_hint               ( "ENABLE_RUNTIME_MOD=YES, INSTANCE_NAME=MRAM"),
                .lpm_type               ( "altsyncram"),
                .maximum_depth          ( 4096),
                .numwords_a             ( 4096),
                .operation_mode         ( "SINGLE_PORT"),
                .outdata_aclr_a         ( "NONE"),
                .outdata_reg_a          ( "UNREGISTERED"),
                .power_up_uninitialized ( "FALSE"),
                .widthad_a              ( 12),
                .width_a                ( 1),
                .width_byteena_a        ( 1)
        )
         altsyncram_component (
                .wren_a                 ( ram_wr_enable),
                .clock0                 ( measure_clk),
                .address_a              ( ram_write_address),
                .data_a                 ( debug_ram_data),
                .q_a                    ( )
        );
   

   

  //  Metastability_mimic_recapture_debug_data : 
  always @(posedge measure_clk or negedge reset_measure_clk_n)
  begin

    if (reset_measure_clk_n == 1'b0)
    begin 
        mimic_recapture_debug_data_metastable    <=  2'b0;
    end
    else

    begin
        mimic_recapture_debug_data_metastable[0] <= mimic_recapture_debug_data;
        mimic_recapture_debug_data_metastable[1] <= mimic_recapture_debug_data_metastable[0];   
    end
    
  end 
   


  //mimic_sample_counter : 
  always @(posedge measure_clk or negedge reset_measure_clk_n)
  begin
  
    if (reset_measure_clk_n == 1'b0) 
    begin
        mimic_sample_count <= 0;        // (others => '0'); 
    end  
    else

    begin
      if (mimic_done_in_dbg == 1'b1)
      begin
          mimic_sample_count <= mimic_sample_count + 1'b1;       

          if (mimic_sample_count == PLL_STEPS_PER_CYCLE-1)
          begin
              mimic_sample_count <= 0; //(others => '0');
          end
                
      end 
      
    end 
  
  end 

  

  //RAMWrAddressCounter : 
  always @(posedge measure_clk or negedge reset_measure_clk_n)
  begin
  
      if (reset_measure_clk_n == 1'b0)
      begin
          ram_write_address <= 0;      //(others => '0');   
          clear_ram_wr_enable <= 1'b0;
      end
      else

      begin
  
          if (s_clr_ram_wr_address_count == 1'b1) // then --Active high synchronous reset
          begin
              ram_write_address <= 0;      //(others => '0');
              clear_ram_wr_enable <= 1'b1;         
          end

          else       
          begin
              clear_ram_wr_enable <= 1'b0;   
          
              if (mimic_done_in_dbg == 1'b1)
              begin
                  if (ram_write_address != NUM_DEBUG_SAMPLES_TO_STORE-1)  
                  begin 
                      ram_write_address <= ram_write_address + 1'b1;             
                  end
                  
                  else
                  begin
                      clear_ram_wr_enable <= 1'b1;        
                  end 
              end
          
          end 
      
      end
  
  end 
  
  //ClearRAMWrAddressCounter : 
  always @(posedge measure_clk or negedge reset_measure_clk_n)
  begin
  
      if (reset_measure_clk_n == 1'b0)
      begin
          s_clr_ram_wr_address_count <= 1'b0;  
      end       

      else
      begin
          if (mimic_recapture_debug_data_metastable[1] == 1'b1)
          begin
              s_clr_ram_wr_address_count <= 1'b1;
          end
       
          else if (mimic_sample_count == 0)       
          begin
              s_clr_ram_wr_address_count <= 1'b0;
          end
      
      end 
  
  end 
  
  endmodule