-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Mar  7 14:53:00 2026
-- Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.4 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_watchRev2_myip_stopwatch_0_0_sim_netlist.vhdl
-- Design      : soc_watchRev2_myip_stopwatch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  port (
    ff_cur_reg_0 : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_0 : out STD_LOGIC;
    ff_cur_reg_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    \lap_min_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_sec_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_csec_reg[5]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    \cnt_sysclk2_reg[19]\ : in STD_LOGIC;
    \cnt_sysclk2_reg[19]_0\ : in STD_LOGIC;
    \csec_reg[0]\ : in STD_LOGIC;
    \sec_reg[0]\ : in STD_LOGIC;
    \min_reg[0]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \lap_min_reg[0]\ : in STD_LOGIC;
    \lap_min_reg[0]_0\ : in STD_LOGIC;
    \prev_csec_reg[0]\ : in STD_LOGIC;
    \prev_csec_reg[0]_0\ : in STD_LOGIC;
    \cnt_sysclk2_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_sysclk20 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \lap_min_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_min_reg[5]_0\ : in STD_LOGIC;
    \lap_min_reg[5]_1\ : in STD_LOGIC;
    \lap_sec_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_sec_reg[5]_0\ : in STD_LOGIC;
    \lap_csec_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \lap_csec_reg[5]_0\ : in STD_LOGIC;
    \lap_csec_reg[6]_0\ : in STD_LOGIC;
    \lap_csec_reg[6]_1\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ff_cur_reg_0\ : STD_LOGIC;
  signal \^ff_cur_reg_1\ : STD_LOGIC;
  signal \^ff_old_reg_0\ : STD_LOGIC;
  signal \lap_csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_4_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_6_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_4_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk1[19]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_sysclk2[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_sysclk2[19]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_sysclk2[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \csec[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lap_csec[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lap_csec[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_csec[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lap_min[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lap_min[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lap_min[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_min[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_min[5]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \lap_sec[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lap_sec[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lap_sec[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lap_sec[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sec[5]_i_1\ : label is "soft_lutpair0";
begin
  AR(0) <= \^ar\(0);
  ff_cur_reg_0 <= \^ff_cur_reg_0\;
  ff_cur_reg_1 <= \^ff_cur_reg_1\;
  ff_old_reg_0 <= \^ff_old_reg_0\;
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\cnt_sysclk1[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      I2 => \cnt_sysclk2_reg[19]\,
      O => ff_cur_reg_5(0)
    );
\cnt_sysclk2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004044"
    )
        port map (
      I0 => \cnt_sysclk2_reg[0]\(0),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(0)
    );
\cnt_sysclk2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(9),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(10)
    );
\cnt_sysclk2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(10),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(11)
    );
\cnt_sysclk2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(11),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(12)
    );
\cnt_sysclk2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(12),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(13)
    );
\cnt_sysclk2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(13),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(14)
    );
\cnt_sysclk2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(14),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(15)
    );
\cnt_sysclk2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(15),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(16)
    );
\cnt_sysclk2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(16),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(17)
    );
\cnt_sysclk2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(17),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(18)
    );
\cnt_sysclk2[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      I2 => \cnt_sysclk2_reg[19]\,
      I3 => \cnt_sysclk2_reg[19]_0\,
      O => \^ff_cur_reg_1\
    );
\cnt_sysclk2[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(18),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(19)
    );
\cnt_sysclk2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(0),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(1)
    );
\cnt_sysclk2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(1),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(2)
    );
\cnt_sysclk2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(2),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(3)
    );
\cnt_sysclk2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(3),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(4)
    );
\cnt_sysclk2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(4),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(5)
    );
\cnt_sysclk2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(5),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(6)
    );
\cnt_sysclk2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(6),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(7)
    );
\cnt_sysclk2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(7),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(8)
    );
\cnt_sysclk2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008088"
    )
        port map (
      I0 => cnt_sysclk20(8),
      I1 => \cnt_sysclk2_reg[19]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]\,
      O => D(9)
    );
\csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA08"
    )
        port map (
      I0 => \csec_reg[0]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \cnt_sysclk2_reg[19]\,
      O => ff_cur_reg_6(0)
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => Q(0),
      Q => \^ff_cur_reg_0\
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \^ff_cur_reg_0\,
      Q => \^ff_old_reg_0\
    );
\lap_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \cnt_sysclk2_reg[19]_0\,
      O => ff_old_reg_2(0)
    );
\lap_csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]\(0),
      O => \lap_csec_reg[5]\(0)
    );
\lap_csec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]\(1),
      I2 => \lap_csec_reg[6]\(0),
      O => \lap_csec_reg[5]\(1)
    );
\lap_csec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]\(0),
      I2 => \lap_csec_reg[6]\(1),
      I3 => \lap_csec_reg[6]\(2),
      O => \lap_csec_reg[5]\(2)
    );
\lap_csec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]\(1),
      I2 => \lap_csec_reg[6]\(0),
      I3 => \lap_csec_reg[6]\(2),
      I4 => \lap_csec_reg[6]\(3),
      O => \lap_csec_reg[5]\(3)
    );
\lap_csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]\(2),
      I2 => \lap_csec_reg[6]\(0),
      I3 => \lap_csec_reg[6]\(1),
      I4 => \lap_csec_reg[6]\(3),
      I5 => \lap_csec_reg[6]\(4),
      O => \lap_csec_reg[5]\(4)
    );
\lap_csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]\(3),
      I2 => \lap_csec_reg[5]_0\,
      I3 => \lap_csec_reg[6]\(2),
      I4 => \lap_csec_reg[6]\(4),
      I5 => \lap_csec_reg[6]\(5),
      O => \lap_csec_reg[5]\(5)
    );
\lap_csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88A8"
    )
        port map (
      I0 => \^ff_cur_reg_1\,
      I1 => \lap_min_reg[0]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => ff_cur_reg_4(0)
    );
\lap_csec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]\(5),
      I2 => \lap_csec_reg[6]_0\,
      I3 => \lap_csec_reg[6]\(6),
      O => \lap_csec_reg[5]\(6)
    );
\lap_csec[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAA00002AAA"
    )
        port map (
      I0 => \cnt_sysclk2_reg[19]\,
      I1 => \lap_csec_reg[6]_1\,
      I2 => \lap_csec_reg[6]\(5),
      I3 => \lap_csec_reg[6]\(6),
      I4 => \^ff_cur_reg_0\,
      I5 => \^ff_old_reg_0\,
      O => \lap_csec[6]_i_3_n_0\
    );
\lap_min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_min[5]_i_4_n_0\,
      I1 => \lap_min_reg[5]\(0),
      O => \lap_min_reg[3]\(0)
    );
\lap_min[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_min[5]_i_4_n_0\,
      I1 => \lap_min_reg[5]\(1),
      I2 => \lap_min_reg[5]\(0),
      O => \lap_min_reg[3]\(1)
    );
\lap_min[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_min[5]_i_4_n_0\,
      I1 => \lap_min_reg[5]\(0),
      I2 => \lap_min_reg[5]\(1),
      I3 => \lap_min_reg[5]\(2),
      O => \lap_min_reg[3]\(2)
    );
\lap_min[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_min[5]_i_4_n_0\,
      I1 => \lap_min_reg[5]\(1),
      I2 => \lap_min_reg[5]\(0),
      I3 => \lap_min_reg[5]\(2),
      I4 => \lap_min_reg[5]\(3),
      O => \lap_min_reg[3]\(3)
    );
\lap_min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_min[5]_i_4_n_0\,
      I1 => \lap_min_reg[5]\(2),
      I2 => \lap_min_reg[5]\(0),
      I3 => \lap_min_reg[5]\(1),
      I4 => \lap_min_reg[5]\(3),
      I5 => \lap_min_reg[5]\(4),
      O => \lap_min_reg[3]\(4)
    );
\lap_min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800088888000"
    )
        port map (
      I0 => \lap_sec[5]_i_3_n_0\,
      I1 => \^ff_cur_reg_1\,
      I2 => \lap_min_reg[0]\,
      I3 => \lap_min_reg[0]_0\,
      I4 => \^ff_cur_reg_0\,
      I5 => \^ff_old_reg_0\,
      O => ff_cur_reg_3(0)
    );
\lap_min[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA8000"
    )
        port map (
      I0 => \lap_min[5]_i_4_n_0\,
      I1 => \lap_min_reg[5]_0\,
      I2 => \lap_min_reg[5]\(3),
      I3 => \lap_min_reg[5]\(4),
      I4 => \lap_min_reg[5]\(5),
      O => \lap_min_reg[3]\(5)
    );
\lap_min[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAA2AAAAAAA"
    )
        port map (
      I0 => \lap_min[5]_i_6_n_0\,
      I1 => \lap_min_reg[5]\(3),
      I2 => \lap_min_reg[5]\(4),
      I3 => \lap_min_reg[5]\(5),
      I4 => \lap_min_reg[5]\(2),
      I5 => \lap_min_reg[5]_1\,
      O => \lap_min[5]_i_4_n_0\
    );
\lap_min[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \cnt_sysclk2_reg[19]\,
      I1 => \^ff_old_reg_0\,
      I2 => \^ff_cur_reg_0\,
      O => \lap_min[5]_i_6_n_0\
    );
\lap_sec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \lap_sec_reg[5]\(0),
      O => \lap_sec_reg[3]\(0)
    );
\lap_sec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \lap_sec_reg[5]\(1),
      I2 => \lap_sec_reg[5]\(0),
      O => \lap_sec_reg[3]\(1)
    );
\lap_sec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \lap_sec_reg[5]\(0),
      I2 => \lap_sec_reg[5]\(1),
      I3 => \lap_sec_reg[5]\(2),
      O => \lap_sec_reg[3]\(2)
    );
\lap_sec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \lap_sec_reg[5]\(1),
      I2 => \lap_sec_reg[5]\(0),
      I3 => \lap_sec_reg[5]\(2),
      I4 => \lap_sec_reg[5]\(3),
      O => \lap_sec_reg[3]\(3)
    );
\lap_sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888888888888888"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \lap_sec_reg[5]\(4),
      I2 => \lap_sec_reg[5]\(2),
      I3 => \lap_sec_reg[5]\(0),
      I4 => \lap_sec_reg[5]\(1),
      I5 => \lap_sec_reg[5]\(3),
      O => \lap_sec_reg[3]\(4)
    );
\lap_sec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4000000"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \lap_min_reg[0]\,
      I3 => \^ff_cur_reg_1\,
      I4 => \lap_sec[5]_i_3_n_0\,
      O => ff_old_reg_1(0)
    );
\lap_sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA80000000"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \lap_sec_reg[5]\(3),
      I2 => \lap_sec_reg[5]_0\,
      I3 => \lap_sec_reg[5]\(2),
      I4 => \lap_sec_reg[5]\(4),
      I5 => \lap_sec_reg[5]\(5),
      O => \lap_sec_reg[3]\(5)
    );
\lap_sec[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4444444"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \lap_csec_reg[6]\(6),
      I3 => \lap_csec_reg[6]\(5),
      I4 => \lap_csec_reg[6]_1\,
      O => \lap_sec[5]_i_3_n_0\
    );
\lap_sec[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      I2 => \cnt_sysclk2_reg[19]\,
      I3 => \lap_min_reg[0]_0\,
      O => \lap_sec[5]_i_4_n_0\
    );
\min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AA08"
    )
        port map (
      I0 => \csec_reg[0]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \cnt_sysclk2_reg[19]\,
      I4 => \sec_reg[0]\,
      I5 => \min_reg[0]\,
      O => ff_cur_reg_2(0)
    );
\prev_min[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D005D5D"
    )
        port map (
      I0 => Q(1),
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \prev_csec_reg[0]\,
      I4 => \prev_csec_reg[0]_0\,
      O => \slv_reg0_reg[2]\(0)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA08"
    )
        port map (
      I0 => \csec_reg[0]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \cnt_sysclk2_reg[19]\,
      I4 => \sec_reg[0]\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  port (
    ff_cur_reg_0 : out STD_LOGIC;
    ff_old_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_count_reg[1]\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \diff_csec_reg[0]\ : in STD_LOGIC;
    \diff_csec_reg[0]_0\ : in STD_LOGIC;
    \lap_count_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \lap_count_reg[0]_0\ : in STD_LOGIC;
    \lap_count_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  signal \^ff_cur_reg_0\ : STD_LOGIC;
  signal \^ff_old_reg_0\ : STD_LOGIC;
  signal \^lap_count_reg[1]\ : STD_LOGIC;
  signal start_p : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lap_count[7]_i_5\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmp_min[5]_i_1\ : label is "soft_lutpair11";
begin
  ff_cur_reg_0 <= \^ff_cur_reg_0\;
  ff_old_reg_0 <= \^ff_old_reg_0\;
  \lap_count_reg[1]\ <= \^lap_count_reg[1]\;
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => \^ff_cur_reg_0\
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^ff_cur_reg_0\,
      Q => \^ff_old_reg_0\
    );
\lap_count[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \^lap_count_reg[1]\,
      I1 => \lap_count_reg[0]\(0),
      I2 => \lap_count_reg[0]_0\,
      O => D(0)
    );
\lap_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => start_p,
      I1 => \lap_count_reg[0]\(1),
      I2 => \lap_count_reg[0]\(0),
      I3 => \lap_count_reg[0]\(3),
      I4 => \lap_count_reg[0]\(2),
      I5 => \lap_count_reg[0]_1\,
      O => \^lap_count_reg[1]\
    );
\lap_count[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      O => start_p
    );
