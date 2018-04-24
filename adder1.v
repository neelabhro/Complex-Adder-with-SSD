`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.11.2017 10:20:14
// Design Name: 
// Module Name: adder
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adder1(

    input [5:0] I,
    input [5:0] Q,
    output reg [7:0] sum
    );
    
    
//    assign S_arr = {S3,S2,S1,S0};

    wire [4:0] I1 = I[4:0];
    wire [4:0] Q1 = Q[4:0];
        
    always @ (*)
    begin
        if( I[5] == Q[5])
        begin
            sum = I1 + Q1;
        end

        else
        begin
            if( I1 < Q1)
            begin    
                sum = Q1 - I1;
            end
            
            else
            begin
                sum = I1 - Q1;
            end
         end           
    end

endmodule
