`timescale 1ns / 1ps
module tb_BinarytoGray_Converter;
reg [3:0]binary;
wire [3:0]gray;

BinarytoGray_Converter dut(
    .binary(binary),
    .gray(gray)
);

initial begin
    $dumpfile("BinarytoGray_Converter.vcd");
    $dumpvars(0, tb_BinarytoGray_Converter);

    $monitor("$time = %0t  binary = %b  gray = %b ", $time, binary, gray);

     binary = 4'b0000; #10;

     binary = 4'b0110; #10;

     binary = 4'b0100; #10;

     binary = 4'b0111; #10;

     binary = 4'b1111; #10;

     binary = 4'b1011; #10;

     $finish;
end

endmodule
