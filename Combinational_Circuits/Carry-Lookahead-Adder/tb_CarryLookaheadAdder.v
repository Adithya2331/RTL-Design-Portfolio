`timescale 1ns / 1ps
module tb_carry_look_adder;
reg [3:0]A, B;
reg Cin;
wire [3:0]S;
wire Cout;

carry_look_adder dut(
      .A(A),
      .B(B),
      .Cin(Cin),
      .S(S),
      .Cout(Cout)
);

initial begin 
    $dumpfile("carry_look_adder.vcd");
    $dumpvars(0, tb_carry_look_adder);

    $monitor("$time = %0t  A = %b B = %b Cin = %b  S = %b Cout = %b", $time, A, B, Cin, S, Cout);

       A = 4'b0000; B = 4'b0000; Cin = 0; #10;

       A = 4'b0011; B = 4'b1100; Cin = 0; #10;

       A = 4'b0111; B = 4'b1110; Cin = 1; #10;

       A = 4'b0101; B = 4'b1001; Cin = 0; #10;

       A = 4'b1000; B = 4'b1111; Cin = 1; #10;

       $finish;
end
endmodule
