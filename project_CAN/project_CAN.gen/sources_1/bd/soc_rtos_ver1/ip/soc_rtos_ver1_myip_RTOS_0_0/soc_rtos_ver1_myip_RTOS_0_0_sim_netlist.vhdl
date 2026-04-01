-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Feb  5 10:58:44 2026
-- Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user14/project_CAN/project_CAN.gen/sources_1/bd/soc_rtos_ver1/ip/soc_rtos_ver1_myip_RTOS_0_0/soc_rtos_ver1_myip_RTOS_0_0_sim_netlist.vhdl
-- Design      : soc_rtos_ver1_myip_RTOS_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_rtos_ver1_myip_RTOS_0_0_irq_latch is
  port (
    PEND : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 9 downto 0 );
    irq_out : out STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \missed_cnt_reg[7]_0\ : in STD_LOGIC;
    pend_reg_0 : in STD_LOGIC;
    missed_reg_0 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \s00_axi_rdata[31]\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    \s00_axi_rdata[31]_0\ : in STD_LOGIC_VECTOR ( 9 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_rtos_ver1_myip_RTOS_0_0_irq_latch : entity is "irq_latch";
end soc_rtos_ver1_myip_RTOS_0_0_irq_latch;

architecture STRUCTURE of soc_rtos_ver1_myip_RTOS_0_0_irq_latch is
  signal \^pend\ : STD_LOGIC;
  signal \^irq_out\ : STD_LOGIC;
  signal missed : STD_LOGIC;
  signal \missed_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \missed_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \missed_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \missed_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal missed_cnt_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal missed_i_1_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \missed_cnt[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \missed_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \missed_cnt[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \missed_cnt[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \missed_cnt[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \missed_cnt[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \missed_cnt[7]_i_3\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of missed_i_1 : label is "soft_lutpair22";
begin
  PEND <= \^pend\;
  irq_out <= \^irq_out\;
irq_out_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^pend\,
      I1 => Q(0),
      O => \^irq_out\
    );
\missed_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => missed_cnt_reg(0),
      I1 => missed_reg_0,
      O => \missed_cnt[0]_i_1_n_0\
    );
\missed_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => missed_cnt_reg(1),
      I1 => missed_cnt_reg(0),
      I2 => missed_reg_0,
      O => \missed_cnt[1]_i_1_n_0\
    );
\missed_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => missed_cnt_reg(2),
      I1 => missed_cnt_reg(0),
      I2 => missed_cnt_reg(1),
      I3 => missed_reg_0,
      O => \missed_cnt[2]_i_1_n_0\
    );
\missed_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => missed_cnt_reg(3),
      I1 => missed_cnt_reg(1),
      I2 => missed_cnt_reg(0),
      I3 => missed_cnt_reg(2),
      I4 => missed_reg_0,
      O => \p_0_in__0\(3)
    );
\missed_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => missed_cnt_reg(4),
      I1 => missed_cnt_reg(2),
      I2 => missed_cnt_reg(0),
      I3 => missed_cnt_reg(1),
      I4 => missed_cnt_reg(3),
      I5 => missed_reg_0,
      O => \p_0_in__0\(4)
    );
\missed_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => missed_cnt_reg(5),
      I1 => \missed_cnt[7]_i_3_n_0\,
      I2 => missed_cnt_reg(4),
      I3 => missed_reg_0,
      O => \p_0_in__0\(5)
    );
\missed_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006AAA"
    )
        port map (
      I0 => missed_cnt_reg(6),
      I1 => missed_cnt_reg(5),
      I2 => missed_cnt_reg(4),
      I3 => \missed_cnt[7]_i_3_n_0\,
      I4 => missed_reg_0,
      O => \p_0_in__0\(6)
    );
\missed_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAAAAAA"
    )
        port map (
      I0 => missed_cnt_reg(7),
      I1 => missed_cnt_reg(4),
      I2 => missed_cnt_reg(5),
      I3 => missed_cnt_reg(6),
      I4 => \missed_cnt[7]_i_3_n_0\,
      I5 => missed_reg_0,
      O => \p_0_in__0\(7)
    );
\missed_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => missed_cnt_reg(2),
      I1 => missed_cnt_reg(0),
      I2 => missed_cnt_reg(1),
      I3 => missed_cnt_reg(3),
      O => \missed_cnt[7]_i_3_n_0\
    );
\missed_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \missed_cnt[0]_i_1_n_0\,
      Q => missed_cnt_reg(0)
    );
\missed_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \missed_cnt[1]_i_1_n_0\,
      Q => missed_cnt_reg(1)
    );
\missed_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \missed_cnt[2]_i_1_n_0\,
      Q => missed_cnt_reg(2)
    );
\missed_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \p_0_in__0\(3),
      Q => missed_cnt_reg(3)
    );
\missed_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \p_0_in__0\(4),
      Q => missed_cnt_reg(4)
    );
\missed_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \p_0_in__0\(5),
      Q => missed_cnt_reg(5)
    );
\missed_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \p_0_in__0\(6),
      Q => missed_cnt_reg(6)
    );
\missed_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => \p_0_in__0\(7),
      Q => missed_cnt_reg(7)
    );
missed_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^pend\,
      I1 => missed_reg_0,
      O => missed_i_1_n_0
    );
missed_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => E(0),
      CLR => \missed_cnt_reg[7]_0\,
      D => missed_i_1_n_0,
      Q => missed
    );
