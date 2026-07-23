module SR_FlipFlop(input s,
                   input r,
                   input clk,
                   output reg q
                   );

           always @(posedge clk) begin
              if(s == 0 && r == 1)
                  q <= 1;

            else if(s == 1 && r == 0)
                 q <= 0;

              else if(s == 1 && r == 1)
                  q <= q;

               else 
               q <= 1'bx;
           end 

endmodule                
