`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/04/2025 02:10:27 PM
// Design Name: 
// Module Name: exam02_sequential_logic1
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


module D_flip_flop_n(
    input d,
    input clk, reset_p, en,
    output reg q);
    // en : chip enable, reset_p : reset신호(high면 reset)
    
    always @(negedge clk, posedge reset_p)begin
        if(reset_p) q = 0;
        else if(en) q = d;
    end 

endmodule

module D_flip_flop_p(
    input d,
    input clk, reset_n, en,
    output reg q);
    // en : chip enable, reset_p : reset신호(high면 reset)
    
    always @(posedge clk, negedge reset_n)begin
        if(!reset_n) q = 0;
        else if(en) q = d;
    end 

endmodule

module T_flip_flop(
    input clk, reset_p,
    input en,
    input t,
    output reg q);
    
    always @(negedge clk, posedge reset_p)begin
        if(reset_p) q = 0;
        else if(en)begin
            if(t) q = ~q;
          //  else q = q; // clk edge 시스템이므로 안써줘도 무방.
        end
    end

endmodule

module T_flip_flop_p(
    input clk, reset_p,
    input en,
    input t,
    output reg q);
    
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) q = 0;
        else if(en)begin
            if(t) q = ~q;
          //  else q = q; // clk edge 시스템이므로 안써줘도 무방.
        end
    end

endmodule


module upcounter_asyc(
    input clk, reset_p,
    output [3:0] count);
    
    T_flip_flop cnt0(.clk(clk), .reset_p(reset_p), .en(1), .t(1), .q(count[0]));
    T_flip_flop cnt1(.clk(count[0]), .reset_p(reset_p), .en(1), .t(1), .q(count[1]));
    T_flip_flop cnt2(.clk(count[1]), .reset_p(reset_p), .en(1), .t(1), .q(count[2]));
    T_flip_flop cnt3(.clk(count[2]), .reset_p(reset_p), .en(1), .t(1), .q(count[3]));

endmodule

module dncounter_asyc(
    input clk, reset_p,
    output [3:0] count);
    
    T_flip_flop_p cnt0(.clk(clk), .reset_p(reset_p), .en(1), .t(1), .q(count[0]));
    T_flip_flop_p cnt1(.clk(count[0]), .reset_p(reset_p), .en(1), .t(1), .q(count[1]));
    T_flip_flop_p cnt2(.clk(count[1]), .reset_p(reset_p), .en(1), .t(1), .q(count[2]));
    T_flip_flop_p cnt3(.clk(count[2]), .reset_p(reset_p), .en(1), .t(1), .q(count[3]));

endmodule

module upcounter_p(
    input clk, reset_p,
    output reg [3:0] count);

    always @(posedge clk, posedge reset_p)begin
        if(reset_p) count = 0;
        else count = count + 1;
    end

endmodule

module dncounter_p(
    input clk, reset_p,
    output reg [3:0] count);

    always @(posedge clk, posedge reset_p)begin
        if(reset_p) count = 0;
        else count = count - 1;
    end

endmodule

module ring_counter(
    input clk, reset_p,
    output reg [3:0] q);
    
    always @(posedge clk or posedge reset_p)begin // or를 콤마(,)로 대체가능
        if(reset_p) q = 4'b0001;
        else begin
//            case(q)
//                4'b0001 : q = 4'b0010;
//                4'b0010 : q = 4'b0100;
//                4'b0100 : q = 4'b1000;
//                4'b1000 : q = 4'b0001;
//                default : q = 4'b0001;  
//            endcase
            if(q != 4'b0001 && q != 4'b0010 && q != 4'b0100 && q!= 4'b1000) q = 4'b0001;    // default 설정
            else q = {q[2:0], q[3]};
        end
    end

endmodule

module ring_counter_led(
    input clk, reset_p,
    output reg [15:0] led);
    
    reg [31:0] clk_div;
    
    // 정확하게 클락 분주하는 방식
//    always @(posedge clk, posedge reset_p)begin
//        if(reset_p) clk_div = 0;
//        else begin
//            if(clk_div ==  100000000) clk_div = 0;
//            else clk_div = clk_div + 1;
//        end
//    end

//    always @(posedge clk or posedge reset_p)begin // or를 콤마(,)로 대체가능
//        if(reset_p) led = 16'b0000_0000_0000_0001;
//        else begin
//            if(clk_div == 100000000)begin
//                led = {led[14:0], led[15]};
//            end
//        end
//    end

    // clk_div(32bit)의 bit 마다 토글하는 clk 주기가 다른 것을 이용한 형태. 19번(인덱스 20) 비트가 대략 100ms 마다 토글
    // 하지만 하나의 clk 로 동작하지 않는 비동기 시스템이므로 test 이외에는 비권장.
//    always @(posedge clk)   clk_div = clk_div + 1;
        
//    always @(posedge clk_div[20] or posedge reset_p)begin // 
//        if(reset_p) led = 16'b0000_0000_0000_0001;
//        else led = {led[14:0], led[15]};
//    end
    
    // edge detector 사용
    always @(posedge clk)   clk_div = clk_div + 1;
    
    wire clk_div22_ed_p;
    edge_detector_n edn(.clk(clk), .reset_p(reset_p), .cp(clk_div[22]), .p_edge(clk_div22_ed_p));
        
    always @(posedge clk or posedge reset_p)begin 
        if(reset_p) led = 16'b0000_0000_0000_0001;
        else if(clk_div22_ed_p) led = {led[14:0], led[15]};
    end

endmodule

module edge_detector_n(
    input clk, reset_p,
    input cp,
    output p_edge, n_edge);
    
    reg ff_cur, ff_old;
    
    always @(negedge clk, posedge reset_p)begin
//        if(reset_p)begin
//            ff_cur = 0;
//            ff_old = 0;
//        end
//        else begin
//            // = 사용 : blocking 설계
//            // always문 안에서는 순서 주의. 순서가 바뀌면 ff_old 와 ff_cur 이 항상 같아지므로 edge 검출이 안된다.
//            ff_old = ff_cur;
//            ff_cur = cp;
//        end
        if(reset_p)begin
            ff_cur <= 0;
            ff_old <= 0;
        end
        else begin
            // <= 사용 : non-blocking 설계. 순서 고려 X
            ff_cur <= cp;
            ff_old <= ff_cur;
        end
    end

    assign p_edge = ({ff_cur, ff_old} == 2'b10) ? 1 : 0;
    assign n_edge = ({ff_cur, ff_old} == 2'b01) ? 1 : 0;

endmodule

module SISO(
    input clk, reset_p,
    input d,
    input en,
    output f);

    // register 의 최상위 비트로 데이터 입력이 들어오고 우측 shif. 최하위 비트부터 저장된 데이터를 출력.
    reg [7:0] register_siso;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) register_siso = 0;
        else if(en)begin
            register_siso = {d, register_siso[7:1]};
        end
    end
    
    assign f = register_siso[0];

endmodule

// 우측 shift SIPO : LSB부터 출력. MSB로 입력
module SIPO(
    input clk, reset_p,
    input d,
    input rd_en,
    output [7:0] q);

    reg [7:0] register_sipo;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) register_sipo = 0;
        else begin
            register_sipo = {d, register_sipo[7:1]};
        end
    end
    
    // 8'bz : 임피던스 출력
    assign q = rd_en ? register_sipo : 8'bz;

endmodule


// 우측 shif PISO : LSB부터 출력
module PISO(
    input clk, reset_p,
    input [7:0] d,
    input shift_load,
    output q);

    reg [7:0] register_piso;
    always @(posedge clk, posedge reset_p)begin
        if(reset_p) register_piso = 0;
        else begin
            if(shift_load) register_piso = {1'b0, register_piso[7:1]};
            else register_piso = d;
        end 
    end
    
    assign q = register_piso[0]; // 출력은 그냥 내보내고 이 출력응 받는 다음 모듈 입력단에서 clk에 따라 받는 것이 이상적

endmodule

// PIPO : read, write 동시에 가능 -> speed 우선형
module memory(
    input clk, reset_p,
    input [7:0] i_data,
    input [9:0] wr_addr, rd_addr,
    output reg [7:0] o_data);
    
    reg [7:0] ram [0:1023];     // 8bit데이터를 가지는 1024크기의 ram 배열
    always @(posedge clk)begin
        ram[wr_addr] = i_data;
        o_data = ram[rd_addr];
    end

endmodule

// address가 하나인 형태. cost 절약형
module memory_one_addr_bus(
    input clk, reset_p,
    input [7:0] i_data,
    input wr_rd,        // 0 : write, 1 : read
    input [9:0] addr,
    output reg [7:0] o_data);
    
    reg [7:0] ram [0:1023];     // 8bit데이터를 가지는 1024크기의 ram 배열
    always @(posedge clk)begin
        if(wr_rd) ram[addr] = i_data;
        else o_data = ram[addr];
    end

endmodule