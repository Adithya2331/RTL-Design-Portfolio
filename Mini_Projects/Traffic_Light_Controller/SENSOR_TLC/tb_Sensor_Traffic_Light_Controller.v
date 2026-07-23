`timescale 1ns / 1ps
module tb_Traffic_Light_Sensor;
reg clr;
reg clk;
reg SNS1;
reg SNS2;
wire [1:0]TL1;
wire [1:0]TL2;

Traffic_Light_Sensor dut(
                         .clk(clk),
                          .clr(clr),
                          .SNS1(SNS1),
                           .SNS2(SNS2),
                           .TL1(TL1),
                           .TL2(TL2)
                           );

             initial begin
                $dumpfile("Traffic_Light_Sensor.vcd");
                $dumpvars(0,tb_Traffic_Light_Sensor);

                $monitor("time = %0t | clr = %b SNS1= %b SNS2 = %b | TL1 = %b TL2 = %b",$time, clr, SNS1, SNS2, TL1, TL2);
                 clr = 1;
                 #13
                 clr = 0;

                 SNS1 = 0; SNS2 = 0; #10;
                 SNS1 = 0; SNS2 = 1; #40;
                 SNS1 = 0; SNS2 = 0; #40;
                 SNS1 = 1; SNS2 = 0; #30;
                 SNS1 = 0; SNS2 = 0; #20;
                 SNS1 = 0; SNS2 = 1; 
    $finish;
    end

    always 
     begin 
        clk = 1;
        forever #5
        clk = ~clk;
     end

endmodule
