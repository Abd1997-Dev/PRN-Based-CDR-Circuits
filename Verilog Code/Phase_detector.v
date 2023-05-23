`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2023 10:16:59
// Design Name: 
// Module Name: Phase_detector
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


//module Phase_detector(input d_in, input [15:0] clk, input rst, output shift_right, shift_left);

module Phase_detector(input d_in, input [15:0] clk, input rst, output shift_right, shift_left);

wire [15:0] q;

D_ff dff0(.d(d_in), .clk(clk[0]), .rst(rst), .q(q[0])); //q0
D_ff dff1(.d(d_in), .clk(clk[1]), .rst(rst), .q(q[1])); //q22.5
D_ff dff2(.d(d_in), .clk(clk[2]), .rst(rst), .q(q[2])); //q45
D_ff dff3(.d(d_in), .clk(clk[3]), .rst(rst), .q(q[3])); //q67.5
D_ff dff4(.d(d_in), .clk(clk[4]), .rst(rst), .q(q[4])); //q90
D_ff dff5(.d(d_in), .clk(clk[5]), .rst(rst), .q(q[5])); //q112.5
D_ff dff6(.d(d_in), .clk(clk[6]), .rst(rst), .q(q[6])); //d135
D_ff dff7(.d(d_in), .clk(clk[7]), .rst(rst), .q(q[7])); //d147.5
D_ff dff8(.d(d_in), .clk(clk[8]), .rst(rst), .q(q[8])); //d180
D_ff dff9(.d(d_in), .clk(clk[9]), .rst(rst), .q(q[9])); //d202.5
D_ff dff10(.d(d_in), .clk(clk[10]), .rst(rst), .q(q[10])); //q225
D_ff dff11(.d(d_in), .clk(clk[11]), .rst(rst), .q(q[11])); //q247.5
D_ff dff12(.d(d_in), .clk(clk[12]), .rst(rst), .q(q[12])); //q270
D_ff dff13(.d(d_in), .clk(clk[13]), .rst(rst), .q(q[13])); //q292.5
D_ff dff14(.d(d_in), .clk(clk[14]), .rst(rst), .q(q[14])); //q315
D_ff dff15(.d(d_in), .clk(clk[15]), .rst(rst), .q(q[15])); //q337.5

assign shift_right = (q[0] ^ q[1]) | (q[2] ^ q[3]) | (q[4] ^ q[5]) | (q[6] ^ q[7]) | (q[8] ^ q[9]) | (q[10] ^ q[11]) | (q[12] ^ q[13]) | (q[14] ^ q[15]);
assign shift_left = (q[1] ^ q[2]) | (q[3] ^ q[4]) | (q[5] ^ q[6]) | (q[7] ^ q[8]) | (q[9] ^ q[10]) | (q[11] ^ q[12]) | (q[13] ^ q[14]) | (q[15] ^ q[0]);


endmodule
