`timescale 1ns / 1ps
module tb_half_adder;
reg A;
reg B;
wire S;
wire C0;

half_adder dut(
    .A(A),
    .B(B),
    .S(S),
    .C0(C0)
);

initial begin
    $dumpfile("half_adder.vcd");
    $dumpvars(0,tb_half_adder);

    $monitor("$time = %0t  A = %b B = %b  S = %b C0 = %b", $time, A, B, S, C0);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
end

endmodule
