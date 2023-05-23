`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.05.2023 10:40:04
// Design Name: 
// Module Name: phase_gen_detector_top
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


module phase_gen_detector_top(input d_in, input clk, rst, rst_gen, output reg shift_left, shift_right);

wire [15:0] clk_dff;
wire [15:0] q;

phase_generator_16 uut0(.clk(clk), .rst_gen(rst_gen), .phase_out(clk_dff[15:0]));
Phase_detector uut1(.d_in(d_in), .clk(clk_dff[15:0]), .rst(rst), .q(q));

// later add the initialisation value for the following two signals

// let me making this as the combinational always block using d_in only as the sensitivity list

// always @ (d_in) begin

always @ (*) begin

if (rst)
begin
shift_right = 1'b0;
shift_left = 1'b0;
end

else begin
shift_right = (q[0] ^ q[1]) | (q[2] ^ q[3]) | (q[4] ^ q[5]) | (q[6] ^ q[7]) | (q[8] ^ q[9]) | (q[10] ^ q[11]) | (q[12] ^ q[13]) | (q[14] ^ q[15]);
shift_left = (q[1] ^ q[2]) | (q[3] ^ q[4]) | (q[5] ^ q[6]) | (q[7] ^ q[8]) | (q[9] ^ q[10]) | (q[11] ^ q[12]) | (q[13] ^ q[14]) | (q[15] ^ q[0]);
end

end

endmodule
