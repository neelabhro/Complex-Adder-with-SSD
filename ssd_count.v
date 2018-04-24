`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2017 19:47:26
// Design Name: 
// Module Name: ssd_count
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


module ssd_count(

    input clock_in,
    output [7:0] count
    );
    
    
    reg [7:0] count;
    always@(posedge clock_in)
    begin
        count  = count + 1;
    end
    
    
endmodule
