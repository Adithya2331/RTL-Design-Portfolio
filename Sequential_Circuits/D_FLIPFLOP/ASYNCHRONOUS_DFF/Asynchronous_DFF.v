module async_dff(input d,
                 input clk,
                 input reset,  // active high reset
                 output reg q);

      always @(posedge clk or posedge reset)
      begin

        if(reset == 1)   
            q <= 0;

        else 
            q <= d;
      end
endmodule
