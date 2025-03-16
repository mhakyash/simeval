module Crc (
  input MRxClk,
  input Reset,
  input [7:0] Data_Crc,
  input Enable_Crc,
  input Initialize_Crc,
  output reg [31:0] Crc,
  output reg CrcError
);

reg [5:0] CrcHash;
reg CrcHashGood;
reg [7:0] RxData_d;
reg DelayData;
reg [7:0] LatchedByte;
reg [7:0] RxData;
reg Broadcast;
reg Multicast;
reg RxValid_d;
reg RxValid;
reg RxStartFrm_d;
reg RxStartFrm;
reg RxEndFrm_d;
reg RxEndFrm;

wire GenerateRxValid;
wire GenerateRxStartFrm;
wire GenerateRxEndFrm;
wire DribbleRxEndFrm;

eth_crc crcrx (
  .Clk(MRxClk), 
  .Reset(Reset), 
  .Data(Data_Crc), 
  .Enable(Enable_Crc), 
  .Initialize(Initialize_Crc), 
  .Crc(Crc), 
  .CrcError(CrcError)
);

always @ (posedge MRxClk) begin
  CrcHashGood <= StateData[0] & ByteCntEq6;
end

always @ (posedge MRxClk) begin
  if (Reset | StateIdle) begin
    CrcHash[5:0] <= 6'h0;
  end else begin
    if (StateData[0] & ByteCntEq6) begin
      CrcHash[5:0] <= Crc[31:26];
    end
  end
end

always @ (posedge MRxClk or posedge Reset) begin
  if (Reset) begin
    RxData_d[7:0] <= 8'h0;
    DelayData <= 1'b0;
    LatchedByte[7:0] <= 8'h0;
    RxData[7:0] <= 8'h0;
  end else begin
    LatchedByte[7:0] <= {MRxD[3:0], LatchedByte[7:4]};
    DelayData <= StateData[0];
    if (GenerateRxValid) begin
      RxData_d[7:0] <= LatchedByte[7:0] & {8{|StateData}};
    end else begin
      if (~DelayData) begin
        RxData_d[7:0] <= 8'h0;
      end
    end
    RxData[7:0] <= RxData_d[7:0];
  end
end

always @ (posedge MRxClk or posedge Reset) begin
  if (Reset) begin
    Broadcast <= 1'b0;
  end else begin      
    if (StateData[0] & ~(&LatchedByte[7:0]) & ByteCntSmall7) begin
      Broadcast <= 1'b0;
    end else begin
      if (StateData[0] & (&LatchedByte[7:0]) & ByteCntEq1) begin
        Broadcast <= 1'b1;
      end else begin
        if (RxAbort | RxEndFrm) begin
          Broadcast <= 1'b0;
        end
      end
    end
  end
end

always @ (posedge MRxClk or posedge Reset) begin
  if (Reset) begin
    Multicast <= 1'b0;
  end else begin      
    if (StateData[0] & ByteCntEq1 & LatchedByte[0]) begin
      Multicast <= 1'b1;
    end else if (RxAbort | RxEndFrm) begin
      Multicast <= 1'b0;
    end
  end
end

assign GenerateRxValid = StateData[0] & (~ByteCntEq0 | DlyCrcCnt >= 4'h3);

always @ (posedge MRxClk or posedge Reset) begin
  if (Reset) begin
    RxValid_d <= 1'b0;
    RxValid <= 1'b0;
  end else begin
    RxValid_d <= GenerateRxValid;
    RxValid <= RxValid_d;
  end
end

assign GenerateRxStartFrm = StateData[0] & ((ByteCntEq1 & ~DlyCrcEn) | ((DlyCrcCnt == 4'h3) & DlyCrcEn));

always @ (posedge MRxClk or posedge Reset) begin
  if (Reset) begin
    RxStartFrm_d <= 1'b0;
    RxStartFrm <= 1'b0;
  end else begin
    RxStartFrm_d <= GenerateRxStartFrm;
    RxStartFrm <= RxStartFrm_d;
  end
end

assign GenerateRxEndFrm = StateData[0] & (~MRxDV & ByteCntGreat2 | ByteCntMaxFrame);
assign DribbleRxEndFrm = StateData[1] & ~MRxDV & ByteCntGreat2;

always @ (posedge MRxClk or posedge Reset) begin
  if (Reset) begin
    RxEndFrm_d <= 1'b0;
    RxEndFrm <= 1'b0;
  end else begin
    RxEndFrm_d <= GenerateRxEndFrm;
    RxEndFrm <= RxEndFrm_d | DribbleRxEndFrm;
  end
end

endmodule