`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2017 19:51:30
// Design Name: 
// Module Name: ssd_bin2bcd
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


module ssd_bin2bcd(

    input [7:0] num,
//    output [3:0] thousands,
    output reg [3:0] hundreds,
    output reg [3:0] tens,
    output reg [3:0] ones
    );
    
    reg [19:0] bit_temp;
    integer j;
    
    
    always @(num)
    begin
        bit_temp[19:8] = 0;
        bit_temp[7:0] = num;
        
        
        for(j=0; j<8; j = j +1) 
        begin
            if (bit_temp[11:8] > 5)
                bit_temp[11:8] = bit_temp[11:8] + 3;

            if (bit_temp[15:12] > 5)
                bit_temp[15:12] = bit_temp[15:12] + 3;

            if (bit_temp[19:16] > 5)
                bit_temp[19:16] = bit_temp[19:16] + 3;

            bit_temp = bit_temp <<1;
        end
        
        hundreds = bit_temp[19:16];
            tens = bit_temp[15:12];
            ones = bit_temp[11:8] ;
//       thousands = 4'b0000;                      
        
        end

endmodule
