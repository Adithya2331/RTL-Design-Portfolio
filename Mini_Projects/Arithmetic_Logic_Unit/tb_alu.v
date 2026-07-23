`timescale 1ns / 1ps
module tb_alu;

reg [7:0]a;
reg [7:0]b;
reg [3:0]sel;
wire [7:0]result;

alu dut(.a(a),
         .b(b),
         .sel(sel),
         .result(result)
         );
         initial begin
            $dumpfile("alu.vcd");
            $dumpvars(0,tb_alu);
$monitor("time = %0t a = %b b = %b sel = %b result = %b", $time, a, b, sel, result);
            a = 8'd15; b = 8'd13;

    
         sel = 4'b0000; #10;  //Add
         sel = 4'b0001; #10;  //Sub
         sel = 4'b0010; #10;  //Multiply
         sel = 4'b0100; #10;  //Division
         sel = 4'b0101; #10;  //Modulus
         sel = 4'b0110; #10;  //Left Shift
         sel = 4'b0111; #10;  //Right Shift
         sel = 4'b1000; #10;  //And
         sel = 4'b1001; #10;  //Or
         sel = 4'b1010; #10;  //Not
         sel = 4'b1100; #10;  //Exor
$finish;

         end 
endmodule
