module alu(input [7:0]a,
           input [7:0]b,
           input [3:0]sel,
           output [7:0]result);

    reg result;

    always @(*) begin
        case(sel)
        4'b0000: result = a + b;
        4'b0001: result = a - b;
        4'b0010: result = a * b;
        4'b0100: result = a / b;
        4'b0101: result = a % b;
        4'b0110: result = a << b;
        4'b0111: result = a >> b;
        4'b1000: result = a & b;
        4'b1001: result = a | b;
        4'b1010: result = ~a;
        4'b1100: result = a ^ b;
        default: result = 8'b00000000;
        endcase
    end
endmodule
