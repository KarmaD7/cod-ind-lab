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

localparam INIT = 4'b0000;
localparam WRITE_WE = 4'b0001;
localparam WRITE_DONE  = 4'b0010;
localparam READ_OE = 4'b0011;
localparam READ_DONE = 4'b0100;
localparam READ_UART_1 = 4'b0101;
localparam READ_UART_2 = 4'b0110;
localparam WRITE_UART_1 = 4'b0111;
localparam WRITE_UART_2 = 4'b1000;
localparam WRITE_UART_3 = 4'b1001;
localparam WRITE_UART_4 = 4'b1010;

module sram(
    input logic clk,
    input logic rst,

    input logic we,
    input logic oe,
    input logic[3:0] be,
    input logic sram_ce, // 0 for refresh
    input logic uart_ce,

    input logic[31:0] data_in,
    output logic[31:0] data_out,
    input logic[31:0] addr,
    output logic sram_done,
    output logic uart_done,

        //BaseRAM信号
    // inout logic[31:0] base_ram_data_wire,  //BaseRAM数据，低8位与CPLD串口控制器共享
    // output logic [31:0] base_ram_data,
    input logic[31:0] base_ram_data_in,
    output logic[31:0] base_ram_data_out,
    output logic[19:0] base_ram_addr, //BaseRAM地址
    output logic[3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output logic base_ram_ce_n,       //BaseRAM片选，低有效
    output logic base_ram_oe_n,       //BaseRAM读使能，低有效
    output logic base_ram_we_n,       //BaseRAM写使能，低有效

    // inout logic[31:0] ext_ram_data_wire,  //BaseRAM数据，低8位与CPLD串口控制器共享
    // output logic[31:0] ext_ram_data,
    input logic[31:0] ext_ram_data_in,
    output logic[31:0] ext_ram_data_out,
    output logic[19:0] ext_ram_addr, //BaseRAM地址
    output logic[3:0] ext_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0                
    output logic ext_ram_ce_n,       //ExtRAM片选，低有效
    output logic ext_ram_oe_n,       //ExtRAM读使能，低有效
    output logic ext_ram_we_n,       //ExtRAM写使能，低有效

    output logic uart_rdn,         //读串口信号，低有效
    output logic uart_wrn,         //写串口信号，低有效
    input logic uart_dataready,    //串口数据准备好
    input logic uart_tbre,         //发送数据标志
    input logic uart_tsre,         //数据发送完毕标志

    output logic data_z
);

// logic [31:0] base_ram_data;
// logic [31:0] ext_ram_data;
logic [3:0]  state;
logic [8:0] uart_state_reg;
logic [8:0] uart_data_read;
logic [8:0] uart_data_write;
// logic []
logic use_uart;

// assign base_ram_data_wire =  data_z ? 32'bz : base_ram_data;
// assign ext_ram_data_wire =  data_z ? 32'bz : ext_ram_data;
assign base_ram_ce_n = use_uart ? 1 : addr[22]; // 21-2 real address, 1-0 align, 22 0-base, 1-ext
assign ext_ram_ce_n = use_uart ? 1 : ~addr[22];
assign base_ram_be_n = 4'b0;
assign ext_ram_be_n = 4'b0;
assign use_uart = addr[28];
assign uart_state_reg = {2'b00, uart_tbre & uart_tsre, 4'b0000, uart_dataready};

always_ff @( posedge clk or posedge rst) begin
    if (rst) begin
        state <= INIT;
        data_z <= 1'b1;
        data_out <= 32'b0;
        // base_ram_data <= 32'b0;
        // ext_ram_data <= 32'b0;
        base_ram_we_n <= 1'b1;
        base_ram_oe_n <= 1'b1;
        ext_ram_we_n <= 1'b1;
        ext_ram_oe_n <= 1'b1;
        sram_done <= 1'b0;
        uart_done <= 1'b0;
    end
    else begin
        case (state)
            INIT: begin
                base_ram_we_n <= 1'b1;
                base_ram_oe_n <= 1'b1;
                ext_ram_we_n <= 1'b1;
                ext_ram_oe_n <= 1'b1;
                uart_rdn <= 1'b1;
                uart_wrn <= 1'b1;
                if (~sram_ce) begin
                    sram_done <= 0;
                end
                else begin
                end
                if (~uart_ce) begin
                    uart_done <= 0;
                end
                else begin
                end                 
                if (use_uart) begin
                    if (~uart_done) begin  
                        if (we) begin
                            data_z <= 1'b0;
                            base_ram_data_out <= data_in;
                            state <= WRITE_UART_1;
                        end
                        else if (oe) begin
                            data_z <= 1'b1;
                            state <= READ_UART_1;
                        end
                    end
                    else begin
                    end
                end
                else begin
                    if (~sram_done) begin
                        if (we) begin
                            base_ram_oe_n <= 1'b1;
                            ext_ram_oe_n <= 1'b1;
                            data_z <= 1'b0;
                            if (~base_ram_ce_n) begin
                                base_ram_data_out <= data_in;
                                base_ram_addr <= addr[21:2];
                            end
                            else begin
                                ext_ram_data_out <= data_in;
                                ext_ram_addr <= addr[21:2];
                            end
                            state <= WRITE_WE;
                        end 
                        else if (oe) begin
                            base_ram_oe_n <= 1'b1;
                            ext_ram_oe_n <= 1'b1;
                            data_z <= 1'b1;
                            if (~base_ram_ce_n) begin
                                base_ram_addr <= addr[21:2];
                            end
                            else begin
                                ext_ram_addr <= addr[21:2];
                            end
                            state <= READ_OE;
                        end
                    end 
                    else begin
                    end
                end
            end
            WRITE_WE: begin
                if (~base_ram_ce_n) begin
                    base_ram_we_n <= 1'b0;
                end
                else begin
                    ext_ram_we_n <= 1'b0;
                end
                state <= WRITE_DONE;
            end
            WRITE_DONE: begin
                sram_done <= 1;
                state <= INIT;
            end
            READ_OE: begin
                if (~base_ram_ce_n) begin
                    base_ram_oe_n <= 1'b0;
                end
                else begin
                    ext_ram_oe_n <= 1'b0;
                end
                state <= READ_DONE;
            end
            READ_DONE: begin
                sram_done <= 1;
                if (~base_ram_ce_n) begin
                    data_out <= base_ram_data_in;
                end
                else begin
                    data_out <= ext_ram_data_in;
                end
                state <= INIT;
            end
            READ_UART_1: begin
                if (~uart_dataready) begin
                    state <= READ_UART_1;
                end
                else begin
                    uart_rdn <= 1'b0;
                    state <= READ_UART_2;
                end
            end
            READ_UART_2: begin
                data_out <= {24'b0, base_ram_data_in[7:0]};
                uart_done <= 1'b1;
                state <= INIT;
            end
            WRITE_UART_1: begin
                // data_z <= 1'b0;
                // base_ram_data <= data_in;
                uart_wrn <= 1'b0;
                state <= WRITE_UART_2;
            end
            WRITE_UART_2: begin
                uart_wrn <= 1'b1;
                state <= WRITE_UART_3;
            end
            WRITE_UART_3: begin
                if (uart_tbre) begin
                    state <= WRITE_UART_4;
                end
                else begin
                end
            end
            WRITE_UART_4: begin
                if (uart_tsre) begin
                    state <= INIT;
                    uart_done <= 1'b1;
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