\tmp_min[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D000D0D0"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      I2 => Q(1),
      I3 => \diff_csec_reg[0]\,
      I4 => \diff_csec_reg[0]_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  port (
    ff_cur_reg : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg : out STD_LOGIC;
    ff_cur_reg_0 : out STD_LOGIC;
    ff_old_reg_0 : out STD_LOGIC;
    run_reg_0 : out STD_LOGIC;
    lap_flag : out STD_LOGIC;
    sign_flag : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_count_reg[1]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 27 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    run_reg_1 : in STD_LOGIC;
    lap_flag_reg_0 : in STD_LOGIC;
    sign_flag_reg_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    \s00_axi_rdata[31]\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s00_axi_rdata[30]\ : in STD_LOGIC;
    \s00_axi_rdata[29]\ : in STD_LOGIC;
    \s00_axi_rdata[28]\ : in STD_LOGIC;
    s00_axi_rdata_27_sp_1 : in STD_LOGIC;
    s00_axi_rdata_26_sp_1 : in STD_LOGIC;
    s00_axi_rdata_25_sp_1 : in STD_LOGIC;
    s00_axi_rdata_24_sp_1 : in STD_LOGIC;
    s00_axi_rdata_21_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[20]\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \s00_axi_rdata[20]_0\ : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \s00_axi_rdata[20]_1\ : in STD_LOGIC_VECTOR ( 18 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal abs_diff : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal calc_diff_csec : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \calc_diff_csec__105_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_n_4\ : STD_LOGIC;
  signal \calc_diff_csec__105_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_11_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_12_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_10_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_11_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_12_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_i_9_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_n_1\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_n_4\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__2_n_5\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_10_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_11_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_i_9_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_n_1\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_n_4\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_n_5\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_n_6\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry__3_n_7\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__55_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_n_6\ : STD_LOGIC;
  signal \calc_diff_csec__99_carry_n_7\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_csec_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_4\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_5\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_6\ : STD_LOGIC;
  signal \calc_diff_csec_carry__1_n_7\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_1\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_2\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_3\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_4\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_5\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_6\ : STD_LOGIC;
  signal \calc_diff_csec_carry__2_n_7\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_0\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_1\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_2\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_3\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_4\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_5\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_6\ : STD_LOGIC;
  signal \calc_diff_csec_carry__3_n_7\ : STD_LOGIC;
  signal \calc_diff_csec_carry__4_n_7\ : STD_LOGIC;
  signal calc_diff_csec_carry_i_1_n_0 : STD_LOGIC;
  signal calc_diff_csec_carry_i_2_n_0 : STD_LOGIC;
  signal calc_diff_csec_carry_i_3_n_0 : STD_LOGIC;
  signal calc_diff_csec_carry_n_0 : STD_LOGIC;
  signal calc_diff_csec_carry_n_1 : STD_LOGIC;
  signal calc_diff_csec_carry_n_2 : STD_LOGIC;
  signal calc_diff_csec_carry_n_3 : STD_LOGIC;
  signal calc_diff_csec_carry_n_4 : STD_LOGIC;
  signal calc_diff_csec_carry_n_5 : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_min0_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_min0_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_n_0\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_n_1\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_n_2\ : STD_LOGIC;
  signal \calc_diff_min0_carry__2_n_3\ : STD_LOGIC;
  signal \calc_diff_min0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal calc_diff_min0_carry_i_1_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_i_2_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_i_3_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_i_4_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_i_5_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_i_6_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_i_7_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_i_8_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_n_0 : STD_LOGIC;
  signal calc_diff_min0_carry_n_1 : STD_LOGIC;
  signal calc_diff_min0_carry_n_2 : STD_LOGIC;
  signal calc_diff_min0_carry_n_3 : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_min__23_carry__1_n_7\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_4\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_6\ : STD_LOGIC;
  signal \calc_diff_min__23_carry_n_7\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry__1_n_7\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_4\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_6\ : STD_LOGIC;
  signal \calc_diff_min__46_carry_n_7\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_min__71_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_min__71_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_min_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_min_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_n_1\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_n_2\ : STD_LOGIC;
  signal \calc_diff_min_carry__2_n_3\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_0\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_1\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_2\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_3\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_4\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_5\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_6\ : STD_LOGIC;
  signal \calc_diff_min_carry__3_n_7\ : STD_LOGIC;
  signal calc_diff_min_carry_i_1_n_0 : STD_LOGIC;
  signal calc_diff_min_carry_i_2_n_0 : STD_LOGIC;
  signal calc_diff_min_carry_i_3_n_0 : STD_LOGIC;
  signal calc_diff_min_carry_n_0 : STD_LOGIC;
  signal calc_diff_min_carry_n_1 : STD_LOGIC;
  signal calc_diff_min_carry_n_2 : STD_LOGIC;
  signal calc_diff_min_carry_n_3 : STD_LOGIC;
  signal calc_diff_sec0 : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal \calc_diff_sec0__106_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry__1_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__106_carry_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry__1_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__23_carry_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_i_8_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry__1_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__45_carry_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__1_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__2_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__2_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry__2_n_7\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0__70_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__2_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_1\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_2\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_3\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_4\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_5\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_6\ : STD_LOGIC;
  signal \calc_diff_sec0_carry__3_n_7\ : STD_LOGIC;
  signal calc_diff_sec0_carry_i_1_n_0 : STD_LOGIC;
  signal calc_diff_sec0_carry_i_2_n_0 : STD_LOGIC;
  signal calc_diff_sec0_carry_i_3_n_0 : STD_LOGIC;
  signal calc_diff_sec0_carry_n_0 : STD_LOGIC;
  signal calc_diff_sec0_carry_n_1 : STD_LOGIC;
  signal calc_diff_sec0_carry_n_2 : STD_LOGIC;
  signal calc_diff_sec0_carry_n_3 : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_n_4\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__1_n_5\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_4\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_5\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_6\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry__2_n_7\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__1_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_n_4\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_n_5\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_n_6\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry__0_n_7\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_4\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_5\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_6\ : STD_LOGIC;
  signal \calc_diff_sec__38_carry_n_7\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__0_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__1_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry__1_n_3\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_1_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_2_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_3_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_4_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_5_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_6_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_7_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_i_8_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_n_0\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_n_1\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_n_2\ : STD_LOGIC;
  signal \calc_diff_sec__59_carry_n_3\ : STD_LOGIC;
  signal cnt_sysclk1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cnt_sysclk10 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \cnt_sysclk10_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__3_n_3\ : STD_LOGIC;
  signal cnt_sysclk10_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk10_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk10_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk10_carry_n_3 : STD_LOGIC;
  signal \cnt_sysclk1[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[13]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[14]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[17]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[18]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[9]_i_1_n_0\ : STD_LOGIC;
  signal cnt_sysclk2 : STD_LOGIC;
  signal cnt_sysclk20 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \cnt_sysclk20_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__3_n_3\ : STD_LOGIC;
  signal cnt_sysclk20_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk20_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk20_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk20_carry_n_3 : STD_LOGIC;
  signal \cnt_sysclk2[19]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2[19]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2[19]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2[19]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_sysclk2_reg_n_0_[9]\ : STD_LOGIC;
  signal csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \csec[0]_i_1_n_0\ : STD_LOGIC;
  signal \csec[1]_i_1_n_0\ : STD_LOGIC;
  signal \csec[2]_i_1_n_0\ : STD_LOGIC;
  signal \csec[3]_i_1_n_0\ : STD_LOGIC;
  signal \csec[4]_i_1_n_0\ : STD_LOGIC;
  signal \csec[5]_i_1_n_0\ : STD_LOGIC;
  signal \csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \csec[6]_i_2_n_0\ : STD_LOGIC;
  signal \csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \csec[6]_i_4_n_0\ : STD_LOGIC;
  signal \csec[6]_i_5_n_0\ : STD_LOGIC;
  signal diff_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \diff_csec[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_2_n_0\ : STD_LOGIC;
  signal diff_min : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \diff_min[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_2_n_0\ : STD_LOGIC;
  signal \diff_min[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[4]_i_3_n_0\ : STD_LOGIC;
  signal \diff_min_reg[4]_i_4_n_3\ : STD_LOGIC;
  signal diff_sec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \diff_sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[6]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[6]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[6]_i_3_n_3\ : STD_LOGIC;
  signal ed_clear_n_12 : STD_LOGIC;
  signal ed_clear_n_13 : STD_LOGIC;
  signal ed_clear_n_14 : STD_LOGIC;
  signal ed_clear_n_15 : STD_LOGIC;
  signal ed_clear_n_16 : STD_LOGIC;
  signal ed_clear_n_17 : STD_LOGIC;
  signal ed_clear_n_18 : STD_LOGIC;
  signal ed_clear_n_19 : STD_LOGIC;
  signal ed_clear_n_20 : STD_LOGIC;
  signal ed_clear_n_21 : STD_LOGIC;
  signal ed_clear_n_22 : STD_LOGIC;
  signal ed_clear_n_23 : STD_LOGIC;
  signal ed_clear_n_24 : STD_LOGIC;
  signal ed_clear_n_25 : STD_LOGIC;
  signal ed_clear_n_26 : STD_LOGIC;
  signal ed_clear_n_27 : STD_LOGIC;
  signal ed_clear_n_28 : STD_LOGIC;
  signal ed_clear_n_29 : STD_LOGIC;
  signal ed_clear_n_3 : STD_LOGIC;
  signal ed_clear_n_30 : STD_LOGIC;
  signal ed_clear_n_31 : STD_LOGIC;
  signal ed_clear_n_32 : STD_LOGIC;
  signal ed_clear_n_33 : STD_LOGIC;
  signal ed_clear_n_34 : STD_LOGIC;
  signal ed_clear_n_35 : STD_LOGIC;
  signal ed_clear_n_36 : STD_LOGIC;
  signal ed_clear_n_37 : STD_LOGIC;
  signal ed_clear_n_38 : STD_LOGIC;
  signal ed_clear_n_39 : STD_LOGIC;
  signal ed_clear_n_4 : STD_LOGIC;
  signal ed_clear_n_40 : STD_LOGIC;
  signal ed_clear_n_41 : STD_LOGIC;
  signal ed_clear_n_42 : STD_LOGIC;
  signal ed_clear_n_43 : STD_LOGIC;
  signal ed_clear_n_44 : STD_LOGIC;
  signal ed_clear_n_45 : STD_LOGIC;
  signal ed_clear_n_46 : STD_LOGIC;
  signal ed_clear_n_47 : STD_LOGIC;
  signal ed_clear_n_48 : STD_LOGIC;
  signal ed_clear_n_49 : STD_LOGIC;
  signal ed_clear_n_5 : STD_LOGIC;
  signal ed_clear_n_50 : STD_LOGIC;
  signal ed_clear_n_51 : STD_LOGIC;
  signal ed_clear_n_6 : STD_LOGIC;
  signal ed_clear_n_7 : STD_LOGIC;
  signal ed_clear_n_8 : STD_LOGIC;
  signal ed_clear_n_9 : STD_LOGIC;
  signal ed_start_n_3 : STD_LOGIC;
  signal ed_start_n_4 : STD_LOGIC;
  signal \^ff_cur_reg\ : STD_LOGIC;
  signal \^ff_cur_reg_0\ : STD_LOGIC;
  signal \^ff_old_reg\ : STD_LOGIC;
  signal \^ff_old_reg_0\ : STD_LOGIC;
  signal lap_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lap_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \lap_count[2]_i_1_n_0\ : STD_LOGIC;
  signal \lap_count[3]_i_1_n_0\ : STD_LOGIC;
  signal \lap_count[4]_i_1_n_0\ : STD_LOGIC;
  signal \lap_count[5]_i_1_n_0\ : STD_LOGIC;
  signal \lap_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \lap_count[6]_i_1_n_0\ : STD_LOGIC;
  signal \lap_count[7]_i_2_n_0\ : STD_LOGIC;
  signal \lap_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \lap_count[7]_i_6_n_0\ : STD_LOGIC;
  signal \^lap_count_reg[1]_0\ : STD_LOGIC;
  signal lap_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \lap_csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \lap_csec[6]_i_4_n_0\ : STD_LOGIC;
  signal \lap_csec[6]_i_5_n_0\ : STD_LOGIC;
  signal \^lap_flag\ : STD_LOGIC;
  signal lap_min : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \lap_min[5]_i_3_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_5_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_7_n_0\ : STD_LOGIC;
  signal lap_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \lap_sec[5]_i_5_n_0\ : STD_LOGIC;
  signal min : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \min[0]_i_1_n_0\ : STD_LOGIC;
  signal \min[1]_i_1_n_0\ : STD_LOGIC;
  signal \min[2]_i_1_n_0\ : STD_LOGIC;
  signal \min[3]_i_1_n_0\ : STD_LOGIC;
  signal \min[4]_i_1_n_0\ : STD_LOGIC;
  signal \min[4]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_3_n_0\ : STD_LOGIC;
  signal prev_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal prev_min : STD_LOGIC;
  signal \prev_min_reg_n_0_[0]\ : STD_LOGIC;
  signal \prev_min_reg_n_0_[1]\ : STD_LOGIC;
  signal \prev_min_reg_n_0_[2]\ : STD_LOGIC;
  signal \prev_min_reg_n_0_[3]\ : STD_LOGIC;
  signal \prev_min_reg_n_0_[4]\ : STD_LOGIC;
  signal \prev_min_reg_n_0_[5]\ : STD_LOGIC;
  signal prev_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^run_reg_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_21_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_24_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_25_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_26_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_27_sn_1 : STD_LOGIC;
  signal sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \sec[4]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_10_n_1\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_10_n_2\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_10_n_3\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_11_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_11_n_1\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_11_n_2\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_11_n_3\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_12_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_12_n_1\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_12_n_2\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_12_n_3\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_9_n_1\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_9_n_2\ : STD_LOGIC;
  signal \sign_calc1_carry__0_i_9_n_3\ : STD_LOGIC;
  signal \sign_calc1_carry__0_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__0_n_1\ : STD_LOGIC;
  signal \sign_calc1_carry__0_n_2\ : STD_LOGIC;
  signal \sign_calc1_carry__0_n_3\ : STD_LOGIC;
  signal \sign_calc1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \sign_calc1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal sign_calc1_carry_i_10_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_10_n_1 : STD_LOGIC;
  signal sign_calc1_carry_i_10_n_2 : STD_LOGIC;
  signal sign_calc1_carry_i_10_n_3 : STD_LOGIC;
  signal sign_calc1_carry_i_11_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_11_n_1 : STD_LOGIC;
  signal sign_calc1_carry_i_11_n_2 : STD_LOGIC;
  signal sign_calc1_carry_i_11_n_3 : STD_LOGIC;
  signal sign_calc1_carry_i_12_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_12_n_1 : STD_LOGIC;
  signal sign_calc1_carry_i_12_n_2 : STD_LOGIC;
  signal sign_calc1_carry_i_12_n_3 : STD_LOGIC;
  signal sign_calc1_carry_i_13_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_14_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_15_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_16_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_17_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_18_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_19_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_1_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_20_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_21_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_22_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_23_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_24_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_25_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_26_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_2_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_3_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_4_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_5_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_6_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_7_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_8_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_9_n_0 : STD_LOGIC;
  signal sign_calc1_carry_i_9_n_1 : STD_LOGIC;
  signal sign_calc1_carry_i_9_n_2 : STD_LOGIC;
  signal sign_calc1_carry_i_9_n_3 : STD_LOGIC;
  signal sign_calc1_carry_n_0 : STD_LOGIC;
  signal sign_calc1_carry_n_1 : STD_LOGIC;
  signal sign_calc1_carry_n_2 : STD_LOGIC;
  signal sign_calc1_carry_n_3 : STD_LOGIC;
  signal \^sign_flag\ : STD_LOGIC;
  signal tmp_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \tmp_min_reg_n_0_[0]\ : STD_LOGIC;
  signal \tmp_min_reg_n_0_[1]\ : STD_LOGIC;
  signal \tmp_min_reg_n_0_[2]\ : STD_LOGIC;
  signal \tmp_min_reg_n_0_[3]\ : STD_LOGIC;
  signal \tmp_min_reg_n_0_[4]\ : STD_LOGIC;
  signal \tmp_min_reg_n_0_[5]\ : STD_LOGIC;
  signal tmp_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal total_prev1_n_100 : STD_LOGIC;
  signal total_prev1_n_101 : STD_LOGIC;
  signal total_prev1_n_102 : STD_LOGIC;
  signal total_prev1_n_103 : STD_LOGIC;
  signal total_prev1_n_104 : STD_LOGIC;
  signal total_prev1_n_105 : STD_LOGIC;
  signal total_prev1_n_106 : STD_LOGIC;
  signal total_prev1_n_107 : STD_LOGIC;
  signal total_prev1_n_108 : STD_LOGIC;
  signal total_prev1_n_109 : STD_LOGIC;
  signal total_prev1_n_110 : STD_LOGIC;
  signal total_prev1_n_111 : STD_LOGIC;
  signal total_prev1_n_112 : STD_LOGIC;
  signal total_prev1_n_113 : STD_LOGIC;
  signal total_prev1_n_114 : STD_LOGIC;
  signal total_prev1_n_115 : STD_LOGIC;
  signal total_prev1_n_116 : STD_LOGIC;
  signal total_prev1_n_117 : STD_LOGIC;
  signal total_prev1_n_118 : STD_LOGIC;
  signal total_prev1_n_119 : STD_LOGIC;
  signal total_prev1_n_120 : STD_LOGIC;
  signal total_prev1_n_121 : STD_LOGIC;
  signal total_prev1_n_122 : STD_LOGIC;
  signal total_prev1_n_123 : STD_LOGIC;
  signal total_prev1_n_124 : STD_LOGIC;
  signal total_prev1_n_125 : STD_LOGIC;
  signal total_prev1_n_126 : STD_LOGIC;
  signal total_prev1_n_127 : STD_LOGIC;
  signal total_prev1_n_128 : STD_LOGIC;
  signal total_prev1_n_129 : STD_LOGIC;
  signal total_prev1_n_130 : STD_LOGIC;
  signal total_prev1_n_131 : STD_LOGIC;
  signal total_prev1_n_132 : STD_LOGIC;
  signal total_prev1_n_133 : STD_LOGIC;
  signal total_prev1_n_134 : STD_LOGIC;
  signal total_prev1_n_135 : STD_LOGIC;
  signal total_prev1_n_136 : STD_LOGIC;
  signal total_prev1_n_137 : STD_LOGIC;
  signal total_prev1_n_138 : STD_LOGIC;
  signal total_prev1_n_139 : STD_LOGIC;
  signal total_prev1_n_140 : STD_LOGIC;
  signal total_prev1_n_141 : STD_LOGIC;
  signal total_prev1_n_142 : STD_LOGIC;
  signal total_prev1_n_143 : STD_LOGIC;
  signal total_prev1_n_144 : STD_LOGIC;
  signal total_prev1_n_145 : STD_LOGIC;
  signal total_prev1_n_146 : STD_LOGIC;
  signal total_prev1_n_147 : STD_LOGIC;
  signal total_prev1_n_148 : STD_LOGIC;
  signal total_prev1_n_149 : STD_LOGIC;
  signal total_prev1_n_150 : STD_LOGIC;
  signal total_prev1_n_151 : STD_LOGIC;
  signal total_prev1_n_152 : STD_LOGIC;
  signal total_prev1_n_153 : STD_LOGIC;
  signal total_prev1_n_91 : STD_LOGIC;
  signal total_prev1_n_92 : STD_LOGIC;
  signal total_prev1_n_93 : STD_LOGIC;
  signal total_prev1_n_94 : STD_LOGIC;
  signal total_prev1_n_95 : STD_LOGIC;
  signal total_prev1_n_96 : STD_LOGIC;
  signal total_prev1_n_97 : STD_LOGIC;
  signal total_prev1_n_98 : STD_LOGIC;
  signal total_prev1_n_99 : STD_LOGIC;
  signal \total_prev__0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal total_prev_n_100 : STD_LOGIC;
  signal total_prev_n_101 : STD_LOGIC;
  signal total_prev_n_102 : STD_LOGIC;
  signal total_prev_n_103 : STD_LOGIC;
  signal total_prev_n_104 : STD_LOGIC;
  signal total_prev_n_105 : STD_LOGIC;
  signal total_prev_n_89 : STD_LOGIC;
  signal total_prev_n_90 : STD_LOGIC;
  signal total_prev_n_91 : STD_LOGIC;
  signal total_prev_n_92 : STD_LOGIC;
  signal total_prev_n_93 : STD_LOGIC;
  signal total_prev_n_94 : STD_LOGIC;
  signal total_prev_n_95 : STD_LOGIC;
  signal total_prev_n_96 : STD_LOGIC;
  signal total_prev_n_97 : STD_LOGIC;
  signal total_prev_n_98 : STD_LOGIC;
  signal total_prev_n_99 : STD_LOGIC;
  signal total_tmp1_n_100 : STD_LOGIC;
  signal total_tmp1_n_101 : STD_LOGIC;
  signal total_tmp1_n_102 : STD_LOGIC;
  signal total_tmp1_n_103 : STD_LOGIC;
  signal total_tmp1_n_104 : STD_LOGIC;
  signal total_tmp1_n_105 : STD_LOGIC;
  signal total_tmp1_n_106 : STD_LOGIC;
  signal total_tmp1_n_107 : STD_LOGIC;
  signal total_tmp1_n_108 : STD_LOGIC;
  signal total_tmp1_n_109 : STD_LOGIC;
  signal total_tmp1_n_110 : STD_LOGIC;
  signal total_tmp1_n_111 : STD_LOGIC;
  signal total_tmp1_n_112 : STD_LOGIC;
  signal total_tmp1_n_113 : STD_LOGIC;
  signal total_tmp1_n_114 : STD_LOGIC;
  signal total_tmp1_n_115 : STD_LOGIC;
  signal total_tmp1_n_116 : STD_LOGIC;
  signal total_tmp1_n_117 : STD_LOGIC;
  signal total_tmp1_n_118 : STD_LOGIC;
  signal total_tmp1_n_119 : STD_LOGIC;
  signal total_tmp1_n_120 : STD_LOGIC;
  signal total_tmp1_n_121 : STD_LOGIC;
  signal total_tmp1_n_122 : STD_LOGIC;
  signal total_tmp1_n_123 : STD_LOGIC;
  signal total_tmp1_n_124 : STD_LOGIC;
  signal total_tmp1_n_125 : STD_LOGIC;
  signal total_tmp1_n_126 : STD_LOGIC;
  signal total_tmp1_n_127 : STD_LOGIC;
  signal total_tmp1_n_128 : STD_LOGIC;
  signal total_tmp1_n_129 : STD_LOGIC;
  signal total_tmp1_n_130 : STD_LOGIC;
  signal total_tmp1_n_131 : STD_LOGIC;
  signal total_tmp1_n_132 : STD_LOGIC;
  signal total_tmp1_n_133 : STD_LOGIC;
  signal total_tmp1_n_134 : STD_LOGIC;
  signal total_tmp1_n_135 : STD_LOGIC;
  signal total_tmp1_n_136 : STD_LOGIC;
  signal total_tmp1_n_137 : STD_LOGIC;
  signal total_tmp1_n_138 : STD_LOGIC;
  signal total_tmp1_n_139 : STD_LOGIC;
  signal total_tmp1_n_140 : STD_LOGIC;
  signal total_tmp1_n_141 : STD_LOGIC;
  signal total_tmp1_n_142 : STD_LOGIC;
  signal total_tmp1_n_143 : STD_LOGIC;
  signal total_tmp1_n_144 : STD_LOGIC;
  signal total_tmp1_n_145 : STD_LOGIC;
  signal total_tmp1_n_146 : STD_LOGIC;
  signal total_tmp1_n_147 : STD_LOGIC;
  signal total_tmp1_n_148 : STD_LOGIC;
  signal total_tmp1_n_149 : STD_LOGIC;
  signal total_tmp1_n_150 : STD_LOGIC;
  signal total_tmp1_n_151 : STD_LOGIC;
  signal total_tmp1_n_152 : STD_LOGIC;
  signal total_tmp1_n_153 : STD_LOGIC;
  signal total_tmp1_n_91 : STD_LOGIC;
  signal total_tmp1_n_92 : STD_LOGIC;
  signal total_tmp1_n_93 : STD_LOGIC;
  signal total_tmp1_n_94 : STD_LOGIC;
  signal total_tmp1_n_95 : STD_LOGIC;
  signal total_tmp1_n_96 : STD_LOGIC;
  signal total_tmp1_n_97 : STD_LOGIC;
  signal total_tmp1_n_98 : STD_LOGIC;
  signal total_tmp1_n_99 : STD_LOGIC;
  signal \total_tmp__0\ : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal total_tmp_n_100 : STD_LOGIC;
  signal total_tmp_n_101 : STD_LOGIC;
  signal total_tmp_n_102 : STD_LOGIC;
  signal total_tmp_n_103 : STD_LOGIC;
  signal total_tmp_n_104 : STD_LOGIC;
  signal total_tmp_n_105 : STD_LOGIC;
  signal total_tmp_n_89 : STD_LOGIC;
  signal total_tmp_n_90 : STD_LOGIC;
  signal total_tmp_n_91 : STD_LOGIC;
  signal total_tmp_n_92 : STD_LOGIC;
  signal total_tmp_n_93 : STD_LOGIC;
  signal total_tmp_n_94 : STD_LOGIC;
  signal total_tmp_n_95 : STD_LOGIC;
  signal total_tmp_n_96 : STD_LOGIC;
  signal total_tmp_n_97 : STD_LOGIC;
  signal total_tmp_n_98 : STD_LOGIC;
  signal total_tmp_n_99 : STD_LOGIC;
  signal \NLW_calc_diff_csec__105_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_calc_diff_csec__105_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_calc_diff_csec__55_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_csec__55_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_csec__55_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_csec__55_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_calc_diff_csec__55_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_calc_diff_csec__99_carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_calc_diff_csec__99_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_calc_diff_csec_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_calc_diff_csec_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_csec_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_min0_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min0_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_min__23_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min__23_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_min__46_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min__46_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_min__71_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min__71_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min__71_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_calc_diff_min_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_min_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec0__106_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_calc_diff_sec0__106_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_sec0__23_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec0__23_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_sec0__45_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_calc_diff_sec0__45_carry__0_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_sec0__45_carry__0_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec0__45_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_calc_diff_sec0__45_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_calc_diff_sec0__70_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_calc_diff_sec0__70_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_calc_diff_sec0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec__1_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec__1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec__1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_calc_diff_sec__38_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_calc_diff_sec__59_carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec__59_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_calc_diff_sec__59_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_calc_diff_sec__59_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk10_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk10_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_sysclk20_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk20_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_min_reg[4]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_diff_min_reg[4]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_diff_sec_reg[6]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_diff_sec_reg[6]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sign_calc1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sign_calc1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sign_calc1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sign_calc1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sign_calc1_carry__1_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sign_calc1_carry__1_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_sign_calc1_carry__1_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_sign_calc1_carry__1_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_total_prev_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_total_prev_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_total_prev_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_total_prev_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_total_prev_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_total_prev1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_total_prev1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_total_prev1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_total_prev1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 15 );
  signal NLW_total_tmp_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_total_tmp_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_total_tmp_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_total_tmp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 17 );
  signal NLW_total_tmp_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_total_tmp1_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp1_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp1_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp1_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp1_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp1_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_tmp1_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_total_tmp1_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_total_tmp1_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_total_tmp1_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 15 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \calc_diff_csec__105_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__105_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_csec__105_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__105_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__55_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__55_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__55_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__1_i_10\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__1_i_11\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__1_i_12\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__1_i_9\ : label is "soft_lutpair26";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__55_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__2_i_10\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__2_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__2_i_12\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__2_i_9\ : label is "soft_lutpair28";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__55_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__3_i_10\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__3_i_11\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__3_i_8\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \calc_diff_csec__55_carry__3_i_9\ : label is "soft_lutpair39";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec__99_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of calc_diff_csec_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_csec_carry__4\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of calc_diff_min0_carry : label is 35;
  attribute METHODOLOGY_DRC_VIOS of calc_diff_min0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_min0_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_min0_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_min0_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_min0_carry__3\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__23_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__23_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__23_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM : string;
  attribute HLUTNM of \calc_diff_min__23_carry_i_4\ : label is "lutpair12";
  attribute HLUTNM of \calc_diff_min__23_carry_i_5\ : label is "lutpair12";
  attribute ADDER_THRESHOLD of \calc_diff_min__46_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__46_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_min__46_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__46_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_min__46_carry__0_i_3\ : label is "lutpair15";
  attribute HLUTNM of \calc_diff_min__46_carry__0_i_4\ : label is "lutpair14";
  attribute HLUTNM of \calc_diff_min__46_carry__0_i_8\ : label is "lutpair15";
  attribute ADDER_THRESHOLD of \calc_diff_min__46_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__46_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_min__46_carry_i_3\ : label is "lutpair13";
  attribute HLUTNM of \calc_diff_min__46_carry_i_5\ : label is "lutpair14";
  attribute HLUTNM of \calc_diff_min__46_carry_i_8\ : label is "lutpair13";
  attribute ADDER_THRESHOLD of \calc_diff_min__71_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__71_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_min__71_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__71_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_min__71_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min__71_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_min__71_carry_i_2\ : label is "lutpair16";
  attribute HLUTNM of \calc_diff_min__71_carry_i_7\ : label is "lutpair16";
  attribute METHODOLOGY_DRC_VIOS of calc_diff_min_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_min_carry__0_i_1\ : label is "lutpair3";
  attribute HLUTNM of \calc_diff_min_carry__0_i_2\ : label is "lutpair2";
  attribute HLUTNM of \calc_diff_min_carry__0_i_3\ : label is "lutpair1";
  attribute HLUTNM of \calc_diff_min_carry__0_i_4\ : label is "lutpair0";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_min_carry__1_i_1\ : label is "lutpair7";
  attribute HLUTNM of \calc_diff_min_carry__1_i_2\ : label is "lutpair6";
  attribute HLUTNM of \calc_diff_min_carry__1_i_3\ : label is "lutpair5";
  attribute HLUTNM of \calc_diff_min_carry__1_i_4\ : label is "lutpair4";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_min_carry__2_i_1\ : label is "lutpair11";
  attribute HLUTNM of \calc_diff_min_carry__2_i_2\ : label is "lutpair10";
  attribute HLUTNM of \calc_diff_min_carry__2_i_3\ : label is "lutpair9";
  attribute HLUTNM of \calc_diff_min_carry__2_i_4\ : label is "lutpair8";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_min_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__106_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__106_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__106_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__23_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__23_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec0__23_carry__0_i_7\ : label is "lutpair17";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__23_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec0__23_carry_i_3\ : label is "lutpair17";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__45_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__45_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec0__45_carry__0_i_2\ : label is "lutpair18";
  attribute HLUTNM of \calc_diff_sec0__45_carry__0_i_3\ : label is "lutpair21";
  attribute HLUTNM of \calc_diff_sec0__45_carry__0_i_6\ : label is "lutpair18";
  attribute HLUTNM of \calc_diff_sec0__45_carry__0_i_7\ : label is "lutpair21";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__45_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec0__45_carry__1_i_1\ : label is "lutpair19";
  attribute HLUTNM of \calc_diff_sec0__45_carry__1_i_5\ : label is "lutpair19";
  attribute ADDER_THRESHOLD of \calc_diff_sec0__70_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__70_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_sec0__70_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__70_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_sec0__70_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__70_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_sec0__70_carry__2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0__70_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of calc_diff_sec0_carry : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec0_carry__0_i_1\ : label is "lutpair4";
  attribute HLUTNM of \calc_diff_sec0_carry__0_i_2\ : label is "lutpair3";
  attribute HLUTNM of \calc_diff_sec0_carry__0_i_3\ : label is "lutpair2";
  attribute HLUTNM of \calc_diff_sec0_carry__0_i_4\ : label is "lutpair1";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec0_carry__1_i_1\ : label is "lutpair8";
  attribute HLUTNM of \calc_diff_sec0_carry__1_i_2\ : label is "lutpair7";
  attribute HLUTNM of \calc_diff_sec0_carry__1_i_3\ : label is "lutpair6";
  attribute HLUTNM of \calc_diff_sec0_carry__1_i_4\ : label is "lutpair5";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec0_carry__2_i_2\ : label is "lutpair11";
  attribute HLUTNM of \calc_diff_sec0_carry__2_i_3\ : label is "lutpair10";
  attribute HLUTNM of \calc_diff_sec0_carry__2_i_4\ : label is "lutpair9";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec0_carry__3\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of calc_diff_sec0_carry_i_1 : label is "lutpair0";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__1_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__1_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \calc_diff_sec__1_carry__0_i_10\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \calc_diff_sec__1_carry__0_i_11\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \calc_diff_sec__1_carry__0_i_12\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \calc_diff_sec__1_carry__0_i_9\ : label is "soft_lutpair35";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__1_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \calc_diff_sec__1_carry__1_i_10\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \calc_diff_sec__1_carry__1_i_9\ : label is "soft_lutpair38";
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__1_carry__2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \calc_diff_sec__1_carry__2_i_8\ : label is "soft_lutpair38";
  attribute ADDER_THRESHOLD of \calc_diff_sec__38_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__38_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_sec__38_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__38_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute HLUTNM of \calc_diff_sec__38_carry_i_1\ : label is "lutpair20";
  attribute HLUTNM of \calc_diff_sec__38_carry_i_5\ : label is "lutpair20";
  attribute ADDER_THRESHOLD of \calc_diff_sec__59_carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__59_carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_sec__59_carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__59_carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \calc_diff_sec__59_carry__1\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \calc_diff_sec__59_carry__1\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of cnt_sysclk10_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \cnt_sysclk1[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt_sysclk1[10]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cnt_sysclk1[11]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cnt_sysclk1[12]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt_sysclk1[13]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt_sysclk1[14]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_sysclk1[15]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_sysclk1[16]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt_sysclk1[17]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt_sysclk1[18]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_sysclk1[19]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_sysclk1[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt_sysclk1[2]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cnt_sysclk1[3]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cnt_sysclk1[4]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt_sysclk1[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt_sysclk1[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt_sysclk1[7]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt_sysclk1[8]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt_sysclk1[9]_i_1\ : label is "soft_lutpair46";
  attribute ADDER_THRESHOLD of cnt_sysclk20_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__3\ : label is 35;
  attribute SOFT_HLUTNM of \csec[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \csec[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \csec[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \csec[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \csec[5]_i_2\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \csec[6]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \csec[6]_i_4\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \csec[6]_i_5\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \diff_csec[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \diff_csec[1]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \diff_min[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \diff_min[3]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \diff_min[4]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_2\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lap_count[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lap_count[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lap_count[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \lap_count[5]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \lap_count[6]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lap_count[7]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \lap_min[5]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \lap_min[5]_i_7\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \min[0]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \min[1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \min[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \min[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sec[0]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sec[1]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \sec[2]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \sec[3]_i_1\ : label is "soft_lutpair18";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sign_calc1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \sign_calc1_carry__0\ : label is 11;
  attribute ADDER_THRESHOLD of \sign_calc1_carry__0_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \sign_calc1_carry__0_i_11\ : label is 35;
  attribute ADDER_THRESHOLD of \sign_calc1_carry__0_i_12\ : label is 35;
  attribute ADDER_THRESHOLD of \sign_calc1_carry__0_i_9\ : label is 35;
  attribute COMPARATOR_THRESHOLD of \sign_calc1_carry__1\ : label is 11;
  attribute ADDER_THRESHOLD of \sign_calc1_carry__1_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \sign_calc1_carry__1_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of sign_calc1_carry_i_10 : label is 35;
  attribute ADDER_THRESHOLD of sign_calc1_carry_i_11 : label is 35;
  attribute ADDER_THRESHOLD of sign_calc1_carry_i_12 : label is 35;
  attribute ADDER_THRESHOLD of sign_calc1_carry_i_9 : label is 35;
  attribute METHODOLOGY_DRC_VIOS of total_prev : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of total_prev1 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of total_tmp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of total_tmp1 : label is "{SYNTH-13 {cell *THIS*}}";
begin
  CO(0) <= \^co\(0);
  E(0) <= \^e\(0);
  SR(0) <= \^sr\(0);
  ff_cur_reg <= \^ff_cur_reg\;
  ff_cur_reg_0 <= \^ff_cur_reg_0\;
  ff_old_reg <= \^ff_old_reg\;
  ff_old_reg_0 <= \^ff_old_reg_0\;
  \lap_count_reg[1]_0\ <= \^lap_count_reg[1]_0\;
  lap_flag <= \^lap_flag\;
  run_reg_0 <= \^run_reg_0\;
  s00_axi_rdata_21_sn_1 <= s00_axi_rdata_21_sp_1;
  s00_axi_rdata_24_sn_1 <= s00_axi_rdata_24_sp_1;
  s00_axi_rdata_25_sn_1 <= s00_axi_rdata_25_sp_1;
  s00_axi_rdata_26_sn_1 <= s00_axi_rdata_26_sp_1;
  s00_axi_rdata_27_sn_1 <= s00_axi_rdata_27_sp_1;
  sign_flag <= \^sign_flag\;
\calc_diff_csec__105_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_csec__105_carry_n_0\,
      CO(2) => \calc_diff_csec__105_carry_n_1\,
      CO(1) => \calc_diff_csec__105_carry_n_2\,
      CO(0) => \calc_diff_csec__105_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => abs_diff(3 downto 0),
      O(3) => \calc_diff_csec__105_carry_n_4\,
      O(2) => \calc_diff_csec__105_carry_n_5\,
      O(1) => calc_diff_csec(1),
      O(0) => \NLW_calc_diff_csec__105_carry_O_UNCONNECTED\(0),
      S(3) => \calc_diff_csec__105_carry_i_1_n_0\,
      S(2) => \calc_diff_csec__105_carry_i_2_n_0\,
      S(1) => \calc_diff_csec__105_carry_i_3_n_0\,
      S(0) => \calc_diff_csec__105_carry_i_4_n_0\
    );
\calc_diff_csec__105_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec__105_carry_n_0\,
      CO(3) => \NLW_calc_diff_csec__105_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \calc_diff_csec__105_carry__0_n_1\,
      CO(1) => \calc_diff_csec__105_carry__0_n_2\,
      CO(0) => \calc_diff_csec__105_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => abs_diff(6 downto 4),
      O(3) => \calc_diff_csec__105_carry__0_n_4\,
      O(2) => \calc_diff_csec__105_carry__0_n_5\,
      O(1) => \calc_diff_csec__105_carry__0_n_6\,
      O(0) => \calc_diff_csec__105_carry__0_n_7\,
      S(3) => \calc_diff_csec__105_carry__0_i_1_n_0\,
      S(2) => \calc_diff_csec__105_carry__0_i_2_n_0\,
      S(1) => \calc_diff_csec__105_carry__0_i_3_n_0\,
      S(0) => \calc_diff_csec__105_carry__0_i_4_n_0\
    );
\calc_diff_csec__105_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(7),
      I1 => \calc_diff_csec__99_carry_n_5\,
      O => \calc_diff_csec__105_carry__0_i_1_n_0\
    );
\calc_diff_csec__105_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(6),
      I1 => \calc_diff_csec__99_carry_n_6\,
      O => \calc_diff_csec__105_carry__0_i_2_n_0\
    );
\calc_diff_csec__105_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(5),
      I1 => \calc_diff_csec__99_carry_n_7\,
      O => \calc_diff_csec__105_carry__0_i_3_n_0\
    );
\calc_diff_csec__105_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(4),
      I1 => \calc_diff_csec__55_carry__3_n_7\,
      O => \calc_diff_csec__105_carry__0_i_4_n_0\
    );
\calc_diff_csec__105_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(3),
      I1 => \calc_diff_csec__55_carry__2_n_4\,
      O => \calc_diff_csec__105_carry_i_1_n_0\
    );
\calc_diff_csec__105_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(2),
      I1 => \calc_diff_csec__55_carry__2_n_5\,
      O => \calc_diff_csec__105_carry_i_2_n_0\
    );
\calc_diff_csec__105_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(1),
      O => \calc_diff_csec__105_carry_i_3_n_0\
    );
\calc_diff_csec__105_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(0),
      O => \calc_diff_csec__105_carry_i_4_n_0\
    );
\calc_diff_csec__55_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_csec__55_carry_n_0\,
      CO(2) => \calc_diff_csec__55_carry_n_1\,
      CO(1) => \calc_diff_csec__55_carry_n_2\,
      CO(0) => \calc_diff_csec__55_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => abs_diff(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => \NLW_calc_diff_csec__55_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_csec__55_carry_i_1_n_0\,
      S(2) => \calc_diff_csec__55_carry_i_2_n_0\,
      S(1) => \calc_diff_csec__55_carry_i_3_n_0\,
      S(0) => calc_diff_csec_carry_n_5
    );
\calc_diff_csec__55_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec__55_carry_n_0\,
      CO(3) => \calc_diff_csec__55_carry__0_n_0\,
      CO(2) => \calc_diff_csec__55_carry__0_n_1\,
      CO(1) => \calc_diff_csec__55_carry__0_n_2\,
      CO(0) => \calc_diff_csec__55_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_csec__55_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_csec__55_carry__0_i_2_n_0\,
      DI(1 downto 0) => abs_diff(4 downto 3),
      O(3 downto 0) => \NLW_calc_diff_csec__55_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_csec__55_carry__0_i_3_n_0\,
      S(2) => \calc_diff_csec__55_carry__0_i_4_n_0\,
      S(1) => \calc_diff_csec__55_carry__0_i_5_n_0\,
      S(0) => \calc_diff_csec__55_carry__0_i_6_n_0\
    );
\calc_diff_csec__55_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(0),
      I1 => \calc_diff_csec_carry__1_n_6\,
      I2 => abs_diff(2),
      I3 => abs_diff(6),
      O => \calc_diff_csec__55_carry__0_i_1_n_0\
    );
\calc_diff_csec__55_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => abs_diff(5),
      I1 => abs_diff(1),
      I2 => \calc_diff_csec_carry__1_n_7\,
      O => \calc_diff_csec__55_carry__0_i_2_n_0\
    );
\calc_diff_csec__55_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"566A"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__0_i_1_n_0\,
      I1 => abs_diff(5),
      I2 => abs_diff(1),
      I3 => \calc_diff_csec_carry__1_n_7\,
      O => \calc_diff_csec__55_carry__0_i_3_n_0\
    );
\calc_diff_csec__55_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \calc_diff_csec_carry__1_n_7\,
      I1 => abs_diff(1),
      I2 => abs_diff(5),
      I3 => \calc_diff_csec_carry__0_n_4\,
      I4 => abs_diff(0),
      O => \calc_diff_csec__55_carry__0_i_4_n_0\
    );
\calc_diff_csec__55_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \calc_diff_csec_carry__0_n_4\,
      I1 => abs_diff(0),
      I2 => abs_diff(4),
      O => \calc_diff_csec__55_carry__0_i_5_n_0\
    );
\calc_diff_csec__55_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(3),
      I1 => \calc_diff_csec_carry__0_n_5\,
      O => \calc_diff_csec__55_carry__0_i_6_n_0\
    );
\calc_diff_csec__55_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec__55_carry__0_n_0\,
      CO(3) => \calc_diff_csec__55_carry__1_n_0\,
      CO(2) => \calc_diff_csec__55_carry__1_n_1\,
      CO(1) => \calc_diff_csec__55_carry__1_n_2\,
      CO(0) => \calc_diff_csec__55_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_csec__55_carry__1_i_1_n_0\,
      DI(2) => \calc_diff_csec__55_carry__1_i_2_n_0\,
      DI(1) => \calc_diff_csec__55_carry__1_i_3_n_0\,
      DI(0) => \calc_diff_csec__55_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_csec__55_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_csec__55_carry__1_i_5_n_0\,
      S(2) => \calc_diff_csec__55_carry__1_i_6_n_0\,
      S(1) => \calc_diff_csec__55_carry__1_i_7_n_0\,
      S(0) => \calc_diff_csec__55_carry__1_i_8_n_0\
    );
\calc_diff_csec__55_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__1_i_9_n_0\,
      I1 => abs_diff(9),
      I2 => abs_diff(4),
      I3 => abs_diff(2),
      I4 => \calc_diff_csec_carry__1_n_4\,
      O => \calc_diff_csec__55_carry__1_i_1_n_0\
    );
\calc_diff_csec__55_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(4),
      I1 => \calc_diff_csec_carry__1_n_4\,
      I2 => abs_diff(2),
      O => \calc_diff_csec__55_carry__1_i_10_n_0\
    );
\calc_diff_csec__55_carry__1_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(3),
      I1 => \calc_diff_csec_carry__1_n_5\,
      I2 => abs_diff(1),
      O => \calc_diff_csec__55_carry__1_i_11_n_0\
    );
\calc_diff_csec__55_carry__1_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(6),
      I1 => \calc_diff_csec_carry__2_n_6\,
      I2 => abs_diff(4),
      O => \calc_diff_csec__55_carry__1_i_12_n_0\
    );
\calc_diff_csec__55_carry__1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__1_i_10_n_0\,
      I1 => abs_diff(8),
      I2 => abs_diff(1),
      I3 => abs_diff(3),
      I4 => \calc_diff_csec_carry__1_n_5\,
      O => \calc_diff_csec__55_carry__1_i_2_n_0\
    );
\calc_diff_csec__55_carry__1_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E8FF00E8"
    )
        port map (
      I0 => abs_diff(0),
      I1 => abs_diff(2),
      I2 => \calc_diff_csec_carry__1_n_6\,
      I3 => \calc_diff_csec__55_carry__1_i_11_n_0\,
      I4 => abs_diff(7),
      O => \calc_diff_csec__55_carry__1_i_3_n_0\
    );
\calc_diff_csec__55_carry__1_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"17E8E817"
    )
        port map (
      I0 => \calc_diff_csec_carry__1_n_6\,
      I1 => abs_diff(2),
      I2 => abs_diff(0),
      I3 => \calc_diff_csec__55_carry__1_i_11_n_0\,
      I4 => abs_diff(7),
      O => \calc_diff_csec__55_carry__1_i_4_n_0\
    );
\calc_diff_csec__55_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__1_i_1_n_0\,
      I1 => abs_diff(5),
      I2 => abs_diff(3),
      I3 => \calc_diff_csec_carry__2_n_7\,
      I4 => abs_diff(10),
      I5 => \calc_diff_csec__55_carry__1_i_12_n_0\,
      O => \calc_diff_csec__55_carry__1_i_5_n_0\
    );
\calc_diff_csec__55_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__1_i_2_n_0\,
      I1 => abs_diff(4),
      I2 => abs_diff(2),
      I3 => \calc_diff_csec_carry__1_n_4\,
      I4 => abs_diff(9),
      I5 => \calc_diff_csec__55_carry__1_i_9_n_0\,
      O => \calc_diff_csec__55_carry__1_i_6_n_0\
    );
\calc_diff_csec__55_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__1_i_3_n_0\,
      I1 => abs_diff(8),
      I2 => \calc_diff_csec__55_carry__1_i_10_n_0\,
      I3 => abs_diff(1),
      I4 => abs_diff(3),
      I5 => \calc_diff_csec_carry__1_n_5\,
      O => \calc_diff_csec__55_carry__1_i_7_n_0\
    );
\calc_diff_csec__55_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9666666966696999"
    )
        port map (
      I0 => abs_diff(7),
      I1 => \calc_diff_csec__55_carry__1_i_11_n_0\,
      I2 => abs_diff(2),
      I3 => \calc_diff_csec_carry__1_n_6\,
      I4 => abs_diff(0),
      I5 => abs_diff(6),
      O => \calc_diff_csec__55_carry__1_i_8_n_0\
    );
\calc_diff_csec__55_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(5),
      I1 => \calc_diff_csec_carry__2_n_7\,
      I2 => abs_diff(3),
      O => \calc_diff_csec__55_carry__1_i_9_n_0\
    );
\calc_diff_csec__55_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec__55_carry__1_n_0\,
      CO(3) => \calc_diff_csec__55_carry__2_n_0\,
      CO(2) => \calc_diff_csec__55_carry__2_n_1\,
      CO(1) => \calc_diff_csec__55_carry__2_n_2\,
      CO(0) => \calc_diff_csec__55_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_csec__55_carry__2_i_1_n_0\,
      DI(2) => \calc_diff_csec__55_carry__2_i_2_n_0\,
      DI(1) => \calc_diff_csec__55_carry__2_i_3_n_0\,
      DI(0) => \calc_diff_csec__55_carry__2_i_4_n_0\,
      O(3) => \calc_diff_csec__55_carry__2_n_4\,
      O(2) => \calc_diff_csec__55_carry__2_n_5\,
      O(1 downto 0) => \NLW_calc_diff_csec__55_carry__2_O_UNCONNECTED\(1 downto 0),
      S(3) => \calc_diff_csec__55_carry__2_i_5_n_0\,
      S(2) => \calc_diff_csec__55_carry__2_i_6_n_0\,
      S(1) => \calc_diff_csec__55_carry__2_i_7_n_0\,
      S(0) => \calc_diff_csec__55_carry__2_i_8_n_0\
    );
\calc_diff_csec__55_carry__2_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_9_n_0\,
      I1 => abs_diff(13),
      I2 => abs_diff(6),
      I3 => abs_diff(8),
      I4 => \calc_diff_csec_carry__2_n_4\,
      O => \calc_diff_csec__55_carry__2_i_1_n_0\
    );
\calc_diff_csec__55_carry__2_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(8),
      I1 => \calc_diff_csec_carry__2_n_4\,
      I2 => abs_diff(6),
      O => \calc_diff_csec__55_carry__2_i_10_n_0\
    );
\calc_diff_csec__55_carry__2_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(7),
      I1 => \calc_diff_csec_carry__2_n_5\,
      I2 => abs_diff(5),
      O => \calc_diff_csec__55_carry__2_i_11_n_0\
    );
\calc_diff_csec__55_carry__2_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(10),
      I1 => \calc_diff_csec_carry__3_n_6\,
      I2 => abs_diff(8),
      O => \calc_diff_csec__55_carry__2_i_12_n_0\
    );
\calc_diff_csec__55_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_10_n_0\,
      I1 => abs_diff(12),
      I2 => abs_diff(5),
      I3 => abs_diff(7),
      I4 => \calc_diff_csec_carry__2_n_5\,
      O => \calc_diff_csec__55_carry__2_i_2_n_0\
    );
\calc_diff_csec__55_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_11_n_0\,
      I1 => abs_diff(11),
      I2 => abs_diff(4),
      I3 => abs_diff(6),
      I4 => \calc_diff_csec_carry__2_n_6\,
      O => \calc_diff_csec__55_carry__2_i_3_n_0\
    );
\calc_diff_csec__55_carry__2_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__1_i_12_n_0\,
      I1 => abs_diff(10),
      I2 => abs_diff(5),
      I3 => abs_diff(3),
      I4 => \calc_diff_csec_carry__2_n_7\,
      O => \calc_diff_csec__55_carry__2_i_4_n_0\
    );
\calc_diff_csec__55_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_1_n_0\,
      I1 => abs_diff(7),
      I2 => abs_diff(9),
      I3 => \calc_diff_csec_carry__3_n_7\,
      I4 => abs_diff(14),
      I5 => \calc_diff_csec__55_carry__2_i_12_n_0\,
      O => \calc_diff_csec__55_carry__2_i_5_n_0\
    );
\calc_diff_csec__55_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_2_n_0\,
      I1 => abs_diff(6),
      I2 => abs_diff(8),
      I3 => \calc_diff_csec_carry__2_n_4\,
      I4 => abs_diff(13),
      I5 => \calc_diff_csec__55_carry__2_i_9_n_0\,
      O => \calc_diff_csec__55_carry__2_i_6_n_0\
    );
\calc_diff_csec__55_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_3_n_0\,
      I1 => abs_diff(5),
      I2 => abs_diff(7),
      I3 => \calc_diff_csec_carry__2_n_5\,
      I4 => abs_diff(12),
      I5 => \calc_diff_csec__55_carry__2_i_10_n_0\,
      O => \calc_diff_csec__55_carry__2_i_7_n_0\
    );
\calc_diff_csec__55_carry__2_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A995566A566AA995"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_4_n_0\,
      I1 => abs_diff(4),
      I2 => abs_diff(6),
      I3 => \calc_diff_csec_carry__2_n_6\,
      I4 => abs_diff(11),
      I5 => \calc_diff_csec__55_carry__2_i_11_n_0\,
      O => \calc_diff_csec__55_carry__2_i_8_n_0\
    );
\calc_diff_csec__55_carry__2_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(9),
      I1 => \calc_diff_csec_carry__3_n_7\,
      I2 => abs_diff(7),
      O => \calc_diff_csec__55_carry__2_i_9_n_0\
    );
\calc_diff_csec__55_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec__55_carry__2_n_0\,
      CO(3) => \NLW_calc_diff_csec__55_carry__3_CO_UNCONNECTED\(3),
      CO(2) => \calc_diff_csec__55_carry__3_n_1\,
      CO(1) => \calc_diff_csec__55_carry__3_n_2\,
      CO(0) => \calc_diff_csec__55_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \calc_diff_csec__55_carry__3_i_1_n_0\,
      DI(1) => \calc_diff_csec__55_carry__3_i_2_n_0\,
      DI(0) => \calc_diff_csec__55_carry__3_i_3_n_0\,
      O(3) => \calc_diff_csec__55_carry__3_n_4\,
      O(2) => \calc_diff_csec__55_carry__3_n_5\,
      O(1) => \calc_diff_csec__55_carry__3_n_6\,
      O(0) => \calc_diff_csec__55_carry__3_n_7\,
      S(3) => \calc_diff_csec__55_carry__3_i_4_n_0\,
      S(2) => \calc_diff_csec__55_carry__3_i_5_n_0\,
      S(1) => \calc_diff_csec__55_carry__3_i_6_n_0\,
      S(0) => \calc_diff_csec__55_carry__3_i_7_n_0\
    );
\calc_diff_csec__55_carry__3_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_i_8_n_0\,
      I1 => abs_diff(16),
      I2 => abs_diff(9),
      I3 => abs_diff(11),
      I4 => \calc_diff_csec_carry__3_n_5\,
      O => \calc_diff_csec__55_carry__3_i_1_n_0\
    );
\calc_diff_csec__55_carry__3_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(10),
      I1 => abs_diff(12),
      I2 => \calc_diff_csec_carry__3_n_4\,
      O => \calc_diff_csec__55_carry__3_i_10_n_0\
    );
