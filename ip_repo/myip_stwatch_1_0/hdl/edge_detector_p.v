`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/01/2026 06:14:10 PM
// Design Name: 
// Module Name: edge_detector_p
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


module edge_detector_p(
    input clk, reset_p,
    input cp,
    output p_edge, n_edge);
    
    reg ff_cur, ff_old;
    
    always @(posedge clk, posedge reset_p)begin
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