pend_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \missed_cnt_reg[7]_0\,
      D => pend_reg_0,
      Q => \^pend\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => missed,
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => \s00_axi_rdata[31]_0\(0),
      I4 => \s00_axi_rdata[31]\(0),
      I5 => Q(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(1),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(0),
      I4 => \s00_axi_rdata[31]\(1),
      I5 => Q(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
        port map (
      I0 => Q(9),
      I1 => \^irq_out\,
      I2 => \s00_axi_rdata[31]\(9),
      I3 => \s00_axi_rdata[31]_0\(9),
      I4 => axi_araddr(0),
      I5 => axi_araddr(1),
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(2),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(1),
      I4 => \s00_axi_rdata[31]\(2),
      I5 => Q(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(3),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(2),
      I4 => \s00_axi_rdata[31]\(3),
      I5 => Q(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(4),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(3),
      I4 => \s00_axi_rdata[31]\(4),
      I5 => Q(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(5),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(4),
      I4 => \s00_axi_rdata[31]\(5),
      I5 => Q(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(6),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(5),
      I4 => \s00_axi_rdata[31]\(6),
      I5 => Q(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(7),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(6),
      I4 => \s00_axi_rdata[31]\(7),
      I5 => Q(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBCB3B0BF8C83808"
    )
        port map (
      I0 => \s00_axi_rdata[31]_0\(8),
      I1 => axi_araddr(0),
      I2 => axi_araddr(1),
      I3 => missed_cnt_reg(7),
      I4 => \s00_axi_rdata[31]\(8),
      I5 => Q(8),
      O => s00_axi_rdata(8)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_rtos_ver1_myip_RTOS_0_0_tick_counter is
  port (
    s00_axi_aresetn_0 : out STD_LOGIC;
    \count_reg[31]_0\ : out STD_LOGIC_VECTOR ( 9 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 21 downto 0 );
    tick_event_reg_0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 21 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    PEND : in STD_LOGIC;
    pend_reg : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \count_reg[0]_0\ : in STD_LOGIC;
    CE : in STD_LOGIC;
    \period_active_reg[31]_0\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_rtos_ver1_myip_RTOS_0_0_tick_counter : entity is "tick_counter";
end soc_rtos_ver1_myip_RTOS_0_0_tick_counter;

architecture STRUCTURE of soc_rtos_ver1_myip_RTOS_0_0_tick_counter is
  signal TICK_EVENT : STD_LOGIC;
  signal clamped_shadow : STD_LOGIC_VECTOR ( 0 to 0 );
  signal count : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal count0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \count0_carry__0_n_0\ : STD_LOGIC;
  signal \count0_carry__0_n_1\ : STD_LOGIC;
  signal \count0_carry__0_n_2\ : STD_LOGIC;
  signal \count0_carry__0_n_3\ : STD_LOGIC;
  signal \count0_carry__1_n_0\ : STD_LOGIC;
  signal \count0_carry__1_n_1\ : STD_LOGIC;
  signal \count0_carry__1_n_2\ : STD_LOGIC;
  signal \count0_carry__1_n_3\ : STD_LOGIC;
  signal \count0_carry__2_n_0\ : STD_LOGIC;
  signal \count0_carry__2_n_1\ : STD_LOGIC;
  signal \count0_carry__2_n_2\ : STD_LOGIC;
  signal \count0_carry__2_n_3\ : STD_LOGIC;
  signal \count0_carry__3_n_0\ : STD_LOGIC;
  signal \count0_carry__3_n_1\ : STD_LOGIC;
  signal \count0_carry__3_n_2\ : STD_LOGIC;
  signal \count0_carry__3_n_3\ : STD_LOGIC;
  signal \count0_carry__4_n_0\ : STD_LOGIC;
  signal \count0_carry__4_n_1\ : STD_LOGIC;
  signal \count0_carry__4_n_2\ : STD_LOGIC;
  signal \count0_carry__4_n_3\ : STD_LOGIC;
  signal \count0_carry__5_n_0\ : STD_LOGIC;
  signal \count0_carry__5_n_1\ : STD_LOGIC;
  signal \count0_carry__5_n_2\ : STD_LOGIC;
  signal \count0_carry__5_n_3\ : STD_LOGIC;
  signal \count0_carry__6_n_2\ : STD_LOGIC;
  signal \count0_carry__6_n_3\ : STD_LOGIC;
  signal count0_carry_n_0 : STD_LOGIC;
  signal count0_carry_n_1 : STD_LOGIC;
  signal count0_carry_n_2 : STD_LOGIC;
  signal count0_carry_n_3 : STD_LOGIC;
  signal \count[31]_i_10_n_0\ : STD_LOGIC;
  signal \count[31]_i_11_n_0\ : STD_LOGIC;
  signal \count[31]_i_1_n_0\ : STD_LOGIC;
  signal \count[31]_i_3_n_0\ : STD_LOGIC;
  signal \count[31]_i_4_n_0\ : STD_LOGIC;
  signal \count[31]_i_5_n_0\ : STD_LOGIC;
  signal \count[31]_i_6_n_0\ : STD_LOGIC;
  signal \count[31]_i_7_n_0\ : STD_LOGIC;
  signal \count[31]_i_8_n_0\ : STD_LOGIC;
  signal \count[31]_i_9_n_0\ : STD_LOGIC;
  signal \^count_reg[31]_0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal en_ed : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal period_active : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \period_active[0]_i_2_n_0\ : STD_LOGIC;
  signal \period_active[0]_i_3_n_0\ : STD_LOGIC;
  signal \period_active[0]_i_4_n_0\ : STD_LOGIC;
  signal \period_active[0]_i_5_n_0\ : STD_LOGIC;
  signal \period_active[0]_i_6_n_0\ : STD_LOGIC;
  signal \period_active[0]_i_7_n_0\ : STD_LOGIC;
  signal \period_active[31]_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_aresetn_0\ : STD_LOGIC;
  signal tick_event0 : STD_LOGIC;
  signal \tick_event0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__0_n_1\ : STD_LOGIC;
  signal \tick_event0_carry__0_n_2\ : STD_LOGIC;
  signal \tick_event0_carry__0_n_3\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__1_n_1\ : STD_LOGIC;
  signal \tick_event0_carry__1_n_2\ : STD_LOGIC;
  signal \tick_event0_carry__1_n_3\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \tick_event0_carry__2_n_1\ : STD_LOGIC;
  signal \tick_event0_carry__2_n_2\ : STD_LOGIC;
  signal \tick_event0_carry__2_n_3\ : STD_LOGIC;
  signal tick_event0_carry_i_1_n_0 : STD_LOGIC;
  signal tick_event0_carry_i_2_n_0 : STD_LOGIC;
  signal tick_event0_carry_i_3_n_0 : STD_LOGIC;
  signal tick_event0_carry_i_4_n_0 : STD_LOGIC;
  signal tick_event0_carry_i_5_n_0 : STD_LOGIC;
  signal tick_event0_carry_i_6_n_0 : STD_LOGIC;
  signal tick_event0_carry_i_7_n_0 : STD_LOGIC;
  signal tick_event0_carry_i_8_n_0 : STD_LOGIC;
  signal tick_event0_carry_n_0 : STD_LOGIC;
  signal tick_event0_carry_n_1 : STD_LOGIC;
  signal tick_event0_carry_n_2 : STD_LOGIC;
  signal tick_event0_carry_n_3 : STD_LOGIC;
  signal tick_event1 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \tick_event1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__0_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__0_n_1\ : STD_LOGIC;
  signal \tick_event1_carry__0_n_2\ : STD_LOGIC;
  signal \tick_event1_carry__0_n_3\ : STD_LOGIC;
  signal \tick_event1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__1_n_1\ : STD_LOGIC;
  signal \tick_event1_carry__1_n_2\ : STD_LOGIC;
  signal \tick_event1_carry__1_n_3\ : STD_LOGIC;
  signal \tick_event1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__2_n_1\ : STD_LOGIC;
  signal \tick_event1_carry__2_n_2\ : STD_LOGIC;
  signal \tick_event1_carry__2_n_3\ : STD_LOGIC;
  signal \tick_event1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__3_n_1\ : STD_LOGIC;
  signal \tick_event1_carry__3_n_2\ : STD_LOGIC;
  signal \tick_event1_carry__3_n_3\ : STD_LOGIC;
  signal \tick_event1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__4_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__4_n_1\ : STD_LOGIC;
  signal \tick_event1_carry__4_n_2\ : STD_LOGIC;
  signal \tick_event1_carry__4_n_3\ : STD_LOGIC;
  signal \tick_event1_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__5_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__5_n_1\ : STD_LOGIC;
  signal \tick_event1_carry__5_n_2\ : STD_LOGIC;
  signal \tick_event1_carry__5_n_3\ : STD_LOGIC;
  signal \tick_event1_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \tick_event1_carry__6_n_2\ : STD_LOGIC;
  signal \tick_event1_carry__6_n_3\ : STD_LOGIC;
  signal tick_event1_carry_i_1_n_0 : STD_LOGIC;
  signal tick_event1_carry_i_2_n_0 : STD_LOGIC;
  signal tick_event1_carry_i_3_n_0 : STD_LOGIC;
  signal tick_event1_carry_i_4_n_0 : STD_LOGIC;
  signal tick_event1_carry_n_0 : STD_LOGIC;
  signal tick_event1_carry_n_1 : STD_LOGIC;
  signal tick_event1_carry_n_2 : STD_LOGIC;
  signal tick_event1_carry_n_3 : STD_LOGIC;
  signal tick_event_i_1_n_0 : STD_LOGIC;
  signal tick_event_i_2_n_0 : STD_LOGIC;
  signal tick_event_i_3_n_0 : STD_LOGIC;
  signal tick_event_i_4_n_0 : STD_LOGIC;
  signal \NLW_count0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_count0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_tick_event0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tick_event0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tick_event0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tick_event0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tick_event1_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tick_event1_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of count0_carry : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \count0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \count[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \count[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \count[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \count[18]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[19]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \count[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[21]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \count[22]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[23]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \count[24]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[25]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \count[26]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[27]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \count[28]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[29]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \count[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[30]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[31]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \count[31]_i_5\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \count[31]_i_6\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \count[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \count[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \count[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \count[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \count[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \missed_cnt[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of pend_i_1 : label is "soft_lutpair18";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of tick_event0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \tick_event0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \tick_event0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \tick_event0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD of tick_event1_carry : label is 35;
  attribute ADDER_THRESHOLD of \tick_event1_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_event1_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_event1_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_event1_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_event1_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_event1_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \tick_event1_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of tick_event_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of tick_event_i_4 : label is "soft_lutpair0";
begin
  \count_reg[31]_0\(9 downto 0) <= \^count_reg[31]_0\(9 downto 0);
  s00_axi_aresetn_0 <= \^s00_axi_aresetn_0\;
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^s00_axi_aresetn_0\
    );
count0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => count0_carry_n_0,
      CO(2) => count0_carry_n_1,
      CO(1) => count0_carry_n_2,
      CO(0) => count0_carry_n_3,
      CYINIT => count(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(4 downto 1),
      S(3 downto 0) => \^count_reg[31]_0\(3 downto 0)
    );
\count0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => count0_carry_n_0,
      CO(3) => \count0_carry__0_n_0\,
      CO(2) => \count0_carry__0_n_1\,
      CO(1) => \count0_carry__0_n_2\,
      CO(0) => \count0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(8 downto 5),
      S(3 downto 0) => \^count_reg[31]_0\(7 downto 4)
    );
\count0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__0_n_0\,
      CO(3) => \count0_carry__1_n_0\,
      CO(2) => \count0_carry__1_n_1\,
      CO(1) => \count0_carry__1_n_2\,
      CO(0) => \count0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(12 downto 9),
      S(3 downto 1) => count(12 downto 10),
      S(0) => \^count_reg[31]_0\(8)
    );
\count0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__1_n_0\,
      CO(3) => \count0_carry__2_n_0\,
      CO(2) => \count0_carry__2_n_1\,
      CO(1) => \count0_carry__2_n_2\,
      CO(0) => \count0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(16 downto 13),
      S(3 downto 0) => count(16 downto 13)
    );
\count0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__2_n_0\,
      CO(3) => \count0_carry__3_n_0\,
      CO(2) => \count0_carry__3_n_1\,
      CO(1) => \count0_carry__3_n_2\,
      CO(0) => \count0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(20 downto 17),
      S(3 downto 0) => count(20 downto 17)
    );
\count0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__3_n_0\,
      CO(3) => \count0_carry__4_n_0\,
      CO(2) => \count0_carry__4_n_1\,
      CO(1) => \count0_carry__4_n_2\,
      CO(0) => \count0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(24 downto 21),
      S(3 downto 0) => count(24 downto 21)
    );
\count0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__4_n_0\,
      CO(3) => \count0_carry__5_n_0\,
      CO(2) => \count0_carry__5_n_1\,
      CO(1) => \count0_carry__5_n_2\,
      CO(0) => \count0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => count0(28 downto 25),
      S(3 downto 0) => count(28 downto 25)
    );
\count0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \count0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_count0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \count0_carry__6_n_2\,
      CO(0) => \count0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_count0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => count0(31 downto 29),
      S(3) => '0',
      S(2) => \^count_reg[31]_0\(9),
      S(1 downto 0) => count(30 downto 29)
    );
\count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count(0),
      O => p_1_in(0)
    );
\count[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(10),
      O => p_1_in(10)
    );
\count[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(11),
      O => p_1_in(11)
    );
\count[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(12),
      O => p_1_in(12)
    );
\count[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(13),
      O => p_1_in(13)
    );
\count[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(14),
      O => p_1_in(14)
    );
\count[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(15),
      O => p_1_in(15)
    );
\count[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(16),
      O => p_1_in(16)
    );
\count[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(17),
      O => p_1_in(17)
    );
\count[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(18),
      O => p_1_in(18)
    );
\count[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(19),
      O => p_1_in(19)
    );
\count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(1),
      O => p_1_in(1)
    );
\count[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(20),
      O => p_1_in(20)
    );
\count[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(21),
      O => p_1_in(21)
    );
\count[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(22),
      O => p_1_in(22)
    );
\count[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(23),
      O => p_1_in(23)
    );
\count[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(24),
      O => p_1_in(24)
    );
\count[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(25),
      O => p_1_in(25)
    );
\count[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(26),
      O => p_1_in(26)
    );
\count[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(27),
      O => p_1_in(27)
    );
\count[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(28),
      O => p_1_in(28)
    );
\count[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(29),
      O => p_1_in(29)
    );
\count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(2),
      O => p_1_in(2)
    );
\count[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(30),
      O => p_1_in(30)
    );
\count[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAAAAAA8"
    )
        port map (
      I0 => CE,
      I1 => \count[31]_i_3_n_0\,
      I2 => \count[31]_i_4_n_0\,
      I3 => \count[31]_i_5_n_0\,
      I4 => \count[31]_i_6_n_0\,
      I5 => \count[31]_i_7_n_0\,
      O => \count[31]_i_1_n_0\
    );
\count[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_active(29),
      I1 => period_active(28),
      I2 => period_active(31),
      I3 => period_active(30),
      O => \count[31]_i_10_n_0\
    );
\count[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_active(21),
      I1 => period_active(20),
      I2 => period_active(23),
      I3 => period_active(22),
      O => \count[31]_i_11_n_0\
    );
\count[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(31),
      O => p_1_in(31)
    );
\count[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => period_active(10),
      I1 => period_active(11),
      I2 => period_active(8),
      I3 => period_active(9),
      I4 => \count[31]_i_8_n_0\,
      O => \count[31]_i_3_n_0\
    );
\count[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => period_active(2),
      I1 => period_active(3),
      I2 => period_active(0),
      I3 => period_active(1),
      I4 => \count[31]_i_9_n_0\,
      O => \count[31]_i_4_n_0\
    );
\count[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => period_active(26),
      I1 => period_active(27),
      I2 => period_active(24),
      I3 => period_active(25),
      I4 => \count[31]_i_10_n_0\,
      O => \count[31]_i_5_n_0\
    );
\count[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => period_active(18),
      I1 => period_active(19),
      I2 => period_active(16),
      I3 => period_active(17),
      I4 => \count[31]_i_11_n_0\,
      O => \count[31]_i_6_n_0\
    );
\count[31]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \count_reg[0]_0\,
      I1 => Q(0),
      O => \count[31]_i_7_n_0\
    );
\count[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_active(13),
      I1 => period_active(12),
      I2 => period_active(15),
      I3 => period_active(14),
      O => \count[31]_i_8_n_0\
    );
\count[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_active(5),
      I1 => period_active(4),
      I2 => period_active(7),
      I3 => period_active(6),
      O => \count[31]_i_9_n_0\
    );
\count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(3),
      O => p_1_in(3)
    );
\count[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(4),
      O => p_1_in(4)
    );
\count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(5),
      O => p_1_in(5)
    );
\count[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(6),
      O => p_1_in(6)
    );
\count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(7),
      O => p_1_in(7)
    );
\count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(8),
      O => p_1_in(8)
    );
\count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => tick_event0,
      I1 => \count_reg[0]_0\,
      I2 => Q(0),
      I3 => count0(9),
      O => p_1_in(9)
    );
\count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(0),
      Q => count(0)
    );
\count_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(10),
      Q => count(10)
    );
\count_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(11),
      Q => count(11)
    );
\count_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(12),
      Q => count(12)
    );
