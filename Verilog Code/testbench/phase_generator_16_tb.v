`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.04.2023 09:33:25
// Design Name: 
// Module Name: phase_generator_16_tb
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


module phase_generator_16_tb();

reg clk, rst;
wire [15:0] phase_out;

phase_generator_16 uut(.clk(clk), .rst(rst), .phase_out(phase_out));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;
#20 rst = 0;
end

endmodule
