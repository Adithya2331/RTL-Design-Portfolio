`timescale 1ns / 1ps
module tb_half_subtractor;
reg A;
reg B;
wire D;
wire B0;

half_subractor dut(
    .A(A),
    .B(B),
    .D(D),
    .B0(B0)
);

initial begin;
$dumpfile("half_subractor.vcd");
$dumpvars(0, tb_half_subractor);

$monitor("$time = %0t  A = %b B = %b  D = %b B0 = %b", $time, A, B, D, B0);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
end

endmodule
