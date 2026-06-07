module tb_exnor_gate;

reg a,b;
 
 wire y;

 and_gate dut   (
             .a(a),
             .b(b),
             .y(y)
             );
 initial begin
 $dumpfile("exnor_gate.vcd");
 $dumpvars(0,tb_exnor_gate);

 $monitor($time ,"a=%d,b=%d,y=%d",a,b,y);  

 a=0; b=0;
   #10;   
 a=0; b=1;
   #10;
 a=1; b=0;
   #10;
 a=1; b=1;
   #10;
 $finish;
         
           end

           endmodule
