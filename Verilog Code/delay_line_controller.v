`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.05.2023 10:16:26
// Design Name: 
// Module Name: delay_line_controller
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


module delay_line_controller(input [0:0] din, input clk, rst, input shift_right, shift_left, output reg [0:0] dout);

wire [15:0] temp; 
reg [3:0] present_state;


// later check with this logic:

/*always @ (posedge clk) begin

if (rst) temp[15:0] <= 16'd0;

else begin
temp[0] <= din;
temp[1] <= temp[0];
temp[2] <= temp[1];
temp[3] <= temp[2];
temp[4] <= temp[3];
temp[5] <= temp[4];
temp[6] <= temp[5];
temp[7] <= temp[6];
temp[8] <= temp[7];
temp[9] <= temp[8];
temp[10] <= temp[9];
temp[11] <= temp[10];
temp[12] <= temp[11];
temp[13] <= temp[12];
temp[14] <= temp[13];
temp[15] <= temp[14];
end

end
*/

D_ff uut0(.clk(clk), .rst(rst), .d(din), .q(temp[0]));
D_ff uut1(.clk(clk), .rst(rst), .d(temp[0]), .q(temp[1]));
D_ff uut2(.clk(clk), .rst(rst), .d(temp[1]), .q(temp[2]));
D_ff uut3(.clk(clk), .rst(rst), .d(temp[2]), .q(temp[3]));
D_ff uut4(.clk(clk), .rst(rst), .d(temp[3]), .q(temp[4]));
D_ff uut5(.clk(clk), .rst(rst), .d(temp[4]), .q(temp[5]));
D_ff uut6(.clk(clk), .rst(rst), .d(temp[5]), .q(temp[6]));
D_ff uut7(.clk(clk), .rst(rst), .d(temp[6]), .q(temp[7]));
D_ff uut8(.clk(clk), .rst(rst), .d(temp[7]), .q(temp[8]));
D_ff uut9(.clk(clk), .rst(rst), .d(temp[8]), .q(temp[9]));
D_ff uut10(.clk(clk), .rst(rst), .d(temp[9]), .q(temp[10]));
D_ff uut11(.clk(clk), .rst(rst), .d(temp[10]), .q(temp[11]));
D_ff uut12(.clk(clk), .rst(rst), .d(temp[11]), .q(temp[12]));
D_ff uut13(.clk(clk), .rst(rst), .d(temp[12]), .q(temp[13]));
D_ff uut14(.clk(clk), .rst(rst), .d(temp[13]), .q(temp[14]));
D_ff uut15(.clk(clk), .rst(rst), .d(temp[14]), .q(temp[15]));




always @ (posedge clk) begin

//reset block starts here
if (rst) begin
present_state <= 4'b0000;
dout <= din;
end


// present state = 4'b0000 (0) starts here;
else if (present_state == 4'b0000) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0000;
dout <= din; // changes made here as temp[0] rather than din
//dout <= temp[0];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1111;
dout <= temp[15];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0001;
dout <= temp[1];
end

end
// present state = 4'b0000 (0) **ends** here.

// present state = 4'b0001 (1) starts here;
else if (present_state == 4'b0001) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0001;
dout <= temp[1];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0000;
dout <= temp[0];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0010;
dout <= temp[2];
end

end
// present state = 4'b0001 (1) **ends** here.

// present state = 4'b0010 (2) starts here;
else if (present_state == 4'b0010) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0010;
dout <= temp[2];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0001;
dout <= temp[1];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0011;
dout <= temp[3];
end

end
// present state = 4'b0010 (2) **ends** here.

// present state = 4'b0011 (3) starts here;
else if (present_state == 4'b0011) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0011;
dout <= temp[3];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0010;
dout <= temp[2];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0100;
dout <= temp[4];
end

end
// present state = 4'b0011 (3) **ends** here.

// present state = 4'b0100 (4) starts here;
else if (present_state == 4'b0100) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0100;
dout <= temp[4];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0011;
dout <= temp[3];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0101;
dout <= temp[5];
end

end
// present state = 4'b0100 (4) **ends** here.

// present state = 4'b0101 (5) starts here;
else if (present_state == 4'b0101) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0101;
dout <= temp[5];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0100;
dout <= temp[4];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0110;
dout <= temp[6];
end

end
// present state = 4'b0101 (5) **ends** here.

// present state = 4'b0110 (6) starts here;
else if (present_state == 4'b0110) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0110;
dout <= temp[6];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0101;
dout <= temp[5];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0111;
dout <= temp[7];
end

end
// present state = 4'b0110 (6) **ends** here.


// present state = 4'b0111 (7) starts here;
else if (present_state == 4'b0111) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b0111;
dout <= temp[7];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0110;
dout <= temp[6];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1000;
dout <= temp[8];
end

end
// present state = 4'b0111 (7) **ends** here.

// present state = 4'b1000 (8) starts here;
else if (present_state == 4'b1000) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1000;
dout <= temp[8];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b0111;
dout <= temp[7];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1001;
dout <= temp[9];
end

end
// present state = 4'b1000 (8) **ends** here.

// present state = 4'b1001 (9) starts here;
else if (present_state == 4'b1001) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1001;
dout <= temp[9];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1000;
dout <= temp[8];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1010;
dout <= temp[10];
end

end
// present state = 4'b1001 (9) **ends** here.

// present state = 4'b1010 (10) starts here;
else if (present_state == 4'b1010) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1010;
dout <= temp[10];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1001;
dout <= temp[9];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1011;
dout <= temp[11];
end

end
// present state = 4'b1010 (10) **ends** here.

// present state = 4'b1011 (11) starts here;
else if (present_state == 4'b1011) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1011;
dout <= temp[11];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1010;
dout <= temp[10];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1100;
dout <= temp[12];
end

end
// present state = 4'b1011 (11) **ends** here.

// present state = 4'b1100 (12) starts here;
else if (present_state == 4'b1100) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1100;
dout <= temp[12];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1011;
dout <= temp[11];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1101;
dout <= temp[13];
end

end
// present state = 4'b1100 (12) **ends** here.

// present state = 4'b1101 (13) starts here;
else if (present_state == 4'b1101) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1101;
dout <= temp[13];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1100;
dout <= temp[12];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1110;
dout <= temp[14];
end

end
// present state = 4'b1101 (13) **ends** here.

// present state = 4'b1110 (14) starts here;
else if (present_state == 4'b1110) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1110;
dout <= temp[14];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1101;
dout <= temp[13];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b1111;
dout <= temp[15];
end

end
// present state = 4'b1110 (14) **ends** here.

// present state = 4'b1111 (15) starts here;
else if (present_state == 4'b1111) begin
// inside else if there are again (if, else if statements)
if ((shift_right == 1 && shift_left == 1) || (shift_right == 0 && shift_left == 0)) begin
present_state <= 4'b1111;
dout <= temp[15];
end

else if (shift_right == 1 || shift_left == 0) begin
present_state <= 4'b1110;
dout <= temp[14];
end

else if (shift_right == 0 || shift_left == 1) begin
present_state <= 4'b0000;
dout <= temp[0];
end

end
// present state = 4'b1111 (15) **ends** here.

end

endmodule
