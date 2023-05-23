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


module phase_generator_16(input clk, rst_gen, output reg [15:0] phase_out);

reg [4:0] curr_state; // if next_state is required then use it later

always @ (posedge clk) begin // change all the statements into non_blocking_for good practice

if (rst_gen) // curr_state = reset state
begin 
curr_state = 5'b00000;
phase_out = 16'b0000_0000_0000_0000;
end

else if (curr_state == 5'b00000) begin // curr_state = 0
curr_state = 5'b00001;
phase_out = 16'b0000_0000_0000_0000;
end

else if (curr_state == 5'b00001) begin // curr_state = 1
curr_state = 5'b00010;
phase_out = 16'b0000_0000_0000_0001;
end

else if (curr_state == 5'b00010) begin // curr_state = 2
curr_state = 5'b00011;
phase_out = 16'b0000_0000_0000_0011;
end

else if (curr_state == 5'b00011) begin // curr_state = 3
curr_state = 5'b00100;
phase_out = 16'b0000_0000_0000_0111;
end

else if (curr_state == 5'b00100) begin // curr_state = 4
curr_state = 5'b00101;
phase_out = 16'b0000_0000_0000_1111;
end

else if (curr_state == 5'b00101) begin // curr_state = 5
curr_state = 5'b00110;
phase_out = 16'b0000_0000_0001_1111;
end

else if (curr_state == 5'b00110) begin // curr_state = 6
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
endmodule