\calc_diff_csec__55_carry__3_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(13),
      I1 => abs_diff(11),
      O => \calc_diff_csec__55_carry__3_i_11_n_0\
    );
\calc_diff_csec__55_carry__3_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => abs_diff(15),
      I1 => \calc_diff_csec__55_carry__3_i_9_n_0\,
      I2 => abs_diff(8),
      I3 => abs_diff(10),
      I4 => \calc_diff_csec_carry__3_n_6\,
      O => \calc_diff_csec__55_carry__3_i_2_n_0\
    );
\calc_diff_csec__55_carry__3_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDD4D444"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_i_12_n_0\,
      I1 => abs_diff(14),
      I2 => abs_diff(7),
      I3 => abs_diff(9),
      I4 => \calc_diff_csec_carry__3_n_7\,
      O => \calc_diff_csec__55_carry__3_i_3_n_0\
    );
\calc_diff_csec__55_carry__3_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B2244DDB4DDBB224"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_i_10_n_0\,
      I1 => \calc_diff_csec_carry__4_n_7\,
      I2 => abs_diff(13),
      I3 => abs_diff(11),
      I4 => abs_diff(12),
      I5 => abs_diff(14),
      O => \calc_diff_csec__55_carry__3_i_4_n_0\
    );
\calc_diff_csec__55_carry__3_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6969699669969696"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_i_1_n_0\,
      I1 => \calc_diff_csec_carry__4_n_7\,
      I2 => \calc_diff_csec__55_carry__3_i_11_n_0\,
      I3 => abs_diff(10),
      I4 => abs_diff(12),
      I5 => \calc_diff_csec_carry__3_n_4\,
      O => \calc_diff_csec__55_carry__3_i_5_n_0\
    );
\calc_diff_csec__55_carry__3_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_i_2_n_0\,
      I1 => abs_diff(16),
      I2 => \calc_diff_csec__55_carry__3_i_8_n_0\,
      I3 => abs_diff(9),
      I4 => abs_diff(11),
      I5 => \calc_diff_csec_carry__3_n_5\,
      O => \calc_diff_csec__55_carry__3_i_6_n_0\
    );
\calc_diff_csec__55_carry__3_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_i_3_n_0\,
      I1 => abs_diff(8),
      I2 => abs_diff(10),
      I3 => \calc_diff_csec_carry__3_n_6\,
      I4 => abs_diff(15),
      I5 => \calc_diff_csec__55_carry__3_i_9_n_0\,
      O => \calc_diff_csec__55_carry__3_i_7_n_0\
    );
\calc_diff_csec__55_carry__3_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => abs_diff(12),
      I1 => \calc_diff_csec_carry__3_n_4\,
      I2 => abs_diff(10),
      O => \calc_diff_csec__55_carry__3_i_8_n_0\
    );
\calc_diff_csec__55_carry__3_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => abs_diff(11),
      I1 => \calc_diff_csec_carry__3_n_5\,
      I2 => abs_diff(9),
      O => \calc_diff_csec__55_carry__3_i_9_n_0\
    );
\calc_diff_csec__55_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(2),
      I1 => \calc_diff_csec_carry__0_n_6\,
      O => \calc_diff_csec__55_carry_i_1_n_0\
    );
\calc_diff_csec__55_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(1),
      I1 => \calc_diff_csec_carry__0_n_7\,
      O => \calc_diff_csec__55_carry_i_2_n_0\
    );
\calc_diff_csec__55_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(0),
      I1 => calc_diff_csec_carry_n_4,
      O => \calc_diff_csec__55_carry_i_3_n_0\
    );
\calc_diff_csec__99_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 2) => \NLW_calc_diff_csec__99_carry_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \calc_diff_csec__99_carry_n_2\,
      CO(0) => \calc_diff_csec__99_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \calc_diff_csec__99_carry_i_1_n_0\,
      DI(0) => '0',
      O(3) => \NLW_calc_diff_csec__99_carry_O_UNCONNECTED\(3),
      O(2) => \calc_diff_csec__99_carry_n_5\,
      O(1) => \calc_diff_csec__99_carry_n_6\,
      O(0) => \calc_diff_csec__99_carry_n_7\,
      S(3) => '0',
      S(2) => \calc_diff_csec__99_carry_i_2_n_0\,
      S(1) => \calc_diff_csec__99_carry_i_3_n_0\,
      S(0) => \calc_diff_csec__99_carry_i_4_n_0\
    );
\calc_diff_csec__99_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_n_6\,
      I1 => \calc_diff_csec__55_carry__2_n_5\,
      O => \calc_diff_csec__99_carry_i_1_n_0\
    );
\calc_diff_csec__99_carry_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66969969"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_n_4\,
      I1 => \calc_diff_csec__55_carry__3_n_7\,
      I2 => \calc_diff_csec__55_carry__3_n_5\,
      I3 => \calc_diff_csec__55_carry__2_n_4\,
      I4 => \calc_diff_csec__55_carry__2_n_5\,
      O => \calc_diff_csec__99_carry_i_2_n_0\
    );
\calc_diff_csec__99_carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__2_n_5\,
      I1 => \calc_diff_csec__55_carry__3_n_6\,
      I2 => \calc_diff_csec__55_carry__3_n_5\,
      I3 => \calc_diff_csec__55_carry__2_n_4\,
      O => \calc_diff_csec__99_carry_i_3_n_0\
    );
\calc_diff_csec__99_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \calc_diff_csec__55_carry__3_n_6\,
      I1 => \calc_diff_csec__55_carry__2_n_5\,
      O => \calc_diff_csec__99_carry_i_4_n_0\
    );
calc_diff_csec_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => calc_diff_csec_carry_n_0,
      CO(2) => calc_diff_csec_carry_n_1,
      CO(1) => calc_diff_csec_carry_n_2,
      CO(0) => calc_diff_csec_carry_n_3,
      CYINIT => '0',
      DI(3) => abs_diff(0),
      DI(2 downto 0) => B"001",
      O(3) => calc_diff_csec_carry_n_4,
      O(2) => calc_diff_csec_carry_n_5,
      O(1 downto 0) => NLW_calc_diff_csec_carry_O_UNCONNECTED(1 downto 0),
      S(3) => calc_diff_csec_carry_i_1_n_0,
      S(2) => calc_diff_csec_carry_i_2_n_0,
      S(1) => calc_diff_csec_carry_i_3_n_0,
      S(0) => abs_diff(0)
    );
\calc_diff_csec_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => calc_diff_csec_carry_n_0,
      CO(3) => \calc_diff_csec_carry__0_n_0\,
      CO(2) => \calc_diff_csec_carry__0_n_1\,
      CO(1) => \calc_diff_csec_carry__0_n_2\,
      CO(0) => \calc_diff_csec_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_diff(4 downto 1),
      O(3) => \calc_diff_csec_carry__0_n_4\,
      O(2) => \calc_diff_csec_carry__0_n_5\,
      O(1) => \calc_diff_csec_carry__0_n_6\,
      O(0) => \calc_diff_csec_carry__0_n_7\,
      S(3) => \calc_diff_csec_carry__0_i_1_n_0\,
      S(2) => \calc_diff_csec_carry__0_i_2_n_0\,
      S(1) => \calc_diff_csec_carry__0_i_3_n_0\,
      S(0) => \calc_diff_csec_carry__0_i_4_n_0\
    );
\calc_diff_csec_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(4),
      I1 => abs_diff(7),
      O => \calc_diff_csec_carry__0_i_1_n_0\
    );
\calc_diff_csec_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(3),
      I1 => abs_diff(6),
      O => \calc_diff_csec_carry__0_i_2_n_0\
    );
\calc_diff_csec_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(2),
      I1 => abs_diff(5),
      O => \calc_diff_csec_carry__0_i_3_n_0\
    );
\calc_diff_csec_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(1),
      I1 => abs_diff(4),
      O => \calc_diff_csec_carry__0_i_4_n_0\
    );
\calc_diff_csec_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec_carry__0_n_0\,
      CO(3) => \calc_diff_csec_carry__1_n_0\,
      CO(2) => \calc_diff_csec_carry__1_n_1\,
      CO(1) => \calc_diff_csec_carry__1_n_2\,
      CO(0) => \calc_diff_csec_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_diff(8 downto 5),
      O(3) => \calc_diff_csec_carry__1_n_4\,
      O(2) => \calc_diff_csec_carry__1_n_5\,
      O(1) => \calc_diff_csec_carry__1_n_6\,
      O(0) => \calc_diff_csec_carry__1_n_7\,
      S(3) => \calc_diff_csec_carry__1_i_1_n_0\,
      S(2) => \calc_diff_csec_carry__1_i_2_n_0\,
      S(1) => \calc_diff_csec_carry__1_i_3_n_0\,
      S(0) => \calc_diff_csec_carry__1_i_4_n_0\
    );
\calc_diff_csec_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(8),
      I1 => abs_diff(11),
      O => \calc_diff_csec_carry__1_i_1_n_0\
    );
\calc_diff_csec_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(7),
      I1 => abs_diff(10),
      O => \calc_diff_csec_carry__1_i_2_n_0\
    );
\calc_diff_csec_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(6),
      I1 => abs_diff(9),
      O => \calc_diff_csec_carry__1_i_3_n_0\
    );
\calc_diff_csec_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(5),
      I1 => abs_diff(8),
      O => \calc_diff_csec_carry__1_i_4_n_0\
    );
\calc_diff_csec_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec_carry__1_n_0\,
      CO(3) => \calc_diff_csec_carry__2_n_0\,
      CO(2) => \calc_diff_csec_carry__2_n_1\,
      CO(1) => \calc_diff_csec_carry__2_n_2\,
      CO(0) => \calc_diff_csec_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_diff(12 downto 9),
      O(3) => \calc_diff_csec_carry__2_n_4\,
      O(2) => \calc_diff_csec_carry__2_n_5\,
      O(1) => \calc_diff_csec_carry__2_n_6\,
      O(0) => \calc_diff_csec_carry__2_n_7\,
      S(3) => \calc_diff_csec_carry__2_i_1_n_0\,
      S(2) => \calc_diff_csec_carry__2_i_2_n_0\,
      S(1) => \calc_diff_csec_carry__2_i_3_n_0\,
      S(0) => \calc_diff_csec_carry__2_i_4_n_0\
    );
\calc_diff_csec_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(12),
      I1 => abs_diff(15),
      O => \calc_diff_csec_carry__2_i_1_n_0\
    );
\calc_diff_csec_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(11),
      I1 => abs_diff(14),
      O => \calc_diff_csec_carry__2_i_2_n_0\
    );
\calc_diff_csec_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(10),
      I1 => abs_diff(13),
      O => \calc_diff_csec_carry__2_i_3_n_0\
    );
\calc_diff_csec_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(9),
      I1 => abs_diff(12),
      O => \calc_diff_csec_carry__2_i_4_n_0\
    );
\calc_diff_csec_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec_carry__2_n_0\,
      CO(3) => \calc_diff_csec_carry__3_n_0\,
      CO(2) => \calc_diff_csec_carry__3_n_1\,
      CO(1) => \calc_diff_csec_carry__3_n_2\,
      CO(0) => \calc_diff_csec_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_diff(16 downto 13),
      O(3) => \calc_diff_csec_carry__3_n_4\,
      O(2) => \calc_diff_csec_carry__3_n_5\,
      O(1) => \calc_diff_csec_carry__3_n_6\,
      O(0) => \calc_diff_csec_carry__3_n_7\,
      S(3) => \calc_diff_csec_carry__3_i_1_n_0\,
      S(2) => \calc_diff_csec_carry__3_i_2_n_0\,
      S(1) => \calc_diff_csec_carry__3_i_3_n_0\,
      S(0) => \calc_diff_csec_carry__3_i_4_n_0\
    );
\calc_diff_csec_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(16),
      O => \calc_diff_csec_carry__3_i_1_n_0\
    );
\calc_diff_csec_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(15),
      O => \calc_diff_csec_carry__3_i_2_n_0\
    );
\calc_diff_csec_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(14),
      O => \calc_diff_csec_carry__3_i_3_n_0\
    );
\calc_diff_csec_carry__3_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(13),
      I1 => abs_diff(16),
      O => \calc_diff_csec_carry__3_i_4_n_0\
    );
\calc_diff_csec_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_csec_carry__3_n_0\,
      CO(3 downto 0) => \NLW_calc_diff_csec_carry__4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_calc_diff_csec_carry__4_O_UNCONNECTED\(3 downto 1),
      O(0) => \calc_diff_csec_carry__4_n_7\,
      S(3 downto 0) => B"0001"
    );
calc_diff_csec_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(0),
      I1 => abs_diff(3),
      O => calc_diff_csec_carry_i_1_n_0
    );
calc_diff_csec_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(2),
      O => calc_diff_csec_carry_i_2_n_0
    );
calc_diff_csec_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(1),
      O => calc_diff_csec_carry_i_3_n_0
    );
calc_diff_min0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => calc_diff_min0_carry_n_0,
      CO(2) => calc_diff_min0_carry_n_1,
      CO(1) => calc_diff_min0_carry_n_2,
      CO(0) => calc_diff_min0_carry_n_3,
      CYINIT => '1',
      DI(3) => calc_diff_min0_carry_i_1_n_0,
      DI(2) => calc_diff_min0_carry_i_2_n_0,
      DI(1) => calc_diff_min0_carry_i_3_n_0,
      DI(0) => calc_diff_min0_carry_i_4_n_0,
      O(3 downto 0) => abs_diff(3 downto 0),
      S(3) => calc_diff_min0_carry_i_5_n_0,
      S(2) => calc_diff_min0_carry_i_6_n_0,
      S(1) => calc_diff_min0_carry_i_7_n_0,
      S(0) => calc_diff_min0_carry_i_8_n_0
    );
\calc_diff_min0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => calc_diff_min0_carry_n_0,
      CO(3) => \calc_diff_min0_carry__0_n_0\,
      CO(2) => \calc_diff_min0_carry__0_n_1\,
      CO(1) => \calc_diff_min0_carry__0_n_2\,
      CO(0) => \calc_diff_min0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min0_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_min0_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_min0_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_min0_carry__0_i_4_n_0\,
      O(3 downto 0) => abs_diff(7 downto 4),
      S(3) => \calc_diff_min0_carry__0_i_5_n_0\,
      S(2) => \calc_diff_min0_carry__0_i_6_n_0\,
      S(1) => \calc_diff_min0_carry__0_i_7_n_0\,
      S(0) => \calc_diff_min0_carry__0_i_8_n_0\
    );
\calc_diff_min0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \total_prev__0\(7),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__0_i_1_n_0\
    );
\calc_diff_min0_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \total_prev__0\(6),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__0_i_2_n_0\
    );
\calc_diff_min0_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__0_i_3_n_0\
    );
\calc_diff_min0_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \total_prev__0\(4),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__0_i_4_n_0\
    );
\calc_diff_min0_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \total_tmp__0\(7),
      O => \calc_diff_min0_carry__0_i_5_n_0\
    );
\calc_diff_min0_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \total_tmp__0\(6),
      O => \calc_diff_min0_carry__0_i_6_n_0\
    );
\calc_diff_min0_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      O => \calc_diff_min0_carry__0_i_7_n_0\
    );
\calc_diff_min0_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \total_tmp__0\(4),
      O => \calc_diff_min0_carry__0_i_8_n_0\
    );
\calc_diff_min0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min0_carry__0_n_0\,
      CO(3) => \calc_diff_min0_carry__1_n_0\,
      CO(2) => \calc_diff_min0_carry__1_n_1\,
      CO(1) => \calc_diff_min0_carry__1_n_2\,
      CO(0) => \calc_diff_min0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min0_carry__1_i_1_n_0\,
      DI(2) => \calc_diff_min0_carry__1_i_2_n_0\,
      DI(1) => \calc_diff_min0_carry__1_i_3_n_0\,
      DI(0) => \calc_diff_min0_carry__1_i_4_n_0\,
      O(3 downto 0) => abs_diff(11 downto 8),
      S(3) => \calc_diff_min0_carry__1_i_5_n_0\,
      S(2) => \calc_diff_min0_carry__1_i_6_n_0\,
      S(1) => \calc_diff_min0_carry__1_i_7_n_0\,
      S(0) => \calc_diff_min0_carry__1_i_8_n_0\
    );
\calc_diff_min0_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__1_i_1_n_0\
    );
\calc_diff_min0_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__1_i_2_n_0\
    );
\calc_diff_min0_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__1_i_3_n_0\
    );
\calc_diff_min0_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__1_i_4_n_0\
    );
\calc_diff_min0_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \total_tmp__0\(11),
      O => \calc_diff_min0_carry__1_i_5_n_0\
    );
\calc_diff_min0_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(10),
      I1 => \total_tmp__0\(10),
      O => \calc_diff_min0_carry__1_i_6_n_0\
    );
\calc_diff_min0_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \total_tmp__0\(9),
      O => \calc_diff_min0_carry__1_i_7_n_0\
    );
\calc_diff_min0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(8),
      I1 => \total_tmp__0\(8),
      O => \calc_diff_min0_carry__1_i_8_n_0\
    );
\calc_diff_min0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min0_carry__1_n_0\,
      CO(3) => \calc_diff_min0_carry__2_n_0\,
      CO(2) => \calc_diff_min0_carry__2_n_1\,
      CO(1) => \calc_diff_min0_carry__2_n_2\,
      CO(0) => \calc_diff_min0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min0_carry__2_i_1_n_0\,
      DI(2) => \calc_diff_min0_carry__2_i_2_n_0\,
      DI(1) => \calc_diff_min0_carry__2_i_3_n_0\,
      DI(0) => \calc_diff_min0_carry__2_i_4_n_0\,
      O(3 downto 0) => abs_diff(15 downto 12),
      S(3) => \calc_diff_min0_carry__2_i_5_n_0\,
      S(2) => \calc_diff_min0_carry__2_i_6_n_0\,
      S(1) => \calc_diff_min0_carry__2_i_7_n_0\,
      S(0) => \calc_diff_min0_carry__2_i_8_n_0\
    );
\calc_diff_min0_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__2_i_1_n_0\
    );
\calc_diff_min0_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__2_i_2_n_0\
    );
\calc_diff_min0_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__2_i_3_n_0\
    );
\calc_diff_min0_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \total_prev__0\(12),
      I2 => \^co\(0),
      O => \calc_diff_min0_carry__2_i_4_n_0\
    );
\calc_diff_min0_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \total_tmp__0\(15),
      O => \calc_diff_min0_carry__2_i_5_n_0\
    );
\calc_diff_min0_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(14),
      I1 => \total_tmp__0\(14),
      O => \calc_diff_min0_carry__2_i_6_n_0\
    );
\calc_diff_min0_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(13),
      I1 => \total_tmp__0\(13),
      O => \calc_diff_min0_carry__2_i_7_n_0\
    );
\calc_diff_min0_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(12),
      I1 => \total_tmp__0\(12),
      O => \calc_diff_min0_carry__2_i_8_n_0\
    );
\calc_diff_min0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min0_carry__2_n_0\,
      CO(3 downto 0) => \NLW_calc_diff_min0_carry__3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_calc_diff_min0_carry__3_O_UNCONNECTED\(3 downto 1),
      O(0) => abs_diff(16),
      S(3 downto 1) => B"000",
      S(0) => \calc_diff_min0_carry__3_i_1_n_0\
    );
\calc_diff_min0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(16),
      I1 => \total_tmp__0\(16),
      O => \calc_diff_min0_carry__3_i_1_n_0\
    );
calc_diff_min0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => calc_diff_min0_carry_i_1_n_0
    );
calc_diff_min0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => calc_diff_min0_carry_i_2_n_0
    );
calc_diff_min0_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => calc_diff_min0_carry_i_3_n_0
    );
calc_diff_min0_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => calc_diff_min0_carry_i_4_n_0
    );
calc_diff_min0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => calc_diff_min0_carry_i_5_n_0
    );
calc_diff_min0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => calc_diff_min0_carry_i_6_n_0
    );
calc_diff_min0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => calc_diff_min0_carry_i_7_n_0
    );
calc_diff_min0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => calc_diff_min0_carry_i_8_n_0
    );
\calc_diff_min__23_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_min__23_carry_n_0\,
      CO(2) => \calc_diff_min__23_carry_n_1\,
      CO(1) => \calc_diff_min__23_carry_n_2\,
      CO(0) => \calc_diff_min__23_carry_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min__23_carry_i_1_n_0\,
      DI(2) => \calc_diff_min__23_carry_i_2_n_0\,
      DI(1) => \calc_diff_min__23_carry_i_3_n_0\,
      DI(0) => \calc_diff_min__23_carry_i_4_n_0\,
      O(3) => \calc_diff_min__23_carry_n_4\,
      O(2) => \calc_diff_min__23_carry_n_5\,
      O(1) => \calc_diff_min__23_carry_n_6\,
      O(0) => \calc_diff_min__23_carry_n_7\,
      S(3) => \calc_diff_min__23_carry_i_5_n_0\,
      S(2) => \calc_diff_min__23_carry_i_6_n_0\,
      S(1) => \calc_diff_min__23_carry_i_7_n_0\,
      S(0) => \calc_diff_min__23_carry_i_8_n_0\
    );
\calc_diff_min__23_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min__23_carry_n_0\,
      CO(3) => \calc_diff_min__23_carry__0_n_0\,
      CO(2) => \calc_diff_min__23_carry__0_n_1\,
      CO(1) => \calc_diff_min__23_carry__0_n_2\,
      CO(0) => \calc_diff_min__23_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min__23_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_min__23_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_min__23_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_min__23_carry_i_4_n_0\,
      O(3) => \calc_diff_min__23_carry__0_n_4\,
      O(2) => \calc_diff_min__23_carry__0_n_5\,
      O(1) => \calc_diff_min__23_carry__0_n_6\,
      O(0) => \calc_diff_min__23_carry__0_n_7\,
      S(3) => \calc_diff_min__23_carry__0_i_4_n_0\,
      S(2) => \calc_diff_min__23_carry__0_i_5_n_0\,
      S(1) => \calc_diff_min__23_carry__0_i_6_n_0\,
      S(0) => \calc_diff_min__23_carry__0_i_7_n_0\
    );
\calc_diff_min__23_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_5\,
      I1 => \calc_diff_min_carry__3_n_7\,
      O => \calc_diff_min__23_carry__0_i_1_n_0\
    );
\calc_diff_min__23_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_6\,
      I1 => \calc_diff_min_carry__3_n_5\,
      O => \calc_diff_min__23_carry__0_i_2_n_0\
    );
\calc_diff_min__23_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_5\,
      I1 => \calc_diff_min_carry__3_n_7\,
      I2 => \calc_diff_min_carry__3_n_6\,
      O => \calc_diff_min__23_carry__0_i_3_n_0\
    );
\calc_diff_min__23_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_7\,
      I1 => \calc_diff_min_carry__3_n_5\,
      I2 => \calc_diff_min_carry__3_n_6\,
      O => \calc_diff_min__23_carry__0_i_4_n_0\
    );
\calc_diff_min__23_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_6\,
      I1 => \calc_diff_min_carry__3_n_7\,
      I2 => \calc_diff_min_carry__3_n_5\,
      O => \calc_diff_min__23_carry__0_i_5_n_0\
    );
\calc_diff_min__23_carry__0_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_7\,
      I1 => \calc_diff_min_carry__3_n_5\,
      I2 => \calc_diff_min_carry__3_n_6\,
      O => \calc_diff_min__23_carry__0_i_6_n_0\
    );
\calc_diff_min__23_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min__23_carry_i_4_n_0\,
      I1 => \calc_diff_min_carry__3_n_6\,
      I2 => \calc_diff_min_carry__3_n_7\,
      I3 => \calc_diff_min_carry__3_n_5\,
      O => \calc_diff_min__23_carry__0_i_7_n_0\
    );
\calc_diff_min__23_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min__23_carry__0_n_0\,
      CO(3 downto 2) => \NLW_calc_diff_min__23_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \calc_diff_min__23_carry__1_n_2\,
      CO(0) => \NLW_calc_diff_min__23_carry__1_CO_UNCONNECTED\(0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_calc_diff_min__23_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \calc_diff_min__23_carry__1_n_7\,
      S(3 downto 1) => B"001",
      S(0) => \calc_diff_min_carry__3_n_5\
    );
\calc_diff_min__23_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_5\,
      I1 => \calc_diff_min_carry__3_n_7\,
      O => \calc_diff_min__23_carry_i_1_n_0\
    );
\calc_diff_min__23_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_6\,
      I1 => \calc_diff_min_carry__3_n_5\,
      O => \calc_diff_min__23_carry_i_2_n_0\
    );
\calc_diff_min__23_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_5\,
      I1 => \calc_diff_min_carry__3_n_7\,
      I2 => \calc_diff_min_carry__3_n_6\,
      O => \calc_diff_min__23_carry_i_3_n_0\
    );
\calc_diff_min__23_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_6\,
      I1 => \calc_diff_min_carry__3_n_7\,
      O => \calc_diff_min__23_carry_i_4_n_0\
    );
\calc_diff_min__23_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_6\,
      I1 => \calc_diff_min_carry__3_n_7\,
      I2 => \calc_diff_min_carry__3_n_5\,
      O => \calc_diff_min__23_carry_i_5_n_0\
    );
\calc_diff_min__23_carry_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_6\,
      I1 => \calc_diff_min_carry__3_n_7\,
      I2 => \calc_diff_min_carry__3_n_5\,
      O => \calc_diff_min__23_carry_i_6_n_0\
    );
\calc_diff_min__23_carry_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_7\,
      I1 => \calc_diff_min_carry__3_n_5\,
      I2 => \calc_diff_min_carry__3_n_6\,
      O => \calc_diff_min__23_carry_i_7_n_0\
    );
\calc_diff_min__23_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min__23_carry_i_4_n_0\,
      I1 => \calc_diff_min_carry__3_n_6\,
      I2 => \calc_diff_min_carry__3_n_7\,
      I3 => \calc_diff_min_carry__3_n_5\,
      O => \calc_diff_min__23_carry_i_8_n_0\
    );
\calc_diff_min__46_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_min__46_carry_n_0\,
      CO(2) => \calc_diff_min__46_carry_n_1\,
      CO(1) => \calc_diff_min__46_carry_n_2\,
      CO(0) => \calc_diff_min__46_carry_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min__46_carry_i_1_n_0\,
      DI(2) => \calc_diff_min__46_carry_i_2_n_0\,
      DI(1) => \calc_diff_min__46_carry_i_3_n_0\,
      DI(0) => \calc_diff_min__46_carry_i_4_n_0\,
      O(3) => \calc_diff_min__46_carry_n_4\,
      O(2) => \calc_diff_min__46_carry_n_5\,
      O(1) => \calc_diff_min__46_carry_n_6\,
      O(0) => \calc_diff_min__46_carry_n_7\,
      S(3) => \calc_diff_min__46_carry_i_5_n_0\,
      S(2) => \calc_diff_min__46_carry_i_6_n_0\,
      S(1) => \calc_diff_min__46_carry_i_7_n_0\,
      S(0) => \calc_diff_min__46_carry_i_8_n_0\
    );
\calc_diff_min__46_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min__46_carry_n_0\,
      CO(3) => \calc_diff_min__46_carry__0_n_0\,
      CO(2) => \calc_diff_min__46_carry__0_n_1\,
      CO(1) => \calc_diff_min__46_carry__0_n_2\,
      CO(0) => \calc_diff_min__46_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min__46_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_min__46_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_min__46_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_min__46_carry__0_i_4_n_0\,
      O(3) => \calc_diff_min__46_carry__0_n_4\,
      O(2) => \calc_diff_min__46_carry__0_n_5\,
      O(1) => \calc_diff_min__46_carry__0_n_6\,
      O(0) => \calc_diff_min__46_carry__0_n_7\,
      S(3) => \calc_diff_min__46_carry__0_i_5_n_0\,
      S(2) => \calc_diff_min__46_carry__0_i_6_n_0\,
      S(1) => \calc_diff_min__46_carry__0_i_7_n_0\,
      S(0) => \calc_diff_min__46_carry__0_i_8_n_0\
    );
\calc_diff_min__46_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_min_reg[4]_i_4_n_3\,
      I1 => \calc_diff_min__23_carry__1_n_7\,
      O => \calc_diff_min__46_carry__0_i_1_n_0\
    );
\calc_diff_min__46_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \diff_min_reg[4]_i_4_n_3\,
      I1 => \calc_diff_min__23_carry__0_n_4\,
      I2 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry__0_i_2_n_0\
    );
\calc_diff_min__46_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \diff_min_reg[4]_i_4_n_3\,
      I1 => \calc_diff_min__23_carry__0_n_5\,
      I2 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry__0_i_3_n_0\
    );
\calc_diff_min__46_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_4\,
      I1 => \calc_diff_min__23_carry__0_n_6\,
      O => \calc_diff_min__46_carry__0_i_4_n_0\
    );
\calc_diff_min__46_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => \calc_diff_min__23_carry__1_n_7\,
      I1 => \diff_min_reg[4]_i_4_n_3\,
      I2 => \calc_diff_min__23_carry__1_n_2\,
      I3 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry__0_i_5_n_0\
    );
\calc_diff_min__46_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E178"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_4\,
      I1 => \calc_diff_min__23_carry__0_n_4\,
      I2 => \calc_diff_min__23_carry__1_n_7\,
      I3 => \diff_min_reg[4]_i_4_n_3\,
      O => \calc_diff_min__46_carry__0_i_6_n_0\
    );
\calc_diff_min__46_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min__46_carry__0_i_3_n_0\,
      I1 => \diff_min_reg[4]_i_4_n_3\,
      I2 => \calc_diff_min__23_carry__0_n_4\,
      I3 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry__0_i_7_n_0\
    );
\calc_diff_min__46_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \diff_min_reg[4]_i_4_n_3\,
      I1 => \calc_diff_min__23_carry__0_n_5\,
      I2 => \calc_diff_min_carry__3_n_4\,
      I3 => \calc_diff_min__46_carry__0_i_4_n_0\,
      O => \calc_diff_min__46_carry__0_i_8_n_0\
    );
\calc_diff_min__46_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min__46_carry__0_n_0\,
      CO(3 downto 0) => \NLW_calc_diff_min__46_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_calc_diff_min__46_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \calc_diff_min__46_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \calc_diff_min__46_carry__1_i_1_n_0\
    );
\calc_diff_min__46_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \diff_min_reg[4]_i_4_n_3\,
      I1 => \calc_diff_min__23_carry__1_n_2\,
      I2 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry__1_i_1_n_0\
    );
\calc_diff_min__46_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_min_reg[4]_i_4_n_3\,
      I1 => \calc_diff_min__23_carry__0_n_7\,
      O => \calc_diff_min__46_carry_i_1_n_0\
    );
\calc_diff_min__46_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \diff_min_reg[4]_i_4_n_3\,
      I1 => \calc_diff_min__23_carry_n_4\,
      I2 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry_i_2_n_0\
    );
\calc_diff_min__46_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \calc_diff_min__23_carry_n_5\,
      I1 => \diff_min_reg[4]_i_4_n_3\,
      I2 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry_i_3_n_0\
    );
\calc_diff_min__46_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_min__23_carry_n_6\,
      I1 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry_i_4_n_0\
    );
\calc_diff_min__46_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_4\,
      I1 => \calc_diff_min__23_carry__0_n_6\,
      I2 => \calc_diff_min__23_carry__0_n_7\,
      I3 => \diff_min_reg[4]_i_4_n_3\,
      O => \calc_diff_min__46_carry_i_5_n_0\
    );
\calc_diff_min__46_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E178"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_4\,
      I1 => \calc_diff_min__23_carry_n_4\,
      I2 => \calc_diff_min__23_carry__0_n_7\,
      I3 => \diff_min_reg[4]_i_4_n_3\,
      O => \calc_diff_min__46_carry_i_6_n_0\
    );
\calc_diff_min__46_carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min__46_carry_i_3_n_0\,
      I1 => \diff_min_reg[4]_i_4_n_3\,
      I2 => \calc_diff_min__23_carry_n_4\,
      I3 => \calc_diff_min_carry__3_n_4\,
      O => \calc_diff_min__46_carry_i_7_n_0\
    );
\calc_diff_min__46_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min__23_carry_n_5\,
      I1 => \diff_min_reg[4]_i_4_n_3\,
      I2 => \calc_diff_min_carry__3_n_4\,
      I3 => \calc_diff_min__46_carry_i_4_n_0\,
      O => \calc_diff_min__46_carry_i_8_n_0\
    );
\calc_diff_min__71_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_min__71_carry_n_0\,
      CO(2) => \calc_diff_min__71_carry_n_1\,
      CO(1) => \calc_diff_min__71_carry_n_2\,
      CO(0) => \calc_diff_min__71_carry_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min__71_carry_i_1_n_0\,
      DI(2) => \calc_diff_min__71_carry_i_2_n_0\,
      DI(1) => \calc_diff_min__71_carry_i_3_n_0\,
      DI(0) => \calc_diff_min__71_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_min__71_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_min__71_carry_i_5_n_0\,
      S(2) => \calc_diff_min__71_carry_i_6_n_0\,
      S(1) => \calc_diff_min__71_carry_i_7_n_0\,
      S(0) => \calc_diff_min__71_carry_i_8_n_0\
    );
\calc_diff_min__71_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min__71_carry_n_0\,
      CO(3) => \calc_diff_min__71_carry__0_n_0\,
      CO(2) => \calc_diff_min__71_carry__0_n_1\,
      CO(1) => \calc_diff_min__71_carry__0_n_2\,
      CO(0) => \calc_diff_min__71_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min__71_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_min__71_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_min__71_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_min__71_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_min__71_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_min__71_carry__0_i_5_n_0\,
      S(2) => \calc_diff_min__71_carry__0_i_6_n_0\,
      S(1) => \calc_diff_min__71_carry__0_i_7_n_0\,
      S(0) => \calc_diff_min__71_carry__0_i_8_n_0\
    );
\calc_diff_min__71_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \calc_diff_min__46_carry_n_4\,
      I1 => abs_diff(11),
      O => \calc_diff_min__71_carry__0_i_1_n_0\
    );
