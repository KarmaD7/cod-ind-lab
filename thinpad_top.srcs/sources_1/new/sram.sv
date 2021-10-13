//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2021 06:04:03 PM
// Design Name: 
// Module Name: sram
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

localparam INIT = 3'b000;
localparam WRITE_DATA_ADDR = 3'b001;
localparam WRITE_WE = 3'b010;
localparam READ_ADDR = 3'b011;
localparam READ_OE = 3'b100;
localparam WAIT = 3'b101;

module sram(
    input logic clk,
    input logic rst,

    input logic we,
    input logic oe,
    input logic[3:0] be,
    input logic user_doing,

    input logic[31:0] data_in,
    output logic[31:0] data_out,
    input logic[31:0] addr,

        //BaseRAM信号
    inout logic[31:0] base_ram_data_wire,  //BaseRAM数据，低8位与CPLD串口控制器共享
    output logic[19:0] base_ram_addr, //BaseRAM地址
    output logic[3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output logic base_ram_ce_n,       //BaseRAM片选，低有效
    output logic base_ram_oe_n,       //BaseRAM读使能，低有效
    output logic base_ram_we_n,       //BaseRAM写使能，低有效

    inout logic[31:0] ext_ram_data_wire,  //BaseRAM数据，低8位与CPLD串口控制器共享
    output logic[19:0] ext_ram_addr, //BaseRAM地址
    output logic[3:0] ext_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0                
    output logic ext_ram_ce_n,       //ExtRAM片选，低有效
    output logic ext_ram_oe_n,       //ExtRAM读使能，低有效
    output logic ext_ram_we_n       //ExtRAM写使能，低有效
);

logic data_z;
logic [31:0] base_ram_data;
logic [31:0] ext_ram_data;
logic [2:0]  state;
// logic done;
// logic inner_oe = done ? ;
// logic inner_we = done ? ;

assign base_ram_data_wire =  data_z ? 32'bz : base_ram_data;
assign ext_ram_data_wire =  data_z ? 32'bz : ext_ram_data;
assign base_ram_ce_n = addr[22]; // 21-2 real address, 1-0 align, 22 0-base, 1-ext
assign ext_ram_ce_n = ~addr[22];
assign base_ram_be_n = 4'b0;
assign ext_ram_be_n = 4'b0;

always_ff @( posedge clk or posedge rst) begin
    if (rst) begin
        state <= INIT;
        data_z <= 1'b1;
        data_out <= 32'b0;
        base_ram_data <= 32'b0;
        ext_ram_data <= 32'b0;
        base_ram_we_n <= 1'b1;
        base_ram_oe_n <= 1'b1;
        ext_ram_we_n <= 1'b1;
        ext_ram_oe_n <= 1'b1;
    end
    else begin
        case (state)
            INIT: begin
                data_z <= 1'b1;
                base_ram_data <= 32'b0;
                ext_ram_data <= 32'b0;
                base_ram_we_n <= 1'b1;
                base_ram_oe_n <= 1'b1;
                ext_ram_we_n <= 1'b1;
                ext_ram_oe_n <= 1'b1;
                if (we) begin
                    state <= WRITE_DATA_ADDR;
                end 
                else if (oe) begin
                    state <= READ_ADDR;
                end
                else begin
                end
            end 
            WRITE_DATA_ADDR: begin
                data_z <= 1'b0;
                if (~base_ram_ce_n) begin
                    base_ram_data <= data_in;
                    base_ram_addr <= addr[21:2];
                end
                else begin
                    ext_ram_data <= data_in;
                    ext_ram_addr <= addr[21:2];
                end
                state <= WRITE_WE;
            end
            WRITE_WE: begin
                if (~base_ram_ce_n) begin
                    base_ram_we_n <= 1'b0;
                end
                else begin
                    ext_ram_we_n <= 1'b0;
                end
                state <= WAIT;
            end
            READ_ADDR: begin
                data_z <= 1'b1;
                if (~base_ram_ce_n) begin
                    base_ram_addr <= addr[21:2];
                end
                else begin
                    ext_ram_addr <= addr[21:2];
                end
                state <= READ_OE;
            end
            READ_OE: begin
                if (~base_ram_ce_n) begin
                    base_ram_oe_n <= 1'b0;
                end
                else begin
                    ext_ram_oe_n <= 1'b0;
                end
                state <= WAIT;
            end
            WAIT: begin
                if (~base_ram_ce_n) begin
                    data_out <= base_ram_data_wire;
                end
                else begin
                    data_out <= ext_ram_data_wire;
                end
                if (user_doing) begin
                    state <= INIT;
                end 
                else begin
                    
                end
            end
            default: begin 
            end 
        endcase
    end
end

endmodule