\count_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(13),
      Q => count(13)
    );
\count_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(14),
      Q => count(14)
    );
\count_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(15),
      Q => count(15)
    );
\count_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(16),
      Q => count(16)
    );
\count_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(17),
      Q => count(17)
    );
\count_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(18),
      Q => count(18)
    );
\count_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(19),
      Q => count(19)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(1),
      Q => \^count_reg[31]_0\(0)
    );
\count_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(20),
      Q => count(20)
    );
\count_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(21),
      Q => count(21)
    );
\count_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(22),
      Q => count(22)
    );
\count_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(23),
      Q => count(23)
    );
\count_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(24),
      Q => count(24)
    );
\count_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(25),
      Q => count(25)
    );
\count_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(26),
      Q => count(26)
    );
\count_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(27),
      Q => count(27)
    );
\count_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(28),
      Q => count(28)
    );
\count_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(29),
      Q => count(29)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(2),
      Q => \^count_reg[31]_0\(1)
    );
\count_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(30),
      Q => count(30)
    );
\count_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(31),
      Q => \^count_reg[31]_0\(9)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(3),
      Q => \^count_reg[31]_0\(2)
    );
\count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(4),
      Q => \^count_reg[31]_0\(3)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(5),
      Q => \^count_reg[31]_0\(4)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(6),
      Q => \^count_reg[31]_0\(5)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(7),
      Q => \^count_reg[31]_0\(6)
    );
\count_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(8),
      Q => \^count_reg[31]_0\(7)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \count[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => p_1_in(9),
      Q => \^count_reg[31]_0\(8)
    );
en_ed_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => Q(0),
      Q => en_ed
    );
\missed_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => TICK_EVENT,
      I1 => PEND,
      I2 => pend_reg,
      O => E(0)
    );
pend_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
        port map (
      I0 => TICK_EVENT,
      I1 => pend_reg,
      I2 => PEND,
      O => tick_event_reg_0
    );
\period_active[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \period_active[0]_i_2_n_0\,
      I1 => \period_active_reg[31]_0\(0),
      O => clamped_shadow(0)
    );
\period_active[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
        port map (
      I0 => \period_active[0]_i_3_n_0\,
      I1 => \period_active[0]_i_4_n_0\,
      I2 => \period_active[0]_i_5_n_0\,
      I3 => \period_active[0]_i_6_n_0\,
      I4 => \period_active_reg[31]_0\(1),
      I5 => \period_active[0]_i_7_n_0\,
      O => \period_active[0]_i_2_n_0\
    );
\period_active[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \period_active_reg[31]_0\(28),
      I1 => \period_active_reg[31]_0\(29),
      I2 => \period_active_reg[31]_0\(26),
      I3 => \period_active_reg[31]_0\(27),
      I4 => \period_active_reg[31]_0\(31),
      I5 => \period_active_reg[31]_0\(30),
      O => \period_active[0]_i_3_n_0\
    );
\period_active[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \period_active_reg[31]_0\(10),
      I1 => \period_active_reg[31]_0\(11),
      I2 => \period_active_reg[31]_0\(8),
      I3 => \period_active_reg[31]_0\(9),
      I4 => \period_active_reg[31]_0\(13),
      I5 => \period_active_reg[31]_0\(12),
      O => \period_active[0]_i_4_n_0\
    );
\period_active[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \period_active_reg[31]_0\(4),
      I1 => \period_active_reg[31]_0\(5),
      I2 => \period_active_reg[31]_0\(2),
      I3 => \period_active_reg[31]_0\(3),
      I4 => \period_active_reg[31]_0\(7),
      I5 => \period_active_reg[31]_0\(6),
      O => \period_active[0]_i_5_n_0\
    );
\period_active[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \period_active_reg[31]_0\(22),
      I1 => \period_active_reg[31]_0\(23),
      I2 => \period_active_reg[31]_0\(20),
      I3 => \period_active_reg[31]_0\(21),
      I4 => \period_active_reg[31]_0\(25),
      I5 => \period_active_reg[31]_0\(24),
      O => \period_active[0]_i_6_n_0\
    );
\period_active[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \period_active_reg[31]_0\(16),
      I1 => \period_active_reg[31]_0\(17),
      I2 => \period_active_reg[31]_0\(14),
      I3 => \period_active_reg[31]_0\(15),
      I4 => \period_active_reg[31]_0\(19),
      I5 => \period_active_reg[31]_0\(18),
      O => \period_active[0]_i_7_n_0\
    );
\period_active[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => en_ed,
      I1 => Q(0),
      I2 => TICK_EVENT,
      O => \period_active[31]_i_1_n_0\
    );
\period_active_reg[0]\: unisim.vcomponents.FDPE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      D => clamped_shadow(0),
      PRE => \^s00_axi_aresetn_0\,
      Q => period_active(0)
    );
\period_active_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(10),
      Q => period_active(10)
    );
\period_active_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(11),
      Q => period_active(11)
    );
\period_active_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(12),
      Q => period_active(12)
    );
\period_active_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(13),
      Q => period_active(13)
    );
\period_active_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(14),
      Q => period_active(14)
    );
\period_active_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(15),
      Q => period_active(15)
    );
\period_active_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(16),
      Q => period_active(16)
    );
\period_active_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(17),
      Q => period_active(17)
    );
\period_active_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(18),
      Q => period_active(18)
    );
\period_active_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(19),
      Q => period_active(19)
    );
\period_active_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(1),
      Q => period_active(1)
    );
\period_active_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(20),
      Q => period_active(20)
    );
\period_active_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(21),
      Q => period_active(21)
    );
\period_active_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(22),
      Q => period_active(22)
    );
\period_active_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(23),
      Q => period_active(23)
    );
\period_active_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(24),
      Q => period_active(24)
    );
\period_active_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(25),
      Q => period_active(25)
    );
\period_active_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(26),
      Q => period_active(26)
    );
\period_active_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(27),
      Q => period_active(27)
    );
\period_active_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(28),
      Q => period_active(28)
    );
\period_active_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(29),
      Q => period_active(29)
    );
\period_active_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(2),
      Q => period_active(2)
    );
\period_active_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(30),
      Q => period_active(30)
    );
\period_active_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(31),
      Q => period_active(31)
    );
\period_active_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(3),
      Q => period_active(3)
    );
\period_active_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(4),
      Q => period_active(4)
    );
\period_active_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(5),
      Q => period_active(5)
    );
\period_active_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(6),
      Q => period_active(6)
    );
\period_active_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(7),
      Q => period_active(7)
    );
\period_active_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(8),
      Q => period_active(8)
    );
\period_active_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \period_active[31]_i_1_n_0\,
      CLR => \^s00_axi_aresetn_0\,
      D => \period_active_reg[31]_0\(9),
      Q => period_active(9)
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF2FE323EC2CE020"
    )
        port map (
      I0 => \period_active_reg[31]_0\(0),
      I1 => axi_araddr(1),
      I2 => axi_araddr(0),
      I3 => count(0),
      I4 => PEND,
      I5 => Q(0),
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(1),
      I1 => count(10),
      I2 => \period_active_reg[31]_0\(10),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(2),
      I1 => count(11),
      I2 => \period_active_reg[31]_0\(11),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(3),
      I1 => count(12),
      I2 => \period_active_reg[31]_0\(12),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(4),
      I1 => count(13),
      I2 => \period_active_reg[31]_0\(13),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(5),
      I1 => count(14),
      I2 => \period_active_reg[31]_0\(14),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(6),
      I1 => count(15),
      I2 => \period_active_reg[31]_0\(15),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(7),
      I1 => count(16),
      I2 => \period_active_reg[31]_0\(16),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(8),
      I1 => count(17),
      I2 => \period_active_reg[31]_0\(17),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(9),
      I1 => count(18),
      I2 => \period_active_reg[31]_0\(18),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(10),
      I1 => count(19),
      I2 => \period_active_reg[31]_0\(19),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(11),
      I1 => count(20),
      I2 => \period_active_reg[31]_0\(20),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(12),
      I1 => count(21),
      I2 => \period_active_reg[31]_0\(21),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(13),
      I1 => count(22),
      I2 => \period_active_reg[31]_0\(22),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(14),
      I1 => count(23),
      I2 => \period_active_reg[31]_0\(23),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(15),
      I1 => count(24),
      I2 => \period_active_reg[31]_0\(24),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(16),
      I1 => count(25),
      I2 => \period_active_reg[31]_0\(25),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(17),
      I1 => count(26),
      I2 => \period_active_reg[31]_0\(26),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(18),
      I1 => count(27),
      I2 => \period_active_reg[31]_0\(27),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(19),
      I1 => count(28),
      I2 => \period_active_reg[31]_0\(28),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(20),
      I1 => count(29),
      I2 => \period_active_reg[31]_0\(29),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC00F0AA"
    )
        port map (
      I0 => Q(21),
      I1 => count(30),
      I2 => \period_active_reg[31]_0\(30),
      I3 => axi_araddr(0),
      I4 => axi_araddr(1),
      O => s00_axi_rdata(21)
    );
tick_event0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tick_event0_carry_n_0,
      CO(2) => tick_event0_carry_n_1,
      CO(1) => tick_event0_carry_n_2,
      CO(0) => tick_event0_carry_n_3,
      CYINIT => '1',
      DI(3) => tick_event0_carry_i_1_n_0,
      DI(2) => tick_event0_carry_i_2_n_0,
      DI(1) => tick_event0_carry_i_3_n_0,
      DI(0) => tick_event0_carry_i_4_n_0,
      O(3 downto 0) => NLW_tick_event0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tick_event0_carry_i_5_n_0,
      S(2) => tick_event0_carry_i_6_n_0,
      S(1) => tick_event0_carry_i_7_n_0,
      S(0) => tick_event0_carry_i_8_n_0
    );
\tick_event0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tick_event0_carry_n_0,
      CO(3) => \tick_event0_carry__0_n_0\,
      CO(2) => \tick_event0_carry__0_n_1\,
      CO(1) => \tick_event0_carry__0_n_2\,
      CO(0) => \tick_event0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \tick_event0_carry__0_i_1_n_0\,
      DI(2) => \tick_event0_carry__0_i_2_n_0\,
      DI(1) => \tick_event0_carry__0_i_3_n_0\,
      DI(0) => \tick_event0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_tick_event0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \tick_event0_carry__0_i_5_n_0\,
      S(2) => \tick_event0_carry__0_i_6_n_0\,
      S(1) => \tick_event0_carry__0_i_7_n_0\,
      S(0) => \tick_event0_carry__0_i_8_n_0\
    );
\tick_event0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(15),
      I1 => tick_event1(15),
      I2 => count(14),
      I3 => tick_event1(14),
      O => \tick_event0_carry__0_i_1_n_0\
    );
\tick_event0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(13),
      I1 => tick_event1(13),
      I2 => count(12),
      I3 => tick_event1(12),
      O => \tick_event0_carry__0_i_2_n_0\
    );
\tick_event0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(11),
      I1 => tick_event1(11),
      I2 => count(10),
      I3 => tick_event1(10),
      O => \tick_event0_carry__0_i_3_n_0\
    );
\tick_event0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^count_reg[31]_0\(8),
      I1 => tick_event1(9),
      I2 => \^count_reg[31]_0\(7),
      I3 => tick_event1(8),
      O => \tick_event0_carry__0_i_4_n_0\
    );