\calc_diff_min__71_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_min__46_carry_n_5\,
      I1 => abs_diff(10),
      O => \calc_diff_min__71_carry__0_i_2_n_0\
    );
\calc_diff_min__71_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_min__46_carry_n_6\,
      I1 => abs_diff(9),
      O => \calc_diff_min__71_carry__0_i_3_n_0\
    );
\calc_diff_min__71_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_min__46_carry_n_7\,
      I1 => abs_diff(8),
      O => \calc_diff_min__71_carry__0_i_4_n_0\
    );
\calc_diff_min__71_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4BB4"
    )
        port map (
      I0 => abs_diff(11),
      I1 => \calc_diff_min__46_carry_n_4\,
      I2 => abs_diff(12),
      I3 => \calc_diff_min__46_carry__0_n_7\,
      O => \calc_diff_min__71_carry__0_i_5_n_0\
    );
\calc_diff_min__71_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => abs_diff(10),
      I1 => \calc_diff_min__46_carry_n_5\,
      I2 => abs_diff(11),
      I3 => \calc_diff_min__46_carry_n_4\,
      O => \calc_diff_min__71_carry__0_i_6_n_0\
    );
\calc_diff_min__71_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => abs_diff(9),
      I1 => \calc_diff_min__46_carry_n_6\,
      I2 => abs_diff(10),
      I3 => \calc_diff_min__46_carry_n_5\,
      O => \calc_diff_min__71_carry__0_i_7_n_0\
    );
\calc_diff_min__71_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => abs_diff(8),
      I1 => \calc_diff_min__46_carry_n_7\,
      I2 => abs_diff(9),
      I3 => \calc_diff_min__46_carry_n_6\,
      O => \calc_diff_min__71_carry__0_i_8_n_0\
    );
\calc_diff_min__71_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min__71_carry__0_n_0\,
      CO(3) => \calc_diff_min__71_carry__1_n_0\,
      CO(2) => \calc_diff_min__71_carry__1_n_1\,
      CO(1) => \calc_diff_min__71_carry__1_n_2\,
      CO(0) => \calc_diff_min__71_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min__71_carry__1_i_1_n_0\,
      DI(2) => \calc_diff_min__71_carry__1_i_2_n_0\,
      DI(1) => \calc_diff_min__71_carry__1_i_3_n_0\,
      DI(0) => \calc_diff_min__71_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_min__71_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_min__71_carry__1_i_5_n_0\,
      S(2) => \calc_diff_min__71_carry__1_i_6_n_0\,
      S(1) => \calc_diff_min__71_carry__1_i_7_n_0\,
      S(0) => \calc_diff_min__71_carry__1_i_8_n_0\
    );
\calc_diff_min__71_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \calc_diff_min__46_carry__0_n_4\,
      I1 => abs_diff(15),
      O => \calc_diff_min__71_carry__1_i_1_n_0\
    );
\calc_diff_min__71_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \calc_diff_min__46_carry__0_n_5\,
      I1 => abs_diff(14),
      O => \calc_diff_min__71_carry__1_i_2_n_0\
    );
\calc_diff_min__71_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \calc_diff_min__46_carry__0_n_6\,
      I1 => abs_diff(13),
      O => \calc_diff_min__71_carry__1_i_3_n_0\
    );
\calc_diff_min__71_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_min__46_carry__0_n_7\,
      I1 => abs_diff(12),
      O => \calc_diff_min__71_carry__1_i_4_n_0\
    );
\calc_diff_min__71_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => abs_diff(15),
      I1 => \calc_diff_min__46_carry__0_n_4\,
      I2 => abs_diff(16),
      I3 => \calc_diff_min__46_carry__1_n_7\,
      O => \calc_diff_min__71_carry__1_i_5_n_0\
    );
\calc_diff_min__71_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => abs_diff(14),
      I1 => \calc_diff_min__46_carry__0_n_5\,
      I2 => \calc_diff_min__46_carry__0_n_4\,
      I3 => abs_diff(15),
      O => \calc_diff_min__71_carry__1_i_6_n_0\
    );
\calc_diff_min__71_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => abs_diff(13),
      I1 => \calc_diff_min__46_carry__0_n_6\,
      I2 => abs_diff(14),
      I3 => \calc_diff_min__46_carry__0_n_5\,
      O => \calc_diff_min__71_carry__1_i_7_n_0\
    );
\calc_diff_min__71_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => abs_diff(12),
      I1 => \calc_diff_min__46_carry__0_n_7\,
      I2 => \calc_diff_min__46_carry__0_n_6\,
      I3 => abs_diff(13),
      O => \calc_diff_min__71_carry__1_i_8_n_0\
    );
\calc_diff_min__71_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_4\,
      I1 => \calc_diff_min__23_carry_n_6\,
      I2 => abs_diff(7),
      O => \calc_diff_min__71_carry_i_1_n_0\
    );
\calc_diff_min__71_carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_min__23_carry_n_7\,
      I1 => abs_diff(6),
      O => \calc_diff_min__71_carry_i_2_n_0\
    );
\calc_diff_min__71_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6F"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_7\,
      I1 => \calc_diff_min_carry__3_n_6\,
      I2 => abs_diff(5),
      O => \calc_diff_min__71_carry_i_3_n_0\
    );
\calc_diff_min__71_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_7\,
      I1 => abs_diff(4),
      O => \calc_diff_min__71_carry_i_4_n_0\
    );
\calc_diff_min__71_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"14EBEB14"
    )
        port map (
      I0 => abs_diff(7),
      I1 => \calc_diff_min__23_carry_n_6\,
      I2 => \calc_diff_min_carry__3_n_4\,
      I3 => abs_diff(8),
      I4 => \calc_diff_min__46_carry_n_7\,
      O => \calc_diff_min__71_carry_i_5_n_0\
    );
\calc_diff_min__71_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \calc_diff_min__71_carry_i_2_n_0\,
      I1 => \calc_diff_min__23_carry_n_6\,
      I2 => \calc_diff_min_carry__3_n_4\,
      I3 => abs_diff(7),
      O => \calc_diff_min__71_carry_i_6_n_0\
    );
\calc_diff_min__71_carry_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69999969"
    )
        port map (
      I0 => \calc_diff_min__23_carry_n_7\,
      I1 => abs_diff(6),
      I2 => abs_diff(5),
      I3 => \calc_diff_min_carry__3_n_6\,
      I4 => \calc_diff_min_carry__3_n_7\,
      O => \calc_diff_min__71_carry_i_7_n_0\
    );
\calc_diff_min__71_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min__71_carry_i_4_n_0\,
      I1 => \calc_diff_min_carry__3_n_6\,
      I2 => \calc_diff_min_carry__3_n_7\,
      I3 => abs_diff(5),
      O => \calc_diff_min__71_carry_i_8_n_0\
    );
calc_diff_min_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => calc_diff_min_carry_n_0,
      CO(2) => calc_diff_min_carry_n_1,
      CO(1) => calc_diff_min_carry_n_2,
      CO(0) => calc_diff_min_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => abs_diff(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => NLW_calc_diff_min_carry_O_UNCONNECTED(3 downto 0),
      S(3) => calc_diff_min_carry_i_1_n_0,
      S(2) => calc_diff_min_carry_i_2_n_0,
      S(1) => calc_diff_min_carry_i_3_n_0,
      S(0) => abs_diff(1)
    );
\calc_diff_min_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => calc_diff_min_carry_n_0,
      CO(3) => \calc_diff_min_carry__0_n_0\,
      CO(2) => \calc_diff_min_carry__0_n_1\,
      CO(1) => \calc_diff_min_carry__0_n_2\,
      CO(0) => \calc_diff_min_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_min_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_min_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_min_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_min_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_min_carry__0_i_5_n_0\,
      S(2) => \calc_diff_min_carry__0_i_6_n_0\,
      S(1) => \calc_diff_min_carry__0_i_7_n_0\,
      S(0) => \calc_diff_min_carry__0_i_8_n_0\
    );
\calc_diff_min_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(5),
      I1 => abs_diff(3),
      I2 => abs_diff(7),
      O => \calc_diff_min_carry__0_i_1_n_0\
    );
\calc_diff_min_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(4),
      I1 => abs_diff(2),
      I2 => abs_diff(6),
      O => \calc_diff_min_carry__0_i_2_n_0\
    );
\calc_diff_min_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(1),
      I1 => abs_diff(3),
      I2 => abs_diff(5),
      O => \calc_diff_min_carry__0_i_3_n_0\
    );
\calc_diff_min_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_diff(0),
      I1 => abs_diff(2),
      O => \calc_diff_min_carry__0_i_4_n_0\
    );
\calc_diff_min_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__0_i_1_n_0\,
      I1 => abs_diff(4),
      I2 => abs_diff(6),
      I3 => abs_diff(8),
      O => \calc_diff_min_carry__0_i_5_n_0\
    );
\calc_diff_min_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__0_i_2_n_0\,
      I1 => abs_diff(5),
      I2 => abs_diff(3),
      I3 => abs_diff(7),
      O => \calc_diff_min_carry__0_i_6_n_0\
    );
\calc_diff_min_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__0_i_3_n_0\,
      I1 => abs_diff(4),
      I2 => abs_diff(2),
      I3 => abs_diff(6),
      O => \calc_diff_min_carry__0_i_7_n_0\
    );
\calc_diff_min_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(3),
      I1 => abs_diff(1),
      I2 => abs_diff(5),
      I3 => \calc_diff_min_carry__0_i_4_n_0\,
      O => \calc_diff_min_carry__0_i_8_n_0\
    );
\calc_diff_min_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min_carry__0_n_0\,
      CO(3) => \calc_diff_min_carry__1_n_0\,
      CO(2) => \calc_diff_min_carry__1_n_1\,
      CO(1) => \calc_diff_min_carry__1_n_2\,
      CO(0) => \calc_diff_min_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min_carry__1_i_1_n_0\,
      DI(2) => \calc_diff_min_carry__1_i_2_n_0\,
      DI(1) => \calc_diff_min_carry__1_i_3_n_0\,
      DI(0) => \calc_diff_min_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_min_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_min_carry__1_i_5_n_0\,
      S(2) => \calc_diff_min_carry__1_i_6_n_0\,
      S(1) => \calc_diff_min_carry__1_i_7_n_0\,
      S(0) => \calc_diff_min_carry__1_i_8_n_0\
    );
\calc_diff_min_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(7),
      I1 => abs_diff(9),
      I2 => abs_diff(11),
      O => \calc_diff_min_carry__1_i_1_n_0\
    );
\calc_diff_min_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(6),
      I1 => abs_diff(8),
      I2 => abs_diff(10),
      O => \calc_diff_min_carry__1_i_2_n_0\
    );
\calc_diff_min_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(5),
      I1 => abs_diff(7),
      I2 => abs_diff(9),
      O => \calc_diff_min_carry__1_i_3_n_0\
    );
\calc_diff_min_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(4),
      I1 => abs_diff(6),
      I2 => abs_diff(8),
      O => \calc_diff_min_carry__1_i_4_n_0\
    );
\calc_diff_min_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__1_i_1_n_0\,
      I1 => abs_diff(8),
      I2 => abs_diff(10),
      I3 => abs_diff(12),
      O => \calc_diff_min_carry__1_i_5_n_0\
    );
\calc_diff_min_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__1_i_2_n_0\,
      I1 => abs_diff(7),
      I2 => abs_diff(9),
      I3 => abs_diff(11),
      O => \calc_diff_min_carry__1_i_6_n_0\
    );
\calc_diff_min_carry__1_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__1_i_3_n_0\,
      I1 => abs_diff(6),
      I2 => abs_diff(8),
      I3 => abs_diff(10),
      O => \calc_diff_min_carry__1_i_7_n_0\
    );
\calc_diff_min_carry__1_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__1_i_4_n_0\,
      I1 => abs_diff(5),
      I2 => abs_diff(7),
      I3 => abs_diff(9),
      O => \calc_diff_min_carry__1_i_8_n_0\
    );
\calc_diff_min_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min_carry__1_n_0\,
      CO(3) => \calc_diff_min_carry__2_n_0\,
      CO(2) => \calc_diff_min_carry__2_n_1\,
      CO(1) => \calc_diff_min_carry__2_n_2\,
      CO(0) => \calc_diff_min_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min_carry__2_i_1_n_0\,
      DI(2) => \calc_diff_min_carry__2_i_2_n_0\,
      DI(1) => \calc_diff_min_carry__2_i_3_n_0\,
      DI(0) => \calc_diff_min_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_min_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_min_carry__2_i_5_n_0\,
      S(2) => \calc_diff_min_carry__2_i_6_n_0\,
      S(1) => \calc_diff_min_carry__2_i_7_n_0\,
      S(0) => \calc_diff_min_carry__2_i_8_n_0\
    );
\calc_diff_min_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(15),
      I1 => abs_diff(11),
      I2 => abs_diff(13),
      O => \calc_diff_min_carry__2_i_1_n_0\
    );
\calc_diff_min_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(10),
      I1 => abs_diff(12),
      I2 => abs_diff(14),
      O => \calc_diff_min_carry__2_i_2_n_0\
    );
\calc_diff_min_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(13),
      I1 => abs_diff(11),
      I2 => abs_diff(9),
      O => \calc_diff_min_carry__2_i_3_n_0\
    );
\calc_diff_min_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(8),
      I1 => abs_diff(10),
      I2 => abs_diff(12),
      O => \calc_diff_min_carry__2_i_4_n_0\
    );
\calc_diff_min_carry__2_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__2_i_1_n_0\,
      I1 => abs_diff(12),
      I2 => abs_diff(14),
      I3 => abs_diff(16),
      O => \calc_diff_min_carry__2_i_5_n_0\
    );
\calc_diff_min_carry__2_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__2_i_2_n_0\,
      I1 => abs_diff(13),
      I2 => abs_diff(11),
      I3 => abs_diff(15),
      O => \calc_diff_min_carry__2_i_6_n_0\
    );
\calc_diff_min_carry__2_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__2_i_3_n_0\,
      I1 => abs_diff(10),
      I2 => abs_diff(12),
      I3 => abs_diff(14),
      O => \calc_diff_min_carry__2_i_7_n_0\
    );
\calc_diff_min_carry__2_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__2_i_4_n_0\,
      I1 => abs_diff(13),
      I2 => abs_diff(11),
      I3 => abs_diff(9),
      O => \calc_diff_min_carry__2_i_8_n_0\
    );
\calc_diff_min_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min_carry__2_n_0\,
      CO(3) => \calc_diff_min_carry__3_n_0\,
      CO(2) => \calc_diff_min_carry__3_n_1\,
      CO(1) => \calc_diff_min_carry__3_n_2\,
      CO(0) => \calc_diff_min_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => abs_diff(15),
      DI(1) => \calc_diff_min_carry__3_i_1_n_0\,
      DI(0) => \calc_diff_min_carry__3_i_2_n_0\,
      O(3) => \calc_diff_min_carry__3_n_4\,
      O(2) => \calc_diff_min_carry__3_n_5\,
      O(1) => \calc_diff_min_carry__3_n_6\,
      O(0) => \calc_diff_min_carry__3_n_7\,
      S(3) => abs_diff(16),
      S(2) => \calc_diff_min_carry__3_i_3_n_0\,
      S(1) => \calc_diff_min_carry__3_i_4_n_0\,
      S(0) => \calc_diff_min_carry__3_i_5_n_0\
    );
\calc_diff_min_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_diff(15),
      I1 => abs_diff(13),
      O => \calc_diff_min_carry__3_i_1_n_0\
    );
\calc_diff_min_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(12),
      I1 => abs_diff(14),
      I2 => abs_diff(16),
      O => \calc_diff_min_carry__3_i_2_n_0\
    );
\calc_diff_min_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => abs_diff(16),
      I1 => abs_diff(14),
      I2 => abs_diff(15),
      O => \calc_diff_min_carry__3_i_3_n_0\
    );
\calc_diff_min_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => abs_diff(13),
      I1 => abs_diff(15),
      I2 => abs_diff(16),
      I3 => abs_diff(14),
      O => \calc_diff_min_carry__3_i_4_n_0\
    );
\calc_diff_min_carry__3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => abs_diff(16),
      I1 => abs_diff(14),
      I2 => abs_diff(12),
      I3 => abs_diff(13),
      I4 => abs_diff(15),
      O => \calc_diff_min_carry__3_i_5_n_0\
    );
calc_diff_min_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => abs_diff(0),
      I1 => abs_diff(2),
      I2 => abs_diff(4),
      O => calc_diff_min_carry_i_1_n_0
    );
calc_diff_min_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(3),
      I1 => abs_diff(1),
      O => calc_diff_min_carry_i_2_n_0
    );
calc_diff_min_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(2),
      I1 => abs_diff(0),
      O => calc_diff_min_carry_i_3_n_0
    );
\calc_diff_sec0__106_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_sec0__106_carry_n_0\,
      CO(2) => \calc_diff_sec0__106_carry_n_1\,
      CO(1) => \calc_diff_sec0__106_carry_n_2\,
      CO(0) => \calc_diff_sec0__106_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"1000",
      O(3) => \calc_diff_sec0__106_carry_n_4\,
      O(2) => \calc_diff_sec0__106_carry_n_5\,
      O(1) => \calc_diff_sec0__106_carry_n_6\,
      O(0) => \calc_diff_sec0__106_carry_n_7\,
      S(3) => \calc_diff_sec0__106_carry_i_1_n_0\,
      S(2) => \calc_diff_sec0__70_carry__0_n_5\,
      S(1) => \calc_diff_sec0__70_carry__0_n_6\,
      S(0) => \calc_diff_sec0__70_carry__0_n_7\
    );
\calc_diff_sec0__106_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__106_carry_n_0\,
      CO(3) => \calc_diff_sec0__106_carry__0_n_0\,
      CO(2) => \calc_diff_sec0__106_carry__0_n_1\,
      CO(1) => \calc_diff_sec0__106_carry__0_n_2\,
      CO(0) => \calc_diff_sec0__106_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1000",
      O(3) => \calc_diff_sec0__106_carry__0_n_4\,
      O(2) => \calc_diff_sec0__106_carry__0_n_5\,
      O(1) => \calc_diff_sec0__106_carry__0_n_6\,
      O(0) => \calc_diff_sec0__106_carry__0_n_7\,
      S(3) => \calc_diff_sec0__106_carry__0_i_1_n_0\,
      S(2) => \calc_diff_sec0__70_carry__1_n_5\,
      S(1) => \calc_diff_sec0__70_carry__1_n_6\,
      S(0) => \calc_diff_sec0__70_carry__1_n_7\
    );
\calc_diff_sec0__106_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__1_n_4\,
      O => \calc_diff_sec0__106_carry__0_i_1_n_0\
    );
\calc_diff_sec0__106_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__106_carry__0_n_0\,
      CO(3 downto 2) => \NLW_calc_diff_sec0__106_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \calc_diff_sec0__106_carry__1_n_2\,
      CO(0) => \calc_diff_sec0__106_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0010",
      O(3 downto 1) => \NLW_calc_diff_sec0__106_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \calc_diff_sec0__106_carry__1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \calc_diff_sec0__106_carry__1_i_1_n_0\,
      S(0) => \calc_diff_sec0__70_carry__2_n_7\
    );
\calc_diff_sec0__106_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__2_n_6\,
      O => \calc_diff_sec0__106_carry__1_i_1_n_0\
    );
\calc_diff_sec0__106_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__0_n_4\,
      O => \calc_diff_sec0__106_carry_i_1_n_0\
    );
\calc_diff_sec0__23_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_sec0__23_carry_n_0\,
      CO(2) => \calc_diff_sec0__23_carry_n_1\,
      CO(1) => \calc_diff_sec0__23_carry_n_2\,
      CO(0) => \calc_diff_sec0__23_carry_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec0__23_carry_i_1_n_0\,
      DI(2) => \calc_diff_sec0__23_carry_i_2_n_0\,
      DI(1) => \calc_diff_sec0__23_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \calc_diff_sec0__23_carry_n_4\,
      O(2) => \calc_diff_sec0__23_carry_n_5\,
      O(1) => \calc_diff_sec0__23_carry_n_6\,
      O(0) => \calc_diff_sec0__23_carry_n_7\,
      S(3) => \calc_diff_sec0__23_carry_i_4_n_0\,
      S(2) => \calc_diff_sec0__23_carry_i_5_n_0\,
      S(1) => \calc_diff_sec0__23_carry_i_6_n_0\,
      S(0) => \calc_diff_sec0__23_carry_i_7_n_0\
    );
\calc_diff_sec0__23_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__23_carry_n_0\,
      CO(3) => \calc_diff_sec0__23_carry__0_n_0\,
      CO(2) => \calc_diff_sec0__23_carry__0_n_1\,
      CO(1) => \calc_diff_sec0__23_carry__0_n_2\,
      CO(0) => \calc_diff_sec0__23_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec0__23_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_sec0__23_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_sec0__23_carry_i_3_n_0\,
      DI(0) => \calc_diff_sec0__23_carry__0_i_3_n_0\,
      O(3) => \calc_diff_sec0__23_carry__0_n_4\,
      O(2) => \calc_diff_sec0__23_carry__0_n_5\,
      O(1) => \calc_diff_sec0__23_carry__0_n_6\,
      O(0) => \calc_diff_sec0__23_carry__0_n_7\,
      S(3) => \calc_diff_sec0__23_carry__0_i_4_n_0\,
      S(2) => \calc_diff_sec0__23_carry__0_i_5_n_0\,
      S(1) => \calc_diff_sec0__23_carry__0_i_6_n_0\,
      S(0) => \calc_diff_sec0__23_carry__0_i_7_n_0\
    );
\calc_diff_sec0__23_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry__0_i_1_n_0\
    );
\calc_diff_sec0__23_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_5\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      I2 => \calc_diff_sec0_carry__3_n_6\,
      O => \calc_diff_sec0__23_carry__0_i_2_n_0\
    );
\calc_diff_sec0__23_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_5\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      O => \calc_diff_sec0__23_carry__0_i_3_n_0\
    );
\calc_diff_sec0__23_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      I2 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry__0_i_4_n_0\
    );
\calc_diff_sec0__23_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_7\,
      I1 => \calc_diff_sec0_carry__3_n_5\,
      I2 => \calc_diff_sec0_carry__3_n_6\,
      O => \calc_diff_sec0__23_carry__0_i_5_n_0\
    );
\calc_diff_sec0__23_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_sec0__23_carry_i_3_n_0\,
      I1 => \calc_diff_sec0_carry__3_n_6\,
      I2 => \calc_diff_sec0_carry__3_n_7\,
      I3 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry__0_i_6_n_0\
    );
\calc_diff_sec0__23_carry__0_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A6"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      I2 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry__0_i_7_n_0\
    );
\calc_diff_sec0__23_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__23_carry__0_n_0\,
      CO(3 downto 0) => \NLW_calc_diff_sec0__23_carry__1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_calc_diff_sec0__23_carry__1_O_UNCONNECTED\(3 downto 1),
      O(0) => \calc_diff_sec0__23_carry__1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \calc_diff_sec0__23_carry__1_i_1_n_0\
    );
\calc_diff_sec0__23_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      I2 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry__1_i_1_n_0\
    );
\calc_diff_sec0__23_carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry_i_1_n_0\
    );
\calc_diff_sec0__23_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_5\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      I2 => \calc_diff_sec0_carry__3_n_6\,
      O => \calc_diff_sec0__23_carry_i_2_n_0\
    );
\calc_diff_sec0__23_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      O => \calc_diff_sec0__23_carry_i_3_n_0\
    );
\calc_diff_sec0__23_carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9C"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      I2 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry_i_4_n_0\
    );
\calc_diff_sec0__23_carry_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D4"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_7\,
      I1 => \calc_diff_sec0_carry__3_n_5\,
      I2 => \calc_diff_sec0_carry__3_n_6\,
      O => \calc_diff_sec0__23_carry_i_5_n_0\
    );
\calc_diff_sec0__23_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_sec0__23_carry_i_3_n_0\,
      I1 => \calc_diff_sec0_carry__3_n_6\,
      I2 => \calc_diff_sec0_carry__3_n_7\,
      I3 => \calc_diff_sec0_carry__3_n_5\,
      O => \calc_diff_sec0__23_carry_i_6_n_0\
    );
\calc_diff_sec0__23_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_6\,
      I1 => \calc_diff_sec0_carry__3_n_7\,
      O => \calc_diff_sec0__23_carry_i_7_n_0\
    );
\calc_diff_sec0__45_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_sec0__45_carry_n_0\,
      CO(2) => \calc_diff_sec0__45_carry_n_1\,
      CO(1) => \calc_diff_sec0__45_carry_n_2\,
      CO(0) => \calc_diff_sec0__45_carry_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \calc_diff_sec0__23_carry_n_7\,
      DI(1) => \calc_diff_sec0_carry__3_n_7\,
      DI(0) => '0',
      O(3) => \calc_diff_sec0__45_carry_n_4\,
      O(2) => \calc_diff_sec0__45_carry_n_5\,
      O(1) => \calc_diff_sec0__45_carry_n_6\,
      O(0) => \NLW_calc_diff_sec0__45_carry_O_UNCONNECTED\(0),
      S(3) => \calc_diff_sec0__23_carry_n_6\,
      S(2) => \calc_diff_sec0__23_carry_n_7\,
      S(1) => \calc_diff_sec0_carry__3_n_7\,
      S(0) => '0'
    );
\calc_diff_sec0__45_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__45_carry_n_0\,
      CO(3) => \calc_diff_sec0__45_carry__0_n_0\,
      CO(2) => \calc_diff_sec0__45_carry__0_n_1\,
      CO(1) => \calc_diff_sec0__45_carry__0_n_2\,
      CO(0) => \calc_diff_sec0__45_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec0__45_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_sec0__45_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_sec0__45_carry__0_i_3_n_0\,
      DI(0) => '0',
      O(3) => \calc_diff_sec0__45_carry__0_n_4\,
      O(2) => \calc_diff_sec0__45_carry__0_n_5\,
      O(1) => \calc_diff_sec0__45_carry__0_n_6\,
      O(0) => \calc_diff_sec0__45_carry__0_n_7\,
      S(3) => \calc_diff_sec0__45_carry__0_i_4_n_0\,
      S(2) => \calc_diff_sec0__45_carry__0_i_5_n_0\,
      S(1) => \calc_diff_sec0__45_carry__0_i_6_n_0\,
      S(0) => \calc_diff_sec0__45_carry__0_i_7_n_0\
    );
\calc_diff_sec0__45_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      I1 => \calc_diff_sec0__23_carry__0_n_7\,
      I2 => \calc_diff_sec0_carry__3_n_4\,
      O => \calc_diff_sec0__45_carry__0_i_1_n_0\
    );
\calc_diff_sec0__45_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => \calc_diff_sec0__23_carry_n_4\,
      I1 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      I2 => \calc_diff_sec0_carry__3_n_4\,
      O => \calc_diff_sec0__45_carry__0_i_2_n_0\
    );
\calc_diff_sec0__45_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_sec0__23_carry_n_5\,
      I1 => \calc_diff_sec0_carry__3_n_4\,
      O => \calc_diff_sec0__45_carry__0_i_3_n_0\
    );
\calc_diff_sec0__45_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E178"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_4\,
      I1 => \calc_diff_sec0__23_carry__0_n_7\,
      I2 => \calc_diff_sec0__23_carry__0_n_6\,
      I3 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      O => \calc_diff_sec0__45_carry__0_i_4_n_0\
    );
\calc_diff_sec0__45_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_sec0__45_carry__0_i_2_n_0\,
      I1 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      I2 => \calc_diff_sec0__23_carry__0_n_7\,
      I3 => \calc_diff_sec0_carry__3_n_4\,
      O => \calc_diff_sec0__45_carry__0_i_5_n_0\
    );
\calc_diff_sec0__45_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_sec0__23_carry_n_4\,
      I1 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      I2 => \calc_diff_sec0_carry__3_n_4\,
      I3 => \calc_diff_sec0__45_carry__0_i_3_n_0\,
      O => \calc_diff_sec0__45_carry__0_i_6_n_0\
    );
\calc_diff_sec0__45_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \calc_diff_sec0__23_carry_n_5\,
      I1 => \calc_diff_sec0_carry__3_n_4\,
      O => \calc_diff_sec0__45_carry__0_i_7_n_0\
    );
\calc_diff_sec0__45_carry__0_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0_carry__3_n_0\,
      CO(3 downto 1) => \NLW_calc_diff_sec0__45_carry__0_i_8_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_calc_diff_sec0__45_carry__0_i_8_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\calc_diff_sec0__45_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__45_carry__0_n_0\,
      CO(3 downto 2) => \NLW_calc_diff_sec0__45_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \calc_diff_sec0__45_carry__1_n_2\,
      CO(0) => \calc_diff_sec0__45_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \calc_diff_sec0__45_carry__1_i_1_n_0\,
      DI(0) => \calc_diff_sec0__45_carry__1_i_2_n_0\,
      O(3) => \NLW_calc_diff_sec0__45_carry__1_O_UNCONNECTED\(3),
      O(2) => \calc_diff_sec0__45_carry__1_n_5\,
      O(1) => \calc_diff_sec0__45_carry__1_n_6\,
      O(0) => \calc_diff_sec0__45_carry__1_n_7\,
      S(3) => '0',
      S(2) => \calc_diff_sec0__45_carry__1_i_3_n_0\,
      S(1) => \calc_diff_sec0__45_carry__1_i_4_n_0\,
      S(0) => \calc_diff_sec0__45_carry__1_i_5_n_0\
    );
\calc_diff_sec0__45_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_4\,
      I1 => \calc_diff_sec0__23_carry__0_n_5\,
      O => \calc_diff_sec0__45_carry__1_i_1_n_0\
    );
\calc_diff_sec0__45_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      I1 => \calc_diff_sec0__23_carry__0_n_6\,
      O => \calc_diff_sec0__45_carry__1_i_2_n_0\
    );
\calc_diff_sec0__45_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"65A6"
    )
        port map (
      I0 => \calc_diff_sec0__23_carry__1_n_7\,
      I1 => \calc_diff_sec0_carry__3_n_4\,
      I2 => \calc_diff_sec0__23_carry__0_n_4\,
      I3 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      O => \calc_diff_sec0__45_carry__1_i_3_n_0\
    );
\calc_diff_sec0__45_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_sec0__45_carry__1_i_1_n_0\,
      I1 => \calc_diff_sec0_carry__3_n_4\,
      I2 => \calc_diff_sec0__23_carry__0_n_4\,
      I3 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      O => \calc_diff_sec0__45_carry__1_i_4_n_0\
    );
\calc_diff_sec0__45_carry__1_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9666"
    )
        port map (
      I0 => \calc_diff_sec0_carry__3_n_4\,
      I1 => \calc_diff_sec0__23_carry__0_n_5\,
      I2 => \calc_diff_sec0__23_carry__0_n_6\,
      I3 => \calc_diff_sec0__45_carry__0_i_8_n_3\,
      O => \calc_diff_sec0__45_carry__1_i_5_n_0\
    );
\calc_diff_sec0__70_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_sec0__70_carry_n_0\,
      CO(2) => \calc_diff_sec0__70_carry_n_1\,
      CO(1) => \calc_diff_sec0__70_carry_n_2\,
      CO(0) => \calc_diff_sec0__70_carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => abs_diff(3 downto 0),
      O(3 downto 1) => calc_diff_sec0(3 downto 1),
      O(0) => calc_diff_csec(0),
      S(3) => \calc_diff_sec0__70_carry_i_1_n_0\,
      S(2) => \calc_diff_sec0__70_carry_i_2_n_0\,
      S(1) => \calc_diff_sec0__70_carry_i_3_n_0\,
      S(0) => \calc_diff_sec0__70_carry_i_4_n_0\
    );
\calc_diff_sec0__70_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__70_carry_n_0\,
      CO(3) => \calc_diff_sec0__70_carry__0_n_0\,
      CO(2) => \calc_diff_sec0__70_carry__0_n_1\,
      CO(1) => \calc_diff_sec0__70_carry__0_n_2\,
      CO(0) => \calc_diff_sec0__70_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_diff(7 downto 4),
      O(3) => \calc_diff_sec0__70_carry__0_n_4\,
      O(2) => \calc_diff_sec0__70_carry__0_n_5\,
      O(1) => \calc_diff_sec0__70_carry__0_n_6\,
      O(0) => \calc_diff_sec0__70_carry__0_n_7\,
      S(3) => \calc_diff_sec0__70_carry__0_i_1_n_0\,
      S(2) => \calc_diff_sec0__70_carry__0_i_2_n_0\,
      S(1) => \calc_diff_sec0__70_carry__0_i_3_n_0\,
      S(0) => \calc_diff_sec0__70_carry__0_i_4_n_0\
    );
\calc_diff_sec0__70_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(7),
      I1 => \calc_diff_sec0__45_carry__0_n_7\,
      O => \calc_diff_sec0__70_carry__0_i_1_n_0\
    );
\calc_diff_sec0__70_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(6),
      I1 => \calc_diff_sec0__45_carry_n_4\,
      O => \calc_diff_sec0__70_carry__0_i_2_n_0\
    );
\calc_diff_sec0__70_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(5),
      I1 => \calc_diff_sec0__45_carry_n_5\,
      O => \calc_diff_sec0__70_carry__0_i_3_n_0\
    );
\calc_diff_sec0__70_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(4),
      I1 => \calc_diff_sec0__45_carry_n_6\,
      O => \calc_diff_sec0__70_carry__0_i_4_n_0\
    );
\calc_diff_sec0__70_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__70_carry__0_n_0\,
      CO(3) => \calc_diff_sec0__70_carry__1_n_0\,
      CO(2) => \calc_diff_sec0__70_carry__1_n_1\,
      CO(1) => \calc_diff_sec0__70_carry__1_n_2\,
      CO(0) => \calc_diff_sec0__70_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => abs_diff(11 downto 8),
      O(3) => \calc_diff_sec0__70_carry__1_n_4\,
      O(2) => \calc_diff_sec0__70_carry__1_n_5\,
      O(1) => \calc_diff_sec0__70_carry__1_n_6\,
      O(0) => \calc_diff_sec0__70_carry__1_n_7\,
      S(3) => \calc_diff_sec0__70_carry__1_i_1_n_0\,
      S(2) => \calc_diff_sec0__70_carry__1_i_2_n_0\,
      S(1) => \calc_diff_sec0__70_carry__1_i_3_n_0\,
      S(0) => \calc_diff_sec0__70_carry__1_i_4_n_0\
    );
