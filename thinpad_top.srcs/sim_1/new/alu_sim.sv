`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/02/2021 05:31:04 PM
// Design Name: 
// Module Name: alu_sim
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


module alu_sim(

    );
logic clk;
logic rst;
logic[31:0] sw;
logic[15:0] result;
initial begin
    clk = 0;
    rst = 1;
    #1;
    rst = 0;
    #5;
    sw = 32'h0000aa67;
    #20;
    sw = 32'h00002165;
    #20;
    sw = 32'd1;
    #40;
    sw = 32'h0000aa67;
    #20;
    sw = 32'h00002165;
    #20;
    sw = 32'd2;
    #40;
    sw = 32'h0000aa67;
    #20;
    sw = 32'h00002165;
    #20;
    sw = 32'd3;
    #40;
    sw = 32'h0000aa67;
    #20;
    sw = 32'h00002165;
    #20;
    sw = 32'd4;
    #40;
    

end
always #10 clk = ~clk;

alu test_alu(
    .clk(clk),
    .rst(rst),
    .inputSW(sw),
    .fout(result)
);

// initial begin
//     #5
//     sw = 32'h0000e546;
//     #20
//     sw = 32'h0000d373;
//     #20
//     sw = 32'd0;
// end
endmodule