\tick_event0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(15),
      I1 => count(15),
      I2 => tick_event1(14),
      I3 => count(14),
      O => \tick_event0_carry__0_i_5_n_0\
    );
\tick_event0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(13),
      I1 => count(13),
      I2 => tick_event1(12),
      I3 => count(12),
      O => \tick_event0_carry__0_i_6_n_0\
    );
\tick_event0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(11),
      I1 => count(11),
      I2 => tick_event1(10),
      I3 => count(10),
      O => \tick_event0_carry__0_i_7_n_0\
    );
\tick_event0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(9),
      I1 => \^count_reg[31]_0\(8),
      I2 => tick_event1(8),
      I3 => \^count_reg[31]_0\(7),
      O => \tick_event0_carry__0_i_8_n_0\
    );
\tick_event0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event0_carry__0_n_0\,
      CO(3) => \tick_event0_carry__1_n_0\,
      CO(2) => \tick_event0_carry__1_n_1\,
      CO(1) => \tick_event0_carry__1_n_2\,
      CO(0) => \tick_event0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \tick_event0_carry__1_i_1_n_0\,
      DI(2) => \tick_event0_carry__1_i_2_n_0\,
      DI(1) => \tick_event0_carry__1_i_3_n_0\,
      DI(0) => \tick_event0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_tick_event0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \tick_event0_carry__1_i_5_n_0\,
      S(2) => \tick_event0_carry__1_i_6_n_0\,
      S(1) => \tick_event0_carry__1_i_7_n_0\,
      S(0) => \tick_event0_carry__1_i_8_n_0\
    );
\tick_event0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(23),
      I1 => tick_event1(23),
      I2 => count(22),
      I3 => tick_event1(22),
      O => \tick_event0_carry__1_i_1_n_0\
    );
\tick_event0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(21),
      I1 => tick_event1(21),
      I2 => count(20),
      I3 => tick_event1(20),
      O => \tick_event0_carry__1_i_2_n_0\
    );
\tick_event0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(19),
      I1 => tick_event1(19),
      I2 => count(18),
      I3 => tick_event1(18),
      O => \tick_event0_carry__1_i_3_n_0\
    );
\tick_event0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(17),
      I1 => tick_event1(17),
      I2 => count(16),
      I3 => tick_event1(16),
      O => \tick_event0_carry__1_i_4_n_0\
    );
\tick_event0_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(23),
      I1 => count(23),
      I2 => tick_event1(22),
      I3 => count(22),
      O => \tick_event0_carry__1_i_5_n_0\
    );
\tick_event0_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(21),
      I1 => count(21),
      I2 => tick_event1(20),
      I3 => count(20),
      O => \tick_event0_carry__1_i_6_n_0\
    );
\tick_event0_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(19),
      I1 => count(19),
      I2 => tick_event1(18),
      I3 => count(18),
      O => \tick_event0_carry__1_i_7_n_0\
    );
\tick_event0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(17),
      I1 => count(17),
      I2 => tick_event1(16),
      I3 => count(16),
      O => \tick_event0_carry__1_i_8_n_0\
    );
\tick_event0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event0_carry__1_n_0\,
      CO(3) => tick_event0,
      CO(2) => \tick_event0_carry__2_n_1\,
      CO(1) => \tick_event0_carry__2_n_2\,
      CO(0) => \tick_event0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \tick_event0_carry__2_i_1_n_0\,
      DI(2) => \tick_event0_carry__2_i_2_n_0\,
      DI(1) => \tick_event0_carry__2_i_3_n_0\,
      DI(0) => \tick_event0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_tick_event0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \tick_event0_carry__2_i_5_n_0\,
      S(2) => \tick_event0_carry__2_i_6_n_0\,
      S(1) => \tick_event0_carry__2_i_7_n_0\,
      S(0) => \tick_event0_carry__2_i_8_n_0\
    );
\tick_event0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^count_reg[31]_0\(9),
      I1 => tick_event1(31),
      I2 => count(30),
      I3 => tick_event1(30),
      O => \tick_event0_carry__2_i_1_n_0\
    );
\tick_event0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(29),
      I1 => tick_event1(29),
      I2 => count(28),
      I3 => tick_event1(28),
      O => \tick_event0_carry__2_i_2_n_0\
    );
\tick_event0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(27),
      I1 => tick_event1(27),
      I2 => count(26),
      I3 => tick_event1(26),
      O => \tick_event0_carry__2_i_3_n_0\
    );
\tick_event0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => count(25),
      I1 => tick_event1(25),
      I2 => count(24),
      I3 => tick_event1(24),
      O => \tick_event0_carry__2_i_4_n_0\
    );
\tick_event0_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(31),
      I1 => \^count_reg[31]_0\(9),
      I2 => tick_event1(30),
      I3 => count(30),
      O => \tick_event0_carry__2_i_5_n_0\
    );
\tick_event0_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(29),
      I1 => count(29),
      I2 => tick_event1(28),
      I3 => count(28),
      O => \tick_event0_carry__2_i_6_n_0\
    );
\tick_event0_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(27),
      I1 => count(27),
      I2 => tick_event1(26),
      I3 => count(26),
      O => \tick_event0_carry__2_i_7_n_0\
    );
\tick_event0_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(25),
      I1 => count(25),
      I2 => tick_event1(24),
      I3 => count(24),
      O => \tick_event0_carry__2_i_8_n_0\
    );
tick_event0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^count_reg[31]_0\(6),
      I1 => tick_event1(7),
      I2 => \^count_reg[31]_0\(5),
      I3 => tick_event1(6),
      O => tick_event0_carry_i_1_n_0
    );
tick_event0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^count_reg[31]_0\(4),
      I1 => tick_event1(5),
      I2 => \^count_reg[31]_0\(3),
      I3 => tick_event1(4),
      O => tick_event0_carry_i_2_n_0
    );
tick_event0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \^count_reg[31]_0\(2),
      I1 => tick_event1(3),
      I2 => \^count_reg[31]_0\(1),
      I3 => tick_event1(2),
      O => tick_event0_carry_i_3_n_0
    );
tick_event0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => \^count_reg[31]_0\(0),
      I1 => tick_event1(1),
      I2 => count(0),
      I3 => period_active(0),
      O => tick_event0_carry_i_4_n_0
    );
tick_event0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(7),
      I1 => \^count_reg[31]_0\(6),
      I2 => tick_event1(6),
      I3 => \^count_reg[31]_0\(5),
      O => tick_event0_carry_i_5_n_0
    );
tick_event0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(5),
      I1 => \^count_reg[31]_0\(4),
      I2 => tick_event1(4),
      I3 => \^count_reg[31]_0\(3),
      O => tick_event0_carry_i_6_n_0
    );
tick_event0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tick_event1(3),
      I1 => \^count_reg[31]_0\(2),
      I2 => tick_event1(2),
      I3 => \^count_reg[31]_0\(1),
      O => tick_event0_carry_i_7_n_0
    );
tick_event0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => count(0),
      I1 => period_active(0),
      I2 => tick_event1(1),
      I3 => \^count_reg[31]_0\(0),
      O => tick_event0_carry_i_8_n_0
    );
tick_event1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tick_event1_carry_n_0,
      CO(2) => tick_event1_carry_n_1,
      CO(1) => tick_event1_carry_n_2,
      CO(0) => tick_event1_carry_n_3,
      CYINIT => period_active(0),
      DI(3 downto 0) => period_active(4 downto 1),
      O(3 downto 0) => tick_event1(4 downto 1),
      S(3) => tick_event1_carry_i_1_n_0,
      S(2) => tick_event1_carry_i_2_n_0,
      S(1) => tick_event1_carry_i_3_n_0,
      S(0) => tick_event1_carry_i_4_n_0
    );
\tick_event1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => tick_event1_carry_n_0,
      CO(3) => \tick_event1_carry__0_n_0\,
      CO(2) => \tick_event1_carry__0_n_1\,
      CO(1) => \tick_event1_carry__0_n_2\,
      CO(0) => \tick_event1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_active(8 downto 5),
      O(3 downto 0) => tick_event1(8 downto 5),
      S(3) => \tick_event1_carry__0_i_1_n_0\,
      S(2) => \tick_event1_carry__0_i_2_n_0\,
      S(1) => \tick_event1_carry__0_i_3_n_0\,
      S(0) => \tick_event1_carry__0_i_4_n_0\
    );
\tick_event1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(8),
      O => \tick_event1_carry__0_i_1_n_0\
    );
\tick_event1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(7),
      O => \tick_event1_carry__0_i_2_n_0\
    );
\tick_event1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(6),
      O => \tick_event1_carry__0_i_3_n_0\
    );
\tick_event1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(5),
      O => \tick_event1_carry__0_i_4_n_0\
    );
\tick_event1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event1_carry__0_n_0\,
      CO(3) => \tick_event1_carry__1_n_0\,
      CO(2) => \tick_event1_carry__1_n_1\,
      CO(1) => \tick_event1_carry__1_n_2\,
      CO(0) => \tick_event1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_active(12 downto 9),
      O(3 downto 0) => tick_event1(12 downto 9),
      S(3) => \tick_event1_carry__1_i_1_n_0\,
      S(2) => \tick_event1_carry__1_i_2_n_0\,
      S(1) => \tick_event1_carry__1_i_3_n_0\,
      S(0) => \tick_event1_carry__1_i_4_n_0\
    );
\tick_event1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(12),
      O => \tick_event1_carry__1_i_1_n_0\
    );
\tick_event1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(11),
      O => \tick_event1_carry__1_i_2_n_0\
    );
\tick_event1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(10),
      O => \tick_event1_carry__1_i_3_n_0\
    );
\tick_event1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(9),
      O => \tick_event1_carry__1_i_4_n_0\
    );
\tick_event1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event1_carry__1_n_0\,
      CO(3) => \tick_event1_carry__2_n_0\,
      CO(2) => \tick_event1_carry__2_n_1\,
      CO(1) => \tick_event1_carry__2_n_2\,
      CO(0) => \tick_event1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_active(16 downto 13),
      O(3 downto 0) => tick_event1(16 downto 13),
      S(3) => \tick_event1_carry__2_i_1_n_0\,
      S(2) => \tick_event1_carry__2_i_2_n_0\,
      S(1) => \tick_event1_carry__2_i_3_n_0\,
      S(0) => \tick_event1_carry__2_i_4_n_0\
    );
\tick_event1_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(16),
      O => \tick_event1_carry__2_i_1_n_0\
    );
\tick_event1_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(15),
      O => \tick_event1_carry__2_i_2_n_0\
    );
\tick_event1_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(14),
      O => \tick_event1_carry__2_i_3_n_0\
    );
\tick_event1_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(13),
      O => \tick_event1_carry__2_i_4_n_0\
    );
\tick_event1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event1_carry__2_n_0\,
      CO(3) => \tick_event1_carry__3_n_0\,
      CO(2) => \tick_event1_carry__3_n_1\,
      CO(1) => \tick_event1_carry__3_n_2\,
      CO(0) => \tick_event1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_active(20 downto 17),
      O(3 downto 0) => tick_event1(20 downto 17),
      S(3) => \tick_event1_carry__3_i_1_n_0\,
      S(2) => \tick_event1_carry__3_i_2_n_0\,
      S(1) => \tick_event1_carry__3_i_3_n_0\,
      S(0) => \tick_event1_carry__3_i_4_n_0\
    );
