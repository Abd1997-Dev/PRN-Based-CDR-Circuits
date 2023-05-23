`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 16:57:00
// Design Name: 
// Module Name: prn_seq_gen_tb
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


module prn_seq_gen_tb();
reg clk, rst;
reg [9:0] data_in;
wire [9:0] data_out;
wire [0:0] data_out_stream;

prn_seq_gen uut (.clk(clk), .rst(rst), .data_in(data_in), .data_out(data_out), .data_out_stream(data_out_stream));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;
data_in = 10'b1010111000;
#20 rst = 0;
end


endmodule
