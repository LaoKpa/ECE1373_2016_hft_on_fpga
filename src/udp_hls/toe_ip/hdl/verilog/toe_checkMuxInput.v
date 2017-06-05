// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2015.1
// Copyright (C) 2015 Xilinx Inc. All rights reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module toe_checkMuxInput (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        rxEng2portTable_check_req_V_V_dout,
        rxEng2portTable_check_req_V_V_empty_n,
        rxEng2portTable_check_req_V_V_read,
        pt_portCheckListening_req_fifo_din,
        pt_portCheckListening_req_fifo_full_n,
        pt_portCheckListening_req_fifo_write,
        pt_dstFifo_V_din,
        pt_dstFifo_V_full_n,
        pt_dstFifo_V_write,
        pt_portCheckUsed_req_fifo_V_V_din,
        pt_portCheckUsed_req_fifo_V_V_full_n,
        pt_portCheckUsed_req_fifo_V_V_write
);

parameter    ap_const_logic_1 = 1'b1;
parameter    ap_const_logic_0 = 1'b0;
parameter    ap_ST_pp0_stg0_fsm_0 = 1'b1;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv1_1 = 1'b1;
parameter    ap_const_lv1_0 = 1'b0;
parameter    ap_const_lv32_8 = 32'b1000;
parameter    ap_const_lv32_F = 32'b1111;
parameter    ap_const_lv32_7 = 32'b111;
parameter    ap_true = 1'b1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] rxEng2portTable_check_req_V_V_dout;
input   rxEng2portTable_check_req_V_V_empty_n;
output   rxEng2portTable_check_req_V_V_read;
output  [14:0] pt_portCheckListening_req_fifo_din;
input   pt_portCheckListening_req_fifo_full_n;
output   pt_portCheckListening_req_fifo_write;
output  [0:0] pt_dstFifo_V_din;
input   pt_dstFifo_V_full_n;
output   pt_dstFifo_V_write;
output  [14:0] pt_portCheckUsed_req_fifo_V_V_din;
input   pt_portCheckUsed_req_fifo_V_V_full_n;
output   pt_portCheckUsed_req_fifo_V_V_write;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg rxEng2portTable_check_req_V_V_read;
reg pt_portCheckListening_req_fifo_write;
reg[0:0] pt_dstFifo_V_din;
reg pt_dstFifo_V_write;
reg pt_portCheckUsed_req_fifo_V_V_write;
reg    ap_done_reg = 1'b0;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm = 1'b1;
reg    ap_sig_cseq_ST_pp0_stg0_fsm_0;
reg    ap_sig_bdd_20;
wire    ap_reg_ppiten_pp0_it0;
reg    ap_reg_ppiten_pp0_it1 = 1'b0;
wire   [0:0] tmp_nbreadreq_fu_58_p3;
reg    ap_sig_bdd_49;
reg   [0:0] tmp_reg_126;
reg   [0:0] tmp_497_reg_135;
reg    ap_sig_bdd_81;
reg   [7:0] p_Result_i_reg_130;
wire   [6:0] tmp_498_fu_114_p1;
reg   [6:0] tmp_498_reg_139;
wire   [14:0] tmp_V_fu_118_p3;
reg   [0:0] ap_NS_fsm;
reg    ap_sig_pprstidle_pp0;
reg    ap_sig_bdd_144;




/// the current state (ap_CS_fsm) of the state machine. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_CS_fsm
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_pp0_stg0_fsm_0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

