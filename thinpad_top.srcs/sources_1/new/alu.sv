`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2021 08:35:08 AM
// Design Name: 
// Module Name: alu
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


module alu(
    input logic[31:0] inputSW,
    output logic[15:0] fout,
    input logic clk,
    input logic rst
    );

logic[1:0] state = 2'b00;
logic signed[15:0] a = 16'd0;
logic signed[15:0] b = 16'd0; 
logic signed[15:0] result = 16'd0;
logic[3:0] op = 4'b0000;
logic flag = 1'b0;

always_comb begin : compute
    case (op)
        4'b0001: begin
            result = a + b;
            flag = (a[15] & b[15] & ~result[15]) | (~a[15] & ~b[15] & result[15]);
        end
        4'b0010: begin
            result = a - b;
            flag = (~a[15] & b[15] & result[15]) | (a[15] & ~b[15] & ~result[15]);
        end
        4'b0011: begin
            result = a & b;
            flag = 1'b0;
        end
        4'b0100: begin
            result = a | b;
            flag = 1'b0;
        end
        4'b0101: begin
            result = a ^ b;
            flag = 1'b0;
        end
        4'b0110: begin
            result = ~a;
            flag = 1'b0;
        end
        4'b0111: begin
            result = a << b[3:0];
            flag = 1'b0;
        end
        4'b1000: begin
            result = a >> b[3:0];
            flag = 1'b0;
        end
        4'b1001: begin
            result = a >>> b[3:0];
            flag = 1'b0;
        end
        4'b1010: begin
            result = (a << (b[3:0])) | (a >> ~(b[3:0]));
            flag = 1'b0;
        end
        default: begin
            result = 16'd0;
            flag = 1'b0;
        end
    endcase
    if (state == 2'b11) begin
        fout = flag;
    end
    else begin
        fout = result;
    end
    if (state == 2'b10 || state == 2'b11) begin
        op = inputSW[3:0];
    end
    else begin
        op = 4'b0;
    end
end

always_ff @( posedge clk or posedge rst ) begin : fsm
    if (rst) begin
        state <= 2'b00;
        a <= 16'd0;
        b <= 16'd0;
    end 
    else begin   
        case (state)
            2'b00: begin
                a <= inputSW[15:0];
                state <= 2'b01;
            end
            2'b01: begin
                b <= inputSW[15:0];
                state <= 2'b10;
            end
            2'b10: begin 
                state <= 2'b11;
            end
            2'b11: begin
                state <= 2'b00;
            end
            default: 
                state <= 2'b00;
        endcase
    end
end

endmodule
