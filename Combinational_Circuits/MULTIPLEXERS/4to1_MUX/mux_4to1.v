module mux_4x1(input [3:0]i,
              input [1:0]sel,
                output reg Y);
            

always @(*) begin
        case(sel)
        2'b00: Y = i[0];
        2'b01: Y = i[1];
        2'b10: Y = i[2];
        2'b11: Y = i[3];
          default: Y = 1'b0;
        endcase
end

endmodule