\calc_diff_sec0__70_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(11),
      I1 => \calc_diff_sec0__45_carry__1_n_7\,
      O => \calc_diff_sec0__70_carry__1_i_1_n_0\
    );
\calc_diff_sec0__70_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(10),
      I1 => \calc_diff_sec0__45_carry__0_n_4\,
      O => \calc_diff_sec0__70_carry__1_i_2_n_0\
    );
\calc_diff_sec0__70_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(9),
      I1 => \calc_diff_sec0__45_carry__0_n_5\,
      O => \calc_diff_sec0__70_carry__1_i_3_n_0\
    );
\calc_diff_sec0__70_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(8),
      I1 => \calc_diff_sec0__45_carry__0_n_6\,
      O => \calc_diff_sec0__70_carry__1_i_4_n_0\
    );
\calc_diff_sec0__70_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0__70_carry__1_n_0\,
      CO(3 downto 1) => \NLW_calc_diff_sec0__70_carry__2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \calc_diff_sec0__70_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => abs_diff(12),
      O(3 downto 2) => \NLW_calc_diff_sec0__70_carry__2_O_UNCONNECTED\(3 downto 2),
      O(1) => \calc_diff_sec0__70_carry__2_n_6\,
      O(0) => \calc_diff_sec0__70_carry__2_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \calc_diff_sec0__70_carry__2_i_1_n_0\,
      S(0) => \calc_diff_sec0__70_carry__2_i_2_n_0\
    );
\calc_diff_sec0__70_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(13),
      I1 => \calc_diff_sec0__45_carry__1_n_5\,
      O => \calc_diff_sec0__70_carry__2_i_1_n_0\
    );
\calc_diff_sec0__70_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => abs_diff(12),
      I1 => \calc_diff_sec0__45_carry__1_n_6\,
      O => \calc_diff_sec0__70_carry__2_i_2_n_0\
    );
\calc_diff_sec0__70_carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(3),
      O => \calc_diff_sec0__70_carry_i_1_n_0\
    );
\calc_diff_sec0__70_carry_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(2),
      O => \calc_diff_sec0__70_carry_i_2_n_0\
    );
\calc_diff_sec0__70_carry_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(1),
      O => \calc_diff_sec0__70_carry_i_3_n_0\
    );
\calc_diff_sec0__70_carry_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => abs_diff(0),
      O => \calc_diff_sec0__70_carry_i_4_n_0\
    );
calc_diff_sec0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => calc_diff_sec0_carry_n_0,
      CO(2) => calc_diff_sec0_carry_n_1,
      CO(1) => calc_diff_sec0_carry_n_2,
      CO(0) => calc_diff_sec0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => abs_diff(4 downto 2),
      DI(0) => '0',
      O(3 downto 0) => NLW_calc_diff_sec0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => calc_diff_sec0_carry_i_1_n_0,
      S(2) => calc_diff_sec0_carry_i_2_n_0,
      S(1) => calc_diff_sec0_carry_i_3_n_0,
      S(0) => abs_diff(1)
    );
\calc_diff_sec0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => calc_diff_sec0_carry_n_0,
      CO(3) => \calc_diff_sec0_carry__0_n_0\,
      CO(2) => \calc_diff_sec0_carry__0_n_1\,
      CO(1) => \calc_diff_sec0_carry__0_n_2\,
      CO(0) => \calc_diff_sec0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_min_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_min_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_min_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_sec0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_sec0_carry__0_i_1_n_0\,
      S(2) => \calc_diff_sec0_carry__0_i_2_n_0\,
      S(1) => \calc_diff_sec0_carry__0_i_3_n_0\,
      S(0) => \calc_diff_sec0_carry__0_i_4_n_0\
    );
\calc_diff_sec0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(4),
      I1 => abs_diff(6),
      I2 => abs_diff(8),
      I3 => \calc_diff_min_carry__0_i_1_n_0\,
      O => \calc_diff_sec0_carry__0_i_1_n_0\
    );
\calc_diff_sec0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(5),
      I1 => abs_diff(3),
      I2 => abs_diff(7),
      I3 => \calc_diff_min_carry__0_i_2_n_0\,
      O => \calc_diff_sec0_carry__0_i_2_n_0\
    );
\calc_diff_sec0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(4),
      I1 => abs_diff(2),
      I2 => abs_diff(6),
      I3 => \calc_diff_min_carry__0_i_3_n_0\,
      O => \calc_diff_sec0_carry__0_i_3_n_0\
    );
\calc_diff_sec0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(1),
      I1 => abs_diff(3),
      I2 => abs_diff(5),
      I3 => \calc_diff_min_carry__0_i_4_n_0\,
      O => \calc_diff_sec0_carry__0_i_4_n_0\
    );
\calc_diff_sec0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0_carry__0_n_0\,
      CO(3) => \calc_diff_sec0_carry__1_n_0\,
      CO(2) => \calc_diff_sec0_carry__1_n_1\,
      CO(1) => \calc_diff_sec0_carry__1_n_2\,
      CO(0) => \calc_diff_sec0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min_carry__1_i_1_n_0\,
      DI(2) => \calc_diff_min_carry__1_i_2_n_0\,
      DI(1) => \calc_diff_min_carry__1_i_3_n_0\,
      DI(0) => \calc_diff_min_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_sec0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_sec0_carry__1_i_1_n_0\,
      S(2) => \calc_diff_sec0_carry__1_i_2_n_0\,
      S(1) => \calc_diff_sec0_carry__1_i_3_n_0\,
      S(0) => \calc_diff_sec0_carry__1_i_4_n_0\
    );
\calc_diff_sec0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(8),
      I1 => abs_diff(10),
      I2 => abs_diff(12),
      I3 => \calc_diff_min_carry__1_i_1_n_0\,
      O => \calc_diff_sec0_carry__1_i_1_n_0\
    );
\calc_diff_sec0_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(7),
      I1 => abs_diff(9),
      I2 => abs_diff(11),
      I3 => \calc_diff_min_carry__1_i_2_n_0\,
      O => \calc_diff_sec0_carry__1_i_2_n_0\
    );
\calc_diff_sec0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(6),
      I1 => abs_diff(8),
      I2 => abs_diff(10),
      I3 => \calc_diff_min_carry__1_i_3_n_0\,
      O => \calc_diff_sec0_carry__1_i_3_n_0\
    );
\calc_diff_sec0_carry__1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(5),
      I1 => abs_diff(7),
      I2 => abs_diff(9),
      I3 => \calc_diff_min_carry__1_i_4_n_0\,
      O => \calc_diff_sec0_carry__1_i_4_n_0\
    );
\calc_diff_sec0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0_carry__1_n_0\,
      CO(3) => \calc_diff_sec0_carry__2_n_0\,
      CO(2) => \calc_diff_sec0_carry__2_n_1\,
      CO(1) => \calc_diff_sec0_carry__2_n_2\,
      CO(0) => \calc_diff_sec0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_min_carry__2_i_1_n_0\,
      DI(2) => \calc_diff_min_carry__2_i_2_n_0\,
      DI(1) => \calc_diff_min_carry__2_i_3_n_0\,
      DI(0) => \calc_diff_min_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_sec0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_sec0_carry__2_i_1_n_0\,
      S(2) => \calc_diff_sec0_carry__2_i_2_n_0\,
      S(1) => \calc_diff_sec0_carry__2_i_3_n_0\,
      S(0) => \calc_diff_sec0_carry__2_i_4_n_0\
    );
\calc_diff_sec0_carry__2_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => \calc_diff_min_carry__2_i_1_n_0\,
      I1 => abs_diff(12),
      I2 => abs_diff(14),
      I3 => abs_diff(16),
      O => \calc_diff_sec0_carry__2_i_1_n_0\
    );
\calc_diff_sec0_carry__2_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(15),
      I1 => abs_diff(11),
      I2 => abs_diff(13),
      I3 => \calc_diff_min_carry__2_i_2_n_0\,
      O => \calc_diff_sec0_carry__2_i_2_n_0\
    );
\calc_diff_sec0_carry__2_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(10),
      I1 => abs_diff(12),
      I2 => abs_diff(14),
      I3 => \calc_diff_min_carry__2_i_3_n_0\,
      O => \calc_diff_sec0_carry__2_i_3_n_0\
    );
\calc_diff_sec0_carry__2_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => abs_diff(13),
      I1 => abs_diff(11),
      I2 => abs_diff(9),
      I3 => \calc_diff_min_carry__2_i_4_n_0\,
      O => \calc_diff_sec0_carry__2_i_4_n_0\
    );
\calc_diff_sec0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec0_carry__2_n_0\,
      CO(3) => \calc_diff_sec0_carry__3_n_0\,
      CO(2) => \calc_diff_sec0_carry__3_n_1\,
      CO(1) => \calc_diff_sec0_carry__3_n_2\,
      CO(0) => \calc_diff_sec0_carry__3_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => abs_diff(15),
      DI(1) => \calc_diff_sec0_carry__3_i_1_n_0\,
      DI(0) => \calc_diff_sec0_carry__3_i_2_n_0\,
      O(3) => \calc_diff_sec0_carry__3_n_4\,
      O(2) => \calc_diff_sec0_carry__3_n_5\,
      O(1) => \calc_diff_sec0_carry__3_n_6\,
      O(0) => \calc_diff_sec0_carry__3_n_7\,
      S(3) => abs_diff(16),
      S(2) => \calc_diff_sec0_carry__3_i_3_n_0\,
      S(1) => \calc_diff_sec0_carry__3_i_4_n_0\,
      S(0) => \calc_diff_sec0_carry__3_i_5_n_0\
    );
\calc_diff_sec0_carry__3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => abs_diff(15),
      I1 => abs_diff(13),
      O => \calc_diff_sec0_carry__3_i_1_n_0\
    );
\calc_diff_sec0_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E8"
    )
        port map (
      I0 => abs_diff(12),
      I1 => abs_diff(14),
      I2 => abs_diff(16),
      O => \calc_diff_sec0_carry__3_i_2_n_0\
    );
\calc_diff_sec0_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => abs_diff(16),
      I1 => abs_diff(14),
      I2 => abs_diff(15),
      O => \calc_diff_sec0_carry__3_i_3_n_0\
    );
\calc_diff_sec0_carry__3_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8778"
    )
        port map (
      I0 => abs_diff(13),
      I1 => abs_diff(15),
      I2 => abs_diff(16),
      I3 => abs_diff(14),
      O => \calc_diff_sec0_carry__3_i_4_n_0\
    );
\calc_diff_sec0_carry__3_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => abs_diff(16),
      I1 => abs_diff(14),
      I2 => abs_diff(12),
      I3 => abs_diff(13),
      I4 => abs_diff(15),
      O => \calc_diff_sec0_carry__3_i_5_n_0\
    );
calc_diff_sec0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => abs_diff(0),
      I1 => abs_diff(2),
      I2 => abs_diff(4),
      O => calc_diff_sec0_carry_i_1_n_0
    );
calc_diff_sec0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(3),
      I1 => abs_diff(1),
      O => calc_diff_sec0_carry_i_2_n_0
    );
calc_diff_sec0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => abs_diff(2),
      I1 => abs_diff(0),
      O => calc_diff_sec0_carry_i_3_n_0
    );
\calc_diff_sec__1_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_sec__1_carry_n_0\,
      CO(2) => \calc_diff_sec__1_carry_n_1\,
      CO(1) => \calc_diff_sec__1_carry_n_2\,
      CO(0) => \calc_diff_sec__1_carry_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec__1_carry_i_1_n_0\,
      DI(2) => \calc_diff_sec__1_carry_i_2_n_0\,
      DI(1) => \calc_diff_sec__1_carry_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_calc_diff_sec__1_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_sec__1_carry_i_4_n_0\,
      S(2) => \calc_diff_sec__1_carry_i_5_n_0\,
      S(1) => \calc_diff_sec__1_carry_i_6_n_0\,
      S(0) => calc_diff_sec0(3)
    );
\calc_diff_sec__1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec__1_carry_n_0\,
      CO(3) => \calc_diff_sec__1_carry__0_n_0\,
      CO(2) => \calc_diff_sec__1_carry__0_n_1\,
      CO(1) => \calc_diff_sec__1_carry__0_n_2\,
      CO(0) => \calc_diff_sec__1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec__1_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_sec__1_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_sec__1_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_sec__1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_sec__1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_sec__1_carry__0_i_5_n_0\,
      S(2) => \calc_diff_sec__1_carry__0_i_6_n_0\,
      S(1) => \calc_diff_sec__1_carry__0_i_7_n_0\,
      S(0) => \calc_diff_sec__1_carry__0_i_8_n_0\
    );
\calc_diff_sec__1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEAE0EF8A8A808"
    )
        port map (
      I0 => calc_diff_sec0(3),
      I1 => \calc_diff_sec0__70_carry__0_n_6\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry_n_6\,
      I4 => \calc_diff_sec0__106_carry__0_n_6\,
      I5 => \calc_diff_sec0__70_carry__1_n_6\,
      O => \calc_diff_sec__1_carry__0_i_1_n_0\
    );
\calc_diff_sec__1_carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_5\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_5\,
      O => calc_diff_sec0(6)
    );
\calc_diff_sec__1_carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_6\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_6\,
      O => calc_diff_sec0(5)
    );
\calc_diff_sec__1_carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_4\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_4\,
      O => calc_diff_sec0(7)
    );
\calc_diff_sec__1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEAEAE0EF8A8A808"
    )
        port map (
      I0 => calc_diff_sec0(2),
      I1 => \calc_diff_sec0__70_carry__0_n_7\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry_n_7\,
      I4 => \calc_diff_sec0__106_carry__0_n_7\,
      I5 => \calc_diff_sec0__70_carry__1_n_7\,
      O => \calc_diff_sec__1_carry__0_i_2_n_0\
    );
\calc_diff_sec__1_carry__0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8B800"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_4\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_4\,
      I3 => calc_diff_sec0(1),
      I4 => calc_diff_sec0(3),
      O => \calc_diff_sec__1_carry__0_i_3_n_0\
    );
\calc_diff_sec__1_carry__0_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E21D1DE2"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__0_n_4\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__106_carry_n_4\,
      I3 => calc_diff_sec0(3),
      I4 => calc_diff_sec0(1),
      O => \calc_diff_sec__1_carry__0_i_4_n_0\
    );
\calc_diff_sec__1_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656A9A959A95656A"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__0_i_1_n_0\,
      I1 => \calc_diff_sec0__106_carry__0_n_5\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__70_carry__1_n_5\,
      I4 => calc_diff_sec0(4),
      I5 => calc_diff_sec0(6),
      O => \calc_diff_sec__1_carry__0_i_5_n_0\
    );
\calc_diff_sec__1_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656A9A959A95656A"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__0_i_2_n_0\,
      I1 => \calc_diff_sec0__106_carry__0_n_6\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__70_carry__1_n_6\,
      I4 => calc_diff_sec0(3),
      I5 => calc_diff_sec0(5),
      O => \calc_diff_sec__1_carry__0_i_6_n_0\
    );
\calc_diff_sec__1_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"656A9A959A95656A"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__0_i_3_n_0\,
      I1 => \calc_diff_sec0__106_carry__0_n_7\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__70_carry__1_n_7\,
      I4 => calc_diff_sec0(2),
      I5 => calc_diff_sec0(4),
      O => \calc_diff_sec__1_carry__0_i_7_n_0\
    );
\calc_diff_sec__1_carry__0_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => calc_diff_sec0(1),
      I1 => calc_diff_sec0(3),
      I2 => calc_diff_sec0(7),
      I3 => abs_diff(0),
      I4 => calc_diff_sec0(2),
      O => \calc_diff_sec__1_carry__0_i_8_n_0\
    );
\calc_diff_sec__1_carry__0_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_7\,
      O => calc_diff_sec0(4)
    );
\calc_diff_sec__1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec__1_carry__0_n_0\,
      CO(3) => \calc_diff_sec__1_carry__1_n_0\,
      CO(2) => \calc_diff_sec__1_carry__1_n_1\,
      CO(1) => \calc_diff_sec__1_carry__1_n_2\,
      CO(0) => \calc_diff_sec__1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec__1_carry__1_i_1_n_0\,
      DI(2) => \calc_diff_sec__1_carry__1_i_2_n_0\,
      DI(1) => \calc_diff_sec__1_carry__1_i_3_n_0\,
      DI(0) => \calc_diff_sec__1_carry__1_i_4_n_0\,
      O(3) => \calc_diff_sec__1_carry__1_n_4\,
      O(2) => \calc_diff_sec__1_carry__1_n_5\,
      O(1 downto 0) => \NLW_calc_diff_sec__1_carry__1_O_UNCONNECTED\(1 downto 0),
      S(3) => \calc_diff_sec__1_carry__1_i_5_n_0\,
      S(2) => \calc_diff_sec__1_carry__1_i_6_n_0\,
      S(1) => \calc_diff_sec__1_carry__1_i_7_n_0\,
      S(0) => \calc_diff_sec__1_carry__1_i_8_n_0\
    );
\calc_diff_sec__1_carry__1_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__0_n_4\,
      I1 => \calc_diff_sec0__106_carry_n_4\,
      I2 => \calc_diff_sec0__70_carry__1_n_6\,
      I3 => \calc_diff_sec0__106_carry__1_n_2\,
      I4 => \calc_diff_sec0__106_carry__0_n_6\,
      O => \calc_diff_sec__1_carry__1_i_1_n_0\
    );
\calc_diff_sec__1_carry__1_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_7\,
      O => \calc_diff_sec__1_carry__1_i_10_n_0\
    );
\calc_diff_sec__1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8FC88BB30B800"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__1_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__2_n_7\,
      I3 => calc_diff_sec0(6),
      I4 => \calc_diff_sec0__70_carry__1_n_7\,
      I5 => \calc_diff_sec0__106_carry__0_n_7\,
      O => \calc_diff_sec__1_carry__1_i_2_n_0\
    );
\calc_diff_sec__1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8FC88BB30B800"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_4\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_4\,
      I3 => calc_diff_sec0(5),
      I4 => \calc_diff_sec0__70_carry__0_n_4\,
      I5 => \calc_diff_sec0__106_carry_n_4\,
      O => \calc_diff_sec__1_carry__1_i_3_n_0\
    );
\calc_diff_sec__1_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCBBB8B8883000"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_5\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_5\,
      I3 => \calc_diff_sec0__70_carry__0_n_7\,
      I4 => \calc_diff_sec0__106_carry_n_7\,
      I5 => calc_diff_sec0(6),
      O => \calc_diff_sec__1_carry__1_i_4_n_0\
    );
\calc_diff_sec__1_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B80047FF47FFB800"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_6\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_6\,
      I3 => calc_diff_sec0(7),
      I4 => \calc_diff_sec__1_carry__1_i_9_n_0\,
      I5 => \calc_diff_sec__1_carry__1_i_10_n_0\,
      O => \calc_diff_sec__1_carry__1_i_5_n_0\
    );
\calc_diff_sec__1_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A956A65959A656A"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_i_2_n_0\,
      I1 => \calc_diff_sec0__106_carry__0_n_6\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__70_carry__1_n_6\,
      I4 => \calc_diff_sec0__106_carry_n_4\,
      I5 => \calc_diff_sec0__70_carry__0_n_4\,
      O => \calc_diff_sec__1_carry__1_i_6_n_0\
    );
\calc_diff_sec__1_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_i_3_n_0\,
      I1 => calc_diff_sec0(6),
      I2 => \calc_diff_sec__1_carry__1_i_10_n_0\,
      I3 => \calc_diff_sec0__106_carry__1_n_7\,
      I4 => \calc_diff_sec0__106_carry__1_n_2\,
      I5 => \calc_diff_sec0__70_carry__2_n_7\,
      O => \calc_diff_sec__1_carry__1_i_7_n_0\
    );
\calc_diff_sec__1_carry__1_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996696969969696"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_i_4_n_0\,
      I1 => calc_diff_sec0(5),
      I2 => calc_diff_sec0(7),
      I3 => \calc_diff_sec0__106_carry__0_n_4\,
      I4 => \calc_diff_sec0__106_carry__1_n_2\,
      I5 => \calc_diff_sec0__70_carry__1_n_4\,
      O => \calc_diff_sec__1_carry__1_i_8_n_0\
    );
\calc_diff_sec__1_carry__1_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_5\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_5\,
      O => \calc_diff_sec__1_carry__1_i_9_n_0\
    );
\calc_diff_sec__1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec__1_carry__1_n_0\,
      CO(3) => \calc_diff_sec__1_carry__2_n_0\,
      CO(2) => \calc_diff_sec__1_carry__2_n_1\,
      CO(1) => \calc_diff_sec__1_carry__2_n_2\,
      CO(0) => \calc_diff_sec__1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => calc_diff_sec0(11),
      DI(1) => \calc_diff_sec__1_carry__2_i_2_n_0\,
      DI(0) => \calc_diff_sec__1_carry__2_i_3_n_0\,
      O(3) => \calc_diff_sec__1_carry__2_n_4\,
      O(2) => \calc_diff_sec__1_carry__2_n_5\,
      O(1) => \calc_diff_sec__1_carry__2_n_6\,
      O(0) => \calc_diff_sec__1_carry__2_n_7\,
      S(3) => \calc_diff_sec__1_carry__2_i_4_n_0\,
      S(2) => \calc_diff_sec__1_carry__2_i_5_n_0\,
      S(1) => \calc_diff_sec__1_carry__2_i_6_n_0\,
      S(0) => \calc_diff_sec__1_carry__2_i_7_n_0\
    );
\calc_diff_sec__1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_4\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_4\,
      O => calc_diff_sec0(11)
    );
\calc_diff_sec__1_carry__2_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__1_n_4\,
      I1 => \calc_diff_sec0__106_carry__0_n_4\,
      I2 => \calc_diff_sec0__70_carry__1_n_6\,
      I3 => \calc_diff_sec0__106_carry__1_n_2\,
      I4 => \calc_diff_sec0__106_carry__0_n_6\,
      O => \calc_diff_sec__1_carry__2_i_2_n_0\
    );
\calc_diff_sec__1_carry__2_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__1_n_7\,
      I1 => \calc_diff_sec0__106_carry__0_n_7\,
      I2 => \calc_diff_sec0__70_carry__1_n_5\,
      I3 => \calc_diff_sec0__106_carry__1_n_2\,
      I4 => \calc_diff_sec0__106_carry__0_n_5\,
      O => \calc_diff_sec__1_carry__2_i_3_n_0\
    );
\calc_diff_sec__1_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__1_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__2_n_7\,
      O => \calc_diff_sec__1_carry__2_i_4_n_0\
    );
\calc_diff_sec__1_carry__2_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"47CF77FFB8308800"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_5\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_5\,
      I3 => \calc_diff_sec0__106_carry__1_n_7\,
      I4 => \calc_diff_sec0__70_carry__2_n_7\,
      I5 => calc_diff_sec0(11),
      O => \calc_diff_sec__1_carry__2_i_5_n_0\
    );
\calc_diff_sec__1_carry__2_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8778878787787878"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_i_8_n_0\,
      I1 => calc_diff_sec0(11),
      I2 => \calc_diff_sec__1_carry__1_i_9_n_0\,
      I3 => \calc_diff_sec0__106_carry__1_n_7\,
      I4 => \calc_diff_sec0__106_carry__1_n_2\,
      I5 => \calc_diff_sec0__70_carry__2_n_7\,
      O => \calc_diff_sec__1_carry__2_i_6_n_0\
    );
\calc_diff_sec__1_carry__2_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B80047FF47FFB800"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_5\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_5\,
      I3 => \calc_diff_sec__1_carry__1_i_10_n_0\,
      I4 => \calc_diff_sec__1_carry__2_i_8_n_0\,
      I5 => calc_diff_sec0(11),
      O => \calc_diff_sec__1_carry__2_i_7_n_0\
    );
\calc_diff_sec__1_carry__2_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_6\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_6\,
      O => \calc_diff_sec__1_carry__2_i_8_n_0\
    );
\calc_diff_sec__1_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_5\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_5\,
      O => \calc_diff_sec__1_carry_i_1_n_0\
    );
\calc_diff_sec__1_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_6\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_6\,
      O => \calc_diff_sec__1_carry_i_2_n_0\
    );
\calc_diff_sec__1_carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_7\,
      O => \calc_diff_sec__1_carry_i_3_n_0\
    );
\calc_diff_sec__1_carry_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => abs_diff(0),
      I1 => calc_diff_sec0(2),
      I2 => \calc_diff_sec0__70_carry__0_n_5\,
      I3 => \calc_diff_sec0__106_carry__1_n_2\,
      I4 => \calc_diff_sec0__106_carry_n_5\,
      O => \calc_diff_sec__1_carry_i_4_n_0\
    );
\calc_diff_sec__1_carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__0_n_6\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__106_carry_n_6\,
      I3 => calc_diff_sec0(1),
      O => \calc_diff_sec__1_carry_i_5_n_0\
    );
\calc_diff_sec__1_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1DE2"
    )
        port map (
      I0 => \calc_diff_sec0__70_carry__0_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__106_carry_n_7\,
      I3 => abs_diff(0),
      O => \calc_diff_sec__1_carry_i_6_n_0\
    );
\calc_diff_sec__38_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_sec__38_carry_n_0\,
      CO(2) => \calc_diff_sec__38_carry_n_1\,
      CO(1) => \calc_diff_sec__38_carry_n_2\,
      CO(0) => \calc_diff_sec__38_carry_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec__38_carry_i_1_n_0\,
      DI(2) => \calc_diff_sec__38_carry_i_2_n_0\,
      DI(1) => \calc_diff_sec__38_carry_i_3_n_0\,
      DI(0) => '0',
      O(3) => \calc_diff_sec__38_carry_n_4\,
      O(2) => \calc_diff_sec__38_carry_n_5\,
      O(1) => \calc_diff_sec__38_carry_n_6\,
      O(0) => \calc_diff_sec__38_carry_n_7\,
      S(3) => \calc_diff_sec__38_carry_i_4_n_0\,
      S(2) => \calc_diff_sec__38_carry_i_5_n_0\,
      S(1) => \calc_diff_sec__38_carry_i_6_n_0\,
      S(0) => \calc_diff_sec__38_carry_i_7_n_0\
    );
\calc_diff_sec__38_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec__38_carry_n_0\,
      CO(3) => \NLW_calc_diff_sec__38_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \calc_diff_sec__38_carry__0_n_1\,
      CO(1) => \calc_diff_sec__38_carry__0_n_2\,
      CO(0) => \calc_diff_sec__38_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \calc_diff_sec__38_carry__0_i_1_n_0\,
      DI(1) => \calc_diff_sec__38_carry__0_i_2_n_0\,
      DI(0) => \calc_diff_sec__38_carry__0_i_3_n_0\,
      O(3) => \calc_diff_sec__38_carry__0_n_4\,
      O(2) => \calc_diff_sec__38_carry__0_n_5\,
      O(1) => \calc_diff_sec__38_carry__0_n_6\,
      O(0) => \calc_diff_sec__38_carry__0_n_7\,
      S(3) => \calc_diff_sec__38_carry__0_i_4_n_0\,
      S(2) => \calc_diff_sec__38_carry__0_i_5_n_0\,
      S(1) => \calc_diff_sec__38_carry__0_i_6_n_0\,
      S(0) => \calc_diff_sec__38_carry__0_i_7_n_0\
    );
\calc_diff_sec__38_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_6\,
      I1 => \calc_diff_sec__1_carry__2_n_4\,
      O => \calc_diff_sec__38_carry__0_i_1_n_0\
    );
\calc_diff_sec__38_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_7\,
      I1 => \calc_diff_sec__1_carry__2_n_5\,
      O => \calc_diff_sec__38_carry__0_i_2_n_0\
    );
\calc_diff_sec__38_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_4\,
      I1 => \calc_diff_sec__1_carry__2_n_6\,
      I2 => \diff_sec_reg[6]_i_3_n_3\,
      O => \calc_diff_sec__38_carry__0_i_3_n_0\
    );
\calc_diff_sec__38_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_4\,
      I1 => \diff_sec_reg[6]_i_3_n_3\,
      I2 => \calc_diff_sec__1_carry__2_n_5\,
      O => \calc_diff_sec__38_carry__0_i_4_n_0\
    );
\calc_diff_sec__38_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_4\,
      I1 => \calc_diff_sec__1_carry__2_n_6\,
      I2 => \diff_sec_reg[6]_i_3_n_3\,
      I3 => \calc_diff_sec__1_carry__2_n_5\,
      O => \calc_diff_sec__38_carry__0_i_5_n_0\
    );
\calc_diff_sec__38_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_5\,
      I1 => \calc_diff_sec__1_carry__2_n_7\,
      I2 => \calc_diff_sec__1_carry__2_n_6\,
      I3 => \calc_diff_sec__1_carry__2_n_4\,
      O => \calc_diff_sec__38_carry__0_i_6_n_0\
    );
\calc_diff_sec__38_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4DB2B24D"
    )
        port map (
      I0 => \diff_sec_reg[6]_i_3_n_3\,
      I1 => \calc_diff_sec__1_carry__2_n_6\,
      I2 => \calc_diff_sec__1_carry__1_n_4\,
      I3 => \calc_diff_sec__1_carry__2_n_7\,
      I4 => \calc_diff_sec__1_carry__2_n_5\,
      O => \calc_diff_sec__38_carry__0_i_7_n_0\
    );
\calc_diff_sec__38_carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B2"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_5\,
      I1 => \calc_diff_sec__1_carry__2_n_7\,
      I2 => \calc_diff_sec__1_carry__2_n_4\,
      O => \calc_diff_sec__38_carry_i_1_n_0\
    );
\calc_diff_sec__38_carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_4\,
      I1 => \calc_diff_sec__1_carry__2_n_7\,
      I2 => \calc_diff_sec__1_carry__1_n_5\,
      O => \calc_diff_sec__38_carry_i_2_n_0\
    );
\calc_diff_sec__38_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_6\,
      I1 => \calc_diff_sec__1_carry__1_n_5\,
      O => \calc_diff_sec__38_carry_i_3_n_0\
    );
\calc_diff_sec__38_carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9669"
    )
        port map (
      I0 => \calc_diff_sec__38_carry_i_1_n_0\,
      I1 => \calc_diff_sec__1_carry__1_n_4\,
      I2 => \calc_diff_sec__1_carry__2_n_6\,
      I3 => \diff_sec_reg[6]_i_3_n_3\,
      O => \calc_diff_sec__38_carry_i_4_n_0\
    );
\calc_diff_sec__38_carry_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69966969"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_5\,
      I1 => \calc_diff_sec__1_carry__2_n_7\,
      I2 => \calc_diff_sec__1_carry__2_n_4\,
      I3 => \calc_diff_sec__1_carry__1_n_4\,
      I4 => \calc_diff_sec__1_carry__2_n_5\,
      O => \calc_diff_sec__38_carry_i_5_n_0\
    );
\calc_diff_sec__38_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_5\,
      I1 => \calc_diff_sec__1_carry__2_n_6\,
      I2 => \calc_diff_sec__1_carry__2_n_5\,
      I3 => \calc_diff_sec__1_carry__1_n_4\,
      O => \calc_diff_sec__38_carry_i_6_n_0\
    );
\calc_diff_sec__38_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_6\,
      I1 => \calc_diff_sec__1_carry__1_n_5\,
      O => \calc_diff_sec__38_carry_i_7_n_0\
    );
\calc_diff_sec__59_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \calc_diff_sec__59_carry_n_0\,
      CO(2) => \calc_diff_sec__59_carry_n_1\,
      CO(1) => \calc_diff_sec__59_carry_n_2\,
      CO(0) => \calc_diff_sec__59_carry_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec__59_carry_i_1_n_0\,
      DI(2) => \calc_diff_sec__59_carry_i_2_n_0\,
      DI(1) => \calc_diff_sec__59_carry_i_3_n_0\,
      DI(0) => \calc_diff_sec__59_carry_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_sec__59_carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_sec__59_carry_i_5_n_0\,
      S(2) => \calc_diff_sec__59_carry_i_6_n_0\,
      S(1) => \calc_diff_sec__59_carry_i_7_n_0\,
      S(0) => \calc_diff_sec__59_carry_i_8_n_0\
    );
\calc_diff_sec__59_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec__59_carry_n_0\,
      CO(3) => \calc_diff_sec__59_carry__0_n_0\,
      CO(2) => \calc_diff_sec__59_carry__0_n_1\,
      CO(1) => \calc_diff_sec__59_carry__0_n_2\,
      CO(0) => \calc_diff_sec__59_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \calc_diff_sec__59_carry__0_i_1_n_0\,
      DI(2) => \calc_diff_sec__59_carry__0_i_2_n_0\,
      DI(1) => \calc_diff_sec__59_carry__0_i_3_n_0\,
      DI(0) => \calc_diff_sec__59_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_calc_diff_sec__59_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \calc_diff_sec__59_carry__0_i_5_n_0\,
      S(2) => \calc_diff_sec__59_carry__0_i_6_n_0\,
      S(1) => \calc_diff_sec__59_carry__0_i_7_n_0\,
      S(0) => \calc_diff_sec__59_carry__0_i_8_n_0\
    );
\calc_diff_sec__59_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \calc_diff_sec__38_carry__0_n_7\,
      I1 => \calc_diff_sec0__70_carry__1_n_6\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry__0_n_6\,
      O => \calc_diff_sec__59_carry__0_i_1_n_0\
    );
\calc_diff_sec__59_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \calc_diff_sec__38_carry_n_4\,
      I1 => \calc_diff_sec0__70_carry__1_n_7\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry__0_n_7\,
      O => \calc_diff_sec__59_carry__0_i_2_n_0\
    );