/// ap_done_reg assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_done_reg
    if (ap_rst == 1'b1) begin
        ap_done_reg <= ap_const_logic_0;
    end else begin
        if ((ap_const_logic_1 == ap_continue)) begin
            ap_done_reg <= ap_const_logic_0;
        end else if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_done_reg <= ap_const_logic_1;
        end
    end
end

/// ap_reg_ppiten_pp0_it1 assign process. ///
always @ (posedge ap_clk)
begin : ap_ret_ap_reg_ppiten_pp0_it1
    if (ap_rst == 1'b1) begin
        ap_reg_ppiten_pp0_it1 <= ap_const_logic_0;
    end else begin
        if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
            ap_reg_ppiten_pp0_it1 <= ap_reg_ppiten_pp0_it0;
        end
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(tmp_nbreadreq_fu_58_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        p_Result_i_reg_130 <= {{rxEng2portTable_check_req_V_V_dout[ap_const_lv32_F : ap_const_lv32_8]}};
        tmp_497_reg_135 <= rxEng2portTable_check_req_V_V_dout[ap_const_lv32_7];
        tmp_498_reg_139 <= tmp_498_fu_114_p1;
    end
end

/// assign process. ///
always @(posedge ap_clk)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        tmp_reg_126 <= tmp_nbreadreq_fu_58_p3;
    end
end

/// ap_done assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_done_reg) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        ap_done = ap_const_logic_1;
    end else begin
        ap_done = ap_const_logic_0;
    end
end

/// ap_idle assign process. ///
always @ (ap_start or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1)
begin
    if ((~(ap_const_logic_1 == ap_start) & (ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_reg_ppiten_pp0_it1))) begin
        ap_idle = ap_const_logic_1;
    end else begin
        ap_idle = ap_const_logic_0;
    end
end

/// ap_ready assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        ap_ready = ap_const_logic_1;
    end else begin
        ap_ready = ap_const_logic_0;
    end
end

/// ap_sig_cseq_ST_pp0_stg0_fsm_0 assign process. ///
always @ (ap_sig_bdd_20)
begin
    if (ap_sig_bdd_20) begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_1;
    end else begin
        ap_sig_cseq_ST_pp0_stg0_fsm_0 = ap_const_logic_0;
    end
end

/// ap_sig_pprstidle_pp0 assign process. ///
always @ (ap_start or ap_reg_ppiten_pp0_it0)
begin
    if (((ap_const_logic_0 == ap_reg_ppiten_pp0_it0) & (ap_const_logic_0 == ap_start))) begin
        ap_sig_pprstidle_pp0 = ap_const_logic_1;
    end else begin
        ap_sig_pprstidle_pp0 = ap_const_logic_0;
    end
end

/// pt_dstFifo_V_din assign process. ///
always @ (tmp_497_reg_135 or ap_sig_bdd_144)
begin
    if (ap_sig_bdd_144) begin
        if (~(ap_const_lv1_0 == tmp_497_reg_135)) begin
            pt_dstFifo_V_din = ap_const_lv1_0;
        end else if ((ap_const_lv1_0 == tmp_497_reg_135)) begin
            pt_dstFifo_V_din = ap_const_lv1_1;
        end else begin
            pt_dstFifo_V_din = 'bx;
        end
    end else begin
        pt_dstFifo_V_din = 'bx;
    end
end

/// pt_dstFifo_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or tmp_reg_126 or tmp_497_reg_135 or ap_sig_bdd_81)
begin
    if ((((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_126) & (ap_const_lv1_0 == tmp_497_reg_135) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))) | ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_126) & ~(ap_const_lv1_0 == tmp_497_reg_135) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1)))))) begin
        pt_dstFifo_V_write = ap_const_logic_1;
    end else begin
        pt_dstFifo_V_write = ap_const_logic_0;
    end
end

/// pt_portCheckListening_req_fifo_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or tmp_reg_126 or tmp_497_reg_135 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_126) & (ap_const_lv1_0 == tmp_497_reg_135) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        pt_portCheckListening_req_fifo_write = ap_const_logic_1;
    end else begin
        pt_portCheckListening_req_fifo_write = ap_const_logic_0;
    end
end

/// pt_portCheckUsed_req_fifo_V_V_write assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or tmp_reg_126 or tmp_497_reg_135 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_126) & ~(ap_const_lv1_0 == tmp_497_reg_135) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        pt_portCheckUsed_req_fifo_V_V_write = ap_const_logic_1;
    end else begin
        pt_portCheckUsed_req_fifo_V_V_write = ap_const_logic_0;
    end
end

