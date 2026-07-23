module t_ff( input t,
             input clk,
             input reset,
             output reg q);

      always @(posedge clk)  
        begin
            if(reset)
                q <= 1'b0;   // Reset Output to 0

            else if(t)
                q <= ~q;  // Toggle    

             else
             q <= q;    //Hold
             
        end
endmodule        
