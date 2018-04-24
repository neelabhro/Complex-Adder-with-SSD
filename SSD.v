`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2017 15:57:33
// Design Name: 
// Module Name: SSD
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


module SSD(


	input [3:0] ones,
	output [7:0] cathode
	);
	
	reg [6:0] sseg_temp;
	//reg [3:0] an_temp = 4'b1110;
	always@ (*)
	begin
		case(ones)
			4'd0 : sseg_temp = 7'b0000001;
			4'd1 : sseg_temp = 7'b1001111;
			4'd2 : sseg_temp = 7'b0010010;
			4'd3 : sseg_temp = 7'b0000110;
			4'd4 : sseg_temp = 7'b1001100;
			4'd5 : sseg_temp = 7'b0100100;
			4'd6 : sseg_temp = 7'b0100000;
			4'd7 : sseg_temp = 7'b0001111;
			4'd8 : sseg_temp = 7'b0000000;
			4'd9 : sseg_temp = 7'b0000100;
			default : sseg_temp = 7'b1111110;
		endcase;
	end
	

	assign cathode = {sseg_temp, 1'b1};
	//assign anode = an_temp;
endmodule
