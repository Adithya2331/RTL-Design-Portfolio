module Timer_Traffic_Controller(input clk,
                                 input clr,
                                 output reg [5:0]lights);

// lights[5:3] = road A(R,Y,G)
//  lights[2:0] = road B(R,Y,G)

         reg [2:0]state;
         reg [3:0]count;
         parameter S0 = 3'b000, S1 = 3'b001, S2 = 3'b010, //states
                   S3 = 3'b100, S4 = 3'b101, S5 = 3'b110;
         parameter COUNT15 = 4'b1111,COUNT3 = 4'b0011; //delays

         always @(posedge clk or posedge clr)
          begin
         if(clr == 1)
         begin
         state <= S0;
         count <= 0;
         end
         else begin
         case(state)

           S0: if(count < COUNT15)
           begin 
            state <= S0;
            count <= count + 1;
           end
           else begin
            state <= S1;
            count <= 0;
           end

           S1: if(count < COUNT3)
           begin
            state <= S1;
            count <= count + 1;
           end
           else begin
            state <= S2;
            count <= 0;
           end

           S2: if(count < COUNT3)
           begin 
            state <= S2;
            count <= count + 1;
           end
           else begin
            state <= S3;
            count <= 0;
           end

           S3: if(count < COUNT15)
           begin
            state <= S3;
            count <= count + 1;
           end
           else begin
           state <= S4;
           count <= 0;
           end

           S4: if(count < COUNT3)
            begin
                state <= S4;
                count <= count + 1;
            end
            else begin
                state <= S5;
                count <= 0;
            end

            S5: if(count < COUNT3)
            begin
                state <= S5;
                count <= count + 1;
            end
            else begin
                state <= S0;
                count <= 0;
            end

            default: begin
                state <= S0;
                count <= 0;
            end

         endcase
            end 
          end 

always @(*)
begin 
    case(state)
    S0: lights = 6'b100001; // Red Green
    S1: lights = 6'b100010; // Red Yellow
    S2: lights = 6'b100100; // Red Red
    S3: lights = 6'b001100; // Green Red
    S4: lights = 6'b010100; // Yellow Red
    S5: lights = 6'b100100; // Red Red
      default: lights = 6'b100001;// Red Green
    endcase
end

endmodule