\tick_event1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(20),
      O => \tick_event1_carry__3_i_1_n_0\
    );
\tick_event1_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(19),
      O => \tick_event1_carry__3_i_2_n_0\
    );
\tick_event1_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(18),
      O => \tick_event1_carry__3_i_3_n_0\
    );
\tick_event1_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(17),
      O => \tick_event1_carry__3_i_4_n_0\
    );
\tick_event1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event1_carry__3_n_0\,
      CO(3) => \tick_event1_carry__4_n_0\,
      CO(2) => \tick_event1_carry__4_n_1\,
      CO(1) => \tick_event1_carry__4_n_2\,
      CO(0) => \tick_event1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_active(24 downto 21),
      O(3 downto 0) => tick_event1(24 downto 21),
      S(3) => \tick_event1_carry__4_i_1_n_0\,
      S(2) => \tick_event1_carry__4_i_2_n_0\,
      S(1) => \tick_event1_carry__4_i_3_n_0\,
      S(0) => \tick_event1_carry__4_i_4_n_0\
    );
\tick_event1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(24),
      O => \tick_event1_carry__4_i_1_n_0\
    );
\tick_event1_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(23),
      O => \tick_event1_carry__4_i_2_n_0\
    );
\tick_event1_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(22),
      O => \tick_event1_carry__4_i_3_n_0\
    );
\tick_event1_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(21),
      O => \tick_event1_carry__4_i_4_n_0\
    );
\tick_event1_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event1_carry__4_n_0\,
      CO(3) => \tick_event1_carry__5_n_0\,
      CO(2) => \tick_event1_carry__5_n_1\,
      CO(1) => \tick_event1_carry__5_n_2\,
      CO(0) => \tick_event1_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => period_active(28 downto 25),
      O(3 downto 0) => tick_event1(28 downto 25),
      S(3) => \tick_event1_carry__5_i_1_n_0\,
      S(2) => \tick_event1_carry__5_i_2_n_0\,
      S(1) => \tick_event1_carry__5_i_3_n_0\,
      S(0) => \tick_event1_carry__5_i_4_n_0\
    );
\tick_event1_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(28),
      O => \tick_event1_carry__5_i_1_n_0\
    );
\tick_event1_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(27),
      O => \tick_event1_carry__5_i_2_n_0\
    );
\tick_event1_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(26),
      O => \tick_event1_carry__5_i_3_n_0\
    );
\tick_event1_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(25),
      O => \tick_event1_carry__5_i_4_n_0\
    );
\tick_event1_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \tick_event1_carry__5_n_0\,
      CO(3 downto 2) => \NLW_tick_event1_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \tick_event1_carry__6_n_2\,
      CO(0) => \tick_event1_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => period_active(30 downto 29),
      O(3) => \NLW_tick_event1_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => tick_event1(31 downto 29),
      S(3) => '0',
      S(2) => \tick_event1_carry__6_i_1_n_0\,
      S(1) => \tick_event1_carry__6_i_2_n_0\,
      S(0) => \tick_event1_carry__6_i_3_n_0\
    );
\tick_event1_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(31),
      O => \tick_event1_carry__6_i_1_n_0\
    );
\tick_event1_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(30),
      O => \tick_event1_carry__6_i_2_n_0\
    );
\tick_event1_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(29),
      O => \tick_event1_carry__6_i_3_n_0\
    );
tick_event1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(4),
      O => tick_event1_carry_i_1_n_0
    );
tick_event1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(3),
      O => tick_event1_carry_i_2_n_0
    );
tick_event1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(2),
      O => tick_event1_carry_i_3_n_0
    );
tick_event1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => period_active(1),
      O => tick_event1_carry_i_4_n_0
    );
tick_event_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FE000000000000"
    )
        port map (
      I0 => tick_event_i_2_n_0,
      I1 => \count[31]_i_4_n_0\,
      I2 => \count[31]_i_3_n_0\,
      I3 => \count[31]_i_7_n_0\,
      I4 => tick_event0,
      I5 => CE,
      O => tick_event_i_1_n_0
    );
tick_event_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \count[31]_i_11_n_0\,
      I1 => tick_event_i_3_n_0,
      I2 => \count[31]_i_10_n_0\,
      I3 => tick_event_i_4_n_0,
      O => tick_event_i_2_n_0
    );
tick_event_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_active(17),
      I1 => period_active(16),
      I2 => period_active(19),
      I3 => period_active(18),
      O => tick_event_i_3_n_0
    );
tick_event_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => period_active(25),
      I1 => period_active(24),
      I2 => period_active(27),
      I3 => period_active(26),
      O => tick_event_i_4_n_0
    );
tick_event_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^s00_axi_aresetn_0\,
      D => tick_event_i_1_n_0,
      Q => TICK_EVENT
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_rtos_ver1_myip_RTOS_0_0_tick_timebase is
  port (
    CE : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    \sys_clk_reg[0]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 16 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_rtos_ver1_myip_RTOS_0_0_tick_timebase : entity is "tick_timebase";
end soc_rtos_ver1_myip_RTOS_0_0_tick_timebase;

architecture STRUCTURE of soc_rtos_ver1_myip_RTOS_0_0_tick_timebase is
  signal \ce0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_n_0\ : STD_LOGIC;
  signal \ce0_carry__0_n_1\ : STD_LOGIC;
  signal \ce0_carry__0_n_2\ : STD_LOGIC;
  signal \ce0_carry__0_n_3\ : STD_LOGIC;
  signal \ce0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_i_9_n_3\ : STD_LOGIC;
  signal \ce0_carry__1_n_0\ : STD_LOGIC;
  signal \ce0_carry__1_n_1\ : STD_LOGIC;
  signal \ce0_carry__1_n_2\ : STD_LOGIC;
  signal \ce0_carry__1_n_3\ : STD_LOGIC;
  signal \ce0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_n_0\ : STD_LOGIC;
  signal \ce0_carry__2_n_1\ : STD_LOGIC;
  signal \ce0_carry__2_n_2\ : STD_LOGIC;
  signal \ce0_carry__2_n_3\ : STD_LOGIC;
  signal ce0_carry_i_1_n_0 : STD_LOGIC;
  signal ce0_carry_i_2_n_0 : STD_LOGIC;
  signal ce0_carry_i_3_n_0 : STD_LOGIC;
  signal ce0_carry_i_4_n_0 : STD_LOGIC;
  signal ce0_carry_i_5_n_0 : STD_LOGIC;
  signal ce0_carry_i_6_n_0 : STD_LOGIC;
  signal ce0_carry_i_7_n_0 : STD_LOGIC;
  signal ce0_carry_i_8_n_0 : STD_LOGIC;
  signal ce0_carry_n_0 : STD_LOGIC;
  signal ce0_carry_n_1 : STD_LOGIC;
  signal ce0_carry_n_2 : STD_LOGIC;
  signal ce0_carry_n_3 : STD_LOGIC;
  signal ce1 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \ce1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_n_0\ : STD_LOGIC;
  signal \ce1_carry__0_n_1\ : STD_LOGIC;
  signal \ce1_carry__0_n_2\ : STD_LOGIC;
  signal \ce1_carry__0_n_3\ : STD_LOGIC;
  signal \ce1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \ce1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \ce1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \ce1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \ce1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \ce1_carry__1_n_0\ : STD_LOGIC;
  signal \ce1_carry__1_n_1\ : STD_LOGIC;
  signal \ce1_carry__1_n_2\ : STD_LOGIC;
  signal \ce1_carry__1_n_3\ : STD_LOGIC;
  signal \ce1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \ce1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \ce1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \ce1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \ce1_carry__2_n_0\ : STD_LOGIC;
  signal \ce1_carry__2_n_1\ : STD_LOGIC;
  signal \ce1_carry__2_n_2\ : STD_LOGIC;
  signal \ce1_carry__2_n_3\ : STD_LOGIC;
  signal ce1_carry_i_1_n_0 : STD_LOGIC;
  signal ce1_carry_i_2_n_0 : STD_LOGIC;
  signal ce1_carry_i_3_n_0 : STD_LOGIC;
  signal ce1_carry_i_4_n_0 : STD_LOGIC;
  signal ce1_carry_n_0 : STD_LOGIC;
  signal ce1_carry_n_1 : STD_LOGIC;
  signal ce1_carry_n_2 : STD_LOGIC;
  signal ce1_carry_n_3 : STD_LOGIC;
  signal ce_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal presc_count : STD_LOGIC_VECTOR ( 16 downto 5 );
  signal presc_count1 : STD_LOGIC;
  signal sys_clk : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal sys_clk0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \sys_clk0_carry__0_n_0\ : STD_LOGIC;
  signal \sys_clk0_carry__0_n_1\ : STD_LOGIC;
  signal \sys_clk0_carry__0_n_2\ : STD_LOGIC;
  signal \sys_clk0_carry__0_n_3\ : STD_LOGIC;
  signal \sys_clk0_carry__1_n_0\ : STD_LOGIC;
  signal \sys_clk0_carry__1_n_1\ : STD_LOGIC;
  signal \sys_clk0_carry__1_n_2\ : STD_LOGIC;
  signal \sys_clk0_carry__1_n_3\ : STD_LOGIC;
  signal \sys_clk0_carry__2_n_0\ : STD_LOGIC;
  signal \sys_clk0_carry__2_n_1\ : STD_LOGIC;
  signal \sys_clk0_carry__2_n_2\ : STD_LOGIC;
  signal \sys_clk0_carry__2_n_3\ : STD_LOGIC;
  signal \sys_clk0_carry__3_n_0\ : STD_LOGIC;
  signal \sys_clk0_carry__3_n_1\ : STD_LOGIC;
  signal \sys_clk0_carry__3_n_2\ : STD_LOGIC;
  signal \sys_clk0_carry__3_n_3\ : STD_LOGIC;
  signal \sys_clk0_carry__4_n_0\ : STD_LOGIC;
  signal \sys_clk0_carry__4_n_1\ : STD_LOGIC;
  signal \sys_clk0_carry__4_n_2\ : STD_LOGIC;
  signal \sys_clk0_carry__4_n_3\ : STD_LOGIC;
  signal \sys_clk0_carry__5_n_0\ : STD_LOGIC;
  signal \sys_clk0_carry__5_n_1\ : STD_LOGIC;
  signal \sys_clk0_carry__5_n_2\ : STD_LOGIC;
  signal \sys_clk0_carry__5_n_3\ : STD_LOGIC;
  signal \sys_clk0_carry__6_n_2\ : STD_LOGIC;
  signal \sys_clk0_carry__6_n_3\ : STD_LOGIC;
  signal sys_clk0_carry_n_0 : STD_LOGIC;
  signal sys_clk0_carry_n_1 : STD_LOGIC;
  signal sys_clk0_carry_n_2 : STD_LOGIC;
  signal sys_clk0_carry_n_3 : STD_LOGIC;
  signal NLW_ce0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ce0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ce0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ce0_carry__1_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_ce0_carry__1_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ce0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sys_clk0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_sys_clk0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of ce0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \ce0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ce0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \ce0_carry__2\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ce1_carry__0_i_8\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \ce1_carry__2_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of ce_i_1 : label is "soft_lutpair24";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of sys_clk0_carry : label is 35;
  attribute ADDER_THRESHOLD of \sys_clk0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \sys_clk0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \sys_clk0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \sys_clk0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \sys_clk0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \sys_clk0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \sys_clk0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \sys_clk[0]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sys_clk[10]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \sys_clk[11]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sys_clk[12]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \sys_clk[13]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sys_clk[14]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \sys_clk[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sys_clk[16]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \sys_clk[17]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sys_clk[18]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \sys_clk[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sys_clk[1]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sys_clk[20]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sys_clk[21]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sys_clk[22]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \sys_clk[23]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sys_clk[24]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \sys_clk[25]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sys_clk[26]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \sys_clk[27]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sys_clk[28]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sys_clk[29]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sys_clk[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \sys_clk[30]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \sys_clk[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sys_clk[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sys_clk[5]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sys_clk[6]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \sys_clk[7]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sys_clk[8]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \sys_clk[9]_i_1\ : label is "soft_lutpair29";
begin
ce0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ce0_carry_n_0,
      CO(2) => ce0_carry_n_1,
      CO(1) => ce0_carry_n_2,
      CO(0) => ce0_carry_n_3,
      CYINIT => '1',
      DI(3) => ce0_carry_i_1_n_0,
      DI(2) => ce0_carry_i_2_n_0,
      DI(1) => ce0_carry_i_3_n_0,
      DI(0) => ce0_carry_i_4_n_0,
      O(3 downto 0) => NLW_ce0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ce0_carry_i_5_n_0,
      S(2) => ce0_carry_i_6_n_0,
      S(1) => ce0_carry_i_7_n_0,
      S(0) => ce0_carry_i_8_n_0
    );
\ce0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ce0_carry_n_0,
      CO(3) => \ce0_carry__0_n_0\,
      CO(2) => \ce0_carry__0_n_1\,
      CO(1) => \ce0_carry__0_n_2\,
      CO(0) => \ce0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \ce0_carry__0_i_1_n_0\,
      DI(2) => \ce0_carry__0_i_2_n_0\,
      DI(1) => \ce0_carry__0_i_3_n_0\,
      DI(0) => \ce0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_ce0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \ce0_carry__0_i_5_n_0\,
      S(2) => \ce0_carry__0_i_6_n_0\,
      S(1) => \ce0_carry__0_i_7_n_0\,
      S(0) => \ce0_carry__0_i_8_n_0\
    );
\ce0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sys_clk(15),
      I1 => ce1(15),
      I2 => sys_clk(14),
      I3 => ce1(14),
      O => \ce0_carry__0_i_1_n_0\
    );
\ce0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sys_clk(13),
      I1 => ce1(13),
      I2 => sys_clk(12),
      I3 => ce1(12),
      O => \ce0_carry__0_i_2_n_0\
    );
\ce0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sys_clk(11),
      I1 => ce1(11),
      I2 => sys_clk(10),
      I3 => ce1(10),
      O => \ce0_carry__0_i_3_n_0\
    );
\ce0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sys_clk(9),
      I1 => ce1(9),
      I2 => sys_clk(8),
      I3 => ce1(8),
      O => \ce0_carry__0_i_4_n_0\
    );
