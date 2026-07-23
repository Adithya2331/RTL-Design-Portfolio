`timescale 1ns / 1ps
module tb_comparator_2BIT;
reg [1:0]A;
reg [1:0]B;
wire A_greater;
wire A_equal;
wire A_lesser;

comparator_2BIT dut(
    .A(A),
    .B(B),
    .A_greater(A_greater),
    .A_equal(A_equal),
    .A_lesser(A_lesser)
);

initial begin
    $dumpfile("comparator_2BIT.vcd");
    $dumpvars(0, tb_comparator_2BIT);

    $monitor("$time = %0t A = %b B = %b  A_greater = %b A_equal = %b A_lesser = %b", $time, A, B, A_greater, A_equal, A_lesser);

     A = 2'b00; B = 2'b00; #10;

     A = 2'b00; B = 2'b01; #10;

     A = 2'b00; B = 2'b11; #10;

     A = 2'b01; B = 2'b10; #10;

     A = 2'b01; B = 2'b01; #10;

     A = 2'b11; B = 2'b00; #10;

     A = 2'b10; B = 2'b00; #10;

     A = 2'b11; B = 2'b11; #10;

     $finish;
end

endmodule
