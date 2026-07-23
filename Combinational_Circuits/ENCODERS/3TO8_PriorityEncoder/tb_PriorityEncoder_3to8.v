`timescale 1ns / 1ps
module tb_priority_encoder;
reg [7:0]in;
wire [2:0]out;
wire valid;

priority_encoder dut(
    .in(in),
    .out(out),
    .valid(valid)
);

initial begin
    $dumpfile("priority_encoder.vcd");
    $dumpvars(0,tb_priority_encoder);

    $monitor("$time = %0t in = %b  out = %b  valid = %b", $time, in, out, valid);

    in = 8'b00000110; #10;

    in = 8'b00000010; #10;

    in = 8'b00110110; #10;

    in = 8'b10000110; #10;

    in = 8'b00000110; #10;

    in = 8'b00000001; #10;

    in = 8'b00000000; #10;

    in = 8'b00111111; #10;

    $finish;     
end

endmodule
    