/// rxEng2portTable_check_req_V_V_read assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or tmp_nbreadreq_fu_58_p3 or ap_sig_bdd_49 or ap_sig_bdd_81)
begin
    if (((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ~(tmp_nbreadreq_fu_58_p3 == ap_const_lv1_0) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))))) begin
        rxEng2portTable_check_req_V_V_read = ap_const_logic_1;
    end else begin
        rxEng2portTable_check_req_V_V_read = ap_const_logic_0;
    end
end
/// the next state (ap_NS_fsm) of the state machine. ///
always @ (ap_done_reg or ap_CS_fsm or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or ap_sig_bdd_81 or ap_sig_pprstidle_pp0)
begin
    case (ap_CS_fsm)
        ap_ST_pp0_stg0_fsm_0 : 
        begin
            ap_NS_fsm = ap_ST_pp0_stg0_fsm_0;
        end
        default : 
        begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_reg_ppiten_pp0_it0 = ap_start;

/// ap_sig_bdd_144 assign process. ///
always @ (ap_done_reg or ap_sig_cseq_ST_pp0_stg0_fsm_0 or ap_reg_ppiten_pp0_it0 or ap_reg_ppiten_pp0_it1 or ap_sig_bdd_49 or tmp_reg_126 or ap_sig_bdd_81)
begin
    ap_sig_bdd_144 = ((ap_const_logic_1 == ap_sig_cseq_ST_pp0_stg0_fsm_0) & ~(ap_const_lv1_0 == tmp_reg_126) & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1) & ~((ap_done_reg == ap_const_logic_1) | ((ap_const_logic_1 == ap_reg_ppiten_pp0_it0) & ap_sig_bdd_49) | (ap_sig_bdd_81 & (ap_const_logic_1 == ap_reg_ppiten_pp0_it1))));
end

/// ap_sig_bdd_20 assign process. ///
always @ (ap_CS_fsm)
begin
    ap_sig_bdd_20 = (ap_CS_fsm[ap_const_lv32_0] == ap_const_lv1_1);
end

/// ap_sig_bdd_49 assign process. ///
always @ (ap_start or ap_done_reg or rxEng2portTable_check_req_V_V_empty_n or tmp_nbreadreq_fu_58_p3)
begin
    ap_sig_bdd_49 = (((rxEng2portTable_check_req_V_V_empty_n == ap_const_logic_0) & ~(tmp_nbreadreq_fu_58_p3 == ap_const_lv1_0)) | (ap_start == ap_const_logic_0) | (ap_done_reg == ap_const_logic_1));
end

/// ap_sig_bdd_81 assign process. ///
always @ (pt_portCheckListening_req_fifo_full_n or tmp_reg_126 or tmp_497_reg_135 or pt_dstFifo_V_full_n or pt_portCheckUsed_req_fifo_V_V_full_n)
begin
    ap_sig_bdd_81 = (((pt_portCheckListening_req_fifo_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_reg_126) & (ap_const_lv1_0 == tmp_497_reg_135)) | (~(ap_const_lv1_0 == tmp_reg_126) & (ap_const_lv1_0 == tmp_497_reg_135) & (pt_dstFifo_V_full_n == ap_const_logic_0)) | (~(ap_const_lv1_0 == tmp_reg_126) & (pt_portCheckUsed_req_fifo_V_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_497_reg_135)) | (~(ap_const_lv1_0 == tmp_reg_126) & (pt_dstFifo_V_full_n == ap_const_logic_0) & ~(ap_const_lv1_0 == tmp_497_reg_135)));
end
assign pt_portCheckListening_req_fifo_din = tmp_V_fu_118_p3;
assign pt_portCheckUsed_req_fifo_V_V_din = tmp_V_fu_118_p3;
assign tmp_498_fu_114_p1 = rxEng2portTable_check_req_V_V_dout[6:0];
assign tmp_V_fu_118_p3 = {{tmp_498_reg_139}, {p_Result_i_reg_130}};
assign tmp_nbreadreq_fu_58_p3 = rxEng2portTable_check_req_V_V_empty_n;


endmodule //toe_checkMuxInput
