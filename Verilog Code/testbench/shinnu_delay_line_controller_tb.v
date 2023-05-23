`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.05.2023 16:07:58
// Design Name: 
// Module Name: shinnu_delay_line_controller_tb
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


module shinnu_delay_line_controller_tb();

reg clk;
reg rst;
reg sr;
reg sl;
reg din;
wire dout;

shinnu_delay_line_controller uut(.clk(clk), .rst(rst), .sr(sr), .sl(sl), .din(din), .dout(dout));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin
rst = 1;    #20 
rst = 0;     
end

initial begin
din = 0;   #10 // 200 delay units is to set all the values to its initial value
din = 0;   #10 // 1  // stream of data inputs (actually from delay line controller output)
din = 0;   #10 // 2  
din = 0;   #10 // 3
din = 1;   #10 // 4
din = 1;   #10 // 5
din = 0;   #10 // 6
din = 0;   #10 // 7
din = 0;   #10 // 8
din = 0;   #10 // 9
din = 1;   #10 // 10
din = 1;   #10 // 11
din = 0;   #10 // 12
din = 0;   #10 // 13
din = 1;   #10 // 14
din = 0;   #10 // 15
din = 1;   #10 // 16
din = 0;   #10 // 17
din = 0;   #10 // 18
din = 0;   #10 // 19 // at 200 time stamp it starts
din = 1;   #10 // 20 // 210 time stamp

// new sequence starts at 220 time stamp

din = 0;   #10 // 220 delay units is to set all the values to its initial value
din = 0;   #10 // 1  // stream of data inputs (actually from delay line controller output)
din = 0;   #10 // 2  
din = 0;   #10 // 3
din = 1;   #10 // 4
din = 1;   #10 // 5
din = 0;   #10 // 6
din = 0;   #10 // 7
din = 0;   #10 // 8
din = 0;   #10 // 9
din = 1;   #10 // 10
din = 1;   #10 // 11
din = 0;   #10 // 12
din = 0;   #10 // 13
din = 1;   #10 // 14
din = 0;   #10 // 15
din = 1;   #10 // 16
din = 0;   #10 // 17
din = 0;   #10 // 18
din = 0;   #10 // 19 
din = 1;    // 20 // 410 time stamp

end

initial begin // shift_value testbench here
sr = 0;
sl = 0; #210

sr = 0;
sl = 1;

end

endmodule
