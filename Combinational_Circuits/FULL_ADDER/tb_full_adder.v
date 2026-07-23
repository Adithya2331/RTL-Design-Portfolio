`timescale 1ns / 1ps
module tb_full_adder;
reg A;
reg B;
reg Cin;
wire S;
wire C0;

full_adder dut(
     .A(A),
     .B(B),
     .Cin(Cin),
     .S(S),
     .C0(C0)
     );

     initial begin
        $dumpfile("full_adder.vcd");
        $dumpvars(0, tb_full_adder);

        $monitor("$time = %0t  A = %b B = %b Cin = %b  S = %b C = %b", $time, A, B, Cin, S, C0);

           A = 0; B = 0; Cin = 0; #10; 
           A = 0; B = 0; Cin = 1; #10; 
           A = 0; B = 1; Cin = 0; #10; 
           A = 0; B = 1; Cin = 1; #10; 
           A = 1; B = 0; Cin = 0; #10; 
           A = 1; B = 0; Cin = 1; #10; 
           A = 1; B = 1; Cin = 0; #10; 
           A = 1; B = 1; Cin = 1; #10; 
         
         $finish;
     end

endmodule
