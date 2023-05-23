`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2023 10:53:12
// Design Name: 
// Module Name: delay_line_controller_tb
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


module delay_line_controller_tb();
reg [0:0] d_in;
reg clk, rst;
reg shift_right, shift_left;
wire [0:0] dout;

delay_line_controller uut(.din(d_in), .clk(clk), .rst(rst), .shift_right(shift_right), .shift_left(shift_left), .dout(dout));
//delay_line_controller uut(.clk(clk), .rst(rst), .sr(shift_right), .sl(shift_left), .din(d_in), .dout(dout));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;    #20 
rst = 0;     
end

initial begin
d_in = 0;   #10 // 200 delay units is to set all the values to its initial value
d_in = 0;   #10 // 1  // stream of data inputs (actually from delay line controller output)
d_in = 0;   #10 // 2  
d_in = 0;   #10 // 3
d_in = 1;   #10 // 4
d_in = 1;   #10 // 5
d_in = 0;   #10 // 6
d_in = 0;   #10 // 7
d_in = 0;   #10 // 8
d_in = 0;   #10 // 9
d_in = 1;   #10 // 10
d_in = 1;   #10 // 11
d_in = 0;   #10 // 12
d_in = 0;   #10 // 13
d_in = 1;   #10 // 14
d_in = 0;   #10 // 15
d_in = 1;   #10 // 16
d_in = 0;   #10 // 17
d_in = 0;   #10 // 18
d_in = 0;   #10 // 19 // at 200 time stamp it starts
d_in = 1;   #10 // 20 // 210 time stamp

// new sequence starts at 220 time stamp

d_in = 0;   #10 // 220 delay units is to set all the values to its initial value
d_in = 0;   #10 // 1  // stream of data inputs (actually from delay line controller output)
d_in = 0;   #10 // 2  
d_in = 0;   #10 // 3
d_in = 1;   #10 // 4
d_in = 1;   #10 // 5
d_in = 0;   #10 // 6
d_in = 0;   #10 // 7
d_in = 0;   #10 // 8
d_in = 0;   #10 // 9
d_in = 1;   #10 // 10
d_in = 1;   #10 // 11
d_in = 0;   #10 // 12
d_in = 0;   #10 // 13
d_in = 1;   #10 // 14
d_in = 0;   #10 // 15
d_in = 1;   #10 // 16
d_in = 0;   #10 // 17
d_in = 0;   #10 // 18
d_in = 0;   #10 // 19 
d_in = 1;    // 20 // 410 time stamp

end


initial begin #420
//clk = 0;
forever #10 d_in = ($random % 2);
end


initial begin // shift_value testbench here
shift_right = 0;
shift_left = 0; #210 

shift_right = 1;
shift_left = 0; #140

shift_right = 1;
shift_left = 1; #200

shift_right = 0;
shift_left = 1; #20

shift_right = 0;
shift_left = 0; #20

shift_right = 0;
shift_left = 1; #20

shift_right = 1;
shift_left = 1; #20

shift_right = 0;
shift_left = 1; 

end

endmodule
