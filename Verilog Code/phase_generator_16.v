`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.04.2023 17:35:10
// Design Name: 
// Module Name: phase_generator_16
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


module phase_generator_16_cum_phase_detector(input clk, rst, input [15:0] d, output [15:0] q, output shift_right, shift_left, output reg [15:0] phase_out);

// no need of 16 d_inputs and the dff should sample the input value at the particular time interval
reg [4:0] curr_state; // if next_state is required then use it later

always @ (posedge clk) begin

if (rst) 
begin 
curr_state = 5'b00000;
phase_out = 16'b0000_0000_0000_0000;
end

else if (curr_state == 5'b00000) begin
curr_state = 5'b00001;
phase_out = 16'b0000_0000_0000_0000;
end

else if (curr_state == 5'b00001) begin
curr_state = 5'b00010;
phase_out = 16'b0000_0000_0000_0001;
end

else if (curr_state == 5'b00010) begin
curr_state = 5'b00011;
phase_out = 16'b0000_0000_0000_0011;
end

else if (curr_state == 5'b00011) begin
curr_state = 5'b00100;
phase_out = 16'b0000_0000_0000_0111;
end

else if (curr_state == 5'b00100) begin
curr_state = 5'b00101;
phase_out = 16'b0000_0000_0000_1111;
end

else if (curr_state == 5'b00101) begin
curr_state = 5'b00110;
phase_out = 16'b0000_0000_0001_1111;
end

else if (curr_state == 5'b00110) begin
curr_state = 5'b00111;
phase_out = 16'b0000_0000_0011_1111;
end

else if (curr_state == 5'b00111) begin // curr_state = 7
curr_state = 5'b01000;
phase_out = 16'b0000_0000_0111_1111;
end

else if (curr_state == 5'b01000) begin // curr_state = 8
curr_state = 5'b01001;
phase_out = 16'b0000_0000_1111_1111;
end

else if (curr_state == 5'b01001) begin // curr_state = 9
curr_state = 5'b01010;
phase_out = 16'b0000_0001_1111_1111;
end

else if (curr_state == 5'b01010) begin // curr_state = 10
curr_state = 5'b01011;
phase_out = 16'b0000_0011_1111_1111;
end

else if (curr_state == 5'b01011) begin // curr_state = 11
curr_state = 5'b01100;
phase_out = 16'b0000_0111_1111_1111;
end

else if (curr_state == 5'b01100) begin // curr_state = 12
curr_state = 5'b01101;
phase_out = 16'b0000_1111_1111_1111;
end

else if (curr_state == 5'b01101) begin // curr_state = 13
curr_state = 5'b01110;
phase_out = 16'b0001_1111_1111_1111;
end

else if (curr_state == 5'b01110) begin // curr_state = 14
curr_state = 5'b01111;
phase_out = 16'b0011_1111_1111_1111;
end

else if (curr_state == 5'b01111) begin // curr_state = 15
curr_state = 5'b10000;
phase_out = 16'b0111_1111_1111_1111;
end

else if (curr_state == 5'b10000) begin // curr_state = 16
curr_state = 5'b10001;
phase_out = 16'b1111_1111_1111_1111;
end

else if (curr_state == 5'b10001) begin // curr_state = 17
curr_state = 5'b10010;
phase_out = 16'b1111_1111_1111_1110;
end

else if (curr_state == 5'b10010) begin // curr_state = 18
curr_state = 5'b10011;
phase_out = 16'b1111_1111_1111_1100;
end

else if (curr_state == 5'b10011) begin // curr_state = 19
curr_state = 5'b10100;
phase_out = 16'b1111_1111_1111_1000;
end

else if (curr_state == 5'b10100) begin // curr_state = 20
curr_state = 5'b10101;
phase_out = 16'b1111_1111_1111_0000;
end

else if (curr_state == 5'b10101) begin // curr_state = 21
curr_state = 5'b10110;
phase_out = 16'b1111_1111_1110_0000;
end

else if (curr_state == 5'b10110) begin // curr_state = 22
curr_state = 5'b10111;
phase_out = 16'b1111_1111_1100_0000;
end

else if (curr_state == 5'b10111) begin // curr_state = 23
curr_state = 5'b11000;
phase_out = 16'b1111_1111_1000_0000;
end

else if (curr_state == 5'b11000) begin // curr_state = 24
curr_state = 5'b11001;
phase_out = 16'b1111_1111_0000_0000;
end

else if (curr_state == 5'b11001) begin // curr_state = 25
curr_state = 5'b11010;
phase_out = 16'b1111_1110_0000_0000;
end

else if (curr_state == 5'b11010) begin // curr_state = 26
curr_state = 5'b11011;
phase_out = 16'b1111_1100_0000_0000;
end

else if (curr_state == 5'b11011) begin // curr_state = 27
curr_state = 5'b11100;
phase_out = 16'b1111_1000_0000_0000;
end

else if (curr_state == 5'b11100) begin // curr_state = 28
curr_state = 5'b11101;
phase_out = 16'b1111_0000_0000_0000;
end

else if (curr_state == 5'b11101) begin // curr_state = 28
curr_state = 5'b11110;
phase_out = 16'b1110_0000_0000_0000;
end

else if (curr_state == 5'b11110) begin // curr_state = 29
curr_state = 5'b11111;
phase_out = 16'b1100_0000_0000_0000;
end

else if (curr_state == 5'b11111) begin // curr_state = 30
curr_state = 5'b00000;
phase_out = 16'b1000_0000_0000_0000;
end

end

D_ff dff0(.d(d[0]), .clk(phase_out[0]), .rst(rst), .q(q[0])); //q0
D_ff dff1(.d(d[1]), .clk(phase_out[1]), .rst(rst), .q(q[1])); //q22.5
D_ff dff2(.d(d[2]), .clk(phase_out[2]), .rst(rst), .q(q[2])); //q45
D_ff dff3(.d(d[3]), .clk(phase_out[3]), .rst(rst), .q(q[3])); //q67.5
D_ff dff4(.d(d[4]), .clk(phase_out[4]), .rst(rst), .q(q[4])); //q90
D_ff dff5(.d(d[5]), .clk(phase_out[5]), .rst(rst), .q(q[5])); //q112.5
D_ff dff6(.d(d[6]), .clk(phase_out[6]), .rst(rst), .q(q[6])); //d135
D_ff dff7(.d(d[7]), .clk(phase_out[7]), .rst(rst), .q(q[7])); //d147.5
D_ff dff8(.d(d[8]), .clk(phase_out[8]), .rst(rst), .q(q[8])); //d180
D_ff dff9(.d(d[9]), .clk(phase_out[9]), .rst(rst), .q(q[9])); //d202.5
D_ff dff10(.d(d[10]), .clk(phase_out[10]), .rst(rst), .q(q[10])); //q225
D_ff dff11(.d(d[11]), .clk(phase_out[11]), .rst(rst), .q(q[11])); //q247.5
D_ff dff12(.d(d[12]), .clk(phase_out[12]), .rst(rst), .q(q[12])); //q270
D_ff dff13(.d(d[13]), .clk(phase_out[13]), .rst(rst), .q(q[13])); //q292.5
D_ff dff14(.d(d[14]), .clk(phase_out[14]), .rst(rst), .q(q[14])); //q315
D_ff dff15(.d(d[15]), .clk(phase_out[15]), .rst(rst), .q(q[15])); //q337.5

assign shift_right = (q[0] ^ q[1]) | (q[2] ^ q[3]) | (q[4] ^ q[5]) | (q[6] ^ q[7]) | (q[8] ^ q[9]) | (q[10] ^ q[11]) | (q[12] ^ q[13]) | (q[14] ^ q[15]);
assign shift_left = (q[1] ^ q[2]) | (q[3] ^ q[4]) | (q[5] ^ q[6]) | (q[7] ^ q[8]) | (q[9] ^ q[10]) | (q[11] ^ q[12]) | (q[13] ^ q[14]) | (q[15] ^ q[0]);



endmodule
