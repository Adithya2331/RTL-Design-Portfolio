module SR_Latch(input s,
                 input r,
                input ena, // active high enable
                output reg q
);

always @(*) begin // or:- always @(s or r or ena)
     if(ena == 1) begin

        if(s == 0 && r ==1)
             q = 0;  // reset state 

        else if(s == 1 && r == 0)
             q = 1;  // set state 

        else if(s == 0 && r == 0) 
             q = q;  // memory state

         else
           q = 1'bx;  //  invalid state
     end

     else
     q = q;  //memory
end

endmodule          

        
    