\ce0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ce1(15),
      I1 => sys_clk(15),
      I2 => ce1(14),
      I3 => sys_clk(14),
      O => \ce0_carry__0_i_5_n_0\
    );
\ce0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ce1(13),
      I1 => sys_clk(13),
      I2 => ce1(12),
      I3 => sys_clk(12),
      O => \ce0_carry__0_i_6_n_0\
    );
\ce0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ce1(11),
      I1 => sys_clk(11),
      I2 => ce1(10),
      I3 => sys_clk(10),
      O => \ce0_carry__0_i_7_n_0\
    );
\ce0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ce1(9),
      I1 => sys_clk(9),
      I2 => ce1(8),
      I3 => sys_clk(8),
      O => \ce0_carry__0_i_8_n_0\
    );
\ce0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ce0_carry__0_n_0\,
      CO(3) => \ce0_carry__1_n_0\,
      CO(2) => \ce0_carry__1_n_1\,
      CO(1) => \ce0_carry__1_n_2\,
      CO(0) => \ce0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \ce0_carry__1_i_1_n_0\,
      DI(2) => \ce0_carry__1_i_2_n_0\,
      DI(1) => \ce0_carry__1_i_3_n_0\,
      DI(0) => \ce0_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_ce0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \ce0_carry__1_i_5_n_0\,
      S(2) => \ce0_carry__1_i_6_n_0\,
      S(1) => \ce0_carry__1_i_7_n_0\,
      S(0) => \ce0_carry__1_i_8_n_0\
    );
\ce0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sys_clk(23),
      I1 => sys_clk(22),
      I2 => \ce0_carry__1_i_9_n_3\,
      O => \ce0_carry__1_i_1_n_0\
    );
\ce0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sys_clk(21),
      I1 => sys_clk(20),
      I2 => \ce0_carry__1_i_9_n_3\,
      O => \ce0_carry__1_i_2_n_0\
    );
\ce0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sys_clk(19),
      I1 => sys_clk(18),
      I2 => \ce0_carry__1_i_9_n_3\,
      O => \ce0_carry__1_i_3_n_0\
    );
\ce0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F220"
    )
        port map (
      I0 => sys_clk(16),
      I1 => ce1(16),
      I2 => \ce0_carry__1_i_9_n_3\,
      I3 => sys_clk(17),
      O => \ce0_carry__1_i_4_n_0\
    );
\ce0_carry__1_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \ce0_carry__1_i_9_n_3\,
      I1 => sys_clk(22),
      I2 => sys_clk(23),
      O => \ce0_carry__1_i_5_n_0\
    );
\ce0_carry__1_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \ce0_carry__1_i_9_n_3\,
      I1 => sys_clk(20),
      I2 => sys_clk(21),
      O => \ce0_carry__1_i_6_n_0\
    );
\ce0_carry__1_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \ce0_carry__1_i_9_n_3\,
      I1 => sys_clk(18),
      I2 => sys_clk(19),
      O => \ce0_carry__1_i_7_n_0\
    );
\ce0_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => sys_clk(17),
      I1 => \ce0_carry__1_i_9_n_3\,
      I2 => ce1(16),
      I3 => sys_clk(16),
      O => \ce0_carry__1_i_8_n_0\
    );
\ce0_carry__1_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \ce1_carry__2_n_0\,
      CO(3 downto 1) => \NLW_ce0_carry__1_i_9_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \ce0_carry__1_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_ce0_carry__1_i_9_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\ce0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ce0_carry__1_n_0\,
      CO(3) => \ce0_carry__2_n_0\,
      CO(2) => \ce0_carry__2_n_1\,
      CO(1) => \ce0_carry__2_n_2\,
      CO(0) => \ce0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \ce0_carry__2_i_1_n_0\,
      DI(2) => \ce0_carry__2_i_2_n_0\,
      DI(1) => \ce0_carry__2_i_3_n_0\,
      DI(0) => \ce0_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_ce0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \ce0_carry__2_i_5_n_0\,
      S(2) => \ce0_carry__2_i_6_n_0\,
      S(1) => \ce0_carry__2_i_7_n_0\,
      S(0) => \ce0_carry__2_i_8_n_0\
    );
\ce0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sys_clk(31),
      I1 => sys_clk(30),
      I2 => \ce0_carry__1_i_9_n_3\,
      O => \ce0_carry__2_i_1_n_0\
    );
\ce0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sys_clk(29),
      I1 => sys_clk(28),
      I2 => \ce0_carry__1_i_9_n_3\,
      O => \ce0_carry__2_i_2_n_0\
    );
\ce0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sys_clk(27),
      I1 => sys_clk(26),
      I2 => \ce0_carry__1_i_9_n_3\,
      O => \ce0_carry__2_i_3_n_0\
    );
\ce0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => sys_clk(25),
      I1 => sys_clk(24),
      I2 => \ce0_carry__1_i_9_n_3\,
      O => \ce0_carry__2_i_4_n_0\
    );
\ce0_carry__2_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \ce0_carry__1_i_9_n_3\,
      I1 => sys_clk(30),
      I2 => sys_clk(31),
      O => \ce0_carry__2_i_5_n_0\
    );
\ce0_carry__2_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \ce0_carry__1_i_9_n_3\,
      I1 => sys_clk(28),
      I2 => sys_clk(29),
      O => \ce0_carry__2_i_6_n_0\
    );
\ce0_carry__2_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \ce0_carry__1_i_9_n_3\,
      I1 => sys_clk(26),
      I2 => sys_clk(27),
      O => \ce0_carry__2_i_7_n_0\
    );
\ce0_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \ce0_carry__1_i_9_n_3\,
      I1 => sys_clk(24),
      I2 => sys_clk(25),
      O => \ce0_carry__2_i_8_n_0\
    );
ce0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sys_clk(7),
      I1 => ce1(7),
      I2 => sys_clk(6),
      I3 => ce1(6),
      O => ce0_carry_i_1_n_0
    );
ce0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sys_clk(5),
      I1 => ce1(5),
      I2 => sys_clk(4),
      I3 => ce1(4),
      O => ce0_carry_i_2_n_0
    );
ce0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sys_clk(3),
      I1 => ce1(3),
      I2 => sys_clk(2),
      I3 => ce1(2),
      O => ce0_carry_i_3_n_0
    );
ce0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B222"
    )
        port map (
      I0 => sys_clk(1),
      I1 => ce1(1),
      I2 => sys_clk(0),
      I3 => Q(1),
      O => ce0_carry_i_4_n_0
    );
ce0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ce1(7),
      I1 => sys_clk(7),
      I2 => ce1(6),
      I3 => sys_clk(6),
      O => ce0_carry_i_5_n_0
    );
ce0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ce1(5),
      I1 => sys_clk(5),
      I2 => ce1(4),
      I3 => sys_clk(4),
      O => ce0_carry_i_6_n_0
    );
ce0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => ce1(3),
      I1 => sys_clk(3),
      I2 => ce1(2),
      I3 => sys_clk(2),
      O => ce0_carry_i_7_n_0
    );
ce0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6006"
    )
        port map (
      I0 => sys_clk(0),
      I1 => Q(1),
      I2 => ce1(1),
      I3 => sys_clk(1),
      O => ce0_carry_i_8_n_0
    );
ce1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ce1_carry_n_0,
      CO(2) => ce1_carry_n_1,
      CO(1) => ce1_carry_n_2,
      CO(0) => ce1_carry_n_3,
      CYINIT => Q(1),
      DI(3 downto 0) => Q(5 downto 2),
      O(3 downto 0) => ce1(4 downto 1),
      S(3) => ce1_carry_i_1_n_0,
      S(2) => ce1_carry_i_2_n_0,
      S(1) => ce1_carry_i_3_n_0,
      S(0) => ce1_carry_i_4_n_0
    );
\ce1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => ce1_carry_n_0,
      CO(3) => \ce1_carry__0_n_0\,
      CO(2) => \ce1_carry__0_n_1\,
      CO(1) => \ce1_carry__0_n_2\,
      CO(0) => \ce1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => Q(9),
      DI(2) => presc_count(7),
      DI(1) => Q(7),
      DI(0) => presc_count(5),
      O(3 downto 0) => ce1(8 downto 5),
      S(3) => \ce1_carry__0_i_3_n_0\,
      S(2) => \ce1_carry__0_i_4_n_0\,
      S(1) => \ce1_carry__0_i_5_n_0\,
      S(0) => \ce1_carry__0_i_6_n_0\
    );
\ce1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => Q(8),
      I1 => \ce1_carry__0_i_7_n_0\,
      I2 => Q(6),
      O => presc_count(7)
    );