\calc_diff_sec__59_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \calc_diff_sec__38_carry_n_5\,
      I1 => \calc_diff_sec0__70_carry__0_n_4\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry_n_4\,
      O => \calc_diff_sec__59_carry__0_i_3_n_0\
    );
\calc_diff_sec__59_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \calc_diff_sec__38_carry_n_6\,
      I1 => \calc_diff_sec0__70_carry__0_n_5\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry_n_5\,
      O => \calc_diff_sec__59_carry__0_i_4_n_0\
    );
\calc_diff_sec__59_carry__0_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FF47004700B8FF"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_6\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_6\,
      I3 => \calc_diff_sec__38_carry__0_n_7\,
      I4 => \calc_diff_sec__38_carry__0_n_6\,
      I5 => \calc_diff_sec__1_carry__1_i_9_n_0\,
      O => \calc_diff_sec__59_carry__0_i_5_n_0\
    );
\calc_diff_sec__59_carry__0_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B44B4B4BB44B"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_i_10_n_0\,
      I1 => \calc_diff_sec__38_carry_n_4\,
      I2 => \calc_diff_sec__38_carry__0_n_7\,
      I3 => \calc_diff_sec0__70_carry__1_n_6\,
      I4 => \calc_diff_sec0__106_carry__1_n_2\,
      I5 => \calc_diff_sec0__106_carry__0_n_6\,
      O => \calc_diff_sec__59_carry__0_i_6_n_0\
    );
\calc_diff_sec__59_carry__0_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FF47004700B8FF"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_4\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_4\,
      I3 => \calc_diff_sec__38_carry_n_5\,
      I4 => \calc_diff_sec__38_carry_n_4\,
      I5 => \calc_diff_sec__1_carry__1_i_10_n_0\,
      O => \calc_diff_sec__59_carry__0_i_7_n_0\
    );
\calc_diff_sec__59_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D2D2DD2D2D22DD2"
    )
        port map (
      I0 => calc_diff_sec0(6),
      I1 => \calc_diff_sec__38_carry_n_6\,
      I2 => \calc_diff_sec__38_carry_n_5\,
      I3 => \calc_diff_sec0__70_carry__0_n_4\,
      I4 => \calc_diff_sec0__106_carry__1_n_2\,
      I5 => \calc_diff_sec0__106_carry_n_4\,
      O => \calc_diff_sec__59_carry__0_i_8_n_0\
    );
\calc_diff_sec__59_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec__59_carry__0_n_0\,
      CO(3 downto 2) => \NLW_calc_diff_sec__59_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \calc_diff_sec__59_carry__1_n_2\,
      CO(0) => \calc_diff_sec__59_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \calc_diff_sec__59_carry__1_i_1_n_0\,
      DI(0) => \calc_diff_sec__59_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_calc_diff_sec__59_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \calc_diff_sec__59_carry__1_i_3_n_0\,
      S(0) => \calc_diff_sec__59_carry__1_i_4_n_0\
    );
\calc_diff_sec__59_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \calc_diff_sec__38_carry__0_n_5\,
      I1 => \calc_diff_sec0__70_carry__1_n_4\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry__0_n_4\,
      O => \calc_diff_sec__59_carry__1_i_1_n_0\
    );
\calc_diff_sec__59_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \calc_diff_sec__38_carry__0_n_6\,
      I1 => \calc_diff_sec0__70_carry__1_n_5\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry__0_n_5\,
      O => \calc_diff_sec__59_carry__1_i_2_n_0\
    );
\calc_diff_sec__59_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4B4B44B4B4BB44B"
    )
        port map (
      I0 => calc_diff_sec0(11),
      I1 => \calc_diff_sec__38_carry__0_n_5\,
      I2 => \calc_diff_sec__38_carry__0_n_4\,
      I3 => \calc_diff_sec0__70_carry__2_n_7\,
      I4 => \calc_diff_sec0__106_carry__1_n_2\,
      I5 => \calc_diff_sec0__106_carry__1_n_7\,
      O => \calc_diff_sec__59_carry__1_i_3_n_0\
    );
\calc_diff_sec__59_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FF47004700B8FF"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__0_n_5\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__1_n_5\,
      I3 => \calc_diff_sec__38_carry__0_n_6\,
      I4 => \calc_diff_sec__38_carry__0_n_5\,
      I5 => calc_diff_sec0(11),
      O => \calc_diff_sec__59_carry__1_i_4_n_0\
    );
\calc_diff_sec__59_carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABFB"
    )
        port map (
      I0 => \calc_diff_sec__38_carry_n_7\,
      I1 => \calc_diff_sec0__70_carry__0_n_6\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry_n_6\,
      O => \calc_diff_sec__59_carry_i_1_n_0\
    );
\calc_diff_sec__59_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"02A2"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__2_n_7\,
      I1 => \calc_diff_sec0__70_carry__0_n_7\,
      I2 => \calc_diff_sec0__106_carry__1_n_2\,
      I3 => \calc_diff_sec0__106_carry_n_7\,
      O => \calc_diff_sec__59_carry_i_2_n_0\
    );
\calc_diff_sec__59_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_4\,
      I1 => calc_diff_sec0(3),
      O => \calc_diff_sec__59_carry_i_3_n_0\
    );
\calc_diff_sec__59_carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_5\,
      I1 => calc_diff_sec0(2),
      O => \calc_diff_sec__59_carry_i_4_n_0\
    );
\calc_diff_sec__59_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF4700B800B8FF47"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_6\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_6\,
      I3 => \calc_diff_sec__38_carry_n_7\,
      I4 => calc_diff_sec0(6),
      I5 => \calc_diff_sec__38_carry_n_6\,
      O => \calc_diff_sec__59_carry_i_5_n_0\
    );
\calc_diff_sec__59_carry_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4700B8FFB8FF4700"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__0_n_7\,
      I3 => \calc_diff_sec__1_carry__2_n_7\,
      I4 => calc_diff_sec0(5),
      I5 => \calc_diff_sec__38_carry_n_7\,
      O => \calc_diff_sec__59_carry_i_6_n_0\
    );
\calc_diff_sec__59_carry_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B4BBB4444B444BBB"
    )
        port map (
      I0 => calc_diff_sec0(3),
      I1 => \calc_diff_sec__1_carry__1_n_4\,
      I2 => \calc_diff_sec0__106_carry_n_7\,
      I3 => \calc_diff_sec0__106_carry__1_n_2\,
      I4 => \calc_diff_sec0__70_carry__0_n_7\,
      I5 => \calc_diff_sec__1_carry__2_n_7\,
      O => \calc_diff_sec__59_carry_i_7_n_0\
    );
\calc_diff_sec__59_carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2DD2"
    )
        port map (
      I0 => calc_diff_sec0(2),
      I1 => \calc_diff_sec__1_carry__1_n_5\,
      I2 => \calc_diff_sec__1_carry__1_n_4\,
      I3 => calc_diff_sec0(3),
      O => \calc_diff_sec__59_carry_i_8_n_0\
    );
cnt_sysclk10_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_sysclk10_carry_n_0,
      CO(2) => cnt_sysclk10_carry_n_1,
      CO(1) => cnt_sysclk10_carry_n_2,
      CO(0) => cnt_sysclk10_carry_n_3,
      CYINIT => cnt_sysclk1(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(4 downto 1),
      S(3 downto 0) => cnt_sysclk1(4 downto 1)
    );
\cnt_sysclk10_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_sysclk10_carry_n_0,
      CO(3) => \cnt_sysclk10_carry__0_n_0\,
      CO(2) => \cnt_sysclk10_carry__0_n_1\,
      CO(1) => \cnt_sysclk10_carry__0_n_2\,
      CO(0) => \cnt_sysclk10_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(8 downto 5),
      S(3 downto 0) => cnt_sysclk1(8 downto 5)
    );
\cnt_sysclk10_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk10_carry__0_n_0\,
      CO(3) => \cnt_sysclk10_carry__1_n_0\,
      CO(2) => \cnt_sysclk10_carry__1_n_1\,
      CO(1) => \cnt_sysclk10_carry__1_n_2\,
      CO(0) => \cnt_sysclk10_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(12 downto 9),
      S(3 downto 0) => cnt_sysclk1(12 downto 9)
    );
\cnt_sysclk10_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk10_carry__1_n_0\,
      CO(3) => \cnt_sysclk10_carry__2_n_0\,
      CO(2) => \cnt_sysclk10_carry__2_n_1\,
      CO(1) => \cnt_sysclk10_carry__2_n_2\,
      CO(0) => \cnt_sysclk10_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(16 downto 13),
      S(3 downto 0) => cnt_sysclk1(16 downto 13)
    );
\cnt_sysclk10_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk10_carry__2_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk10_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk10_carry__3_n_2\,
      CO(0) => \cnt_sysclk10_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk10_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk10(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => cnt_sysclk1(19 downto 17)
    );
\cnt_sysclk1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(0),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[0]_i_1_n_0\
    );
\cnt_sysclk1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(10),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[10]_i_1_n_0\
    );
\cnt_sysclk1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(11),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[11]_i_1_n_0\
    );
\cnt_sysclk1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(12),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[12]_i_1_n_0\
    );
\cnt_sysclk1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(13),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[13]_i_1_n_0\
    );
\cnt_sysclk1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(14),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[14]_i_1_n_0\
    );
\cnt_sysclk1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(15),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[15]_i_1_n_0\
    );
\cnt_sysclk1[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(16),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[16]_i_1_n_0\
    );
\cnt_sysclk1[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(17),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[17]_i_1_n_0\
    );
\cnt_sysclk1[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(18),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[18]_i_1_n_0\
    );
\cnt_sysclk1[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(19),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[19]_i_2_n_0\
    );
\cnt_sysclk1[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4544FFFF"
    )
        port map (
      I0 => \cnt_sysclk1[19]_i_4_n_0\,
      I1 => cnt_sysclk1(15),
      I2 => \cnt_sysclk1[19]_i_5_n_0\,
      I3 => cnt_sysclk1(14),
      I4 => \^run_reg_0\,
      O => \cnt_sysclk1[19]_i_3_n_0\
    );
\cnt_sysclk1[19]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_sysclk1(16),
      I1 => cnt_sysclk1(17),
      I2 => cnt_sysclk1(18),
      I3 => cnt_sysclk1(19),
      O => \cnt_sysclk1[19]_i_4_n_0\
    );
\cnt_sysclk1[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000100FFFF"
    )
        port map (
      I0 => cnt_sysclk1(7),
      I1 => cnt_sysclk1(6),
      I2 => cnt_sysclk1(8),
      I3 => \cnt_sysclk1[19]_i_6_n_0\,
      I4 => cnt_sysclk1(9),
      I5 => \cnt_sysclk1[19]_i_7_n_0\,
      O => \cnt_sysclk1[19]_i_5_n_0\
    );
\cnt_sysclk1[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt_sysclk1(2),
      I1 => cnt_sysclk1(3),
      I2 => cnt_sysclk1(0),
      I3 => cnt_sysclk1(1),
      I4 => cnt_sysclk1(5),
      I5 => cnt_sysclk1(4),
      O => \cnt_sysclk1[19]_i_6_n_0\
    );
\cnt_sysclk1[19]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_sysclk1(10),
      I1 => cnt_sysclk1(11),
      I2 => cnt_sysclk1(12),
      I3 => cnt_sysclk1(13),
      O => \cnt_sysclk1[19]_i_7_n_0\
    );
\cnt_sysclk1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(1),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[1]_i_1_n_0\
    );
\cnt_sysclk1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(2),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[2]_i_1_n_0\
    );
\cnt_sysclk1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(3),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[3]_i_1_n_0\
    );
\cnt_sysclk1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(4),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[4]_i_1_n_0\
    );
\cnt_sysclk1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(5),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[5]_i_1_n_0\
    );
\cnt_sysclk1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(6),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[6]_i_1_n_0\
    );
\cnt_sysclk1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(7),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[7]_i_1_n_0\
    );
\cnt_sysclk1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(8),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[8]_i_1_n_0\
    );
\cnt_sysclk1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk10(9),
      I1 => \cnt_sysclk1[19]_i_3_n_0\,
      O => \cnt_sysclk1[9]_i_1_n_0\
    );
\cnt_sysclk1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[0]_i_1_n_0\,
      Q => cnt_sysclk1(0)
    );
\cnt_sysclk1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[10]_i_1_n_0\,
      Q => cnt_sysclk1(10)
    );
\cnt_sysclk1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[11]_i_1_n_0\,
      Q => cnt_sysclk1(11)
    );
\cnt_sysclk1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[12]_i_1_n_0\,
      Q => cnt_sysclk1(12)
    );
\cnt_sysclk1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[13]_i_1_n_0\,
      Q => cnt_sysclk1(13)
    );
\cnt_sysclk1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[14]_i_1_n_0\,
      Q => cnt_sysclk1(14)
    );
\cnt_sysclk1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[15]_i_1_n_0\,
      Q => cnt_sysclk1(15)
    );
\cnt_sysclk1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[16]_i_1_n_0\,
      Q => cnt_sysclk1(16)
    );
\cnt_sysclk1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[17]_i_1_n_0\,
      Q => cnt_sysclk1(17)
    );
\cnt_sysclk1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[18]_i_1_n_0\,
      Q => cnt_sysclk1(18)
    );
\cnt_sysclk1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[19]_i_2_n_0\,
      Q => cnt_sysclk1(19)
    );
\cnt_sysclk1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[1]_i_1_n_0\,
      Q => cnt_sysclk1(1)
    );
\cnt_sysclk1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[2]_i_1_n_0\,
      Q => cnt_sysclk1(2)
    );
\cnt_sysclk1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[3]_i_1_n_0\,
      Q => cnt_sysclk1(3)
    );
\cnt_sysclk1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[4]_i_1_n_0\,
      Q => cnt_sysclk1(4)
    );
\cnt_sysclk1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[5]_i_1_n_0\,
      Q => cnt_sysclk1(5)
    );
\cnt_sysclk1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[6]_i_1_n_0\,
      Q => cnt_sysclk1(6)
    );
\cnt_sysclk1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[7]_i_1_n_0\,
      Q => cnt_sysclk1(7)
    );
\cnt_sysclk1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[8]_i_1_n_0\,
      Q => cnt_sysclk1(8)
    );
\cnt_sysclk1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[9]_i_1_n_0\,
      Q => cnt_sysclk1(9)
    );
cnt_sysclk20_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_sysclk20_carry_n_0,
      CO(2) => cnt_sysclk20_carry_n_1,
      CO(1) => cnt_sysclk20_carry_n_2,
      CO(0) => cnt_sysclk20_carry_n_3,
      CYINIT => \cnt_sysclk2_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(4 downto 1),
      S(3) => \cnt_sysclk2_reg_n_0_[4]\,
      S(2) => \cnt_sysclk2_reg_n_0_[3]\,
      S(1) => \cnt_sysclk2_reg_n_0_[2]\,
      S(0) => \cnt_sysclk2_reg_n_0_[1]\
    );
\cnt_sysclk20_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_sysclk20_carry_n_0,
      CO(3) => \cnt_sysclk20_carry__0_n_0\,
      CO(2) => \cnt_sysclk20_carry__0_n_1\,
      CO(1) => \cnt_sysclk20_carry__0_n_2\,
      CO(0) => \cnt_sysclk20_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(8 downto 5),
      S(3) => \cnt_sysclk2_reg_n_0_[8]\,
      S(2) => \cnt_sysclk2_reg_n_0_[7]\,
      S(1) => \cnt_sysclk2_reg_n_0_[6]\,
      S(0) => \cnt_sysclk2_reg_n_0_[5]\
    );
\cnt_sysclk20_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk20_carry__0_n_0\,
      CO(3) => \cnt_sysclk20_carry__1_n_0\,
      CO(2) => \cnt_sysclk20_carry__1_n_1\,
      CO(1) => \cnt_sysclk20_carry__1_n_2\,
      CO(0) => \cnt_sysclk20_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(12 downto 9),
      S(3) => \cnt_sysclk2_reg_n_0_[12]\,
      S(2) => \cnt_sysclk2_reg_n_0_[11]\,
      S(1) => \cnt_sysclk2_reg_n_0_[10]\,
      S(0) => \cnt_sysclk2_reg_n_0_[9]\
    );
\cnt_sysclk20_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk20_carry__1_n_0\,
      CO(3) => \cnt_sysclk20_carry__2_n_0\,
      CO(2) => \cnt_sysclk20_carry__2_n_1\,
      CO(1) => \cnt_sysclk20_carry__2_n_2\,
      CO(0) => \cnt_sysclk20_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(16 downto 13),
      S(3) => \cnt_sysclk2_reg_n_0_[16]\,
      S(2) => \cnt_sysclk2_reg_n_0_[15]\,
      S(1) => \cnt_sysclk2_reg_n_0_[14]\,
      S(0) => \cnt_sysclk2_reg_n_0_[13]\
    );
\cnt_sysclk20_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk20_carry__2_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk20_carry__3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk20_carry__3_n_2\,
      CO(0) => \cnt_sysclk20_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk20_carry__3_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk20(19 downto 17),
      S(3) => '0',
      S(2) => \cnt_sysclk2_reg_n_0_[19]\,
      S(1) => \cnt_sysclk2_reg_n_0_[18]\,
      S(0) => \cnt_sysclk2_reg_n_0_[17]\
    );
\cnt_sysclk2[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => \cnt_sysclk2[19]_i_4_n_0\,
      I1 => \cnt_sysclk2_reg_n_0_[15]\,
      I2 => \cnt_sysclk2_reg_n_0_[19]\,
      I3 => \cnt_sysclk2_reg_n_0_[18]\,
      I4 => \cnt_sysclk2_reg_n_0_[17]\,
      I5 => \cnt_sysclk2_reg_n_0_[16]\,
      O => \cnt_sysclk2[19]_i_3_n_0\
    );
\cnt_sysclk2[19]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \cnt_sysclk2_reg_n_0_[14]\,
      I1 => \cnt_sysclk2_reg_n_0_[10]\,
      I2 => \cnt_sysclk2_reg_n_0_[11]\,
      I3 => \cnt_sysclk2_reg_n_0_[12]\,
      I4 => \cnt_sysclk2_reg_n_0_[13]\,
      I5 => \cnt_sysclk2[19]_i_5_n_0\,
      O => \cnt_sysclk2[19]_i_4_n_0\
    );
\cnt_sysclk2[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555555D"
    )
        port map (
      I0 => \cnt_sysclk2_reg_n_0_[9]\,
      I1 => \cnt_sysclk2[19]_i_6_n_0\,
      I2 => \cnt_sysclk2_reg_n_0_[7]\,
      I3 => \cnt_sysclk2_reg_n_0_[6]\,
      I4 => \cnt_sysclk2_reg_n_0_[8]\,
      O => \cnt_sysclk2[19]_i_5_n_0\
    );
\cnt_sysclk2[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_sysclk2_reg_n_0_[2]\,
      I1 => \cnt_sysclk2_reg_n_0_[3]\,
      I2 => \cnt_sysclk2_reg_n_0_[0]\,
      I3 => \cnt_sysclk2_reg_n_0_[1]\,
      I4 => \cnt_sysclk2_reg_n_0_[5]\,
      I5 => \cnt_sysclk2_reg_n_0_[4]\,
      O => \cnt_sysclk2[19]_i_6_n_0\
    );
\cnt_sysclk2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_32,
      Q => \cnt_sysclk2_reg_n_0_[0]\
    );
\cnt_sysclk2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_22,
      Q => \cnt_sysclk2_reg_n_0_[10]\
    );
\cnt_sysclk2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_21,
      Q => \cnt_sysclk2_reg_n_0_[11]\
    );
\cnt_sysclk2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_20,
      Q => \cnt_sysclk2_reg_n_0_[12]\
    );
\cnt_sysclk2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_19,
      Q => \cnt_sysclk2_reg_n_0_[13]\
    );
\cnt_sysclk2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_18,
      Q => \cnt_sysclk2_reg_n_0_[14]\
    );
\cnt_sysclk2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_17,
      Q => \cnt_sysclk2_reg_n_0_[15]\
    );
\cnt_sysclk2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_16,
      Q => \cnt_sysclk2_reg_n_0_[16]\
    );
\cnt_sysclk2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_15,
      Q => \cnt_sysclk2_reg_n_0_[17]\
    );
\cnt_sysclk2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_14,
      Q => \cnt_sysclk2_reg_n_0_[18]\
    );
\cnt_sysclk2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_13,
      Q => \cnt_sysclk2_reg_n_0_[19]\
    );
\cnt_sysclk2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_31,
      Q => \cnt_sysclk2_reg_n_0_[1]\
    );
\cnt_sysclk2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_30,
      Q => \cnt_sysclk2_reg_n_0_[2]\
    );
\cnt_sysclk2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_29,
      Q => \cnt_sysclk2_reg_n_0_[3]\
    );
\cnt_sysclk2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_28,
      Q => \cnt_sysclk2_reg_n_0_[4]\
    );
\cnt_sysclk2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_27,
      Q => \cnt_sysclk2_reg_n_0_[5]\
    );
\cnt_sysclk2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_26,
      Q => \cnt_sysclk2_reg_n_0_[6]\
    );
\cnt_sysclk2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_25,
      Q => \cnt_sysclk2_reg_n_0_[7]\
    );
\cnt_sysclk2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_24,
      Q => \cnt_sysclk2_reg_n_0_[8]\
    );
\cnt_sysclk2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_23,
      Q => \cnt_sysclk2_reg_n_0_[9]\
    );
\csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(0),
      O => \csec[0]_i_1_n_0\
    );
\csec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(1),
      I2 => csec(0),
      O => \csec[1]_i_1_n_0\
    );
\csec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(0),
      I2 => csec(1),
      I3 => csec(2),
      O => \csec[2]_i_1_n_0\
    );
\csec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(1),
      I2 => csec(0),
      I3 => csec(2),
      I4 => csec(3),
      O => \csec[3]_i_1_n_0\
    );
\csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(2),
      I2 => csec(0),
      I3 => csec(1),
      I4 => csec(3),
      I5 => csec(4),
      O => \csec[4]_i_1_n_0\
    );
\csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(3),
      I2 => \csec[5]_i_2_n_0\,
      I3 => csec(2),
      I4 => csec(4),
      I5 => csec(5),
      O => \csec[5]_i_1_n_0\
    );
\csec[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => csec(0),
      I1 => csec(1),
      O => \csec[5]_i_2_n_0\
    );
\csec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A888"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(6),
      I2 => csec(5),
      I3 => \csec[6]_i_4_n_0\,
      O => \csec[6]_i_2_n_0\
    );
\csec[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => csec(5),
      I2 => csec(6),
      I3 => \csec[6]_i_5_n_0\,
      O => \csec[6]_i_3_n_0\
    );
\csec[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => csec(3),
      I1 => csec(1),
      I2 => csec(0),
      I3 => csec(2),
      I4 => csec(4),
      O => \csec[6]_i_4_n_0\
    );
\csec[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => csec(0),
      I1 => csec(1),
      I2 => csec(2),
      I3 => csec(4),
      I4 => csec(3),
      O => \csec[6]_i_5_n_0\
    );
\csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \csec[0]_i_1_n_0\,
      Q => csec(0)
    );
\csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \csec[1]_i_1_n_0\,
      Q => csec(1)
    );
\csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \csec[2]_i_1_n_0\,
      Q => csec(2)
    );
\csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \csec[3]_i_1_n_0\,
      Q => csec(3)
    );
\csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \csec[4]_i_1_n_0\,
      Q => csec(4)
    );
\csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \csec[5]_i_1_n_0\,
      Q => csec(5)
    );
\csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \csec[6]_i_2_n_0\,
      Q => csec(6)
    );
\diff_csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => calc_diff_csec(0),
      I1 => \^lap_count_reg[1]_0\,
      O => \diff_csec[0]_i_1_n_0\
    );
\diff_csec[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => calc_diff_csec(1),
      I1 => \^lap_count_reg[1]_0\,
      O => \diff_csec[1]_i_1_n_0\
    );
\diff_csec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[5]_i_2_n_0\,
      I2 => \calc_diff_csec__105_carry_n_5\,
      O => \diff_csec[2]_i_1_n_0\
    );
\diff_csec[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5401"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[5]_i_2_n_0\,
      I2 => \calc_diff_csec__105_carry_n_5\,
      I3 => \calc_diff_csec__105_carry_n_4\,
      O => \diff_csec[3]_i_1_n_0\
    );
\diff_csec[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F0E1"
    )
        port map (
      I0 => \calc_diff_csec__105_carry_n_4\,
      I1 => \calc_diff_csec__105_carry_n_5\,
      I2 => \calc_diff_csec__105_carry__0_n_7\,
      I3 => \diff_csec[5]_i_2_n_0\,
      I4 => \^lap_count_reg[1]_0\,
      O => \diff_csec[4]_i_1_n_0\
    );
\diff_csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000000015554"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \calc_diff_csec__105_carry_n_5\,
      I2 => \calc_diff_csec__105_carry_n_4\,
      I3 => \calc_diff_csec__105_carry__0_n_7\,
      I4 => \calc_diff_csec__105_carry__0_n_6\,
      I5 => \diff_csec[5]_i_2_n_0\,
      O => \diff_csec[5]_i_1_n_0\
    );
\diff_csec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001555555555555"
    )
        port map (
      I0 => \calc_diff_csec__105_carry__0_n_4\,
      I1 => \calc_diff_csec__105_carry__0_n_7\,
      I2 => \calc_diff_csec__105_carry_n_4\,
      I3 => \calc_diff_csec__105_carry_n_5\,
      I4 => \calc_diff_csec__105_carry__0_n_6\,
      I5 => \calc_diff_csec__105_carry__0_n_5\,
      O => \diff_csec[5]_i_2_n_0\
    );
\diff_csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C2"
    )
        port map (
      I0 => \calc_diff_csec__105_carry__0_n_4\,
      I1 => \calc_diff_csec__105_carry__0_n_5\,
      I2 => \diff_csec[6]_i_2_n_0\,
      I3 => \^lap_count_reg[1]_0\,
      O => \diff_csec[6]_i_1_n_0\
    );
\diff_csec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01FF"
    )
        port map (
      I0 => \calc_diff_csec__105_carry__0_n_7\,
      I1 => \calc_diff_csec__105_carry_n_4\,
      I2 => \calc_diff_csec__105_carry_n_5\,
      I3 => \calc_diff_csec__105_carry__0_n_6\,
      O => \diff_csec[6]_i_2_n_0\
    );
\diff_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_csec[0]_i_1_n_0\,
      Q => diff_csec(0)
    );
\diff_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_csec[1]_i_1_n_0\,
      Q => diff_csec(1)
    );
\diff_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_csec[2]_i_1_n_0\,
      Q => diff_csec(2)
    );
\diff_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_csec[3]_i_1_n_0\,
      Q => diff_csec(3)
    );
\diff_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_csec[4]_i_1_n_0\,
      Q => diff_csec(4)
    );
\diff_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_csec[5]_i_1_n_0\,
      Q => diff_csec(5)
    );
\diff_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_csec[6]_i_1_n_0\,
      Q => diff_csec(6)
    );
\diff_min[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA45"
    )
        port map (
      I0 => \calc_diff_min__71_carry__1_n_0\,
      I1 => abs_diff(16),
      I2 => \calc_diff_min__46_carry__1_n_7\,
      I3 => \calc_diff_min_carry__3_n_7\,
      I4 => \^lap_count_reg[1]_0\,
      O => \diff_min[0]_i_1_n_0\
    );
\diff_min[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA59AAAA"
    )
        port map (
      I0 => \calc_diff_min_carry__3_n_6\,
      I1 => \calc_diff_min__46_carry__1_n_7\,
      I2 => abs_diff(16),
      I3 => \calc_diff_min__71_carry__1_n_0\,
      I4 => \calc_diff_min_carry__3_n_7\,
      I5 => \^lap_count_reg[1]_0\,
      O => \diff_min[1]_i_1_n_0\
    );
\diff_min[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15554000"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \calc_diff_min_carry__3_n_7\,
      I2 => \calc_diff_min_carry__3_n_6\,
      I3 => \diff_min[3]_i_2_n_0\,
      I4 => \calc_diff_min_carry__3_n_5\,
      O => \diff_min[2]_i_1_n_0\
    );
\diff_min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555540000000"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_min[3]_i_2_n_0\,
      I2 => \calc_diff_min_carry__3_n_6\,
      I3 => \calc_diff_min_carry__3_n_7\,
      I4 => \calc_diff_min_carry__3_n_5\,
      I5 => \calc_diff_min_carry__3_n_4\,
      O => \diff_min[3]_i_1_n_0\
    );
\diff_min[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \calc_diff_min__71_carry__1_n_0\,
      I1 => abs_diff(16),
      I2 => \calc_diff_min__46_carry__1_n_7\,
      O => \diff_min[3]_i_2_n_0\
    );
\diff_min[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1540"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \calc_diff_min_carry__3_n_4\,
      I2 => \diff_min[4]_i_3_n_0\,
      I3 => \diff_min_reg[4]_i_4_n_3\,
      O => \diff_min[4]_i_1_n_0\
    );
\diff_min[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \lap_count[7]_i_6_n_0\,
      I1 => lap_count(1),
      I2 => lap_count(0),
      I3 => lap_count(2),
      I4 => lap_count(3),
      O => \^lap_count_reg[1]_0\
    );
\diff_min[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4500000000000000"
    )
        port map (
      I0 => \calc_diff_min__71_carry__1_n_0\,
      I1 => abs_diff(16),
      I2 => \calc_diff_min__46_carry__1_n_7\,
      I3 => \calc_diff_min_carry__3_n_6\,
      I4 => \calc_diff_min_carry__3_n_7\,
      I5 => \calc_diff_min_carry__3_n_5\,
      O => \diff_min[4]_i_3_n_0\
    );
\diff_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_min[0]_i_1_n_0\,
      Q => diff_min(0)
    );
\diff_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_min[1]_i_1_n_0\,
      Q => diff_min(1)
    );
\diff_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_min[2]_i_1_n_0\,
      Q => diff_min(2)
    );
\diff_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_min[3]_i_1_n_0\,
      Q => diff_min(3)
    );
\diff_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_min[4]_i_1_n_0\,
      Q => diff_min(4)
    );
\diff_min_reg[4]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_min_carry__3_n_0\,
      CO(3 downto 1) => \NLW_diff_min_reg[4]_i_4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \diff_min_reg[4]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_diff_min_reg[4]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
\diff_sec[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45441011"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \calc_diff_sec__59_carry__1_n_2\,
      I2 => calc_diff_sec0(12),
      I3 => \calc_diff_sec__38_carry__0_n_4\,
      I4 => \calc_diff_sec__1_carry__1_n_5\,
      O => \diff_sec[0]_i_1_n_0\
    );
\diff_sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFDD2022"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_5\,
      I1 => \calc_diff_sec__59_carry__1_n_2\,
      I2 => calc_diff_sec0(12),
      I3 => \calc_diff_sec__38_carry__0_n_4\,
      I4 => \calc_diff_sec__1_carry__1_n_4\,
      I5 => \^lap_count_reg[1]_0\,
      O => \diff_sec[1]_i_1_n_0\
    );
\diff_sec[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \calc_diff_sec0__106_carry__1_n_7\,
      I1 => \calc_diff_sec0__106_carry__1_n_2\,
      I2 => \calc_diff_sec0__70_carry__2_n_7\,
      O => calc_diff_sec0(12)
    );
\diff_sec[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"41"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[5]_i_2_n_0\,
      I2 => \calc_diff_sec__1_carry__2_n_7\,
      O => \diff_sec[2]_i_1_n_0\
    );
\diff_sec[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4510"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[5]_i_2_n_0\,
      I2 => \calc_diff_sec__1_carry__2_n_7\,
      I3 => \calc_diff_sec__1_carry__2_n_6\,
      O => \diff_sec[3]_i_1_n_0\
    );
\diff_sec[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51550400"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \calc_diff_sec__1_carry__2_n_7\,
      I2 => \diff_sec[5]_i_2_n_0\,
      I3 => \calc_diff_sec__1_carry__2_n_6\,
      I4 => \calc_diff_sec__1_carry__2_n_5\,
      O => \diff_sec[4]_i_1_n_0\
    );
\diff_sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5515555500400000"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \calc_diff_sec__1_carry__2_n_5\,
      I2 => \calc_diff_sec__1_carry__2_n_6\,
      I3 => \diff_sec[5]_i_2_n_0\,
      I4 => \calc_diff_sec__1_carry__2_n_7\,
      I5 => \calc_diff_sec__1_carry__2_n_4\,
      O => \diff_sec[5]_i_1_n_0\
    );
\diff_sec[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFDDFFFF"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_5\,
      I1 => \calc_diff_sec__59_carry__1_n_2\,
      I2 => calc_diff_sec0(12),
      I3 => \calc_diff_sec__38_carry__0_n_4\,
      I4 => \calc_diff_sec__1_carry__1_n_4\,
      O => \diff_sec[5]_i_2_n_0\
    );
\diff_sec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555555510000000"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[6]_i_2_n_0\,
      I2 => \calc_diff_sec__1_carry__2_n_6\,
      I3 => \calc_diff_sec__1_carry__2_n_5\,
      I4 => \calc_diff_sec__1_carry__2_n_4\,
      I5 => \diff_sec_reg[6]_i_3_n_3\,
      O => \diff_sec[6]_i_1_n_0\
    );
\diff_sec[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5DFFFFFFFFFFFF"
    )
        port map (
      I0 => \calc_diff_sec__1_carry__1_n_4\,
      I1 => \calc_diff_sec__38_carry__0_n_4\,
      I2 => calc_diff_sec0(12),
      I3 => \calc_diff_sec__59_carry__1_n_2\,
      I4 => \calc_diff_sec__1_carry__1_n_5\,
      I5 => \calc_diff_sec__1_carry__2_n_7\,
      O => \diff_sec[6]_i_2_n_0\
    );
\diff_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_sec[0]_i_1_n_0\,
      Q => diff_sec(0)
    );
