`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.05.2023 11:47:18
// Design Name: 
// Module Name: PRN_CDR_tb
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


module PRN_CDR_tb();
reg clk, rst, rst_gen;
reg [9:0] din_prn;

PRN_CDR PRN_CDR_uut(.clk(clk), .rst(rst), .rst_gen(rst_gen), .din_prn(din_prn));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;
din_prn = 10'b1101101011;  #200 
rst = 0;     
end

initial begin
rst_gen = 1; #20
rst_gen = 0;     
end

endmodule