\ce1_carry__0_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(5),
      I3 => Q(4),
      O => \ce1_carry__0_i_10_n_0\
    );
\ce1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => Q(6),
      I1 => \ce1_carry__0_i_7_n_0\,
      I2 => Q(8),
      O => presc_count(5)
    );
\ce1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(9),
      O => \ce1_carry__0_i_3_n_0\
    );
\ce1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => Q(6),
      I1 => \ce1_carry__0_i_7_n_0\,
      I2 => Q(8),
      O => \ce1_carry__0_i_4_n_0\
    );
\ce1_carry__0_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => \ce1_carry__0_i_5_n_0\
    );
\ce1_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => Q(8),
      I1 => \ce1_carry__0_i_7_n_0\,
      I2 => Q(6),
      O => \ce1_carry__0_i_6_n_0\
    );
\ce1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => Q(11),
      I1 => Q(10),
      I2 => Q(16),
      I3 => \ce1_carry__0_i_8_n_0\,
      I4 => \ce1_carry__0_i_9_n_0\,
      I5 => \ce1_carry__0_i_10_n_0\,
      O => \ce1_carry__0_i_7_n_0\
    );
\ce1_carry__0_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      I2 => Q(1),
      O => \ce1_carry__0_i_8_n_0\
    );
\ce1_carry__0_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(9),
      I1 => Q(7),
      I2 => Q(13),
      I3 => Q(12),
      O => \ce1_carry__0_i_9_n_0\
    );
\ce1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ce1_carry__0_n_0\,
      CO(3) => \ce1_carry__1_n_0\,
      CO(2) => \ce1_carry__1_n_1\,
      CO(1) => \ce1_carry__1_n_2\,
      CO(0) => \ce1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => Q(13 downto 12),
      DI(1 downto 0) => presc_count(10 downto 9),
      O(3 downto 0) => ce1(12 downto 9),
      S(3) => \ce1_carry__1_i_3_n_0\,
      S(2) => \ce1_carry__1_i_4_n_0\,
      S(1) => \ce1_carry__1_i_5_n_0\,
      S(0) => \ce1_carry__1_i_6_n_0\
    );
\ce1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => Q(11),
      I1 => \ce1_carry__1_i_7_n_0\,
      I2 => Q(6),
      I3 => Q(8),
      I4 => Q(10),
      O => presc_count(10)
    );
\ce1_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => Q(10),
      I1 => \ce1_carry__1_i_7_n_0\,
      I2 => Q(6),
      I3 => Q(8),
      I4 => Q(11),
      O => presc_count(9)
    );
\ce1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(13),
      O => \ce1_carry__1_i_3_n_0\
    );
\ce1_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(12),
      O => \ce1_carry__1_i_4_n_0\
    );
\ce1_carry__1_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => Q(10),
      I1 => Q(8),
      I2 => Q(6),
      I3 => \ce1_carry__1_i_7_n_0\,
      I4 => Q(11),
      O => \ce1_carry__1_i_5_n_0\
    );
\ce1_carry__1_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
        port map (
      I0 => Q(11),
      I1 => Q(8),
      I2 => Q(6),
      I3 => \ce1_carry__1_i_7_n_0\,
      I4 => Q(10),
      O => \ce1_carry__1_i_6_n_0\
    );
\ce1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \ce1_carry__0_i_10_n_0\,
      I1 => \ce1_carry__0_i_9_n_0\,
      I2 => Q(1),
      I3 => Q(14),
      I4 => Q(15),
      I5 => Q(16),
      O => \ce1_carry__1_i_7_n_0\
    );
\ce1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \ce1_carry__1_n_0\,
      CO(3) => \ce1_carry__2_n_0\,
      CO(2) => \ce1_carry__2_n_1\,
      CO(1) => \ce1_carry__2_n_2\,
      CO(0) => \ce1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => presc_count(16 downto 15),
      DI(1 downto 0) => Q(15 downto 14),
      O(3 downto 0) => ce1(16 downto 13),
      S(3) => presc_count1,
      S(2) => \ce1_carry__2_i_4_n_0\,
      S(1) => \ce1_carry__2_i_5_n_0\,
      S(0) => \ce1_carry__2_i_6_n_0\
    );
\ce1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => Q(6),
      I1 => Q(8),
      I2 => \ce1_carry__0_i_7_n_0\,
      O => presc_count(16)
    );
\ce1_carry__2_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAAB"
    )
        port map (
      I0 => Q(16),
      I1 => Q(10),
      I2 => Q(11),
      I3 => Q(6),
      I4 => Q(8),
      I5 => \ce1_carry__2_i_7_n_0\,
      O => presc_count(15)
    );
\ce1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \ce1_carry__0_i_7_n_0\,
      I1 => Q(8),
      I2 => Q(6),
      O => presc_count1
    );
\ce1_carry__2_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => \ce1_carry__2_i_7_n_0\,
      I1 => Q(8),
      I2 => Q(6),
      I3 => Q(11),
      I4 => Q(10),
      I5 => Q(16),
      O => \ce1_carry__2_i_4_n_0\
    );
\ce1_carry__2_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(15),
      O => \ce1_carry__2_i_5_n_0\
    );
\ce1_carry__2_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(14),
      O => \ce1_carry__2_i_6_n_0\
    );
\ce1_carry__2_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => Q(15),
      I1 => Q(14),
      I2 => Q(1),
      I3 => \ce1_carry__0_i_9_n_0\,
      I4 => \ce1_carry__0_i_10_n_0\,
      O => \ce1_carry__2_i_7_n_0\
    );
ce1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(5),
      O => ce1_carry_i_1_n_0
    );
ce1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(4),
      O => ce1_carry_i_2_n_0
    );
ce1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(3),
      O => ce1_carry_i_3_n_0
    );
ce1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(2),
      O => ce1_carry_i_4_n_0
    );
ce_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      O => ce_i_1_n_0
    );
ce_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => ce_i_1_n_0,
      Q => CE
    );
sys_clk0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sys_clk0_carry_n_0,
      CO(2) => sys_clk0_carry_n_1,
      CO(1) => sys_clk0_carry_n_2,
      CO(0) => sys_clk0_carry_n_3,
      CYINIT => sys_clk(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sys_clk0(4 downto 1),
      S(3 downto 0) => sys_clk(4 downto 1)
    );
\sys_clk0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sys_clk0_carry_n_0,
      CO(3) => \sys_clk0_carry__0_n_0\,
      CO(2) => \sys_clk0_carry__0_n_1\,
      CO(1) => \sys_clk0_carry__0_n_2\,
      CO(0) => \sys_clk0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sys_clk0(8 downto 5),
      S(3 downto 0) => sys_clk(8 downto 5)
    );
\sys_clk0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sys_clk0_carry__0_n_0\,
      CO(3) => \sys_clk0_carry__1_n_0\,
      CO(2) => \sys_clk0_carry__1_n_1\,
      CO(1) => \sys_clk0_carry__1_n_2\,
      CO(0) => \sys_clk0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sys_clk0(12 downto 9),
      S(3 downto 0) => sys_clk(12 downto 9)
    );
\sys_clk0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \sys_clk0_carry__1_n_0\,
      CO(3) => \sys_clk0_carry__2_n_0\,
      CO(2) => \sys_clk0_carry__2_n_1\,
      CO(1) => \sys_clk0_carry__2_n_2\,
      CO(0) => \sys_clk0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sys_clk0(16 downto 13),
      S(3 downto 0) => sys_clk(16 downto 13)
    );
\sys_clk0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sys_clk0_carry__2_n_0\,
      CO(3) => \sys_clk0_carry__3_n_0\,
      CO(2) => \sys_clk0_carry__3_n_1\,
      CO(1) => \sys_clk0_carry__3_n_2\,
      CO(0) => \sys_clk0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sys_clk0(20 downto 17),
      S(3 downto 0) => sys_clk(20 downto 17)
    );
\sys_clk0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sys_clk0_carry__3_n_0\,
      CO(3) => \sys_clk0_carry__4_n_0\,
      CO(2) => \sys_clk0_carry__4_n_1\,
      CO(1) => \sys_clk0_carry__4_n_2\,
      CO(0) => \sys_clk0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sys_clk0(24 downto 21),
      S(3 downto 0) => sys_clk(24 downto 21)
    );
\sys_clk0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \sys_clk0_carry__4_n_0\,
      CO(3) => \sys_clk0_carry__5_n_0\,
      CO(2) => \sys_clk0_carry__5_n_1\,
      CO(1) => \sys_clk0_carry__5_n_2\,
      CO(0) => \sys_clk0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => sys_clk0(28 downto 25),
      S(3 downto 0) => sys_clk(28 downto 25)
    );
\sys_clk0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \sys_clk0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_sys_clk0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \sys_clk0_carry__6_n_2\,
      CO(0) => \sys_clk0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_sys_clk0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => sys_clk0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => sys_clk(31 downto 29)
    );
\sys_clk[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk(0),
      O => p_0_in(0)
    );
\sys_clk[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(10),
      O => p_0_in(10)
    );
\sys_clk[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(11),
      O => p_0_in(11)
    );
\sys_clk[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(12),
      O => p_0_in(12)
    );
\sys_clk[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(13),
      O => p_0_in(13)
    );
\sys_clk[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(14),
      O => p_0_in(14)
    );
\sys_clk[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(15),
      O => p_0_in(15)
    );
\sys_clk[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(16),
      O => p_0_in(16)
    );
\sys_clk[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(17),
      O => p_0_in(17)
    );
\sys_clk[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(18),
      O => p_0_in(18)
    );
\sys_clk[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(19),
      O => p_0_in(19)
    );
\sys_clk[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(1),
      O => p_0_in(1)
    );
\sys_clk[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(20),
      O => p_0_in(20)
    );
\sys_clk[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(21),
      O => p_0_in(21)
    );
\sys_clk[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(22),
      O => p_0_in(22)
    );
\sys_clk[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(23),
      O => p_0_in(23)
    );
\sys_clk[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(24),
      O => p_0_in(24)
    );
\sys_clk[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(25),
      O => p_0_in(25)
    );
\sys_clk[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(26),
      O => p_0_in(26)
    );
\sys_clk[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(27),
      O => p_0_in(27)
    );
\sys_clk[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(28),
      O => p_0_in(28)
    );
\sys_clk[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(29),
      O => p_0_in(29)
    );
\sys_clk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(2),
      O => p_0_in(2)
    );
\sys_clk[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(30),
      O => p_0_in(30)
    );
\sys_clk[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(31),
      O => p_0_in(31)
    );
\sys_clk[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(3),
      O => p_0_in(3)
    );
\sys_clk[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(4),
      O => p_0_in(4)
    );
\sys_clk[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(5),
      O => p_0_in(5)
    );
\sys_clk[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(6),
      O => p_0_in(6)
    );
\sys_clk[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(7),
      O => p_0_in(7)
    );
\sys_clk[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(8),
      O => p_0_in(8)
    );
\sys_clk[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ce0_carry__2_n_0\,
      I1 => Q(0),
      I2 => sys_clk0(9),
      O => p_0_in(9)
    );
\sys_clk_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(0),
      Q => sys_clk(0)
    );
\sys_clk_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(10),
      Q => sys_clk(10)
    );
\sys_clk_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(11),
      Q => sys_clk(11)
    );
