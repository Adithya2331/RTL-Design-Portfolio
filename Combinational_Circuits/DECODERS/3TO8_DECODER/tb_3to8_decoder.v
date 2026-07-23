`timescale 1ns / 1ps
module tb_decoder_3to8;
reg [2:0]a;
wire [7:0]y;

decoder_3to8 dut(
    .a(a),
    .y(y)
);

initial begin
    $dumpfile("decoder_3to8.vcd");
    $dumpvars(0, tb_decoder_3to8);

    $monitor("$time = %0t  a = %b  y = %b", $time, a, y);
  
    a = 000; #10; 

    a = 001; #10;

    a = 010; #10;

    a = 011; #10;

    a = 100; #10; 

    a = 101; #10; 

    a = 110; #10; 

    a = 111; #10; 

    $finish;

end

endmodule
