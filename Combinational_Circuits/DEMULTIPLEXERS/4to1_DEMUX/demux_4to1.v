module demux_1to4(input din,
                  input [1:0]sel,
                  output y0,y1,y2,y3
                  );

    assign y0 = (sel == 2'b00) ? din : 1'b0;

    assign y1 = (sel == 2'b01) ? din : 1'b0;

    assign y2 = (sel == 2'b10) ? din : 1'b0;

    assign y3 = (sel == 2'b11) ? din : 1'b0;


      
endmodule
//  or we can also do with case keyword also;
//  code:-
// always @(*) begin
//    y0 = 1'b0;
//    y1 = 1'b0;
//    y2 = 1'b0;
//    y3 = 1'b0;
//
//    case(sel)
//     2'b00: y0 = din;
//     2'b01: y1 = din;
//    2'b10: y2 = din;
//   2'b11: y3 = din;
//      endcase 
//      end
// endmodule