\sys_clk_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(12),
      Q => sys_clk(12)
    );
\sys_clk_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(13),
      Q => sys_clk(13)
    );
\sys_clk_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(14),
      Q => sys_clk(14)
    );
\sys_clk_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(15),
      Q => sys_clk(15)
    );
\sys_clk_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(16),
      Q => sys_clk(16)
    );
\sys_clk_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(17),
      Q => sys_clk(17)
    );
\sys_clk_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(18),
      Q => sys_clk(18)
    );
\sys_clk_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(19),
      Q => sys_clk(19)
    );
\sys_clk_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(1),
      Q => sys_clk(1)
    );
\sys_clk_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(20),
      Q => sys_clk(20)
    );
\sys_clk_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(21),
      Q => sys_clk(21)
    );
\sys_clk_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(22),
      Q => sys_clk(22)
    );
\sys_clk_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(23),
      Q => sys_clk(23)
    );
\sys_clk_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(24),
      Q => sys_clk(24)
    );
\sys_clk_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(25),
      Q => sys_clk(25)
    );
\sys_clk_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(26),
      Q => sys_clk(26)
    );
\sys_clk_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(27),
      Q => sys_clk(27)
    );
\sys_clk_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(28),
      Q => sys_clk(28)
    );
\sys_clk_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(29),
      Q => sys_clk(29)
    );
\sys_clk_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(2),
      Q => sys_clk(2)
    );
\sys_clk_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(30),
      Q => sys_clk(30)
    );
\sys_clk_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(31),
      Q => sys_clk(31)
    );
\sys_clk_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(3),
      Q => sys_clk(3)
    );
\sys_clk_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(4),
      Q => sys_clk(4)
    );
\sys_clk_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(5),
      Q => sys_clk(5)
    );
\sys_clk_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(6),
      Q => sys_clk(6)
    );
\sys_clk_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(7),
      Q => sys_clk(7)
    );
\sys_clk_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(8),
      Q => sys_clk(8)
    );
\sys_clk_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \sys_clk_reg[0]_0\,
      D => p_0_in(9),
      Q => sys_clk(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_out : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS_slave_lite_v1_0_S00_AXI : entity is "myip_RTOS_slave_lite_v1_0_S00_AXI";
end soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS_slave_lite_v1_0_S00_AXI is
  signal CE : STD_LOGIC;
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal PEND : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal clr_cnt_pulse : STD_LOGIC;
  signal clr_cnt_pulse_reg_n_0 : STD_LOGIC;
  signal clr_pend_pulse : STD_LOGIC;
  signal clr_pend_pulse_reg_n_0 : STD_LOGIC;
  signal count : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal inst_counter_n_0 : STD_LOGIC;
  signal inst_counter_n_11 : STD_LOGIC;
  signal inst_counter_n_34 : STD_LOGIC;
  signal presc_value : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair40";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair41";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF8888FFFF"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF00077770000"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^axi_arready_reg_0\,
      I4 => state_read(1),
      I5 => state_read(0),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => inst_counter_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => inst_counter_n_0
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => state_write(0),
      I4 => state_write(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => state_write(0),
      R => inst_counter_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => inst_counter_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => state_read(0),
      I2 => s00_axi_aresetn,
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => state_read(0),
      I2 => s00_axi_aresetn,
      I3 => \axi_araddr[3]_i_2_n_0\,
      I4 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      O => \axi_araddr[3]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => '0'
    );
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF554055FFFF4055"
    )
        port map (
      I0 => state_read(0),
      I1 => \^axi_rvalid_reg_0\,
      I2 => s00_axi_rready,
      I3 => state_read(1),
      I4 => \^axi_arready_reg_0\,
      I5 => s00_axi_arvalid,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => inst_counter_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => state_write(1),
      I2 => state_write(0),
      I3 => \^axi_awready_reg_0\,
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => inst_counter_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => inst_counter_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA2FFAF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_i_2_n_0,
      Q => \^axi_awready_reg_0\,
      R => inst_counter_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB38FF38C300FF00"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => \^s00_axi_bvalid\,
      I4 => s00_axi_bready,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => inst_counter_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FCCCCCCC"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^axi_rvalid_reg_0\,
      I2 => state_read(0),
      I3 => s00_axi_arvalid,
      I4 => \^axi_arready_reg_0\,
      I5 => state_read(1),
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => inst_counter_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^axi_wready_reg_0\,
      O => axi_wready_i_1_n_0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^axi_wready_reg_0\,
      R => inst_counter_n_0
    );
clr_cnt_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wdata(2),
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \axi_awready0__0\,
      I4 => s00_axi_awaddr(1),
      I5 => s00_axi_awaddr(0),
      O => clr_cnt_pulse
    );
clr_cnt_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => clr_cnt_pulse,
      Q => clr_cnt_pulse_reg_n_0,
      R => inst_counter_n_0
    );
clr_pend_pulse_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
        port map (
      I0 => s00_axi_wdata(3),
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => \axi_awready0__0\,
      I4 => s00_axi_awaddr(1),
      I5 => s00_axi_awaddr(0),
      O => clr_pend_pulse
    );
clr_pend_pulse_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => clr_pend_pulse,
      Q => clr_pend_pulse_reg_n_0,
      R => inst_counter_n_0
    );
inst_counter: entity work.soc_rtos_ver1_myip_RTOS_0_0_tick_counter
     port map (
      CE => CE,
      E(0) => inst_counter_n_11,
      PEND => PEND,
      Q(21) => \slv_reg0_reg_n_0_[30]\,
      Q(20) => \slv_reg0_reg_n_0_[29]\,
      Q(19) => \slv_reg0_reg_n_0_[28]\,
      Q(18) => \slv_reg0_reg_n_0_[27]\,
      Q(17) => \slv_reg0_reg_n_0_[26]\,
      Q(16) => \slv_reg0_reg_n_0_[25]\,
      Q(15) => \slv_reg0_reg_n_0_[24]\,
      Q(14) => \slv_reg0_reg_n_0_[23]\,
      Q(13) => \slv_reg0_reg_n_0_[22]\,
      Q(12) => \slv_reg0_reg_n_0_[21]\,
      Q(11) => \slv_reg0_reg_n_0_[20]\,
      Q(10 downto 1) => presc_value(15 downto 6),
      Q(0) => slv_reg0(0),
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      \count_reg[0]_0\ => clr_cnt_pulse_reg_n_0,
      \count_reg[31]_0\(9) => count(31),
      \count_reg[31]_0\(8 downto 0) => count(9 downto 1),
      pend_reg => clr_pend_pulse_reg_n_0,
      \period_active_reg[31]_0\(31 downto 0) => slv_reg1(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0 => inst_counter_n_0,
      s00_axi_rdata(21 downto 1) => s00_axi_rdata(30 downto 10),
      s00_axi_rdata(0) => s00_axi_rdata(0),
      tick_event_reg_0 => inst_counter_n_34
    );
inst_irq: entity work.soc_rtos_ver1_myip_RTOS_0_0_irq_latch
     port map (
      E(0) => inst_counter_n_11,
      PEND => PEND,
      Q(9) => \slv_reg0_reg_n_0_[31]\,
      Q(8 downto 3) => presc_value(5 downto 0),
      Q(2) => \slv_reg0_reg_n_0_[3]\,
      Q(1) => \slv_reg0_reg_n_0_[2]\,
      Q(0) => slv_reg0(1),
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      irq_out => irq_out,
      \missed_cnt_reg[7]_0\ => inst_counter_n_0,
      missed_reg_0 => clr_pend_pulse_reg_n_0,
      pend_reg_0 => inst_counter_n_34,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_rdata(9) => s00_axi_rdata(31),
      s00_axi_rdata(8 downto 0) => s00_axi_rdata(9 downto 1),
      \s00_axi_rdata[31]\(9) => count(31),
      \s00_axi_rdata[31]\(8 downto 0) => count(9 downto 1),
      \s00_axi_rdata[31]_0\(9) => slv_reg1(31),
      \s00_axi_rdata[31]_0\(8 downto 0) => slv_reg1(9 downto 1)
    );
inst_timebase: entity work.soc_rtos_ver1_myip_RTOS_0_0_tick_timebase
     port map (
      CE => CE,
      Q(16 downto 1) => presc_value(15 downto 0),
      Q(0) => slv_reg0(0),
      s00_axi_aclk => s00_axi_aclk,
      \sys_clk_reg[0]_0\ => inst_counter_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => \slv_reg0[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => \slv_reg0[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => \slv_reg0[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \axi_awaddr_reg_n_0_[2]\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000002A200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => \slv_reg0[31]_i_2_n_0\,
      I5 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => inst_counter_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => presc_value(6),
      R => inst_counter_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => presc_value(7),
      R => inst_counter_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => presc_value(8),
      R => inst_counter_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => presc_value(9),
      R => inst_counter_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => presc_value(10),
      R => inst_counter_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => presc_value(11),
      R => inst_counter_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => presc_value(12),
      R => inst_counter_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => presc_value(13),
      R => inst_counter_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => presc_value(14),
      R => inst_counter_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => presc_value(15),
      R => inst_counter_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => inst_counter_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => inst_counter_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => presc_value(0),
      R => inst_counter_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => presc_value(1),
      R => inst_counter_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => presc_value(2),
      R => inst_counter_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => presc_value(3),
      R => inst_counter_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => presc_value(4),
      R => inst_counter_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => presc_value(5),
      R => inst_counter_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(1),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(2),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(3),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000808080"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wstrb(0),
      I2 => \slv_reg0[31]_i_2_n_0\,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_awvalid,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => inst_counter_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => inst_counter_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => inst_counter_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => inst_counter_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => inst_counter_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => inst_counter_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => inst_counter_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => inst_counter_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => inst_counter_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => inst_counter_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => inst_counter_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => inst_counter_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => inst_counter_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => inst_counter_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => inst_counter_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => inst_counter_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => inst_counter_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => inst_counter_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => inst_counter_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => inst_counter_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => inst_counter_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => inst_counter_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => inst_counter_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => inst_counter_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => inst_counter_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => inst_counter_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => inst_counter_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => inst_counter_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => inst_counter_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => inst_counter_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => inst_counter_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => inst_counter_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_out : out STD_LOGIC;
    axi_wready_reg : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_bready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS : entity is "myip_RTOS";
end soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS;

architecture STRUCTURE of soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS is
begin
myip_RTOS_slave_lite_v1_0_S00_AXI_inst: entity work.soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      axi_wready_reg_0 => axi_wready_reg,
      irq_out => irq_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity soc_rtos_ver1_myip_RTOS_0_0 is
  port (
    irq_out : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of soc_rtos_ver1_myip_RTOS_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of soc_rtos_ver1_myip_RTOS_0_0 : entity is "soc_rtos_ver1_myip_RTOS_0_0,myip_RTOS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of soc_rtos_ver1_myip_RTOS_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of soc_rtos_ver1_myip_RTOS_0_0 : entity is "myip_RTOS,Vivado 2024.2";
end soc_rtos_ver1_myip_RTOS_0_0;

architecture STRUCTURE of soc_rtos_ver1_myip_RTOS_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.soc_rtos_ver1_myip_RTOS_0_0_myip_RTOS
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      axi_wready_reg => s00_axi_wready,
      irq_out => irq_out,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
