module Traffic_Light_Sensor(input clr,
                                input clk,
                                input SNS1,
                                input SNS2,
                                output reg [1:0]TL1,TL2
                                );
                reg [1:0]state, next_state;
               parameter  S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, S3 = 3'b100;
               parameter green = 2'b00, yellow = 2'b01, red = 2'b10;

always @(posedge clk or posedge clr) 
begin
    if(clr)
     state <= S0;
     else 
     state <= next_state;
end

always @(*)
begin
    case(state) 
    S0: if(SNS2) 
      next_state = S1;
      else
      next_state = S0;

    S1: next_state = S2;

    S2: if(SNS1)
      next_state  =  S0;
         else 
         next_state = S2;

     S3: next_state = S0;
     default: next_state = S0;
    endcase
end

always @(*)
begin
  if(state == S0)
  begin
    TL1 = green;
    TL2 = red;
  end

  else if(state == S1)
  begin
    TL1 = yellow;
    TL2 = red;
  end

else if(state == S2)
begin
  TL1 = red;
  TL2 = green;
end

else begin
  TL1 = red;
  TL2 = yellow;
end

end

endmodule
