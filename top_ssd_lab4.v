`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2017 18:47:39
// Design Name: 
// Module Name: top_ssd_lab4
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


module top_ssd_lab4(
    input clock_in,
    input clr,
    input [5:0] I,
    input [5:0] Q,    
    output reg [7:0] cathode,
    output reg [3:0] anode
    
    );
    initial 
    begin
        anode=4'b1110;
    end
    
    wire [7:0] sum;
    wire [3:0] hundreds,tens,ones;
//    reg [3:0] num;
    wire [7:0] cathode1;
    wire [7:0] cathode2;
    wire [7:0] cathode3;

    ssd_freq_div f1 (clock_in,clock_out_f);
//    ssd_count    c1 (clock_out_f,count);
    adder1        a1 (I,Q,sum);
    ssd_bin2bcd  b1 (sum,hundreds,tens,ones);
    SSD          s1 (hundreds,cathode3);
    SSD          s2 (tens,cathode2);
    SSD          s3 (ones,cathode1);        
    

    
    always @(posedge clock_out_f)
    begin
        if (anode == 4'b1110)
            begin
                anode = 4'b1101;
                cathode = cathode2;
                
            end

        else if (anode == 4'b1101)
            begin
                anode = 4'b1011;
                cathode = cathode3;
                
            end

        else
            begin
                anode=4'b1110;
                cathode = cathode1;
                
            end
     end

    

    
endmodule
