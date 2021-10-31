`default_nettype none

`include "alu.vh"
`include "ops.vh"

module thinpad_top(
    input wire clk_50M,           //50MHz 时钟输入
    input wire clk_11M0592,       //11.0592MHz 时钟输入（备用，可不用）

    input wire clock_btn,         //BTN5手动时钟按钮开关，带消抖电路，按下时为1
    input wire reset_btn,         //BTN6手动复位按钮开关，带消抖电路，按下时为1

    input  wire[3:0]  touch_btn,  //BTN1~BTN4，按钮开关，按下时为1
    input  wire[31:0] dip_sw,     //32位拨码开关，拨到“ON”时为1
    output wire[15:0] leds,       //16位LED，输出时1点亮
    output wire[7:0]  dpy0,       //数码管低位信号，包括小数点，输出1点亮
    output wire[7:0]  dpy1,       //数码管高位信号，包括小数点，输出1点亮

    //CPLD串口控制器信号
    output wire uart_rdn,         //读串口信号，低有效
    output wire uart_wrn,         //写串口信号，低有效
    input wire uart_dataready,    //串口数据准备好
    input wire uart_tbre,         //发送数据标志
    input wire uart_tsre,         //数据发送完毕标志

    //BaseRAM信号
    inout wire[31:0] base_ram_data,  //BaseRAM数据，低8位与CPLD串口控制器共享
    output wire[19:0] base_ram_addr, //BaseRAM地址
    output wire[3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output wire base_ram_ce_n,       //BaseRAM片选，低有效
    output wire base_ram_oe_n,       //BaseRAM读使能，低有效
    output wire base_ram_we_n,       //BaseRAM写使能，低有效

    //ExtRAM信号
    inout wire[31:0] ext_ram_data,  //ExtRAM数据
    output wire[19:0] ext_ram_addr, //ExtRAM地址
    output wire[3:0] ext_ram_be_n,  //ExtRAM字节使能，低有效。如果不使用字节使能，请保持为0
    output wire ext_ram_ce_n,       //ExtRAM片选，低有效
    output wire ext_ram_oe_n,       //ExtRAM读使能，低有效
    output wire ext_ram_we_n,       //ExtRAM写使能，低有效

    //直连串口信号
    output wire txd,  //直连串口发送端
    input  wire rxd,  //直连串口接收端

    //Flash存储器信号，参考 JS28F640 芯片手册
    output wire [22:0]flash_a,      //Flash地址，a0仅在8bit模式有效，16bit模式无意义
    inout  wire [15:0]flash_d,      //Flash数据
    output wire flash_rp_n,         //Flash复位信号，低有效
    output wire flash_vpen,         //Flash写保护信号，低电平时不能擦除、烧写
    output wire flash_ce_n,         //Flash片选信号，低有效
    output wire flash_oe_n,         //Flash读使能信号，低有效
    output wire flash_we_n,         //Flash写使能信号，低有效
    output wire flash_byte_n,       //Flash 8bit模式选择，低有效。在使用flash的16位模式时请设为1

    //USB 控制器信号，参考 SL811 芯片手册
    output wire sl811_a0,
    //inout  wire[7:0] sl811_d,     //USB数据线与网络控制器的dm9k_sd[7:0]共享
    output wire sl811_wr_n,
    output wire sl811_rd_n,
    output wire sl811_cs_n,
    output wire sl811_rst_n,
    output wire sl811_dack_n,
    input  wire sl811_intrq,
    input  wire sl811_drq_n,

    //网络控制器信号，参考 DM9000A 芯片手册
    output wire dm9k_cmd,
    inout  wire[15:0] dm9k_sd,
    output wire dm9k_iow_n,
    output wire dm9k_ior_n,
    output wire dm9k_cs_n,
    output wire dm9k_pwrst_n,
    input  wire dm9k_int,

    //图像输出信号
    output wire[2:0] video_red,    //红色像素，3位
    output wire[2:0] video_green,  //绿色像素，3位
    output wire[1:0] video_blue,   //蓝色像素，2位
    output wire video_hsync,       //行同步（水平同步）信号
    output wire video_vsync,       //场同步（垂直同步）信号
    output wire video_clk,         //像素时钟输出
    output wire video_de           //行数据有效信号，用于区分消隐区
);

localparam UART_ADDR = 32'h10000000;

/* =========== Demo code begin =========== */

// PLL分频示例
// wire locked, clk_10M, clk_20M;
// pll_example clock_gen 
//  (
//   // Clock in ports
//   .clk_in1(clk_50M),  // 外部时钟输入
//   // Clock out ports
//   .clk_out1(clk_10M), // 时钟输出1，频率在IP配置界面中设置
//   .clk_out2(clk_20M), // 时钟输出2，频率在IP配置界面中设置
//   // Status and control signals
//   .reset(reset_btn), // PLL复位输入
//   .locked(locked)    // PLL锁定指示输出，"1"表示时钟稳定，
//                      // 后级电路复位信号应当由它生成（见下）
//  );

// reg reset_of_clk10M;
// // 异步复位，同步释放，将locked信号转为后级电路的复位reset_of_clk10M
// always@(posedge clk_10M or negedge locked) begin
//     if(~locked) reset_of_clk10M <= 1'b1;
//     else        reset_of_clk10M <= 1'b0;
// end

// always@(posedge clk_10M or posedge reset_of_clk10M) begin
//     if(reset_of_clk10M)begin
//         // Your Code
//     end
//     else begin
//         // Your Code
//     end
// end

// reg controler_oe;
// reg controler_we;
// wire [3:0] controler_be;
// reg [3:0] state;
// reg [31:0] sram_addr;
// reg [31:0] data_to_sram;
// wire [31:0] data_from_sram_wire;
// reg[31:0] data_from_sram;
// wire controler_done;

wire data_z;
wire[31:0] base_ram_data_in;
wire[31:0] base_ram_data_out;
wire[31:0] ext_ram_data_in;
wire[31:0] ext_ram_data_out;

assign base_ram_data = data_z ? 32'bz : base_ram_data_out;
assign base_ram_data_in = base_ram_data;
assign ext_ram_data = data_z ? 32'bz : ext_ram_data_out;
assign ext_ram_data_in = ext_ram_data;

reg         mem_oe, mem_we;
wire[3:0]   mem_be;
reg[31:0]   mem_address;
reg[31:0]   mem_data_in;
wire[31:0]  mem_data_out;
wire        mem_done;

assign mem_be = 4'b0;
sram sram(
    .clk(clk_11M0592),
    .rst(reset_btn),

    .we(mem_we),
    .oe(mem_oe),
    .be(mem_be),
    // .sram_ce(controler_sram_ce),
    // .uart_ce(controler_uart_ce),

    // .data_in(data_to_sram),
    .data_in(mem_data_in),
    // .data_out(data_from_sram_wire),
    .data_out(mem_data_out),
    .addr(mem_address),
    .done(mem_done),

    .base_ram_data_in(base_ram_data_in),
    .base_ram_data_out(base_ram_data_out),
    .base_ram_addr(base_ram_addr),
    .base_ram_be_n(base_ram_be_n),
    .base_ram_ce_n(base_ram_ce_n),
    .base_ram_oe_n(base_ram_oe_n),
    .base_ram_we_n(base_ram_we_n),

    .ext_ram_data_in(ext_ram_data_in),
    .ext_ram_data_out(ext_ram_data_out),
    .ext_ram_addr(ext_ram_addr),
    .ext_ram_be_n(ext_ram_be_n),
    .ext_ram_ce_n(ext_ram_ce_n),
    .ext_ram_oe_n(ext_ram_oe_n),
    .ext_ram_we_n(ext_ram_we_n),
    
    .uart_dataready(uart_dataready),
    .uart_wrn(uart_wrn),
    .uart_rdn(uart_rdn),
    .uart_tbre(uart_tbre),
    .uart_tsre(uart_tsre),

    .data_z(data_z)
);

reg[31:0]       reg_instruction;
    wire[5:0]       reg_s, reg_t, reg_d;
    wire[2:0]       op;
    wire[31:0]      imm;
    wire            imm_select;
    
    decoder _decoder(
        .inst           (reg_instruction),
        .reg_s          (reg_s),
        .reg_t          (reg_t),
        .reg_d          (reg_d),
        .op             (op),
        .imm            (imm),
        .imm_select     (imm_select)
    );
    
    //interface to regfile
    reg[4:0]            reg_waddr;
    reg[31:0]           reg_wdata;
    reg                 reg_we;
    wire[31:0]          reg_rdata1;
    wire[31:0]          reg_rdata2;
    
    regfile _regfile(
        .clk            (clk_50M),
        .rst            (reset_btn),
        .we             (reg_we),
        .waddr          (reg_waddr),
        .wdata          (reg_wdata),
        
        .raddr1         (reg_s),
        .rdata1         (reg_rdata1),
        .raddr2         (reg_t),
        .rdata2         (reg_rdata2)
    );
    
    reg[4:0]    exe_reg_d;
    reg[2:0]    exe_op;
    reg[31:0]   exe_imm;
    reg         exe_imm_select;
    
    //interface to alu
    reg[3:0]    alu_op;
    reg[31:0]   exe_reg_s_val, exe_reg_t_val;
    wire[31:0]  exe_result;
    wire[3:0]   exe_flags;
    always @(*) begin
        case(exe_op)
            `OP_LW, `OP_SW, `OP_ADD, `OP_BEQ, `OP_BNE: begin
                alu_op <= `ADD;
            end
            `OP_OR: begin
                alu_op <= `OR;
            end
            `OP_SLL: begin
                alu_op <= `SLL;
            end
            default: begin
                alu_op <= `ZERO;
            end
        endcase
    end
    
    alu _alu(
        .op(alu_op),
        .a((exe_op == `OP_BEQ | exe_op == `OP_BNE) ? pc : exe_reg_s_val),
        .b              (exe_imm_select? exe_imm: exe_reg_t_val),
        .r              (exe_result),
        .flags          (exe_flags)
    );
    
    localparam STAGE_IF         = 3'b000;
    localparam STAGE_ID         = 3'b001;
    localparam STAGE_EXE        = 3'b010;
    localparam STAGE_MEM        = 3'b011;
    localparam STAGE_WB         = 3'b100;

    reg[2:0]        cpu_stage;
    reg[31:0]       pc;
    
    reg             mem_write;
    
    always @(posedge clk_50M or posedge reset_btn) begin
        if (reset_btn) begin
            cpu_stage <= STAGE_IF;
            pc <= 32'h0;
            reg_we <= 1'b0;
            mem_we <= 0;
            mem_oe <= 0;
            mem_write <= 1'b0;
        end
        else begin
            case (cpu_stage)
            STAGE_IF: begin
                if (mem_done) begin
                    cpu_stage <= STAGE_ID;
                    reg_instruction <= mem_data_out;
                    mem_oe <= 1'b0;
                end
                else begin
                    mem_address <= pc;
                    mem_oe <= 1'b1;
                end
            end
            STAGE_ID: begin
                cpu_stage <= STAGE_EXE;
                exe_reg_s_val <= reg_rdata1;
                exe_reg_t_val <= reg_rdata2;
                exe_reg_d <= reg_d;
                exe_imm <= imm;
                exe_imm_select <= imm_select;
                exe_op <= op;
            end
            STAGE_EXE: begin
                case (exe_op)
                    `OP_LW: begin
                        cpu_stage <= STAGE_MEM;
                        mem_write <= 1'b0;
                        mem_oe <= 1'b1;
                        mem_address <= exe_result;
                    end
                    `OP_SW: begin
                        cpu_stage <= STAGE_MEM;
                        mem_write <= 1'b1;
                        mem_we <= 1'b1;
                        mem_address <= exe_result;
                        mem_data_in <= exe_reg_t_val;
                    end
                    `OP_OR, `OP_ADD, `OP_SLL : begin
                        cpu_stage <= STAGE_WB;
                        reg_waddr <= reg_d;
                        reg_wdata <= exe_result;
                        reg_we <= 1'b1;
                    end
                    `OP_BEQ : begin
                        cpu_stage <= STAGE_IF;
                        if (exe_reg_s_val == exe_reg_t_val)
                            pc <= exe_result;
                        else
                            pc <= pc + 32'h4;
                    end
                    `OP_BNE: begin
                        cpu_stage <= STAGE_IF;
                        if (exe_reg_s_val != exe_reg_t_val)
                            pc <= exe_result;
                        else
                            pc <= pc + 32'h4; 
                    end
                    default : begin
                        cpu_stage <= STAGE_EXE; //stop
                    end
                endcase                
            end
            STAGE_MEM: begin
                if (mem_done) begin
                    mem_oe <= 1'b0;
                    mem_we <= 1'b0;
                    cpu_stage <= STAGE_WB;
                    if (~mem_write) begin //for memory read
                        reg_waddr <= reg_d;
                        reg_wdata <= mem_data_out;
                        reg_we <= 1'b1;
                    end
                    else begin //for memory write
                        reg_we <= 1'b0;
                    end
                end
                else begin
                    if (mem_write) begin
                        mem_address <= exe_result;
                        mem_we <= 1'b1;
                        mem_oe <= 1'b0;
                    end 
                    else begin
                        mem_address <= exe_result;
                        mem_we <= 1'b0;
                        mem_oe <= 1'b1;
                    end
                end
            end
            STAGE_WB: begin
                cpu_stage <= STAGE_IF;
                reg_we <= 1'b0;
                pc <= pc + 32'h4;
            end
            endcase
        end
    end

// 不使用内存、串口时，禁用其使能信号
// assign base_ram_ce_n = 1'b1;
// assign base_ram_oe_n = 1'b1;
// assign base_ram_we_n = 1'b1;

// assign ext_ram_ce_n = 1'b1;
// assign ext_ram_oe_n = 1'b1;
// assign ext_ram_we_n = 1'b1;

// assign uart_rdn = 1'b1;
// assign uart_wrn = 1'b1;

// 数码管连接关系示意图，dpy1同理
// p=dpy0[0] // ---a---
// c=dpy0[1] // |     |
// d=dpy0[2] // f     b
// e=dpy0[3] // |     |
// b=dpy0[4] // ---g---
// a=dpy0[5] // |     |
// f=dpy0[6] // e     c
// g=dpy0[7] // |     |
//           // ---d---  p

// 7段数码管译码器演示，将number用16进制显示在数码管上面
// wire[7:0] number;

// reg[15:0] led_bits;
// assign leds = led_bits;

// always@(posedge clock_btn or posedge reset_btn) begin
//     if(reset_btn)begin //复位按下，设置LED为初始值
//         led_bits <= 16'h1;
//     end
//     else begin //每次按下时钟按钮，LED循环左移
//         led_bits <= {led_bits[14:0],led_bits[15]};
//     end
// end

//直连串口接收发送演示，从直连串口收到的数据再发送出去
// wire [7:0] ext_uart_rx;
// reg  [7:0] ext_uart_buffer, ext_uart_tx;
// wire ext_uart_ready, ext_uart_clear, ext_uart_busy;
// reg ext_uart_start, ext_uart_avai;
    
// assign number = ext_uart_buffer;

// async_receiver #(.ClkFrequency(50000000),.Baud(9600)) //接收模块，9600无检验位
//     ext_uart_r(
//         .clk(clk_50M),                       //外部时钟信号
//         .RxD(rxd),                           //外部串行信号输入
//         .RxD_data_ready(ext_uart_ready),  //数据接收到标志
//         .RxD_clear(ext_uart_clear),       //清除接收标志
//         .RxD_data(ext_uart_rx)             //接收到的一字节数据
//     );

// assign ext_uart_clear = ext_uart_ready; //收到数据的同时，清除标志，因为数据已取到ext_uart_buffer中
// always @(posedge clk_50M) begin //接收到缓冲区ext_uart_buffer
//     if(ext_uart_ready)begin
//         ext_uart_buffer <= ext_uart_rx;
//         ext_uart_avai <= 1;
//     end else if(!ext_uart_busy && ext_uart_avai)begin 
//         ext_uart_avai <= 0;
//     end
// end
// always @(posedge clk_50M) begin //将缓冲区ext_uart_buffer发送出去
//     if(!ext_uart_busy && ext_uart_avai)begin 
//         ext_uart_tx <= ext_uart_buffer;
//         ext_uart_start <= 1;
//     end else begin 
//         ext_uart_start <= 0;
//     end
// end

// async_transmitter #(.ClkFrequency(50000000),.Baud(9600)) //发送模块，9600无检验位
//     ext_uart_t(
//         .clk(clk_50M),                  //外部时钟信号
//         .TxD(txd),                      //串行信号输出
//         .TxD_busy(ext_uart_busy),       //发送器忙状态指示
//         .TxD_start(ext_uart_start),    //开始发送信号
//         .TxD_data(ext_uart_tx)        //待发送的数据
//     );

// //图像输出演示，分辨率800x600@75Hz，像素时钟为50MHz
// wire [11:0] hdata;
// assign video_red = hdata < 266 ? 3'b111 : 0; //红色竖条
// assign video_green = hdata < 532 && hdata >= 266 ? 3'b111 : 0; //绿色竖条
// assign video_blue = hdata >= 532 ? 2'b11 : 0; //蓝色竖条
// assign video_clk = clk_50M;
// vga #(12, 800, 856, 976, 1040, 600, 637, 643, 666, 1, 1) vga800x600at75 (
//     .clk(clk_50M), 
//     .hdata(hdata), //横坐标
//     .vdata(),      //纵坐标
//     .hsync(video_hsync),
//     .vsync(video_vsync),
//     .data_enable(video_de)
// );
/* =========== Demo code end =========== */

endmodule
