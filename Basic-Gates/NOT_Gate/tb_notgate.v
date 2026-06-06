module tb_not_gate;

reg a;
 
 wire y;

 and_gate dut   (
             .a(a),
             .y(y)
             );
 initial begin
 $dumpfile("not_gate.vcd");
 $dumpvars(0,tb_not_gate);

 $monitor($time ,"a=%d,y=%d",a,y);  

 a=0;  #10; 
   
 a=1;  #10;
 
 $finish;
         
           end

           endmodule
