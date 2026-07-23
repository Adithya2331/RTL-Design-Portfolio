module mux_8x1(input [7:0]i,
               input [2:0]sel,
               output reg Y);

    always @(*) begin
         case(sel)
           3'b000: Y = i[0];
           3'b001: Y = i[1];
           3'b010: Y = i[2];
           3'b001: Y = i[3];
           3'b100: Y = i[4];
           3'b101: Y = i[5];
           3'b110: Y = i[6];
           3'b111: Y = i[7];
             default: Y = 1'b0;
         endcase
    end

endmodule        
