`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 16:40:56
// Design Name: 
// Module Name: prn_seq_gen
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

// 10 bit LFSR (Linear feedback shift register)

module prn_seq_gen(input clk, rst, input [9:0] data_in, output [0:0] data_out_stream);

wire temp;
reg [9:0] data_out; // need to change accordingly in testbench

always @ (posedge clk) begin
if (rst) data_out = data_in;
else data_out = {data_out[8:0], temp};
end

assign temp = ~(data_out[9] ^ data_out[2]);

assign data_out_stream = data_out[9];

endmodule
