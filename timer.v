`timescale 1ns / 1ps
module timer(
    input clk,
    output reg inter
    );
initial begin
inter = 0;
end
reg [6:0]counter = 0;
always@(posedge clk)
    begin
        if(counter == 99)
            begin
                inter <= 1;
                counter <= counter + 1;
            end
        else if(counter == 104)
            begin
                inter = 0;
                counter <= counter + 1;
            end    
        else if(counter == 114)
            begin
                counter <= 0; 
            end
        else
            begin
                counter <= counter + 1;
            end    
    end     
endmodule
