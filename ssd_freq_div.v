`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2017 19:36:48
// Design Name: 
// Module Name: ssd_freq_div
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


module ssd_freq_div(
    input clock_in,
    output reg clock_out
    );
    parameter width = 32;
    reg [width-1:0] count;
    initial
    begin
        count = 0;
        clock_out = 0;
    end
    always @ (posedge clock_in)
    begin
        if(count == 50000000)
        begin
            count <= 0;
            clock_out=~clock_out;
        end
        else
        count <= count + 1;
    end

endmodule
