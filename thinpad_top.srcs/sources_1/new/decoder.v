`default_nettype none
`timescale 1ns / 1ps
`include "ops.vh"

module decoder(
    input wire[31:0]        inst,
    output wire[4:0]        reg_s,
    output wire[4:0]        reg_t,
    output wire[4:0]        reg_d,
    output reg[2:0]         op,
    output reg[31:0]        imm,
    output reg              imm_select
    );
    
    wire sign;
    wire[19:0] sign_ext;
    assign sign = inst[31];
    assign sign_ext = {20{sign}};
    assign reg_d = inst[11:7];
    assign reg_s = inst[19:15];
    assign reg_t = inst[24:20];
    
    always @(*) begin
        op = `OP_INVALID;
        imm = 32'h0;
        imm_select = 1'b0;
        
        case(inst[6:0])
            7'b0000011: begin //LW
                imm = {sign_ext, inst[31:20]};
                imm_select = 1'b1;
                case(inst[14:12])
                    3'b010: op = `OP_LW;
                endcase
            end
            
            7'b0100011: begin //SW
                imm = {sign_ext, inst[31:25], inst[11:7]};
                imm_select = 1'b1;
                case(inst[14:12])
                    3'b010: op = `OP_SW;
                endcase
            end
            
            7'b0010011: begin //ORI
                imm = {sign_ext, inst[31:20]};
                imm_select = 1'b1;
                case(inst[14:12])
                    3'b110: op = `OP_OR;
                endcase
            end
            
            7'b0110011: begin //ADD
                case({inst[31:25], inst[14:12]})
                    10'b0000000_000: op = `OP_ADD;
                endcase
            end
            
            7'b1100011: begin //BEQ
                imm = {
                    sign_ext,
                    inst[7],inst[30:25],inst[11:8],1'b0
                };
                imm_select = 1'b1;
                case(inst[14:12])
                    3'b000: op = `OP_BEQ;
                endcase
            end
        endcase 
    end
endmodule