\diff_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_sec[1]_i_1_n_0\,
      Q => diff_sec(1)
    );
\diff_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_sec[2]_i_1_n_0\,
      Q => diff_sec(2)
    );
\diff_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_sec[3]_i_1_n_0\,
      Q => diff_sec(3)
    );
\diff_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_sec[4]_i_1_n_0\,
      Q => diff_sec(4)
    );
\diff_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_sec[5]_i_1_n_0\,
      Q => diff_sec(5)
    );
\diff_sec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => \diff_sec[6]_i_1_n_0\,
      Q => diff_sec(6)
    );
\diff_sec_reg[6]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \calc_diff_sec__1_carry__2_n_0\,
      CO(3 downto 1) => \NLW_diff_sec_reg[6]_i_3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \diff_sec_reg[6]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_diff_sec_reg[6]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => B"0001"
    );
ed_clear: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      AR(0) => \^sr\(0),
      D(19) => ed_clear_n_13,
      D(18) => ed_clear_n_14,
      D(17) => ed_clear_n_15,
      D(16) => ed_clear_n_16,
      D(15) => ed_clear_n_17,
      D(14) => ed_clear_n_18,
      D(13) => ed_clear_n_19,
      D(12) => ed_clear_n_20,
      D(11) => ed_clear_n_21,
      D(10) => ed_clear_n_22,
      D(9) => ed_clear_n_23,
      D(8) => ed_clear_n_24,
      D(7) => ed_clear_n_25,
      D(6) => ed_clear_n_26,
      D(5) => ed_clear_n_27,
      D(4) => ed_clear_n_28,
      D(3) => ed_clear_n_29,
      D(2) => ed_clear_n_30,
      D(1) => ed_clear_n_31,
      D(0) => ed_clear_n_32,
      E(0) => ed_clear_n_4,
      Q(1 downto 0) => Q(2 downto 1),
      cnt_sysclk20(18 downto 0) => cnt_sysclk20(19 downto 1),
      \cnt_sysclk2_reg[0]\(0) => \cnt_sysclk2_reg_n_0_[0]\,
      \cnt_sysclk2_reg[19]\ => \^run_reg_0\,
      \cnt_sysclk2_reg[19]_0\ => ed_start_n_4,
      \csec_reg[0]\ => \cnt_sysclk1[19]_i_3_n_0\,
      ff_cur_reg_0 => \^ff_cur_reg_0\,
      ff_cur_reg_1 => ed_clear_n_3,
      ff_cur_reg_2(0) => ed_clear_n_5,
      ff_cur_reg_3(0) => ed_clear_n_6,
      ff_cur_reg_4(0) => ed_clear_n_8,
      ff_cur_reg_5(0) => cnt_sysclk2,
      ff_cur_reg_6(0) => ed_clear_n_12,
      ff_old_reg_0 => \^ff_old_reg_0\,
      ff_old_reg_1(0) => ed_clear_n_7,
      ff_old_reg_2(0) => ed_clear_n_9,
      \lap_csec_reg[5]\(6) => ed_clear_n_45,
      \lap_csec_reg[5]\(5) => ed_clear_n_46,
      \lap_csec_reg[5]\(4) => ed_clear_n_47,
      \lap_csec_reg[5]\(3) => ed_clear_n_48,
      \lap_csec_reg[5]\(2) => ed_clear_n_49,
      \lap_csec_reg[5]\(1) => ed_clear_n_50,
      \lap_csec_reg[5]\(0) => ed_clear_n_51,
      \lap_csec_reg[5]_0\ => \lap_csec[5]_i_2_n_0\,
      \lap_csec_reg[6]\(6 downto 0) => lap_csec(6 downto 0),
      \lap_csec_reg[6]_0\ => \lap_csec[6]_i_4_n_0\,
      \lap_csec_reg[6]_1\ => \lap_csec[6]_i_5_n_0\,
      \lap_min_reg[0]\ => \cnt_sysclk2[19]_i_3_n_0\,
      \lap_min_reg[0]_0\ => \lap_min[5]_i_3_n_0\,
      \lap_min_reg[3]\(5) => ed_clear_n_33,
      \lap_min_reg[3]\(4) => ed_clear_n_34,
      \lap_min_reg[3]\(3) => ed_clear_n_35,
      \lap_min_reg[3]\(2) => ed_clear_n_36,
      \lap_min_reg[3]\(1) => ed_clear_n_37,
      \lap_min_reg[3]\(0) => ed_clear_n_38,
      \lap_min_reg[5]\(5 downto 0) => lap_min(5 downto 0),
      \lap_min_reg[5]_0\ => \lap_min[5]_i_5_n_0\,
      \lap_min_reg[5]_1\ => \lap_min[5]_i_7_n_0\,
      \lap_sec_reg[3]\(5) => ed_clear_n_39,
      \lap_sec_reg[3]\(4) => ed_clear_n_40,
      \lap_sec_reg[3]\(3) => ed_clear_n_41,
      \lap_sec_reg[3]\(2) => ed_clear_n_42,
      \lap_sec_reg[3]\(1) => ed_clear_n_43,
      \lap_sec_reg[3]\(0) => ed_clear_n_44,
      \lap_sec_reg[5]\(5 downto 0) => lap_sec(5 downto 0),
      \lap_sec_reg[5]_0\ => \lap_sec[5]_i_5_n_0\,
      \min_reg[0]\ => \sec[4]_i_2_n_0\,
      \prev_csec_reg[0]\ => \^ff_old_reg\,
      \prev_csec_reg[0]_0\ => \^ff_cur_reg\,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \sec_reg[0]\ => \csec[6]_i_3_n_0\,
      \slv_reg0_reg[2]\(0) => prev_min
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
     port map (
      AR(0) => \^sr\(0),
      D(0) => ed_start_n_3,
      E(0) => \^e\(0),
      Q(1) => Q(2),
      Q(0) => Q(0),
      \diff_csec_reg[0]\ => \^ff_old_reg_0\,
      \diff_csec_reg[0]_0\ => \^ff_cur_reg_0\,
      ff_cur_reg_0 => \^ff_cur_reg\,
      ff_old_reg_0 => \^ff_old_reg\,
      \lap_count_reg[0]\(3 downto 0) => lap_count(3 downto 0),
      \lap_count_reg[0]_0\ => \^run_reg_0\,
      \lap_count_reg[0]_1\ => \lap_count[7]_i_6_n_0\,
      \lap_count_reg[1]\ => ed_start_n_4,
      s00_axi_aclk => s00_axi_aclk
    );
\lap_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => lap_count(1),
      I1 => lap_count(0),
      I2 => \^run_reg_0\,
      O => \lap_count[1]_i_1_n_0\
    );
\lap_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => lap_count(0),
      I2 => lap_count(1),
      I3 => lap_count(2),
      O => \lap_count[2]_i_1_n_0\
    );
\lap_count[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => lap_count(1),
      I2 => lap_count(0),
      I3 => lap_count(2),
      I4 => lap_count(3),
      O => \lap_count[3]_i_1_n_0\
    );
\lap_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => lap_count(2),
      I2 => lap_count(0),
      I3 => lap_count(1),
      I4 => lap_count(3),
      I5 => lap_count(4),
      O => \lap_count[4]_i_1_n_0\
    );
\lap_count[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => \lap_count[5]_i_2_n_0\,
      I2 => lap_count(5),
      O => \lap_count[5]_i_1_n_0\
    );
\lap_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => lap_count(3),
      I1 => lap_count(1),
      I2 => lap_count(0),
      I3 => lap_count(2),
      I4 => lap_count(4),
      O => \lap_count[5]_i_2_n_0\
    );
\lap_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => \lap_count[7]_i_4_n_0\,
      I1 => lap_count(6),
      I2 => \^run_reg_0\,
      O => \lap_count[6]_i_1_n_0\
    );
\lap_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => lap_count(6),
      I2 => \lap_count[7]_i_4_n_0\,
      I3 => lap_count(7),
      O => \lap_count[7]_i_2_n_0\
    );
\lap_count[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lap_count(4),
      I1 => lap_count(2),
      I2 => lap_count(0),
      I3 => lap_count(1),
      I4 => lap_count(3),
      I5 => lap_count(5),
      O => \lap_count[7]_i_4_n_0\
    );
\lap_count[7]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => lap_count(6),
      I1 => lap_count(4),
      I2 => lap_count(7),
      I3 => lap_count(5),
      O => \lap_count[7]_i_6_n_0\
    );
\lap_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => ed_start_n_3,
      Q => lap_count(0)
    );
\lap_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \lap_count[1]_i_1_n_0\,
      Q => lap_count(1)
    );
\lap_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \lap_count[2]_i_1_n_0\,
      Q => lap_count(2)
    );
\lap_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \lap_count[3]_i_1_n_0\,
      Q => lap_count(3)
    );
\lap_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \lap_count[4]_i_1_n_0\,
      Q => lap_count(4)
    );
\lap_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \lap_count[5]_i_1_n_0\,
      Q => lap_count(5)
    );
\lap_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \lap_count[6]_i_1_n_0\,
      Q => lap_count(6)
    );
\lap_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \lap_count[7]_i_2_n_0\,
      Q => lap_count(7)
    );
\lap_csec[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lap_csec(0),
      I1 => lap_csec(1),
      O => \lap_csec[5]_i_2_n_0\
    );
\lap_csec[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => lap_csec(3),
      I1 => lap_csec(1),
      I2 => lap_csec(0),
      I3 => lap_csec(2),
      I4 => lap_csec(4),
      O => \lap_csec[6]_i_4_n_0\
    );
\lap_csec[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => lap_csec(0),
      I1 => lap_csec(1),
      I2 => lap_csec(2),
      I3 => lap_csec(3),
      I4 => lap_csec(4),
      O => \lap_csec[6]_i_5_n_0\
    );
\lap_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => ed_clear_n_51,
      Q => lap_csec(0)
    );
\lap_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => ed_clear_n_50,
      Q => lap_csec(1)
    );
\lap_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => ed_clear_n_49,
      Q => lap_csec(2)
    );
\lap_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => ed_clear_n_48,
      Q => lap_csec(3)
    );
\lap_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => ed_clear_n_47,
      Q => lap_csec(4)
    );
\lap_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => ed_clear_n_46,
      Q => lap_csec(5)
    );
\lap_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => ed_clear_n_45,
      Q => lap_csec(6)
    );
lap_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => lap_flag_reg_0,
      Q => \^lap_flag\
    );
\lap_min[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => lap_sec(0),
      I1 => lap_sec(1),
      I2 => lap_sec(2),
      I3 => lap_sec(4),
      I4 => lap_sec(3),
      I5 => lap_sec(5),
      O => \lap_min[5]_i_3_n_0\
    );
\lap_min[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => lap_min(1),
      I1 => lap_min(0),
      I2 => lap_min(2),
      O => \lap_min[5]_i_5_n_0\
    );
\lap_min[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lap_min(0),
      I1 => lap_min(1),
      O => \lap_min[5]_i_7_n_0\
    );
\lap_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_38,
      Q => lap_min(0)
    );
\lap_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_37,
      Q => lap_min(1)
    );
\lap_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_36,
      Q => lap_min(2)
    );
\lap_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_35,
      Q => lap_min(3)
    );
\lap_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_34,
      Q => lap_min(4)
    );
\lap_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^sr\(0),
      D => ed_clear_n_33,
      Q => lap_min(5)
    );
\lap_sec[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => lap_sec(0),
      I1 => lap_sec(1),
      O => \lap_sec[5]_i_5_n_0\
    );
\lap_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => ed_clear_n_44,
      Q => lap_sec(0)
    );
\lap_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => ed_clear_n_43,
      Q => lap_sec(1)
    );
\lap_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => ed_clear_n_42,
      Q => lap_sec(2)
    );
\lap_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => ed_clear_n_41,
      Q => lap_sec(3)
    );
\lap_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => ed_clear_n_40,
      Q => lap_sec(4)
    );
\lap_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => ed_clear_n_39,
      Q => lap_sec(5)
    );
\min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(0),
      O => \min[0]_i_1_n_0\
    );
\min[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(1),
      I2 => min(0),
      O => \min[1]_i_1_n_0\
    );
\min[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(0),
      I2 => min(1),
      I3 => min(2),
      O => \min[2]_i_1_n_0\
    );
\min[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(1),
      I2 => min(0),
      I3 => min(2),
      I4 => min(3),
      O => \min[3]_i_1_n_0\
    );
\min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(2),
      I2 => min(0),
      I3 => min(1),
      I4 => min(3),
      I5 => min(4),
      O => \min[4]_i_1_n_0\
    );
\min[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAA2AAAAAAA"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => min(3),
      I2 => min(4),
      I3 => min(5),
      I4 => min(2),
      I5 => \min[5]_i_3_n_0\,
      O => \min[4]_i_2_n_0\
    );
\min[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAAAAA80000000"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => min(2),
      I2 => \min[5]_i_3_n_0\,
      I3 => min(3),
      I4 => min(4),
      I5 => min(5),
      O => \min[5]_i_2_n_0\
    );
\min[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => min(0),
      I1 => min(1),
      O => \min[5]_i_3_n_0\
    );
\min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => \min[0]_i_1_n_0\,
      Q => min(0)
    );
\min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => \min[1]_i_1_n_0\,
      Q => min(1)
    );
\min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => \min[2]_i_1_n_0\,
      Q => min(2)
    );
\min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => \min[3]_i_1_n_0\,
      Q => min(3)
    );
\min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => \min[4]_i_1_n_0\,
      Q => min(4)
    );
\min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => \min[5]_i_2_n_0\,
      Q => min(5)
    );
\prev_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_csec(0),
      Q => prev_csec(0)
    );
\prev_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_csec(1),
      Q => prev_csec(1)
    );
\prev_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_csec(2),
      Q => prev_csec(2)
    );
\prev_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_csec(3),
      Q => prev_csec(3)
    );
\prev_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_csec(4),
      Q => prev_csec(4)
    );
\prev_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_csec(5),
      Q => prev_csec(5)
    );
\prev_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_csec(6),
      Q => prev_csec(6)
    );
\prev_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => \tmp_min_reg_n_0_[0]\,
      Q => \prev_min_reg_n_0_[0]\
    );
\prev_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => \tmp_min_reg_n_0_[1]\,
      Q => \prev_min_reg_n_0_[1]\
    );
\prev_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => \tmp_min_reg_n_0_[2]\,
      Q => \prev_min_reg_n_0_[2]\
    );
\prev_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => \tmp_min_reg_n_0_[3]\,
      Q => \prev_min_reg_n_0_[3]\
    );
\prev_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => \tmp_min_reg_n_0_[4]\,
      Q => \prev_min_reg_n_0_[4]\
    );
\prev_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => \tmp_min_reg_n_0_[5]\,
      Q => \prev_min_reg_n_0_[5]\
    );
\prev_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_sec(0),
      Q => prev_sec(0)
    );
\prev_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_sec(1),
      Q => prev_sec(1)
    );
\prev_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_sec(2),
      Q => prev_sec(2)
    );
\prev_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_sec(3),
      Q => prev_sec(3)
    );
\prev_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_sec(4),
      Q => prev_sec(4)
    );
\prev_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => prev_min,
      CLR => \^sr\(0),
      D => tmp_sec(5),
      Q => prev_sec(5)
    );
run_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => run_reg_1,
      Q => \^run_reg_0\
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0),
      S => sel0(2)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => lap_csec(0),
      I1 => csec(0),
      I2 => sel0(1),
      I3 => \^run_reg_0\,
      I4 => sel0(0),
      I5 => Q(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(0),
      I1 => \s00_axi_rdata[20]_0\(0),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(0),
      I4 => sel0(0),
      I5 => diff_csec(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9),
      S => sel0(2)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_sec(2),
      I1 => sec(2),
      I2 => sel0(1),
      I3 => Q(9),
      I4 => sel0(0),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(9),
      I1 => \s00_axi_rdata[20]_0\(9),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(9),
      I4 => sel0(0),
      I5 => diff_sec(2),
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
      S => sel0(2)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_sec(3),
      I1 => sec(3),
      I2 => sel0(1),
      I3 => Q(10),
      I4 => sel0(0),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(10),
      I1 => \s00_axi_rdata[20]_0\(10),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(10),
      I4 => sel0(0),
      I5 => diff_sec(3),
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(11),
      S => sel0(2)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_sec(4),
      I1 => sec(4),
      I2 => sel0(1),
      I3 => Q(11),
      I4 => sel0(0),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(11),
      I1 => \s00_axi_rdata[20]_0\(11),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(11),
      I4 => sel0(0),
      I5 => diff_sec(4),
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(12),
      S => sel0(2)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_sec(5),
      I1 => sec(5),
      I2 => sel0(1),
      I3 => Q(12),
      I4 => sel0(0),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(12),
      I1 => \s00_axi_rdata[20]_0\(12),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(12),
      I4 => sel0(0),
      I5 => diff_sec(5),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => Q(13),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(13),
      I1 => \s00_axi_rdata[20]_0\(13),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(13),
      I4 => sel0(0),
      I5 => diff_sec(6),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(14),
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(0),
      I1 => min(0),
      I2 => sel0(1),
      I3 => Q(14),
      I4 => sel0(0),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(14),
      I1 => \s00_axi_rdata[20]_0\(14),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(14),
      I4 => sel0(0),
      I5 => diff_min(0),
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(15),
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(1),
      I1 => min(1),
      I2 => sel0(1),
      I3 => Q(15),
      I4 => sel0(0),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(15),
      I1 => \s00_axi_rdata[20]_0\(15),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(15),
      I4 => sel0(0),
      I5 => diff_min(1),
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(16),
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(2),
      I1 => min(2),
      I2 => sel0(1),
      I3 => Q(16),
      I4 => sel0(0),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(16),
      I1 => \s00_axi_rdata[20]_0\(16),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(16),
      I4 => sel0(0),
      I5 => diff_min(2),
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(17),
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(3),
      I1 => min(3),
      I2 => sel0(1),
      I3 => Q(17),
      I4 => sel0(0),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(17),
      I1 => \s00_axi_rdata[20]_0\(17),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(17),
      I4 => sel0(0),
      I5 => diff_min(3),
      O => \s00_axi_rdata[19]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[1]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(1),
      S => sel0(2)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => lap_csec(1),
      I1 => csec(1),
      I2 => sel0(1),
      I3 => \^lap_flag\,
      I4 => sel0(0),
      I5 => Q(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(1),
      I1 => \s00_axi_rdata[20]_0\(1),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(1),
      I4 => sel0(0),
      I5 => diff_csec(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(18),
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(4),
      I1 => min(4),
      I2 => sel0(1),
      I3 => Q(18),
      I4 => sel0(0),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(18),
      I1 => \s00_axi_rdata[20]_0\(18),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(18),
      I4 => sel0(0),
      I5 => diff_min(4),
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_21_sn_1,
      O => s00_axi_rdata(19),
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(5),
      I1 => min(5),
      I2 => sel0(1),
      I3 => Q(19),
      I4 => sel0(0),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_24_sn_1,
      I1 => sel0(2),
      I2 => lap_count(0),
      I3 => sel0(0),
      I4 => Q(20),
      I5 => sel0(1),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_25_sn_1,
      I1 => sel0(2),
      I2 => lap_count(1),
      I3 => sel0(0),
      I4 => Q(21),
      I5 => sel0(1),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_26_sn_1,
      I1 => sel0(2),
      I2 => lap_count(2),
      I3 => sel0(1),
      I4 => Q(22),
      I5 => sel0(0),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_27_sn_1,
      I1 => sel0(2),
      I2 => lap_count(3),
      I3 => sel0(0),
      I4 => Q(23),
      I5 => sel0(1),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[28]\,
      I1 => sel0(2),
      I2 => lap_count(4),
      I3 => sel0(1),
      I4 => Q(24),
      I5 => sel0(0),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[29]\,
      I1 => sel0(2),
      I2 => lap_count(5),
      I3 => sel0(1),
      I4 => Q(25),
      I5 => sel0(0),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[2]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(2),
      S => sel0(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => lap_csec(2),
      I1 => csec(2),
      I2 => sel0(1),
      I3 => \^sign_flag\,
      I4 => sel0(0),
      I5 => Q(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(2),
      I1 => \s00_axi_rdata[20]_0\(2),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(2),
      I4 => sel0(0),
      I5 => diff_csec(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[30]\,
      I1 => sel0(2),
      I2 => lap_count(6),
      I3 => sel0(0),
      I4 => Q(26),
      I5 => sel0(1),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => \s00_axi_rdata[31]\,
      I1 => sel0(2),
      I2 => lap_count(7),
      I3 => sel0(0),
      I4 => Q(27),
      I5 => sel0(1),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[3]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(3),
      S => sel0(2)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_csec(3),
      I1 => csec(3),
      I2 => sel0(1),
      I3 => Q(3),
      I4 => sel0(0),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(3),
      I1 => \s00_axi_rdata[20]_0\(3),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(3),
      I4 => sel0(0),
      I5 => diff_csec(3),
      O => \s00_axi_rdata[3]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[4]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(4),
      S => sel0(2)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_csec(4),
      I1 => csec(4),
      I2 => sel0(1),
      I3 => Q(4),
      I4 => sel0(0),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(4),
      I1 => \s00_axi_rdata[20]_0\(4),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(4),
      I4 => sel0(0),
      I5 => diff_csec(4),
      O => \s00_axi_rdata[4]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[5]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(5),
      S => sel0(2)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_csec(5),
      I1 => csec(5),
      I2 => sel0(1),
      I3 => Q(5),
      I4 => sel0(0),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(5),
      I1 => \s00_axi_rdata[20]_0\(5),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(5),
      I4 => sel0(0),
      I5 => diff_csec(5),
      O => \s00_axi_rdata[5]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[6]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(6),
      S => sel0(2)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_csec(6),
      I1 => csec(6),
      I2 => sel0(1),
      I3 => Q(6),
      I4 => sel0(0),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(6),
      I1 => \s00_axi_rdata[20]_0\(6),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(6),
      I4 => sel0(0),
      I5 => diff_csec(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(7),
      S => sel0(2)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_sec(0),
      I1 => sec(0),
      I2 => sel0(1),
      I3 => Q(7),
      I4 => sel0(0),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(7),
      I1 => \s00_axi_rdata[20]_0\(7),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(7),
      I4 => sel0(0),
      I5 => diff_sec(0),
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8),
      S => sel0(2)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_sec(1),
      I1 => sec(1),
      I2 => sel0(1),
      I3 => Q(8),
      I4 => sel0(0),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[20]\(8),
      I1 => \s00_axi_rdata[20]_0\(8),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[20]_1\(8),
      I4 => sel0(0),
      I5 => diff_sec(1),
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\sec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => sec(0),
      O => \sec[0]_i_1_n_0\
    );
\sec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => sec(1),
      I2 => sec(0),
      O => \sec[1]_i_1_n_0\
    );
\sec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => sec(0),
      I2 => sec(1),
      I3 => sec(2),
      O => \sec[2]_i_1_n_0\
    );
\sec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => sec(1),
      I2 => sec(0),
      I3 => sec(2),
      I4 => sec(3),
      O => \sec[3]_i_1_n_0\
    );
\sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => sec(2),
      I2 => sec(0),
      I3 => sec(1),
      I4 => sec(3),
      I5 => sec(4),
      O => \sec[4]_i_1_n_0\
    );
\sec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA2AAA2AAAAAAA"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => sec(5),
      I2 => sec(4),
      I3 => sec(3),
      I4 => sec(2),
      I5 => \sec[5]_i_3_n_0\,
      O => \sec[4]_i_2_n_0\
    );
\sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2888088808888888"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => sec(5),
      I2 => sec(4),
      I3 => sec(3),
      I4 => \sec[5]_i_3_n_0\,
      I5 => sec(2),
      O => \sec[5]_i_2_n_0\
    );
\sec[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sec(0),
      I1 => sec(1),
      O => \sec[5]_i_3_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => \sec[0]_i_1_n_0\,
      Q => sec(0)
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => \sec[1]_i_1_n_0\,
      Q => sec(1)
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => \sec[2]_i_1_n_0\,
      Q => sec(2)
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => \sec[3]_i_1_n_0\,
      Q => sec(3)
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => \sec[4]_i_1_n_0\,
      Q => sec(4)
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => \sec[5]_i_2_n_0\,
      Q => sec(5)
    );
sign_calc1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sign_calc1_carry_n_0,
      CO(2) => sign_calc1_carry_n_1,
      CO(1) => sign_calc1_carry_n_2,
      CO(0) => sign_calc1_carry_n_3,
      CYINIT => '1',
      DI(3) => sign_calc1_carry_i_1_n_0,
      DI(2) => sign_calc1_carry_i_2_n_0,
      DI(1) => sign_calc1_carry_i_3_n_0,
      DI(0) => sign_calc1_carry_i_4_n_0,
      O(3 downto 0) => NLW_sign_calc1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => sign_calc1_carry_i_5_n_0,
      S(2) => sign_calc1_carry_i_6_n_0,
      S(1) => sign_calc1_carry_i_7_n_0,
      S(0) => sign_calc1_carry_i_8_n_0
    );
\sign_calc1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => sign_calc1_carry_n_0,
      CO(3) => \sign_calc1_carry__0_n_0\,
      CO(2) => \sign_calc1_carry__0_n_1\,
      CO(1) => \sign_calc1_carry__0_n_2\,
      CO(0) => \sign_calc1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \sign_calc1_carry__0_i_1_n_0\,
      DI(2) => \sign_calc1_carry__0_i_2_n_0\,
      DI(1) => \sign_calc1_carry__0_i_3_n_0\,
      DI(0) => \sign_calc1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_sign_calc1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \sign_calc1_carry__0_i_5_n_0\,
      S(2) => \sign_calc1_carry__0_i_6_n_0\,
      S(1) => \sign_calc1_carry__0_i_7_n_0\,
      S(0) => \sign_calc1_carry__0_i_8_n_0\
    );
\sign_calc1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(14),
      I3 => \total_prev__0\(14),
      O => \sign_calc1_carry__0_i_1_n_0\
    );
\sign_calc1_carry__0_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \sign_calc1_carry__0_i_12_n_0\,
      CO(3) => \sign_calc1_carry__0_i_10_n_0\,
      CO(2) => \sign_calc1_carry__0_i_10_n_1\,
      CO(1) => \sign_calc1_carry__0_i_10_n_2\,
      CO(0) => \sign_calc1_carry__0_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_prev__0\(15 downto 12),
      S(3) => total_prev_n_90,
      S(2) => total_prev_n_91,
      S(1) => total_prev_n_92,
      S(0) => total_prev_n_93
    );
\sign_calc1_carry__0_i_11\: unisim.vcomponents.CARRY4
     port map (
      CI => sign_calc1_carry_i_9_n_0,
      CO(3) => \sign_calc1_carry__0_i_11_n_0\,
      CO(2) => \sign_calc1_carry__0_i_11_n_1\,
      CO(1) => \sign_calc1_carry__0_i_11_n_2\,
      CO(0) => \sign_calc1_carry__0_i_11_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_tmp__0\(11 downto 8),
      S(3) => total_tmp_n_94,
      S(2) => total_tmp_n_95,
      S(1) => total_tmp_n_96,
      S(0) => total_tmp_n_97
    );
\sign_calc1_carry__0_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => sign_calc1_carry_i_10_n_0,
      CO(3) => \sign_calc1_carry__0_i_12_n_0\,
      CO(2) => \sign_calc1_carry__0_i_12_n_1\,
      CO(1) => \sign_calc1_carry__0_i_12_n_2\,
      CO(0) => \sign_calc1_carry__0_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_prev__0\(11 downto 8),
      S(3) => total_prev_n_94,
      S(2) => total_prev_n_95,
      S(1) => total_prev_n_96,
      S(0) => total_prev_n_97
    );
\sign_calc1_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(12),
      O => \sign_calc1_carry__0_i_2_n_0\
    );
\sign_calc1_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(10),
      I3 => \total_prev__0\(10),
      O => \sign_calc1_carry__0_i_3_n_0\
    );
\sign_calc1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(8),
      I3 => \total_prev__0\(8),
      O => \sign_calc1_carry__0_i_4_n_0\
    );
\sign_calc1_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \total_tmp__0\(15),
      I2 => \total_prev__0\(14),
      I3 => \total_tmp__0\(14),
      O => \sign_calc1_carry__0_i_5_n_0\
    );
\sign_calc1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(13),
      I1 => \total_tmp__0\(13),
      I2 => \total_prev__0\(12),
      I3 => \total_tmp__0\(12),
      O => \sign_calc1_carry__0_i_6_n_0\
    );
\sign_calc1_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \total_tmp__0\(11),
      I2 => \total_prev__0\(10),
      I3 => \total_tmp__0\(10),
      O => \sign_calc1_carry__0_i_7_n_0\
    );
\sign_calc1_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \total_tmp__0\(9),
      I2 => \total_prev__0\(8),
      I3 => \total_tmp__0\(8),
      O => \sign_calc1_carry__0_i_8_n_0\
    );
\sign_calc1_carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \sign_calc1_carry__0_i_11_n_0\,
      CO(3) => \sign_calc1_carry__0_i_9_n_0\,
      CO(2) => \sign_calc1_carry__0_i_9_n_1\,
      CO(1) => \sign_calc1_carry__0_i_9_n_2\,
      CO(0) => \sign_calc1_carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_tmp__0\(15 downto 12),
      S(3) => total_tmp_n_90,
      S(2) => total_tmp_n_91,
      S(1) => total_tmp_n_92,
      S(0) => total_tmp_n_93
    );
\sign_calc1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \sign_calc1_carry__0_n_0\,
      CO(3 downto 1) => \NLW_sign_calc1_carry__1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \^co\(0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \sign_calc1_carry__1_i_1_n_0\,
      O(3 downto 0) => \NLW_sign_calc1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \sign_calc1_carry__1_i_2_n_0\
    );
\sign_calc1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      O => \sign_calc1_carry__1_i_1_n_0\
    );
\sign_calc1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(16),
      I1 => \total_tmp__0\(16),
      O => \sign_calc1_carry__1_i_2_n_0\
    );
\sign_calc1_carry__1_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \sign_calc1_carry__0_i_9_n_0\,
      CO(3 downto 0) => \NLW_sign_calc1_carry__1_i_3_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sign_calc1_carry__1_i_3_O_UNCONNECTED\(3 downto 1),
      O(0) => \total_tmp__0\(16),
      S(3 downto 1) => B"000",
      S(0) => total_tmp_n_89
    );
\sign_calc1_carry__1_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \sign_calc1_carry__0_i_10_n_0\,
      CO(3 downto 0) => \NLW_sign_calc1_carry__1_i_4_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_sign_calc1_carry__1_i_4_O_UNCONNECTED\(3 downto 1),
      O(0) => \total_prev__0\(16),
      S(3 downto 1) => B"000",
      S(0) => total_prev_n_89
    );
sign_calc1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \total_prev__0\(7),
      I2 => \total_tmp__0\(6),
      I3 => \total_prev__0\(6),
      O => sign_calc1_carry_i_1_n_0
    );
sign_calc1_carry_i_10: unisim.vcomponents.CARRY4
     port map (
      CI => sign_calc1_carry_i_12_n_0,
      CO(3) => sign_calc1_carry_i_10_n_0,
      CO(2) => sign_calc1_carry_i_10_n_1,
      CO(1) => sign_calc1_carry_i_10_n_2,
      CO(0) => sign_calc1_carry_i_10_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => prev_csec(6 downto 4),
      O(3 downto 0) => \total_prev__0\(7 downto 4),
      S(3) => total_prev_n_98,
      S(2) => sign_calc1_carry_i_16_n_0,
      S(1) => sign_calc1_carry_i_17_n_0,
      S(0) => sign_calc1_carry_i_18_n_0
    );
sign_calc1_carry_i_11: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sign_calc1_carry_i_11_n_0,
      CO(2) => sign_calc1_carry_i_11_n_1,
      CO(1) => sign_calc1_carry_i_11_n_2,
      CO(0) => sign_calc1_carry_i_11_n_3,
      CYINIT => '0',
      DI(3 downto 0) => tmp_csec(3 downto 0),
      O(3 downto 0) => \total_tmp__0\(3 downto 0),
      S(3) => sign_calc1_carry_i_19_n_0,
      S(2) => sign_calc1_carry_i_20_n_0,
      S(1) => sign_calc1_carry_i_21_n_0,
      S(0) => sign_calc1_carry_i_22_n_0
    );
sign_calc1_carry_i_12: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sign_calc1_carry_i_12_n_0,
      CO(2) => sign_calc1_carry_i_12_n_1,
      CO(1) => sign_calc1_carry_i_12_n_2,
      CO(0) => sign_calc1_carry_i_12_n_3,
      CYINIT => '0',
      DI(3 downto 0) => prev_csec(3 downto 0),
      O(3 downto 0) => \total_prev__0\(3 downto 0),
      S(3) => sign_calc1_carry_i_23_n_0,
      S(2) => sign_calc1_carry_i_24_n_0,
      S(1) => sign_calc1_carry_i_25_n_0,
      S(0) => sign_calc1_carry_i_26_n_0
    );
sign_calc1_carry_i_13: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(6),
      I1 => total_tmp_n_99,
      O => sign_calc1_carry_i_13_n_0
    );
sign_calc1_carry_i_14: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(5),
      I1 => total_tmp_n_100,
      O => sign_calc1_carry_i_14_n_0
    );
sign_calc1_carry_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(4),
      I1 => total_tmp_n_101,
      O => sign_calc1_carry_i_15_n_0
    );
sign_calc1_carry_i_16: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(6),
      I1 => total_prev_n_99,
      O => sign_calc1_carry_i_16_n_0
    );
sign_calc1_carry_i_17: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(5),
      I1 => total_prev_n_100,
      O => sign_calc1_carry_i_17_n_0
    );
sign_calc1_carry_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(4),
      I1 => total_prev_n_101,
      O => sign_calc1_carry_i_18_n_0
    );
