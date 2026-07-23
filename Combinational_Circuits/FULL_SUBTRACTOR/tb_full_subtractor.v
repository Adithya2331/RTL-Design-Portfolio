`timescale 1ns / 1ps
module tb_full_subtractor;
reg A;
reg B;
reg Bin;
wire D;
wire B0;

full_subtractor dut(
    .A(A),
    .B(B),
    .Bin(Bin),
    .D(D),
    .B0(B0)
);

initial begin
    $dumpfile("full_subtractor.vcd");
    $dumpvars(0, tb_full_subtractor);

    $monitor("$time = %0t  A = %b B = %b Bin = %b  D = %b B0 = %b", $time, A, B, Bin, D, B0);

           A = 0; B = 0; Bin = 0; #10; 
           A = 0; B = 0; Bin = 1; #10; 
           A = 0; B = 1; Bin = 0; #10; 
           A = 0; B = 1; Bin = 1; #10; 
           A = 1; B = 0; Bin = 0; #10; 
           A = 1; B = 0; Bin = 1; #10; 
           A = 1; B = 1; Bin = 0; #10; 
           A = 1; B = 1; Bin = 1; #10; 
         
         $finish;
     end

endmodule
