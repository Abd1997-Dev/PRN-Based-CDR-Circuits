`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 16:40:17
// Design Name: 
// Module Name: PRN_CDR
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


module PRN_CDR(input clk, rst, rst_gen, input [9:0] din_prn); 
//din_prn need to be given once along with reset

wire [0:0] din_stream, delayed_data_stream;
wire shift_left, shift_right;
wire [15:0] phase_out;

prn_seq_gen prn_seq_uut(.clk(clk), .rst(rst), .data_in(din_prn), .data_out_stream(din_stream));
phase_generator_16 phase_gen_uut(.clk(clk), .rst_gen(rst_gen), .phase_out(phase_out));
Phase_detector phase_detector_uut(.d_in(delayed_data_stream), .clk(phase_out), .rst(rst), .shift_right(shift_right), .shift_left(shift_left));
delay_line_controller delay_line_controller_uut(.din(din_stream), .clk(clk), .rst(rst), .shift_right(shift_right), .shift_left(shift_left), .dout(delayed_data_stream));

endmodule