sign_calc1_carry_i_19: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(3),
      I1 => total_tmp_n_102,
      O => sign_calc1_carry_i_19_n_0
    );
sign_calc1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      I2 => \total_tmp__0\(4),
      I3 => \total_prev__0\(4),
      O => sign_calc1_carry_i_2_n_0
    );
sign_calc1_carry_i_20: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(2),
      I1 => total_tmp_n_103,
      O => sign_calc1_carry_i_20_n_0
    );
sign_calc1_carry_i_21: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(1),
      I1 => total_tmp_n_104,
      O => sign_calc1_carry_i_21_n_0
    );
sign_calc1_carry_i_22: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(0),
      I1 => total_tmp_n_105,
      O => sign_calc1_carry_i_22_n_0
    );
sign_calc1_carry_i_23: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(3),
      I1 => total_prev_n_102,
      O => sign_calc1_carry_i_23_n_0
    );
sign_calc1_carry_i_24: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(2),
      I1 => total_prev_n_103,
      O => sign_calc1_carry_i_24_n_0
    );
sign_calc1_carry_i_25: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(1),
      I1 => total_prev_n_104,
      O => sign_calc1_carry_i_25_n_0
    );
sign_calc1_carry_i_26: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(0),
      I1 => total_prev_n_105,
      O => sign_calc1_carry_i_26_n_0
    );
sign_calc1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \total_tmp__0\(2),
      I3 => \total_prev__0\(2),
      O => sign_calc1_carry_i_3_n_0
    );
sign_calc1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \total_tmp__0\(0),
      I3 => \total_prev__0\(0),
      O => sign_calc1_carry_i_4_n_0
    );
sign_calc1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \total_tmp__0\(7),
      I2 => \total_prev__0\(6),
      I3 => \total_tmp__0\(6),
      O => sign_calc1_carry_i_5_n_0
    );
sign_calc1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      I2 => \total_prev__0\(4),
      I3 => \total_tmp__0\(4),
      O => sign_calc1_carry_i_6_n_0
    );
sign_calc1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      I2 => \total_prev__0\(2),
      I3 => \total_tmp__0\(2),
      O => sign_calc1_carry_i_7_n_0
    );
sign_calc1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      I2 => \total_prev__0\(0),
      I3 => \total_tmp__0\(0),
      O => sign_calc1_carry_i_8_n_0
    );
sign_calc1_carry_i_9: unisim.vcomponents.CARRY4
     port map (
      CI => sign_calc1_carry_i_11_n_0,
      CO(3) => sign_calc1_carry_i_9_n_0,
      CO(2) => sign_calc1_carry_i_9_n_1,
      CO(1) => sign_calc1_carry_i_9_n_2,
      CO(0) => sign_calc1_carry_i_9_n_3,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_csec(6 downto 4),
      O(3 downto 0) => \total_tmp__0\(7 downto 4),
      S(3) => total_tmp_n_98,
      S(2) => sign_calc1_carry_i_13_n_0,
      S(1) => sign_calc1_carry_i_14_n_0,
      S(0) => sign_calc1_carry_i_15_n_0
    );
sign_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => sign_flag_reg_0,
      Q => \^sign_flag\
    );
\tmp_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_csec(0),
      Q => tmp_csec(0)
    );
\tmp_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_csec(1),
      Q => tmp_csec(1)
    );
\tmp_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_csec(2),
      Q => tmp_csec(2)
    );
\tmp_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_csec(3),
      Q => tmp_csec(3)
    );
\tmp_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_csec(4),
      Q => tmp_csec(4)
    );
\tmp_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_csec(5),
      Q => tmp_csec(5)
    );
\tmp_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_csec(6),
      Q => tmp_csec(6)
    );
\tmp_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_min(0),
      Q => \tmp_min_reg_n_0_[0]\
    );
\tmp_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_min(1),
      Q => \tmp_min_reg_n_0_[1]\
    );
\tmp_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_min(2),
      Q => \tmp_min_reg_n_0_[2]\
    );
\tmp_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_min(3),
      Q => \tmp_min_reg_n_0_[3]\
    );
\tmp_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_min(4),
      Q => \tmp_min_reg_n_0_[4]\
    );
\tmp_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_min(5),
      Q => \tmp_min_reg_n_0_[5]\
    );
\tmp_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_sec(0),
      Q => tmp_sec(0)
    );
\tmp_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_sec(1),
      Q => tmp_sec(1)
    );
\tmp_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_sec(2),
      Q => tmp_sec(2)
    );
\tmp_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_sec(3),
      Q => tmp_sec(3)
    );
\tmp_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_sec(4),
      Q => tmp_sec(4)
    );
\tmp_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => \^e\(0),
      CLR => \^sr\(0),
      D => lap_sec(5),
      Q => tmp_sec(5)
    );
total_prev: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000001011101110000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_total_prev_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 6) => B"000000000000",
      B(5) => \prev_min_reg_n_0_[5]\,
      B(4) => \prev_min_reg_n_0_[4]\,
      B(3) => \prev_min_reg_n_0_[3]\,
      B(2) => \prev_min_reg_n_0_[2]\,
      B(1) => \prev_min_reg_n_0_[1]\,
      B(0) => \prev_min_reg_n_0_[0]\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_total_prev_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_total_prev_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_total_prev_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_total_prev_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_total_prev_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_total_prev_P_UNCONNECTED(47 downto 17),
      P(16) => total_prev_n_89,
      P(15) => total_prev_n_90,
      P(14) => total_prev_n_91,
      P(13) => total_prev_n_92,
      P(12) => total_prev_n_93,
      P(11) => total_prev_n_94,
      P(10) => total_prev_n_95,
      P(9) => total_prev_n_96,
      P(8) => total_prev_n_97,
      P(7) => total_prev_n_98,
      P(6) => total_prev_n_99,
      P(5) => total_prev_n_100,
      P(4) => total_prev_n_101,
      P(3) => total_prev_n_102,
      P(2) => total_prev_n_103,
      P(1) => total_prev_n_104,
      P(0) => total_prev_n_105,
      PATTERNBDETECT => NLW_total_prev_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_total_prev_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => total_prev1_n_106,
      PCIN(46) => total_prev1_n_107,
      PCIN(45) => total_prev1_n_108,
      PCIN(44) => total_prev1_n_109,
      PCIN(43) => total_prev1_n_110,
      PCIN(42) => total_prev1_n_111,
      PCIN(41) => total_prev1_n_112,
      PCIN(40) => total_prev1_n_113,
      PCIN(39) => total_prev1_n_114,
      PCIN(38) => total_prev1_n_115,
      PCIN(37) => total_prev1_n_116,
      PCIN(36) => total_prev1_n_117,
      PCIN(35) => total_prev1_n_118,
      PCIN(34) => total_prev1_n_119,
      PCIN(33) => total_prev1_n_120,
      PCIN(32) => total_prev1_n_121,
      PCIN(31) => total_prev1_n_122,
      PCIN(30) => total_prev1_n_123,
      PCIN(29) => total_prev1_n_124,
      PCIN(28) => total_prev1_n_125,
      PCIN(27) => total_prev1_n_126,
      PCIN(26) => total_prev1_n_127,
      PCIN(25) => total_prev1_n_128,
      PCIN(24) => total_prev1_n_129,
      PCIN(23) => total_prev1_n_130,
      PCIN(22) => total_prev1_n_131,
      PCIN(21) => total_prev1_n_132,
      PCIN(20) => total_prev1_n_133,
      PCIN(19) => total_prev1_n_134,
      PCIN(18) => total_prev1_n_135,
      PCIN(17) => total_prev1_n_136,
      PCIN(16) => total_prev1_n_137,
      PCIN(15) => total_prev1_n_138,
      PCIN(14) => total_prev1_n_139,
      PCIN(13) => total_prev1_n_140,
      PCIN(12) => total_prev1_n_141,
      PCIN(11) => total_prev1_n_142,
      PCIN(10) => total_prev1_n_143,
      PCIN(9) => total_prev1_n_144,
      PCIN(8) => total_prev1_n_145,
      PCIN(7) => total_prev1_n_146,
      PCIN(6) => total_prev1_n_147,
      PCIN(5) => total_prev1_n_148,
      PCIN(4) => total_prev1_n_149,
      PCIN(3) => total_prev1_n_150,
      PCIN(2) => total_prev1_n_151,
      PCIN(1) => total_prev1_n_152,
      PCIN(0) => total_prev1_n_153,
      PCOUT(47 downto 0) => NLW_total_prev_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_total_prev_UNDERFLOW_UNCONNECTED
    );
total_prev1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 6) => B"000000000000000000000000",
      A(5 downto 0) => prev_sec(5 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_total_prev1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000001100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_total_prev1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_total_prev1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_total_prev1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_total_prev1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_total_prev1_OVERFLOW_UNCONNECTED,
      P(47 downto 15) => NLW_total_prev1_P_UNCONNECTED(47 downto 15),
      P(14) => total_prev1_n_91,
      P(13) => total_prev1_n_92,
      P(12) => total_prev1_n_93,
      P(11) => total_prev1_n_94,
      P(10) => total_prev1_n_95,
      P(9) => total_prev1_n_96,
      P(8) => total_prev1_n_97,
      P(7) => total_prev1_n_98,
      P(6) => total_prev1_n_99,
      P(5) => total_prev1_n_100,
      P(4) => total_prev1_n_101,
      P(3) => total_prev1_n_102,
      P(2) => total_prev1_n_103,
      P(1) => total_prev1_n_104,
      P(0) => total_prev1_n_105,
      PATTERNBDETECT => NLW_total_prev1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_total_prev1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => total_prev1_n_106,
      PCOUT(46) => total_prev1_n_107,
      PCOUT(45) => total_prev1_n_108,
      PCOUT(44) => total_prev1_n_109,
      PCOUT(43) => total_prev1_n_110,
      PCOUT(42) => total_prev1_n_111,
      PCOUT(41) => total_prev1_n_112,
      PCOUT(40) => total_prev1_n_113,
      PCOUT(39) => total_prev1_n_114,
      PCOUT(38) => total_prev1_n_115,
      PCOUT(37) => total_prev1_n_116,
      PCOUT(36) => total_prev1_n_117,
      PCOUT(35) => total_prev1_n_118,
      PCOUT(34) => total_prev1_n_119,
      PCOUT(33) => total_prev1_n_120,
      PCOUT(32) => total_prev1_n_121,
      PCOUT(31) => total_prev1_n_122,
      PCOUT(30) => total_prev1_n_123,
      PCOUT(29) => total_prev1_n_124,
      PCOUT(28) => total_prev1_n_125,
      PCOUT(27) => total_prev1_n_126,
      PCOUT(26) => total_prev1_n_127,
      PCOUT(25) => total_prev1_n_128,
      PCOUT(24) => total_prev1_n_129,
      PCOUT(23) => total_prev1_n_130,
      PCOUT(22) => total_prev1_n_131,
      PCOUT(21) => total_prev1_n_132,
      PCOUT(20) => total_prev1_n_133,
      PCOUT(19) => total_prev1_n_134,
      PCOUT(18) => total_prev1_n_135,
      PCOUT(17) => total_prev1_n_136,
      PCOUT(16) => total_prev1_n_137,
      PCOUT(15) => total_prev1_n_138,
      PCOUT(14) => total_prev1_n_139,
      PCOUT(13) => total_prev1_n_140,
      PCOUT(12) => total_prev1_n_141,
      PCOUT(11) => total_prev1_n_142,
      PCOUT(10) => total_prev1_n_143,
      PCOUT(9) => total_prev1_n_144,
      PCOUT(8) => total_prev1_n_145,
      PCOUT(7) => total_prev1_n_146,
      PCOUT(6) => total_prev1_n_147,
      PCOUT(5) => total_prev1_n_148,
      PCOUT(4) => total_prev1_n_149,
      PCOUT(3) => total_prev1_n_150,
      PCOUT(2) => total_prev1_n_151,
      PCOUT(1) => total_prev1_n_152,
      PCOUT(0) => total_prev1_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_total_prev1_UNDERFLOW_UNCONNECTED
    );
total_tmp: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 0) => B"000000000000000001011101110000",
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_total_tmp_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 6) => B"000000000000",
      B(5) => \tmp_min_reg_n_0_[5]\,
      B(4) => \tmp_min_reg_n_0_[4]\,
      B(3) => \tmp_min_reg_n_0_[3]\,
      B(2) => \tmp_min_reg_n_0_[2]\,
      B(1) => \tmp_min_reg_n_0_[1]\,
      B(0) => \tmp_min_reg_n_0_[0]\,
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_total_tmp_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_total_tmp_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_total_tmp_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_total_tmp_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0010101",
      OVERFLOW => NLW_total_tmp_OVERFLOW_UNCONNECTED,
      P(47 downto 17) => NLW_total_tmp_P_UNCONNECTED(47 downto 17),
      P(16) => total_tmp_n_89,
      P(15) => total_tmp_n_90,
      P(14) => total_tmp_n_91,
      P(13) => total_tmp_n_92,
      P(12) => total_tmp_n_93,
      P(11) => total_tmp_n_94,
      P(10) => total_tmp_n_95,
      P(9) => total_tmp_n_96,
      P(8) => total_tmp_n_97,
      P(7) => total_tmp_n_98,
      P(6) => total_tmp_n_99,
      P(5) => total_tmp_n_100,
      P(4) => total_tmp_n_101,
      P(3) => total_tmp_n_102,
      P(2) => total_tmp_n_103,
      P(1) => total_tmp_n_104,
      P(0) => total_tmp_n_105,
      PATTERNBDETECT => NLW_total_tmp_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_total_tmp_PATTERNDETECT_UNCONNECTED,
      PCIN(47) => total_tmp1_n_106,
      PCIN(46) => total_tmp1_n_107,
      PCIN(45) => total_tmp1_n_108,
      PCIN(44) => total_tmp1_n_109,
      PCIN(43) => total_tmp1_n_110,
      PCIN(42) => total_tmp1_n_111,
      PCIN(41) => total_tmp1_n_112,
      PCIN(40) => total_tmp1_n_113,
      PCIN(39) => total_tmp1_n_114,
      PCIN(38) => total_tmp1_n_115,
      PCIN(37) => total_tmp1_n_116,
      PCIN(36) => total_tmp1_n_117,
      PCIN(35) => total_tmp1_n_118,
      PCIN(34) => total_tmp1_n_119,
      PCIN(33) => total_tmp1_n_120,
      PCIN(32) => total_tmp1_n_121,
      PCIN(31) => total_tmp1_n_122,
      PCIN(30) => total_tmp1_n_123,
      PCIN(29) => total_tmp1_n_124,
      PCIN(28) => total_tmp1_n_125,
      PCIN(27) => total_tmp1_n_126,
      PCIN(26) => total_tmp1_n_127,
      PCIN(25) => total_tmp1_n_128,
      PCIN(24) => total_tmp1_n_129,
      PCIN(23) => total_tmp1_n_130,
      PCIN(22) => total_tmp1_n_131,
      PCIN(21) => total_tmp1_n_132,
      PCIN(20) => total_tmp1_n_133,
      PCIN(19) => total_tmp1_n_134,
      PCIN(18) => total_tmp1_n_135,
      PCIN(17) => total_tmp1_n_136,
      PCIN(16) => total_tmp1_n_137,
      PCIN(15) => total_tmp1_n_138,
      PCIN(14) => total_tmp1_n_139,
      PCIN(13) => total_tmp1_n_140,
      PCIN(12) => total_tmp1_n_141,
      PCIN(11) => total_tmp1_n_142,
      PCIN(10) => total_tmp1_n_143,
      PCIN(9) => total_tmp1_n_144,
      PCIN(8) => total_tmp1_n_145,
      PCIN(7) => total_tmp1_n_146,
      PCIN(6) => total_tmp1_n_147,
      PCIN(5) => total_tmp1_n_148,
      PCIN(4) => total_tmp1_n_149,
      PCIN(3) => total_tmp1_n_150,
      PCIN(2) => total_tmp1_n_151,
      PCIN(1) => total_tmp1_n_152,
      PCIN(0) => total_tmp1_n_153,
      PCOUT(47 downto 0) => NLW_total_tmp_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_total_tmp_UNDERFLOW_UNCONNECTED
    );
total_tmp1: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 0,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 0,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 0,
      BREG => 0,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 1,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 6) => B"000000000000000000000000",
      A(5 downto 0) => tmp_sec(5 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_total_tmp1_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 0) => B"000000000001100100",
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_total_tmp1_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => B"111111111111111111111111111111111111111111111111",
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_total_tmp1_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_total_tmp1_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => '0',
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => '0',
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => '0',
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_total_tmp1_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0000101",
      OVERFLOW => NLW_total_tmp1_OVERFLOW_UNCONNECTED,
      P(47 downto 15) => NLW_total_tmp1_P_UNCONNECTED(47 downto 15),
      P(14) => total_tmp1_n_91,
      P(13) => total_tmp1_n_92,
      P(12) => total_tmp1_n_93,
      P(11) => total_tmp1_n_94,
      P(10) => total_tmp1_n_95,
      P(9) => total_tmp1_n_96,
      P(8) => total_tmp1_n_97,
      P(7) => total_tmp1_n_98,
      P(6) => total_tmp1_n_99,
      P(5) => total_tmp1_n_100,
      P(4) => total_tmp1_n_101,
      P(3) => total_tmp1_n_102,
      P(2) => total_tmp1_n_103,
      P(1) => total_tmp1_n_104,
      P(0) => total_tmp1_n_105,
      PATTERNBDETECT => NLW_total_tmp1_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_total_tmp1_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47) => total_tmp1_n_106,
      PCOUT(46) => total_tmp1_n_107,
      PCOUT(45) => total_tmp1_n_108,
      PCOUT(44) => total_tmp1_n_109,
      PCOUT(43) => total_tmp1_n_110,
      PCOUT(42) => total_tmp1_n_111,
      PCOUT(41) => total_tmp1_n_112,
      PCOUT(40) => total_tmp1_n_113,
      PCOUT(39) => total_tmp1_n_114,
      PCOUT(38) => total_tmp1_n_115,
      PCOUT(37) => total_tmp1_n_116,
      PCOUT(36) => total_tmp1_n_117,
      PCOUT(35) => total_tmp1_n_118,
      PCOUT(34) => total_tmp1_n_119,
      PCOUT(33) => total_tmp1_n_120,
      PCOUT(32) => total_tmp1_n_121,
      PCOUT(31) => total_tmp1_n_122,
      PCOUT(30) => total_tmp1_n_123,
      PCOUT(29) => total_tmp1_n_124,
      PCOUT(28) => total_tmp1_n_125,
      PCOUT(27) => total_tmp1_n_126,
      PCOUT(26) => total_tmp1_n_127,
      PCOUT(25) => total_tmp1_n_128,
      PCOUT(24) => total_tmp1_n_129,
      PCOUT(23) => total_tmp1_n_130,
      PCOUT(22) => total_tmp1_n_131,
      PCOUT(21) => total_tmp1_n_132,
      PCOUT(20) => total_tmp1_n_133,
      PCOUT(19) => total_tmp1_n_134,
      PCOUT(18) => total_tmp1_n_135,
      PCOUT(17) => total_tmp1_n_136,
      PCOUT(16) => total_tmp1_n_137,
      PCOUT(15) => total_tmp1_n_138,
      PCOUT(14) => total_tmp1_n_139,
      PCOUT(13) => total_tmp1_n_140,
      PCOUT(12) => total_tmp1_n_141,
      PCOUT(11) => total_tmp1_n_142,
      PCOUT(10) => total_tmp1_n_143,
      PCOUT(9) => total_tmp1_n_144,
      PCOUT(8) => total_tmp1_n_145,
      PCOUT(7) => total_tmp1_n_146,
      PCOUT(6) => total_tmp1_n_147,
      PCOUT(5) => total_tmp1_n_148,
      PCOUT(4) => total_tmp1_n_149,
      PCOUT(3) => total_tmp1_n_150,
      PCOUT(2) => total_tmp1_n_151,
      PCOUT(1) => total_tmp1_n_152,
      PCOUT(0) => total_tmp1_n_153,
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_total_tmp1_UNDERFLOW_UNCONNECTED
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_0_in_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    run : out STD_LOGIC;
    lap_flag : out STD_LOGIC;
    sign_flag : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    \lap_count_reg[1]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    state_write : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_read : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_awready0__0\ : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    run_reg : in STD_LOGIC;
    lap_flag_reg : in STD_LOGIC;
    sign_flag_reg : in STD_LOGIC;
    axi_bvalid_reg_0 : in STD_LOGIC;
    axi_awready_reg_1 : in STD_LOGIC;
    axi_wready_reg_0 : in STD_LOGIC;
    axi_rvalid_reg_1 : in STD_LOGIC;
    axi_arready_reg_1 : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0__0\ : STD_LOGIC_VECTOR ( 31 downto 3 );
  signal slv_reg5 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg5[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg5[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg5[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg6 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg6[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg6[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg6[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg7 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg7[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg7[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg7[7]_i_1_n_0\ : STD_LOGIC;
  signal \^state_read\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^state_write\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stop_watch_inst_n_1 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair51";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \slv_reg6[31]_i_2\ : label is "soft_lutpair52";
begin
  Q(0) <= \^q\(0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  state_read(1 downto 0) <= \^state_read\(1 downto 0);
  state_write(1 downto 0) <= \^state_write\(1 downto 0);
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => \^state_read\(0),
      I5 => \^state_read\(1),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF88880000"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => \^state_read\(0),
      I5 => \^state_read\(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => \^state_read\(0),
      R => stop_watch_inst_n_1
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => \^state_read\(1),
      R => stop_watch_inst_n_1
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => \^state_write\(0),
      I4 => \^state_write\(1),
      O => \FSM_sequential_state_write[0]_i_1_n_0\
    );
\FSM_sequential_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF0F0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_wvalid,
      I3 => \^state_write\(0),
      I4 => \^state_write\(1),
      O => \FSM_sequential_state_write[1]_i_1_n_0\
    );
\FSM_sequential_state_write_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[0]_i_1_n_0\,
      Q => \^state_write\(0),
      R => stop_watch_inst_n_1
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => \^state_write\(1),
      R => stop_watch_inst_n_1
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_arvalid,
      I3 => \^state_read\(0),
      I4 => \^state_read\(1),
      O => \axi_araddr[4]_i_2_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[4]_i_1_n_0\,
      Q => sel0(2),
      R => '0'
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_reg_1,
      Q => \^axi_arready_reg_0\,
      R => stop_watch_inst_n_1
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => \^state_write\(1),
      I2 => \^state_write\(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[2]\,
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => \^state_write\(1),
      I2 => \^state_write\(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[3]\,
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(2),
      I1 => \^state_write\(1),
      I2 => \^state_write\(0),
      I3 => s00_axi_awvalid,
      I4 => \^axi_awready_reg_0\,
      I5 => \axi_awaddr_reg_n_0_[4]\,
      O => \axi_awaddr[4]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[2]\,
      R => stop_watch_inst_n_1
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => stop_watch_inst_n_1
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => stop_watch_inst_n_1
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_reg_1,
      Q => \^axi_awready_reg_0\,
      R => stop_watch_inst_n_1
    );
axi_bvalid_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
      O => \axi_awready0__0\
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_reg_0,
      Q => s00_axi_bvalid,
      R => stop_watch_inst_n_1
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => stop_watch_inst_n_1
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_reg_0,
      Q => s00_axi_wready,
      R => stop_watch_inst_n_1
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \slv_reg0__0\(15),
      I4 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => slv_reg5(15),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => slv_reg6(15),
      I4 => slv_reg7(15),
      I5 => sel0(2),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(21),
      I1 => slv_reg6(21),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(21),
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \slv_reg0__0\(22),
      I4 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => slv_reg5(22),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => slv_reg6(22),
      I4 => slv_reg7(22),
      I5 => sel0(2),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \slv_reg0__0\(23),
      I4 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => slv_reg5(23),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => slv_reg6(23),
      I4 => slv_reg7(23),
      I5 => sel0(2),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(24),
      I1 => slv_reg6(24),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(24),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(25),
      I1 => slv_reg6(25),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(25),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(26),
      I1 => slv_reg6(26),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(26),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(27),
      I1 => slv_reg6(27),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(27),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(28),
      I1 => slv_reg6(28),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(28),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(29),
      I1 => slv_reg6(29),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(29),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(30),
      I1 => slv_reg6(30),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(30),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(31),
      I1 => slv_reg6(31),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(31),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => sel0(2),
      I3 => \slv_reg0__0\(7),
      I4 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8C8380800000000"
    )
        port map (
      I0 => slv_reg5(7),
      I1 => sel0(0),
      I2 => sel0(1),
      I3 => slv_reg6(7),
      I4 => slv_reg7(7),
      I5 => sel0(2),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => s00_axi_awaddr(1),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0__0\(10),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0__0\(11),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0__0\(12),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0__0\(13),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0__0\(14),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0__0\(15),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0__0\(16),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0__0\(17),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0__0\(18),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0__0\(19),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0__0\(20),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0__0\(21),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0__0\(22),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0__0\(23),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0__0\(24),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0__0\(25),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0__0\(26),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0__0\(27),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0__0\(28),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0__0\(29),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(0),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0__0\(30),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0__0\(31),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \slv_reg0__0\(3),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_reg0__0\(4),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_reg0__0\(5),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_reg0__0\(6),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_reg0__0\(7),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0__0\(8),
      R => stop_watch_inst_n_1
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0__0\(9),
      R => stop_watch_inst_n_1
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A20000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wstrb(1),
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[15]_i_1_n_0\
    );
\slv_reg5[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A20000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wstrb(2),
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[23]_i_1_n_0\
    );
\slv_reg5[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A20000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wstrb(3),
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[31]_i_1_n_0\
    );
\slv_reg5[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      O => \slv_reg5[31]_i_2_n_0\
    );
\slv_reg5[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A20000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \axi_awaddr_reg_n_0_[3]\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_awaddr(1),
      I4 => s00_axi_wstrb(0),
      I5 => \slv_reg5[31]_i_2_n_0\,
      O => \slv_reg5[7]_i_1_n_0\
    );
\slv_reg5_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg5(0),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => stop_watch_inst_n_1
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => stop_watch_inst_n_1
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg6[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(1),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg6[15]_i_1_n_0\
    );
\slv_reg6[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg6[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(2),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg6[23]_i_1_n_0\
    );
\slv_reg6[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg6[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(3),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[2]\,
      I1 => s00_axi_awaddr(0),
      I2 => \axi_awaddr_reg_n_0_[3]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(1),
      O => \slv_reg6[31]_i_2_n_0\
    );
\slv_reg6[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg6[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(0),
      I3 => \axi_awaddr_reg_n_0_[4]\,
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg6[7]_i_1_n_0\
    );
\slv_reg6_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg6(0),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => stop_watch_inst_n_1
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => stop_watch_inst_n_1
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg7[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg7[15]_i_1_n_0\
    );
\slv_reg7[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg7[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg7[23]_i_1_n_0\
    );
\slv_reg7[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg7[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg7[31]_i_1_n_0\
    );
\slv_reg7[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => \axi_awaddr_reg_n_0_[3]\,
      I1 => s00_axi_awaddr(1),
      I2 => \axi_awaddr_reg_n_0_[2]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(0),
      O => \slv_reg7[31]_i_2_n_0\
    );
\slv_reg7[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg7[31]_i_2_n_0\,
      I2 => \axi_awaddr_reg_n_0_[4]\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg7[7]_i_1_n_0\
    );
\slv_reg7_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg7(0),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => stop_watch_inst_n_1
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => stop_watch_inst_n_1
    );
stop_watch_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip
     port map (
      CO(0) => CO(0),
      E(0) => E(0),
      Q(27 downto 20) => \slv_reg0__0\(31 downto 24),
      Q(19 downto 14) => \slv_reg0__0\(21 downto 16),
      Q(13 downto 7) => \slv_reg0__0\(14 downto 8),
      Q(6 downto 3) => \slv_reg0__0\(6 downto 3),
      Q(2) => \^q\(0),
      Q(1 downto 0) => slv_reg0(1 downto 0),
      SR(0) => stop_watch_inst_n_1,
      ff_cur_reg => p_0_in(1),
      ff_cur_reg_0 => p_0_in_0(1),
      ff_old_reg => p_0_in(0),
      ff_old_reg_0 => p_0_in_0(0),
      \lap_count_reg[1]_0\ => \lap_count_reg[1]\,
      lap_flag => lap_flag,
      lap_flag_reg_0 => lap_flag_reg,
      run_reg_0 => run,
      run_reg_1 => run_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(27 downto 20) => s00_axi_rdata(31 downto 24),
      s00_axi_rdata(19 downto 14) => s00_axi_rdata(21 downto 16),
      s00_axi_rdata(13 downto 7) => s00_axi_rdata(14 downto 8),
      s00_axi_rdata(6 downto 0) => s00_axi_rdata(6 downto 0),
      \s00_axi_rdata[20]\(18 downto 14) => slv_reg7(20 downto 16),
      \s00_axi_rdata[20]\(13 downto 7) => slv_reg7(14 downto 8),
      \s00_axi_rdata[20]\(6 downto 0) => slv_reg7(6 downto 0),
      \s00_axi_rdata[20]_0\(18 downto 14) => slv_reg6(20 downto 16),
      \s00_axi_rdata[20]_0\(13 downto 7) => slv_reg6(14 downto 8),
      \s00_axi_rdata[20]_0\(6 downto 0) => slv_reg6(6 downto 0),
      \s00_axi_rdata[20]_1\(18 downto 14) => slv_reg5(20 downto 16),
      \s00_axi_rdata[20]_1\(13 downto 7) => slv_reg5(14 downto 8),
      \s00_axi_rdata[20]_1\(6 downto 0) => slv_reg5(6 downto 0),
      \s00_axi_rdata[28]\ => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      \s00_axi_rdata[29]\ => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      \s00_axi_rdata[30]\ => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      \s00_axi_rdata[31]\ => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      s00_axi_rdata_21_sp_1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      s00_axi_rdata_24_sp_1 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      s00_axi_rdata_25_sp_1 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      s00_axi_rdata_26_sp_1 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      s00_axi_rdata_27_sp_1 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      sel0(2 downto 0) => sel0(2 downto 0),
      sign_flag => sign_flag,
      sign_flag_reg_0 => sign_flag_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch is
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal lap_flag : STD_LOGIC;
  signal lap_flag_i_1_n_0 : STD_LOGIC;
  signal myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_13 : STD_LOGIC;
  signal myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_20 : STD_LOGIC;
  signal run : STD_LOGIC;
  signal run_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sign_flag : STD_LOGIC;
  signal sign_flag_i_1_n_0 : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \stop_watch_inst/ed_clear/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \stop_watch_inst/ed_start/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \stop_watch_inst/tmp_min\ : STD_LOGIC;
begin
  axi_arready_reg <= \^axi_arready_reg\;
  axi_awready_reg <= \^axi_awready_reg\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg\,
      I2 => state_write(1),
      I3 => s00_axi_wvalid,
      I4 => state_write(0),
      O => axi_awready_i_2_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF3838C3FF0000"
    )
        port map (
      I0 => \axi_awready0__0\,
      I1 => state_write(0),
      I2 => state_write(1),
      I3 => s00_axi_bready,
      I4 => \^s00_axi_bvalid\,
      I5 => s00_axi_wvalid,
      O => axi_bvalid_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg\,
      O => axi_rvalid_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
        port map (
      I0 => state_write(1),
      I1 => state_write(0),
      I2 => \^s00_axi_wready\,
      O => axi_wready_i_1_n_0
    );
lap_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFFBFBFB000B0B0"
    )
        port map (
      I0 => \stop_watch_inst/ed_clear/p_0_in\(0),
      I1 => \stop_watch_inst/ed_clear/p_0_in\(1),
      I2 => slv_reg0(2),
      I3 => \stop_watch_inst/ed_start/p_0_in\(0),
      I4 => \stop_watch_inst/ed_start/p_0_in\(1),
      I5 => lap_flag,
      O => lap_flag_i_1_n_0
    );
myip_stopwatch_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
     port map (
      CO(0) => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_20,
      E(0) => \stop_watch_inst/tmp_min\,
      Q(0) => slv_reg0(2),
      axi_arready_reg_0 => \^axi_arready_reg\,
      axi_arready_reg_1 => axi_arready_i_1_n_0,
      \axi_awready0__0\ => \axi_awready0__0\,
      axi_awready_reg_0 => \^axi_awready_reg\,
      axi_awready_reg_1 => axi_awready_i_2_n_0,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => \^axi_rvalid_reg\,
      axi_rvalid_reg_1 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => axi_wready_i_1_n_0,
      \lap_count_reg[1]\ => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_13,
      lap_flag => lap_flag,
      lap_flag_reg => lap_flag_i_1_n_0,
      p_0_in(1 downto 0) => \stop_watch_inst/ed_start/p_0_in\(1 downto 0),
      p_0_in_0(1 downto 0) => \stop_watch_inst/ed_clear/p_0_in\(1 downto 0),
      run => run,
      run_reg => run_i_1_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bvalid => \^s00_axi_bvalid\,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => \^s00_axi_wready\,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      sign_flag => sign_flag,
      sign_flag_reg => sign_flag_i_1_n_0,
      state_read(1 downto 0) => state_read(1 downto 0),
      state_write(1 downto 0) => state_write(1 downto 0)
    );
run_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \stop_watch_inst/ed_start/p_0_in\(0),
      I1 => \stop_watch_inst/ed_start/p_0_in\(1),
      I2 => run,
      O => run_i_1_n_0
    );
sign_flag_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F704"
    )
        port map (
      I0 => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_20,
      I1 => \stop_watch_inst/tmp_min\,
      I2 => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_13,
      I3 => sign_flag,
      O => sign_flag_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
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
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_watchRev2_myip_stopwatch_0_0,myip_stopwatch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_stopwatch,Vivado 2024.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 8, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 5, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch
     port map (
      axi_arready_reg => s00_axi_arready,
      axi_awready_reg => s00_axi_awready,
      axi_rvalid_reg => s00_axi_rvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(4 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(4 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
