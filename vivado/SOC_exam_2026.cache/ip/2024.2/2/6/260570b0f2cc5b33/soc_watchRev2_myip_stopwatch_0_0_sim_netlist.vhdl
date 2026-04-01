-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Mar  7 16:21:56 2026
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
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 19 downto 0 );
    ff_cur_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_6 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_min_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_sec_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_csec_reg[5]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \sec_reg[0]\ : in STD_LOGIC;
    \cnt_sysclk2_reg[19]\ : in STD_LOGIC;
    \csec_reg[6]\ : in STD_LOGIC;
    \lap_csec_reg[0]\ : in STD_LOGIC;
    \lap_min_reg[0]\ : in STD_LOGIC;
    cnt_sysclk20 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \cnt_sysclk2_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \min_reg[0]\ : in STD_LOGIC;
    \min_reg[0]_0\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
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
  signal \lap_csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_4_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_6_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk1[19]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt_sysclk2[18]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_sysclk2[19]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_sysclk2[19]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \csec[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \lap_csec[0]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lap_csec[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_csec[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lap_min[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lap_min[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lap_min[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_min[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_min[5]_i_6\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \lap_sec[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lap_sec[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lap_sec[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lap_sec[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sec[5]_i_1\ : label is "soft_lutpair3";
begin
  AR(0) <= \^ar\(0);
  ff_cur_reg_0 <= \^ff_cur_reg_0\;
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
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
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => \sec_reg[0]\,
      O => ff_cur_reg_6(0)
    );
\cnt_sysclk2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005100"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => \cnt_sysclk2_reg[0]\(0),
      O => D(0)
    );
\cnt_sysclk2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(9),
      O => D(10)
    );
\cnt_sysclk2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(10),
      O => D(11)
    );
\cnt_sysclk2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(11),
      O => D(12)
    );
\cnt_sysclk2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(12),
      O => D(13)
    );
\cnt_sysclk2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(13),
      O => D(14)
    );
\cnt_sysclk2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(14),
      O => D(15)
    );
\cnt_sysclk2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(15),
      O => D(16)
    );
\cnt_sysclk2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(16),
      O => D(17)
    );
\cnt_sysclk2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(17),
      O => D(18)
    );
\cnt_sysclk2[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => \sec_reg[0]\,
      I3 => \cnt_sysclk2_reg[19]\,
      O => \^ff_cur_reg_0\
    );
\cnt_sysclk2[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(18),
      O => D(19)
    );
\cnt_sysclk2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(0),
      O => D(1)
    );
\cnt_sysclk2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(1),
      O => D(2)
    );
\cnt_sysclk2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(2),
      O => D(3)
    );
\cnt_sysclk2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(3),
      O => D(4)
    );
\cnt_sysclk2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(4),
      O => D(5)
    );
\cnt_sysclk2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(5),
      O => D(6)
    );
\cnt_sysclk2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(6),
      O => D(7)
    );
\cnt_sysclk2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(7),
      O => D(8)
    );
\cnt_sysclk2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"51000000"
    )
        port map (
      I0 => \lap_csec_reg[0]\,
      I1 => \^p_0_in\(1),
      I2 => \^p_0_in\(0),
      I3 => \sec_reg[0]\,
      I4 => cnt_sysclk20(8),
      O => D(9)
    );
\csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00F2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => \sec_reg[0]\,
      I3 => \csec_reg[6]\,
      O => E(0)
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => Q(0),
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
\lap_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
      I2 => \cnt_sysclk2_reg[19]\,
      O => ff_old_reg_0(0)
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
      I0 => \^ff_cur_reg_0\,
      I1 => \lap_csec_reg[0]\,
      I2 => \^p_0_in\(1),
      I3 => \^p_0_in\(0),
      O => ff_cur_reg_5(0)
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
      I0 => \sec_reg[0]\,
      I1 => \lap_csec_reg[6]_1\,
      I2 => \lap_csec_reg[6]\(5),
      I3 => \lap_csec_reg[6]\(6),
      I4 => \^p_0_in\(1),
      I5 => \^p_0_in\(0),
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
      INIT => X"88A8000000A00000"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \lap_csec_reg[0]\,
      I2 => \^p_0_in\(1),
      I3 => \^p_0_in\(0),
      I4 => \lap_sec[5]_i_3_n_0\,
      I5 => \lap_min_reg[0]\,
      O => ff_cur_reg_1(0)
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
      I0 => \sec_reg[0]\,
      I1 => \^p_0_in\(0),
      I2 => \^p_0_in\(1),
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
      INIT => X"88A80000"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \lap_csec_reg[0]\,
      I2 => \^p_0_in\(1),
      I3 => \^p_0_in\(0),
      I4 => \lap_sec[5]_i_3_n_0\,
      O => ff_cur_reg_2(0)
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
      I0 => \^p_0_in\(0),
      I1 => \^p_0_in\(1),
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
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => \sec_reg[0]\,
      I3 => \lap_min_reg[0]\,
      O => \lap_sec[5]_i_4_n_0\
    );
\min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000000F2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => \sec_reg[0]\,
      I3 => \csec_reg[6]\,
      I4 => \min_reg[0]\,
      I5 => \min_reg[0]_0\,
      O => ff_cur_reg_3(0)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F2"
    )
        port map (
      I0 => \^p_0_in\(1),
      I1 => \^p_0_in\(0),
      I2 => \sec_reg[0]\,
      I3 => \csec_reg[6]\,
      I4 => \min_reg[0]\,
      O => ff_cur_reg_4(0)
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
    \slv_reg0_reg[2]\ : out STD_LOGIC;
    ff_cur_reg_1 : out STD_LOGIC;
    \FSM_onehot_diff_state_reg[0]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_diff_state_reg[2]\ : out STD_LOGIC;
    \FSM_onehot_diff_state_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_count_reg[3]\ : out STD_LOGIC;
    start_p : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prev_csec_reg[0]\ : in STD_LOGIC;
    \diff_csec_reg[0]\ : in STD_LOGIC;
    \tmp_csec_reg[0]\ : in STD_LOGIC;
    \lap_count_reg[0]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \lap_count_reg[0]_0\ : in STD_LOGIC;
    \lap_count_reg[0]_1\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_onehot_diff_state_reg[1]\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ff_cur_reg_0\ : STD_LOGIC;
  signal \^ff_cur_reg_1\ : STD_LOGIC;
  signal \^ff_old_reg_0\ : STD_LOGIC;
  signal \^lap_count_reg[3]\ : STD_LOGIC;
  signal \^start_p\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \diff_min[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \prev_min[5]_i_1\ : label is "soft_lutpair11";
begin
  E(0) <= \^e\(0);
  \FSM_onehot_diff_state_reg[1]\(0) <= \^fsm_onehot_diff_state_reg[1]\(0);
  ff_cur_reg_0 <= \^ff_cur_reg_0\;
  ff_cur_reg_1 <= \^ff_cur_reg_1\;
  ff_old_reg_0 <= \^ff_old_reg_0\;
  \lap_count_reg[3]\ <= \^lap_count_reg[3]\;
  start_p <= \^start_p\;
\FSM_onehot_diff_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAABAAA8"
    )
        port map (
      I0 => \prev_csec_reg[0]\,
      I1 => \^ff_cur_reg_1\,
      I2 => \^e\(0),
      I3 => \^fsm_onehot_diff_state_reg[1]\(0),
      I4 => \tmp_csec_reg[0]\,
      O => \FSM_onehot_diff_state_reg[2]\
    );
\FSM_onehot_diff_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8ABA8AAA8AAA8"
    )
        port map (
      I0 => \tmp_csec_reg[0]\,
      I1 => \^ff_cur_reg_1\,
      I2 => \^e\(0),
      I3 => \diff_csec_reg[0]\,
      I4 => \^ff_old_reg_0\,
      I5 => \^ff_cur_reg_0\,
      O => \FSM_onehot_diff_state_reg[0]\
    );
\FSM_onehot_diff_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFAFFFF40504040"
    )
        port map (
      I0 => \^ff_cur_reg_1\,
      I1 => Q(1),
      I2 => \prev_csec_reg[0]\,
      I3 => \^ff_old_reg_0\,
      I4 => \^ff_cur_reg_0\,
      I5 => \diff_csec_reg[0]\,
      O => \slv_reg0_reg[2]\
    );
\diff_min[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \diff_csec_reg[0]\,
      I1 => \^ff_old_reg_0\,
      I2 => \^ff_cur_reg_0\,
      O => \^fsm_onehot_diff_state_reg[1]\(0)
    );
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
      I0 => \^lap_count_reg[3]\,
      I1 => \lap_count_reg[0]\(0),
      I2 => \lap_count_reg[0]_0\,
      O => D(0)
    );
\lap_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
        port map (
      I0 => \^start_p\,
      I1 => \lap_count_reg[0]\(3),
      I2 => \lap_count_reg[0]\(2),
      I3 => \lap_count_reg[0]\(1),
      I4 => \lap_count_reg[0]\(0),
      I5 => \lap_count_reg[0]_1\,
      O => \^lap_count_reg[3]\
    );
lap_flag_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      O => \^start_p\
    );
\prev_min[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => Q(1),
      I1 => \prev_csec_reg[0]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      O => \^e\(0)
    );
\tmp_min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000D00000000000"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      I2 => \tmp_csec_reg[0]\,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      I5 => Q(1),
      O => \^ff_cur_reg_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    run : out STD_LOGIC;
    lap_flag : out STD_LOGIC;
    sign_flag : out STD_LOGIC;
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_count_reg[1]_0\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 27 downto 0 );
    \FSM_onehot_diff_state_reg[2]_0\ : out STD_LOGIC;
    \FSM_onehot_diff_state_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_diff_state_reg[0]_0\ : out STD_LOGIC;
    start_p : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 27 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    run_reg_0 : in STD_LOGIC;
    lap_flag_reg_0 : in STD_LOGIC;
    sign_flag_reg_0 : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s00_axi_rdata[19]\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \s00_axi_rdata[19]_0\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \s00_axi_rdata[19]_1\ : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s00_axi_rdata_20_sp_1 : in STD_LOGIC;
    s00_axi_rdata_21_sp_1 : in STD_LOGIC;
    s00_axi_rdata_24_sp_1 : in STD_LOGIC;
    s00_axi_rdata_25_sp_1 : in STD_LOGIC;
    s00_axi_rdata_26_sp_1 : in STD_LOGIC;
    s00_axi_rdata_27_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[28]\ : in STD_LOGIC;
    \s00_axi_rdata[29]\ : in STD_LOGIC;
    \s00_axi_rdata[30]\ : in STD_LOGIC;
    \s00_axi_rdata[31]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^fsm_onehot_diff_state_reg[0]_0\ : STD_LOGIC;
  signal \^fsm_onehot_diff_state_reg[1]_0\ : STD_LOGIC;
  signal \^fsm_onehot_diff_state_reg[2]_0\ : STD_LOGIC;
  signal cnt_sysclk1 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal cnt_sysclk10 : STD_LOGIC_VECTOR ( 19 downto 1 );
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
  signal \cnt_sysclk1[19]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[19]_i_8_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[19]_i_3_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[19]_i_3_n_3\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk1_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal cnt_sysclk2 : STD_LOGIC;
  signal cnt_sysclk20 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal \cnt_sysclk2[19]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2[19]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2[19]_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2[19]_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[19]_i_4_n_2\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[19]_i_4_n_3\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk2_reg[8]_i_2_n_3\ : STD_LOGIC;
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
  signal data1 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data2 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data3 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data4 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data5 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data6 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data7 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data8 : STD_LOGIC_VECTOR ( 18 downto 1 );
  signal data9 : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal diff_csec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \diff_csec[0]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_18_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_19_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_20_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_21_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_22_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_23_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_24_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_25_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_32_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_33_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_34_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_35_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_36_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_37_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_38_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_39_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_40_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_41_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_42_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_43_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_44_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_45_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_46_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_47_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_48_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_49_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_50_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_51_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_52_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_53_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_54_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_55_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_60_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_61_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_62_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_63_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_64_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_65_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_66_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_67_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_68_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_69_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_70_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_71_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_72_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_73_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_74_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_75_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_76_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_77_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_78_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_79_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_80_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_81_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_82_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_83_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_84_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_85_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_86_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_87_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_88_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_89_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_90_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_91_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_92_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_93_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_94_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_95_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_16_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_17_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_18_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_19_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_20_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_16_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_17_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_18_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_19_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_20_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_21_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_22_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_23_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_24_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_25_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_26_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_27_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_28_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_29_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_30_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_31_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_32_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_33_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_34_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_35_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_16_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_17_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_18_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_19_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_20_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_21_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_22_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_23_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_24_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_25_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_26_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_27_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_28_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_29_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_30_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_31_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_32_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_33_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_34_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_35_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_36_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_37_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_38_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_39_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_40_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_41_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_42_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_43_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_44_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_45_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_46_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_47_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_48_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_49_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_50_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_51_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_16_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_17_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_18_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_19_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_20_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_21_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_22_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_23_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_24_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_25_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_26_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_27_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_28_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_29_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_30_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_31_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_32_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_33_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_34_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_35_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_36_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_37_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_38_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_39_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_40_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_41_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_42_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_43_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_44_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_45_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_46_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_47_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_48_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_49_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_50_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_51_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_52_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_53_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_54_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_55_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_56_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_57_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_16_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_17_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_18_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_19_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_20_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_21_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_22_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_23_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_24_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_25_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_26_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_27_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_28_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_29_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_30_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_31_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_32_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_33_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_34_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_35_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_36_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_37_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_38_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_39_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_40_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_41_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_42_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_43_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_44_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_45_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_46_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_47_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_48_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_49_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_50_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_51_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_52_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_53_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_54_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_55_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_56_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_57_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_58_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_59_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_60_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_61_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_62_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_63_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_64_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_65_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_66_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_67_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_68_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_69_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_70_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_71_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_72_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_73_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_74_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_75_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_76_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_77_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_78_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_79_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_100_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_101_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_102_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_103_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_104_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_105_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_106_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_107_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_108_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_109_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_10_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_110_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_111_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_112_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_113_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_114_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_115_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_116_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_117_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_118_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_11_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_12_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_14_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_15_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_16_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_17_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_18_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_19_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_20_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_21_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_22_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_23_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_32_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_33_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_34_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_35_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_36_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_37_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_38_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_39_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_40_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_41_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_42_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_43_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_46_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_47_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_48_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_50_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_51_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_52_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_53_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_54_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_55_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_56_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_57_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_58_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_59_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_60_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_61_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_62_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_63_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_64_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_65_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_66_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_67_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_68_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_69_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_70_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_71_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_72_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_73_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_74_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_75_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_76_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_77_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_78_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_79_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_7_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_80_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_81_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_82_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_83_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_84_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_85_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_86_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_88_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_89_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_90_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_91_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_92_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_93_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_94_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_95_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_96_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_97_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_98_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_99_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_9_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_5_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_6_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_6_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[0]_i_6_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_13_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_13_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_13_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_16_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_16_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_16_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_16_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_17_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_17_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_17_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_17_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_26_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_26_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_26_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_26_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_27_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_27_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_27_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_27_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_28_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_28_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_28_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_28_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_29_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_29_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_29_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_29_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_2_n_4\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_2_n_5\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_2_n_6\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_30_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_30_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_30_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_30_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_31_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_31_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_31_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[1]_i_31_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_24_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_24_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_24_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_24_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_25_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_25_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_25_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_25_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_26_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_26_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_26_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_26_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_27_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_27_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_27_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_27_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_28_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_28_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_28_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_28_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_29_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_29_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_29_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_29_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_30_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_30_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_30_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_30_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_31_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_31_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_31_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_31_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_44_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_44_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_44_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_44_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_45_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_45_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_45_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_45_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_1\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_2\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_3\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_4\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_5\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_6\ : STD_LOGIC;
  signal \diff_csec_reg[7]_i_8_n_7\ : STD_LOGIC;
  signal diff_min : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \diff_min[0]_i_10_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_11_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_12_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_13_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_14_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_15_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_16_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_2_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_3_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_4_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_5_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_6_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_7_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_8_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_9_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_10_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_2_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_3_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_4_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_5_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_6_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_7_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_8_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_9_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_2_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_3_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_4_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_5_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_6_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_7_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_8_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_10_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_11_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_12_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_13_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_14_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_15_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_16_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_17_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_18_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_19_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_20_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_21_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_22_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_23_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_24_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_25_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_28_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_29_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_2_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_30_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_31_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_32_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_33_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_34_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_39_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_40_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_41_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_42_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_43_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_4_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_5_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_8_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_26_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_26_n_3\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_35_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_35_n_1\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_35_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_35_n_3\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_36_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_36_n_1\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_36_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_36_n_3\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_37_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_37_n_1\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_37_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_37_n_3\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_38_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_38_n_1\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_38_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_38_n_3\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_6_n_1\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_6_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_6_n_3\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_7_n_1\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_7_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_7_n_3\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_9_n_1\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_9_n_2\ : STD_LOGIC;
  signal \diff_min_reg[3]_i_9_n_3\ : STD_LOGIC;
  signal diff_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \diff_sec[0]_i_10_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_11_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_12_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_13_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_14_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_15_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_16_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_17_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_18_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_19_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_20_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_21_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_22_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_23_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_24_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_25_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_26_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_27_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_28_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_29_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_30_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_31_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_32_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_33_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_34_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_35_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_36_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_37_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_38_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_39_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_40_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_41_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_42_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_43_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_44_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_45_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_46_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_47_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_48_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_49_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_50_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_6_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_7_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_8_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_9_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_10_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_11_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_12_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_13_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_14_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_15_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_16_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_17_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_18_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_19_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_20_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_21_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_22_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_23_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_24_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_25_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_26_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_27_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_28_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_29_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_30_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_31_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_32_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_33_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_34_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_35_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_36_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_37_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_38_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_39_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_40_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_41_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_6_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_7_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_8_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_9_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_10_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_11_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_12_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_13_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_14_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_15_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_16_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_17_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_18_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_19_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_20_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_6_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_7_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_8_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_9_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_10_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_11_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_12_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_13_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_14_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_15_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_16_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_17_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_18_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_6_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_7_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_8_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_9_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_100_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_101_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_102_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_103_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_104_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_105_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_106_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_107_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_108_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_109_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_10_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_110_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_111_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_112_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_113_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_114_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_115_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_116_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_117_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_118_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_119_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_11_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_120_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_121_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_122_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_123_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_124_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_125_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_126_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_127_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_128_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_129_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_12_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_13_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_14_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_15_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_16_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_17_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_18_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_19_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_20_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_21_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_22_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_23_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_24_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_25_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_26_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_27_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_29_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_30_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_31_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_32_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_34_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_35_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_36_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_37_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_38_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_39_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_40_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_41_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_42_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_43_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_44_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_45_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_46_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_47_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_48_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_49_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_50_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_51_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_52_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_61_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_62_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_63_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_64_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_65_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_66_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_67_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_68_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_69_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_6_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_70_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_71_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_72_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_73_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_74_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_75_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_76_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_77_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_78_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_79_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_7_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_80_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_81_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_82_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_83_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_84_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_85_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_86_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_87_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_88_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_89_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_8_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_90_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_91_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_92_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_93_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_94_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_95_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_96_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_97_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_98_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_99_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_9_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_100_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_101_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_102_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_103_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_104_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_105_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_106_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_107_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_108_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_109_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_10_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_110_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_111_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_112_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_113_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_114_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_115_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_116_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_117_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_118_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_119_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_11_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_120_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_121_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_122_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_123_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_124_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_125_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_126_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_127_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_128_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_129_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_12_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_130_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_131_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_132_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_133_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_134_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_135_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_136_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_137_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_138_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_139_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_13_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_140_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_141_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_142_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_143_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_144_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_145_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_146_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_147_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_148_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_149_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_14_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_150_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_151_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_152_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_153_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_154_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_155_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_156_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_157_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_158_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_159_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_15_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_160_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_161_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_162_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_17_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_18_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_19_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_20_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_21_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_22_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_23_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_24_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_25_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_26_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_27_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_28_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_29_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_30_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_31_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_32_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_33_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_34_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_43_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_44_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_45_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_46_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_47_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_48_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_49_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_50_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_59_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_60_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_61_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_62_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_63_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_64_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_65_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_66_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_67_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_68_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_69_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_6_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_70_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_71_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_72_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_73_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_74_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_75_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_76_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_77_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_78_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_79_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_7_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_80_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_81_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_82_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_83_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_84_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_85_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_86_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_87_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_88_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_89_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_8_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_90_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_91_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_92_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_93_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_94_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_95_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_96_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_97_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_98_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_99_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_9_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_4\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_5\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_6\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_28_n_7\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_33_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_33_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_33_n_5\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_33_n_6\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_33_n_7\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_53_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_53_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_53_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_53_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_54_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_54_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_54_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_54_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_55_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_55_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_55_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_55_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_56_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_56_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_56_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_56_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_57_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_57_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_57_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_57_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_58_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_58_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_58_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_58_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_59_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_59_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_59_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_59_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_60_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_60_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_60_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[4]_i_60_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_4\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_5\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_6\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_16_n_7\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_35_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_35_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_35_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_35_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_36_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_36_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_36_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_36_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_37_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_37_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_37_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_37_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_38_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_38_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_38_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_38_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_39_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_39_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_39_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_39_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_40_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_40_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_40_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_40_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_41_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_41_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_41_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_41_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_42_n_0\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_42_n_1\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_42_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_42_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_51_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_51_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_52_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_52_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_53_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_53_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_54_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_54_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_55_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_55_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_56_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_56_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_57_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_57_n_3\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_58_n_2\ : STD_LOGIC;
  signal \diff_sec_reg[5]_i_58_n_3\ : STD_LOGIC;
  signal ed_clear_n_10 : STD_LOGIC;
  signal ed_clear_n_11 : STD_LOGIC;
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
  signal ed_clear_n_6 : STD_LOGIC;
  signal ed_clear_n_7 : STD_LOGIC;
  signal ed_clear_n_8 : STD_LOGIC;
  signal ed_clear_n_9 : STD_LOGIC;
  signal ed_start_n_2 : STD_LOGIC;
  signal ed_start_n_3 : STD_LOGIC;
  signal ed_start_n_4 : STD_LOGIC;
  signal ed_start_n_5 : STD_LOGIC;
  signal ed_start_n_6 : STD_LOGIC;
  signal ed_start_n_7 : STD_LOGIC;
  signal ed_start_n_8 : STD_LOGIC;
  signal ed_start_n_9 : STD_LOGIC;
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
  signal \lap_count[7]_i_5_n_0\ : STD_LOGIC;
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
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal prev_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \prev_min__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal prev_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^run\ : STD_LOGIC;
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
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_20_sn_1 : STD_LOGIC;
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
  signal \^sign_flag\ : STD_LOGIC;
  signal sign_flag_i_10_n_0 : STD_LOGIC;
  signal sign_flag_i_11_n_0 : STD_LOGIC;
  signal sign_flag_i_12_n_0 : STD_LOGIC;
  signal sign_flag_i_13_n_0 : STD_LOGIC;
  signal sign_flag_i_14_n_0 : STD_LOGIC;
  signal sign_flag_i_15_n_0 : STD_LOGIC;
  signal sign_flag_i_16_n_0 : STD_LOGIC;
  signal sign_flag_i_19_n_0 : STD_LOGIC;
  signal sign_flag_i_20_n_0 : STD_LOGIC;
  signal sign_flag_i_21_n_0 : STD_LOGIC;
  signal sign_flag_i_22_n_0 : STD_LOGIC;
  signal sign_flag_i_23_n_0 : STD_LOGIC;
  signal sign_flag_i_24_n_0 : STD_LOGIC;
  signal sign_flag_i_25_n_0 : STD_LOGIC;
  signal sign_flag_i_26_n_0 : STD_LOGIC;
  signal sign_flag_i_4_n_0 : STD_LOGIC;
  signal sign_flag_i_5_n_0 : STD_LOGIC;
  signal sign_flag_i_6_n_0 : STD_LOGIC;
  signal sign_flag_i_7_n_0 : STD_LOGIC;
  signal sign_flag_i_9_n_0 : STD_LOGIC;
  signal sign_flag_reg_i_17_n_2 : STD_LOGIC;
  signal sign_flag_reg_i_17_n_3 : STD_LOGIC;
  signal sign_flag_reg_i_18_n_2 : STD_LOGIC;
  signal sign_flag_reg_i_18_n_3 : STD_LOGIC;
  signal sign_flag_reg_i_2_n_3 : STD_LOGIC;
  signal sign_flag_reg_i_3_n_0 : STD_LOGIC;
  signal sign_flag_reg_i_3_n_1 : STD_LOGIC;
  signal sign_flag_reg_i_3_n_2 : STD_LOGIC;
  signal sign_flag_reg_i_3_n_3 : STD_LOGIC;
  signal sign_flag_reg_i_8_n_0 : STD_LOGIC;
  signal sign_flag_reg_i_8_n_1 : STD_LOGIC;
  signal sign_flag_reg_i_8_n_2 : STD_LOGIC;
  signal sign_flag_reg_i_8_n_3 : STD_LOGIC;
  signal tmp_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \tmp_min__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
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
  signal \total_prev__0\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal total_prev_n_100 : STD_LOGIC;
  signal total_prev_n_101 : STD_LOGIC;
  signal total_prev_n_102 : STD_LOGIC;
  signal total_prev_n_103 : STD_LOGIC;
  signal total_prev_n_104 : STD_LOGIC;
  signal total_prev_n_105 : STD_LOGIC;
  signal total_prev_n_87 : STD_LOGIC;
  signal total_prev_n_88 : STD_LOGIC;
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
  signal \total_tmp__0\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal total_tmp_n_100 : STD_LOGIC;
  signal total_tmp_n_101 : STD_LOGIC;
  signal total_tmp_n_102 : STD_LOGIC;
  signal total_tmp_n_103 : STD_LOGIC;
  signal total_tmp_n_104 : STD_LOGIC;
  signal total_tmp_n_105 : STD_LOGIC;
  signal total_tmp_n_87 : STD_LOGIC;
  signal total_tmp_n_88 : STD_LOGIC;
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
  signal \NLW_cnt_sysclk1_reg[19]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk1_reg[19]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_sysclk2_reg[19]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk2_reg[19]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_csec_reg[1]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_16_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_27_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_28_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_29_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_30_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec_reg[1]_i_31_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_min_reg[3]_i_26_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_min_reg[3]_i_26_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[4]_i_33_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[4]_i_33_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_51_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_51_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_52_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_52_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_53_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_53_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_54_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_54_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_55_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_55_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_56_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_56_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_57_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_57_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_reg[5]_i_58_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_diff_sec_reg[5]_i_58_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sign_flag_reg_i_17_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_sign_flag_reg_i_17_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sign_flag_reg_i_18_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_sign_flag_reg_i_18_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sign_flag_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_sign_flag_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sign_flag_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sign_flag_reg_i_8_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_total_prev_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_total_prev_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_total_prev_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_total_prev_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_total_prev_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 19 );
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
  signal NLW_total_tmp_P_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 19 );
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
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_diff_state_reg[0]\ : label is "S_CAPTURE:010,S_DONE:100,S_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_diff_state_reg[1]\ : label is "S_CAPTURE:010,S_DONE:100,S_IDLE:001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_diff_state_reg[2]\ : label is "S_CAPTURE:010,S_DONE:100,S_IDLE:001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk1[0]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \cnt_sysclk1[10]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \cnt_sysclk1[11]_i_1\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \cnt_sysclk1[12]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \cnt_sysclk1[13]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \cnt_sysclk1[14]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \cnt_sysclk1[15]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \cnt_sysclk1[16]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \cnt_sysclk1[17]_i_1\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \cnt_sysclk1[18]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \cnt_sysclk1[19]_i_2\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \cnt_sysclk1[1]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \cnt_sysclk1[2]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \cnt_sysclk1[3]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \cnt_sysclk1[4]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \cnt_sysclk1[5]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \cnt_sysclk1[6]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \cnt_sysclk1[7]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \cnt_sysclk1[8]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \cnt_sysclk1[9]_i_1\ : label is "soft_lutpair118";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_sysclk1_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk1_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk1_reg[19]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk1_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk1_reg[8]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk2_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk2_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk2_reg[19]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk2_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk2_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \csec[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \csec[1]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \csec[2]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \csec[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \csec[5]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \csec[6]_i_2\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \csec[6]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \csec[6]_i_5\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \diff_csec[0]_i_2\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \diff_csec[0]_i_7\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \diff_csec[1]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_13\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_16\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_17\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_19\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_20\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_3\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_14\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_19\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_21\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_25\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_30\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_34\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_35\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \diff_csec[3]_i_8\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_14\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_24\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_27\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_28\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_29\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_30\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_32\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_33\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_36\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_38\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_39\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_48\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_49\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_51\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_8\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \diff_csec[4]_i_9\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_20\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_22\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_23\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_24\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_26\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_27\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_28\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_30\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_32\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_37\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_38\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_43\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_44\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_53\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_54\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_55\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \diff_csec[5]_i_56\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_13\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_14\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_15\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_16\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_18\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_23\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_26\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_27\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_28\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_32\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_35\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_37\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_38\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_39\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_43\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_46\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_49\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_50\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_55\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_58\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_59\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_60\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_61\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_62\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_63\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_64\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_65\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_66\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_67\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_70\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_72\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_73\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_74\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_75\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_76\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_77\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \diff_csec[6]_i_78\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \diff_csec[7]_i_3\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \diff_csec[7]_i_5\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \diff_csec[7]_i_6\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \diff_csec[7]_i_7\ : label is "soft_lutpair99";
  attribute ADDER_THRESHOLD of \diff_csec_reg[0]_i_5\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_csec_reg[0]_i_6\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_13\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_13\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_16\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_16\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_17\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_17\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_2\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_2\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_26\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_26\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_27\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_27\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_28\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_28\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_29\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_29\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_30\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_30\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[1]_i_31\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[1]_i_31\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_24\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_24\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_25\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_25\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_26\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_26\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_27\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_27\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_28\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_28\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_29\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_29\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_30\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_30\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_31\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_31\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_44\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_45\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_csec_reg[7]_i_8\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_csec_reg[7]_i_8\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \diff_min[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \diff_min[0]_i_10\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \diff_min[0]_i_12\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \diff_min[0]_i_13\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \diff_min[0]_i_14\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \diff_min[0]_i_15\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \diff_min[0]_i_16\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \diff_min[0]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \diff_min[1]_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \diff_min[1]_i_5\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \diff_min[1]_i_7\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \diff_min[1]_i_8\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \diff_min[1]_i_9\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \diff_min[2]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \diff_min[2]_i_5\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \diff_min[2]_i_6\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \diff_min[2]_i_7\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \diff_min[3]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \diff_min[3]_i_5\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \diff_min[3]_i_8\ : label is "soft_lutpair44";
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_26\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_min_reg[3]_i_26\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_35\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_36\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_37\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_38\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_6\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_min_reg[3]_i_6\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_7\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_min_reg[3]_i_7\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_min_reg[3]_i_9\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_min_reg[3]_i_9\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_15\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_17\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_21\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_22\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_24\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_27\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_29\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_30\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_32\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_33\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_34\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_36\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_37\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_39\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_41\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_45\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_46\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_47\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_48\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_50\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_14\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_18\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_19\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_20\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_25\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_26\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_27\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_32\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_33\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_34\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_35\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_36\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_37\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_40\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_41\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_5\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_11\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_12\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_13\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_14\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_16\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_17\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_18\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_19\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_20\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_7\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_10\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_11\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_13\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_14\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_15\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_2\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_3\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_5\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_6\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \diff_sec[3]_i_9\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_11\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_13\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_14\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_17\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_20\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_23\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_24\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_38\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_4\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_40\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_41\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_7\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_8\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \diff_sec[4]_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \diff_sec[5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \diff_sec[5]_i_2\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \diff_sec[5]_i_3\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \diff_sec[5]_i_4\ : label is "soft_lutpair102";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_28\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_28\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_33\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_33\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_53\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_53\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_54\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_54\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_55\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_55\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_56\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_56\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_57\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_57\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_58\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_58\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_59\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_59\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[4]_i_60\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[4]_i_60\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_16\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_16\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_35\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_35\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_36\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_36\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_37\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_37\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_38\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_38\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_39\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_39\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_40\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_40\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_41\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_41\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_42\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_42\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_51\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_51\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_52\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_52\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_53\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_53\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_54\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_54\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_55\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_55\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_56\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_56\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_57\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_57\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \diff_sec_reg[5]_i_58\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \diff_sec_reg[5]_i_58\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \lap_count[1]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \lap_count[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \lap_count[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \lap_count[5]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \lap_count[6]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \lap_count[7]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_5\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \lap_min[5]_i_5\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \lap_min[5]_i_7\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \min[0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \min[1]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \min[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \min[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \sec[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \sec[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \sec[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \sec[3]_i_1\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD of sign_flag_reg_i_17 : label is 35;
  attribute ADDER_THRESHOLD of sign_flag_reg_i_18 : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of sign_flag_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of sign_flag_reg_i_3 : label is 11;
  attribute COMPARATOR_THRESHOLD of sign_flag_reg_i_8 : label is 11;
  attribute METHODOLOGY_DRC_VIOS of total_prev : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of total_prev1 : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of total_tmp : label is "{SYNTH-13 {cell *THIS*}}";
  attribute METHODOLOGY_DRC_VIOS of total_tmp1 : label is "{SYNTH-13 {cell *THIS*}}";
begin
  AR(0) <= \^ar\(0);
  CO(0) <= \^co\(0);
  \FSM_onehot_diff_state_reg[0]_0\ <= \^fsm_onehot_diff_state_reg[0]_0\;
  \FSM_onehot_diff_state_reg[1]_0\ <= \^fsm_onehot_diff_state_reg[1]_0\;
  \FSM_onehot_diff_state_reg[2]_0\ <= \^fsm_onehot_diff_state_reg[2]_0\;
  \lap_count_reg[1]_0\ <= \^lap_count_reg[1]_0\;
  lap_flag <= \^lap_flag\;
  run <= \^run\;
  s00_axi_rdata_20_sn_1 <= s00_axi_rdata_20_sp_1;
  s00_axi_rdata_21_sn_1 <= s00_axi_rdata_21_sp_1;
  s00_axi_rdata_24_sn_1 <= s00_axi_rdata_24_sp_1;
  s00_axi_rdata_25_sn_1 <= s00_axi_rdata_25_sp_1;
  s00_axi_rdata_26_sn_1 <= s00_axi_rdata_26_sp_1;
  s00_axi_rdata_27_sn_1 <= s00_axi_rdata_27_sp_1;
  sign_flag <= \^sign_flag\;
\FSM_onehot_diff_state_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => ed_start_n_6,
      PRE => \^ar\(0),
      Q => \^fsm_onehot_diff_state_reg[0]_0\
    );
\FSM_onehot_diff_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => ed_start_n_4,
      Q => \^fsm_onehot_diff_state_reg[1]_0\
    );
\FSM_onehot_diff_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => ed_start_n_2,
      Q => \^fsm_onehot_diff_state_reg[2]_0\
    );
\cnt_sysclk1[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_sysclk1[19]_i_4_n_0\,
      I1 => cnt_sysclk1(0),
      O => \cnt_sysclk1[0]_i_1_n_0\
    );
\cnt_sysclk1[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(10),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[10]_i_1_n_0\
    );
\cnt_sysclk1[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(11),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[11]_i_1_n_0\
    );
\cnt_sysclk1[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(12),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[12]_i_1_n_0\
    );
\cnt_sysclk1[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(13),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[13]_i_1_n_0\
    );
\cnt_sysclk1[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(14),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[14]_i_1_n_0\
    );
\cnt_sysclk1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(15),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[15]_i_1_n_0\
    );
\cnt_sysclk1[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(16),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[16]_i_1_n_0\
    );
\cnt_sysclk1[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(17),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[17]_i_1_n_0\
    );
\cnt_sysclk1[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(18),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[18]_i_1_n_0\
    );
\cnt_sysclk1[19]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(19),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[19]_i_2_n_0\
    );
\cnt_sysclk1[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8A888A8A"
    )
        port map (
      I0 => \^run\,
      I1 => \cnt_sysclk1[19]_i_5_n_0\,
      I2 => cnt_sysclk1(15),
      I3 => \cnt_sysclk1[19]_i_6_n_0\,
      I4 => cnt_sysclk1(14),
      O => \cnt_sysclk1[19]_i_4_n_0\
    );
\cnt_sysclk1[19]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => cnt_sysclk1(17),
      I1 => cnt_sysclk1(18),
      I2 => cnt_sysclk1(16),
      I3 => cnt_sysclk1(19),
      O => \cnt_sysclk1[19]_i_5_n_0\
    );
\cnt_sysclk1[19]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000100FFFF"
    )
        port map (
      I0 => cnt_sysclk1(7),
      I1 => cnt_sysclk1(6),
      I2 => cnt_sysclk1(8),
      I3 => \cnt_sysclk1[19]_i_7_n_0\,
      I4 => cnt_sysclk1(9),
      I5 => \cnt_sysclk1[19]_i_8_n_0\,
      O => \cnt_sysclk1[19]_i_6_n_0\
    );
\cnt_sysclk1[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => cnt_sysclk1(1),
      I1 => cnt_sysclk1(5),
      I2 => cnt_sysclk1(0),
      I3 => cnt_sysclk1(2),
      I4 => cnt_sysclk1(4),
      I5 => cnt_sysclk1(3),
      O => \cnt_sysclk1[19]_i_7_n_0\
    );
\cnt_sysclk1[19]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => cnt_sysclk1(11),
      I1 => cnt_sysclk1(12),
      I2 => cnt_sysclk1(10),
      I3 => cnt_sysclk1(13),
      O => \cnt_sysclk1[19]_i_8_n_0\
    );
\cnt_sysclk1[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(1),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[1]_i_1_n_0\
    );
\cnt_sysclk1[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(2),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[2]_i_1_n_0\
    );
\cnt_sysclk1[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(3),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[3]_i_1_n_0\
    );
\cnt_sysclk1[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(4),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[4]_i_1_n_0\
    );
\cnt_sysclk1[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(5),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[5]_i_1_n_0\
    );
\cnt_sysclk1[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(6),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[6]_i_1_n_0\
    );
\cnt_sysclk1[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(7),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[7]_i_1_n_0\
    );
\cnt_sysclk1[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(8),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[8]_i_1_n_0\
    );
\cnt_sysclk1[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk10(9),
      I1 => \cnt_sysclk1[19]_i_4_n_0\,
      O => \cnt_sysclk1[9]_i_1_n_0\
    );
\cnt_sysclk1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[0]_i_1_n_0\,
      Q => cnt_sysclk1(0)
    );
\cnt_sysclk1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[10]_i_1_n_0\,
      Q => cnt_sysclk1(10)
    );
\cnt_sysclk1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[11]_i_1_n_0\,
      Q => cnt_sysclk1(11)
    );
\cnt_sysclk1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[12]_i_1_n_0\,
      Q => cnt_sysclk1(12)
    );
\cnt_sysclk1_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk1_reg[8]_i_2_n_0\,
      CO(3) => \cnt_sysclk1_reg[12]_i_2_n_0\,
      CO(2) => \cnt_sysclk1_reg[12]_i_2_n_1\,
      CO(1) => \cnt_sysclk1_reg[12]_i_2_n_2\,
      CO(0) => \cnt_sysclk1_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(12 downto 9),
      S(3 downto 0) => cnt_sysclk1(12 downto 9)
    );
\cnt_sysclk1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[13]_i_1_n_0\,
      Q => cnt_sysclk1(13)
    );
\cnt_sysclk1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[14]_i_1_n_0\,
      Q => cnt_sysclk1(14)
    );
\cnt_sysclk1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[15]_i_1_n_0\,
      Q => cnt_sysclk1(15)
    );
\cnt_sysclk1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[16]_i_1_n_0\,
      Q => cnt_sysclk1(16)
    );
\cnt_sysclk1_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk1_reg[12]_i_2_n_0\,
      CO(3) => \cnt_sysclk1_reg[16]_i_2_n_0\,
      CO(2) => \cnt_sysclk1_reg[16]_i_2_n_1\,
      CO(1) => \cnt_sysclk1_reg[16]_i_2_n_2\,
      CO(0) => \cnt_sysclk1_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(16 downto 13),
      S(3 downto 0) => cnt_sysclk1(16 downto 13)
    );
\cnt_sysclk1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[17]_i_1_n_0\,
      Q => cnt_sysclk1(17)
    );
\cnt_sysclk1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[18]_i_1_n_0\,
      Q => cnt_sysclk1(18)
    );
\cnt_sysclk1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[19]_i_2_n_0\,
      Q => cnt_sysclk1(19)
    );
\cnt_sysclk1_reg[19]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk1_reg[16]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk1_reg[19]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk1_reg[19]_i_3_n_2\,
      CO(0) => \cnt_sysclk1_reg[19]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk1_reg[19]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk10(19 downto 17),
      S(3) => '0',
      S(2 downto 0) => cnt_sysclk1(19 downto 17)
    );
\cnt_sysclk1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[1]_i_1_n_0\,
      Q => cnt_sysclk1(1)
    );
\cnt_sysclk1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[2]_i_1_n_0\,
      Q => cnt_sysclk1(2)
    );
\cnt_sysclk1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[3]_i_1_n_0\,
      Q => cnt_sysclk1(3)
    );
\cnt_sysclk1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[4]_i_1_n_0\,
      Q => cnt_sysclk1(4)
    );
\cnt_sysclk1_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_sysclk1_reg[4]_i_2_n_0\,
      CO(2) => \cnt_sysclk1_reg[4]_i_2_n_1\,
      CO(1) => \cnt_sysclk1_reg[4]_i_2_n_2\,
      CO(0) => \cnt_sysclk1_reg[4]_i_2_n_3\,
      CYINIT => cnt_sysclk1(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(4 downto 1),
      S(3 downto 0) => cnt_sysclk1(4 downto 1)
    );
\cnt_sysclk1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[5]_i_1_n_0\,
      Q => cnt_sysclk1(5)
    );
\cnt_sysclk1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[6]_i_1_n_0\,
      Q => cnt_sysclk1(6)
    );
\cnt_sysclk1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[7]_i_1_n_0\,
      Q => cnt_sysclk1(7)
    );
\cnt_sysclk1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[8]_i_1_n_0\,
      Q => cnt_sysclk1(8)
    );
\cnt_sysclk1_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk1_reg[4]_i_2_n_0\,
      CO(3) => \cnt_sysclk1_reg[8]_i_2_n_0\,
      CO(2) => \cnt_sysclk1_reg[8]_i_2_n_1\,
      CO(1) => \cnt_sysclk1_reg[8]_i_2_n_2\,
      CO(0) => \cnt_sysclk1_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(8 downto 5),
      S(3 downto 0) => cnt_sysclk1(8 downto 5)
    );
\cnt_sysclk1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => cnt_sysclk2,
      CLR => \^ar\(0),
      D => \cnt_sysclk1[9]_i_1_n_0\,
      Q => cnt_sysclk1(9)
    );
\cnt_sysclk2[19]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => \cnt_sysclk2[19]_i_5_n_0\,
      I1 => \cnt_sysclk2_reg_n_0_[15]\,
      I2 => \cnt_sysclk2_reg_n_0_[19]\,
      I3 => \cnt_sysclk2_reg_n_0_[18]\,
      I4 => \cnt_sysclk2_reg_n_0_[17]\,
      I5 => \cnt_sysclk2_reg_n_0_[16]\,
      O => \cnt_sysclk2[19]_i_3_n_0\
    );
\cnt_sysclk2[19]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAAAAAAA"
    )
        port map (
      I0 => \cnt_sysclk2_reg_n_0_[14]\,
      I1 => \cnt_sysclk2_reg_n_0_[11]\,
      I2 => \cnt_sysclk2_reg_n_0_[12]\,
      I3 => \cnt_sysclk2_reg_n_0_[10]\,
      I4 => \cnt_sysclk2_reg_n_0_[13]\,
      I5 => \cnt_sysclk2[19]_i_6_n_0\,
      O => \cnt_sysclk2[19]_i_5_n_0\
    );
\cnt_sysclk2[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555555D"
    )
        port map (
      I0 => \cnt_sysclk2_reg_n_0_[9]\,
      I1 => \cnt_sysclk2[19]_i_7_n_0\,
      I2 => \cnt_sysclk2_reg_n_0_[8]\,
      I3 => \cnt_sysclk2_reg_n_0_[6]\,
      I4 => \cnt_sysclk2_reg_n_0_[7]\,
      O => \cnt_sysclk2[19]_i_6_n_0\
    );
\cnt_sysclk2[19]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \cnt_sysclk2_reg_n_0_[1]\,
      I1 => \cnt_sysclk2_reg_n_0_[4]\,
      I2 => \cnt_sysclk2_reg_n_0_[0]\,
      I3 => \cnt_sysclk2_reg_n_0_[2]\,
      I4 => \cnt_sysclk2_reg_n_0_[5]\,
      I5 => \cnt_sysclk2_reg_n_0_[3]\,
      O => \cnt_sysclk2[19]_i_7_n_0\
    );
\cnt_sysclk2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_26,
      Q => \cnt_sysclk2_reg_n_0_[0]\
    );
\cnt_sysclk2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_16,
      Q => \cnt_sysclk2_reg_n_0_[10]\
    );
\cnt_sysclk2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_15,
      Q => \cnt_sysclk2_reg_n_0_[11]\
    );
\cnt_sysclk2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_14,
      Q => \cnt_sysclk2_reg_n_0_[12]\
    );
\cnt_sysclk2_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk2_reg[8]_i_2_n_0\,
      CO(3) => \cnt_sysclk2_reg[12]_i_2_n_0\,
      CO(2) => \cnt_sysclk2_reg[12]_i_2_n_1\,
      CO(1) => \cnt_sysclk2_reg[12]_i_2_n_2\,
      CO(0) => \cnt_sysclk2_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(12 downto 9),
      S(3) => \cnt_sysclk2_reg_n_0_[12]\,
      S(2) => \cnt_sysclk2_reg_n_0_[11]\,
      S(1) => \cnt_sysclk2_reg_n_0_[10]\,
      S(0) => \cnt_sysclk2_reg_n_0_[9]\
    );
\cnt_sysclk2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_13,
      Q => \cnt_sysclk2_reg_n_0_[13]\
    );
\cnt_sysclk2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_12,
      Q => \cnt_sysclk2_reg_n_0_[14]\
    );
\cnt_sysclk2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_11,
      Q => \cnt_sysclk2_reg_n_0_[15]\
    );
\cnt_sysclk2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_10,
      Q => \cnt_sysclk2_reg_n_0_[16]\
    );
\cnt_sysclk2_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk2_reg[12]_i_2_n_0\,
      CO(3) => \cnt_sysclk2_reg[16]_i_2_n_0\,
      CO(2) => \cnt_sysclk2_reg[16]_i_2_n_1\,
      CO(1) => \cnt_sysclk2_reg[16]_i_2_n_2\,
      CO(0) => \cnt_sysclk2_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(16 downto 13),
      S(3) => \cnt_sysclk2_reg_n_0_[16]\,
      S(2) => \cnt_sysclk2_reg_n_0_[15]\,
      S(1) => \cnt_sysclk2_reg_n_0_[14]\,
      S(0) => \cnt_sysclk2_reg_n_0_[13]\
    );
\cnt_sysclk2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_9,
      Q => \cnt_sysclk2_reg_n_0_[17]\
    );
\cnt_sysclk2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_8,
      Q => \cnt_sysclk2_reg_n_0_[18]\
    );
\cnt_sysclk2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_7,
      Q => \cnt_sysclk2_reg_n_0_[19]\
    );
\cnt_sysclk2_reg[19]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk2_reg[16]_i_2_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk2_reg[19]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk2_reg[19]_i_4_n_2\,
      CO(0) => \cnt_sysclk2_reg[19]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk2_reg[19]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk20(19 downto 17),
      S(3) => '0',
      S(2) => \cnt_sysclk2_reg_n_0_[19]\,
      S(1) => \cnt_sysclk2_reg_n_0_[18]\,
      S(0) => \cnt_sysclk2_reg_n_0_[17]\
    );
\cnt_sysclk2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_25,
      Q => \cnt_sysclk2_reg_n_0_[1]\
    );
\cnt_sysclk2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_24,
      Q => \cnt_sysclk2_reg_n_0_[2]\
    );
\cnt_sysclk2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_23,
      Q => \cnt_sysclk2_reg_n_0_[3]\
    );
\cnt_sysclk2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_22,
      Q => \cnt_sysclk2_reg_n_0_[4]\
    );
\cnt_sysclk2_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_sysclk2_reg[4]_i_2_n_0\,
      CO(2) => \cnt_sysclk2_reg[4]_i_2_n_1\,
      CO(1) => \cnt_sysclk2_reg[4]_i_2_n_2\,
      CO(0) => \cnt_sysclk2_reg[4]_i_2_n_3\,
      CYINIT => \cnt_sysclk2_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(4 downto 1),
      S(3) => \cnt_sysclk2_reg_n_0_[4]\,
      S(2) => \cnt_sysclk2_reg_n_0_[3]\,
      S(1) => \cnt_sysclk2_reg_n_0_[2]\,
      S(0) => \cnt_sysclk2_reg_n_0_[1]\
    );
\cnt_sysclk2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_21,
      Q => \cnt_sysclk2_reg_n_0_[5]\
    );
\cnt_sysclk2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_20,
      Q => \cnt_sysclk2_reg_n_0_[6]\
    );
\cnt_sysclk2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_19,
      Q => \cnt_sysclk2_reg_n_0_[7]\
    );
\cnt_sysclk2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_18,
      Q => \cnt_sysclk2_reg_n_0_[8]\
    );
\cnt_sysclk2_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk2_reg[4]_i_2_n_0\,
      CO(3) => \cnt_sysclk2_reg[8]_i_2_n_0\,
      CO(2) => \cnt_sysclk2_reg[8]_i_2_n_1\,
      CO(1) => \cnt_sysclk2_reg[8]_i_2_n_2\,
      CO(0) => \cnt_sysclk2_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(8 downto 5),
      S(3) => \cnt_sysclk2_reg_n_0_[8]\,
      S(2) => \cnt_sysclk2_reg_n_0_[7]\,
      S(1) => \cnt_sysclk2_reg_n_0_[6]\,
      S(0) => \cnt_sysclk2_reg_n_0_[5]\
    );
\cnt_sysclk2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^ar\(0),
      D => ed_clear_n_17,
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
      I0 => \^run\,
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
      CE => ed_clear_n_4,
      CLR => \^ar\(0),
      D => \csec[0]_i_1_n_0\,
      Q => csec(0)
    );
\csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^ar\(0),
      D => \csec[1]_i_1_n_0\,
      Q => csec(1)
    );
\csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^ar\(0),
      D => \csec[2]_i_1_n_0\,
      Q => csec(2)
    );
\csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^ar\(0),
      D => \csec[3]_i_1_n_0\,
      Q => csec(3)
    );
\csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^ar\(0),
      D => \csec[4]_i_1_n_0\,
      Q => csec(4)
    );
\csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^ar\(0),
      D => \csec[5]_i_1_n_0\,
      Q => csec(5)
    );
\csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^ar\(0),
      D => \csec[6]_i_2_n_0\,
      Q => csec(6)
    );
\diff_csec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2A202A222"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[0]_i_2_n_0\,
      I2 => \diff_min[0]_i_2_n_0\,
      I3 => \diff_csec[0]_i_3_n_0\,
      I4 => \diff_min[3]_i_4_n_0\,
      I5 => \diff_csec[0]_i_4_n_0\,
      O => \diff_csec[0]_i_1_n_0\
    );
\diff_csec[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(1),
      I1 => total_prev_n_104,
      O => \diff_csec[0]_i_10_n_0\
    );
\diff_csec[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(0),
      I1 => total_prev_n_105,
      O => \diff_csec[0]_i_11_n_0\
    );
\diff_csec[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(3),
      I1 => total_tmp_n_102,
      O => \diff_csec[0]_i_12_n_0\
    );
\diff_csec[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(2),
      I1 => total_tmp_n_103,
      O => \diff_csec[0]_i_13_n_0\
    );
\diff_csec[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(1),
      I1 => total_tmp_n_104,
      O => \diff_csec[0]_i_14_n_0\
    );
\diff_csec[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(0),
      I1 => total_tmp_n_105,
      O => \diff_csec[0]_i_15_n_0\
    );
\diff_csec[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[0]_i_2_n_0\
    );
\diff_csec[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"330033001300FFFF"
    )
        port map (
      I0 => \diff_min[2]_i_3_n_0\,
      I1 => \diff_csec[0]_i_2_n_0\,
      I2 => \diff_min[0]_i_7_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_csec[0]_i_7_n_0\,
      I5 => \diff_min[0]_i_6_n_0\,
      O => \diff_csec[0]_i_3_n_0\
    );
\diff_csec[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07700550"
    )
        port map (
      I0 => \diff_min[1]_i_4_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \total_tmp__0\(0),
      I3 => \total_prev__0\(0),
      I4 => \diff_min[2]_i_2_n_0\,
      O => \diff_csec[0]_i_4_n_0\
    );
\diff_csec[0]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"41C3EBC3"
    )
        port map (
      I0 => \diff_min[0]_i_5_n_0\,
      I1 => \total_prev__0\(0),
      I2 => \total_tmp__0\(0),
      I3 => \diff_min[1]_i_2_n_0\,
      I4 => data9(0),
      O => \diff_csec[0]_i_7_n_0\
    );
\diff_csec[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(3),
      I1 => total_prev_n_102,
      O => \diff_csec[0]_i_8_n_0\
    );
\diff_csec[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(2),
      I1 => total_prev_n_103,
      O => \diff_csec[0]_i_9_n_0\
    );
\diff_csec[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec_reg[1]_i_2_n_6\,
      I2 => \diff_min[0]_i_2_n_0\,
      I3 => \diff_csec[1]_i_3_n_0\,
      O => \diff_csec[1]_i_1_n_0\
    );
\diff_csec[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_10_n_0\
    );
\diff_csec[1]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_11_n_0\
    );
\diff_csec[1]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4F444444"
    )
        port map (
      I0 => \diff_min[1]_i_4_n_0\,
      I1 => data2(1),
      I2 => \diff_min[1]_i_3_n_0\,
      I3 => data3(1),
      I4 => \diff_min[2]_i_2_n_0\,
      O => \diff_csec[1]_i_12_n_0\
    );
\diff_csec[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4545550540405000"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data9(1),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data8(1),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data7(1),
      O => \diff_csec[1]_i_14_n_0\
    );
\diff_csec[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A7F00002A7F7F7F"
    )
        port map (
      I0 => \diff_min[2]_i_3_n_0\,
      I1 => \diff_min[0]_i_6_n_0\,
      I2 => data6(1),
      I3 => data5(1),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data4(1),
      O => \diff_csec[1]_i_15_n_0\
    );
\diff_csec[1]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_18_n_0\
    );
\diff_csec[1]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_19_n_0\
    );
\diff_csec[1]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_20_n_0\
    );
\diff_csec[1]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_21_n_0\
    );
\diff_csec[1]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_22_n_0\
    );
\diff_csec[1]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_23_n_0\
    );
\diff_csec[1]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_24_n_0\
    );
\diff_csec[1]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_25_n_0\
    );
\diff_csec[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFAEFFFFFFAE"
    )
        port map (
      I0 => \diff_csec[1]_i_12_n_0\,
      I1 => data1(1),
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => \diff_csec[1]_i_14_n_0\,
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => \diff_csec[1]_i_15_n_0\,
      O => \diff_csec[1]_i_3_n_0\
    );
\diff_csec[1]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_32_n_0\
    );
\diff_csec[1]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_33_n_0\
    );
\diff_csec[1]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_34_n_0\
    );
\diff_csec[1]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_35_n_0\
    );
\diff_csec[1]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_36_n_0\
    );
\diff_csec[1]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_37_n_0\
    );
\diff_csec[1]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_38_n_0\
    );
\diff_csec[1]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_39_n_0\
    );
\diff_csec[1]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_4_n_0\
    );
\diff_csec[1]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_40_n_0\
    );
\diff_csec[1]_i_41\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_41_n_0\
    );
\diff_csec[1]_i_42\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_42_n_0\
    );
\diff_csec[1]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_43_n_0\
    );
\diff_csec[1]_i_44\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_44_n_0\
    );
\diff_csec[1]_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_45_n_0\
    );
\diff_csec[1]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_46_n_0\
    );
\diff_csec[1]_i_47\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_47_n_0\
    );
\diff_csec[1]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_48_n_0\
    );
\diff_csec[1]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_49_n_0\
    );
\diff_csec[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_5_n_0\
    );
\diff_csec[1]_i_50\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_50_n_0\
    );
\diff_csec[1]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_51_n_0\
    );
\diff_csec[1]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_52_n_0\
    );
\diff_csec[1]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_53_n_0\
    );
\diff_csec[1]_i_54\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_54_n_0\
    );
\diff_csec[1]_i_55\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_55_n_0\
    );
\diff_csec[1]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => p_1_in(3)
    );
\diff_csec[1]_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => p_1_in(2)
    );
\diff_csec[1]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => p_1_in(1)
    );
\diff_csec[1]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => p_1_in(0)
    );
\diff_csec[1]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_6_n_0\
    );
\diff_csec[1]_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_60_n_0\
    );
\diff_csec[1]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_61_n_0\
    );
\diff_csec[1]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_62_n_0\
    );
\diff_csec[1]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_63_n_0\
    );
\diff_csec[1]_i_64\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_64_n_0\
    );
\diff_csec[1]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_65_n_0\
    );
\diff_csec[1]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_66_n_0\
    );
\diff_csec[1]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_67_n_0\
    );
\diff_csec[1]_i_68\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_68_n_0\
    );
\diff_csec[1]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_69_n_0\
    );
\diff_csec[1]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_7_n_0\
    );
\diff_csec[1]_i_70\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_70_n_0\
    );
\diff_csec[1]_i_71\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_71_n_0\
    );
\diff_csec[1]_i_72\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_72_n_0\
    );
\diff_csec[1]_i_73\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_73_n_0\
    );
\diff_csec[1]_i_74\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_74_n_0\
    );
\diff_csec[1]_i_75\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_75_n_0\
    );
\diff_csec[1]_i_76\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_76_n_0\
    );
\diff_csec[1]_i_77\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_77_n_0\
    );
\diff_csec[1]_i_78\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_78_n_0\
    );
\diff_csec[1]_i_79\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_79_n_0\
    );
\diff_csec[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_8_n_0\
    );
\diff_csec[1]_i_80\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_80_n_0\
    );
\diff_csec[1]_i_81\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_81_n_0\
    );
\diff_csec[1]_i_82\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_82_n_0\
    );
\diff_csec[1]_i_83\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_83_n_0\
    );
\diff_csec[1]_i_84\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_84_n_0\
    );
\diff_csec[1]_i_85\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_85_n_0\
    );
\diff_csec[1]_i_86\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_86_n_0\
    );
\diff_csec[1]_i_87\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_87_n_0\
    );
\diff_csec[1]_i_88\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_88_n_0\
    );
\diff_csec[1]_i_89\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(2),
      I1 => \total_prev__0\(2),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_89_n_0\
    );
\diff_csec[1]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_9_n_0\
    );
\diff_csec[1]_i_90\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_90_n_0\
    );
\diff_csec[1]_i_91\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => \total_tmp__0\(0),
      I1 => \total_prev__0\(0),
      I2 => \^co\(0),
      O => \diff_csec[1]_i_91_n_0\
    );
\diff_csec[1]_i_92\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      O => \diff_csec[1]_i_92_n_0\
    );
\diff_csec[1]_i_93\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(2),
      I1 => \total_tmp__0\(2),
      O => \diff_csec[1]_i_93_n_0\
    );
\diff_csec[1]_i_94\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      O => \diff_csec[1]_i_94_n_0\
    );
\diff_csec[1]_i_95\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(0),
      I1 => \total_tmp__0\(0),
      O => \diff_csec[1]_i_95_n_0\
    );
\diff_csec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888888888A"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[2]_i_2_n_0\,
      I2 => \diff_csec[2]_i_3_n_0\,
      I3 => \diff_csec[6]_i_5_n_0\,
      I4 => \diff_csec[2]_i_4_n_0\,
      I5 => \diff_csec[2]_i_5_n_0\,
      O => \diff_csec[2]_i_1_n_0\
    );
\diff_csec[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[0]_i_20_n_0\,
      I1 => \diff_sec[0]_i_9_n_0\,
      O => \diff_csec[2]_i_10_n_0\
    );
\diff_csec[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFFFF0080FFFF"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[4]_i_21_n_0\,
      I2 => \diff_csec[2]_i_17_n_0\,
      I3 => \diff_sec[4]_i_23_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[4]_i_24_n_0\,
      O => \diff_csec[2]_i_11_n_0\
    );
\diff_csec[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D7D75555D7D7F55F"
    )
        port map (
      I0 => \diff_csec[4]_i_42_n_0\,
      I1 => \diff_csec[2]_i_18_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[2]_i_19_n_0\,
      I4 => \diff_sec[1]_i_23_n_0\,
      I5 => \diff_csec[6]_i_12_n_0\,
      O => \diff_csec[2]_i_12_n_0\
    );
\diff_csec[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"41FF"
    )
        port map (
      I0 => \diff_csec[4]_i_42_n_0\,
      I1 => \diff_csec[5]_i_37_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_sec[2]_i_7_n_0\,
      O => \diff_csec[2]_i_13_n_0\
    );
\diff_csec[2]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF3CFFCCFF66FF66"
    )
        port map (
      I0 => \diff_sec[0]_i_23_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[2]_i_20_n_0\,
      I3 => \diff_sec[2]_i_7_n_0\,
      I4 => \diff_sec[0]_i_22_n_0\,
      I5 => \diff_csec[5]_i_13_n_0\,
      O => \diff_csec[2]_i_14_n_0\
    );
\diff_csec[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011001055555555"
    )
        port map (
      I0 => \diff_sec[0]_i_31_n_0\,
      I1 => \diff_sec[0]_i_30_n_0\,
      I2 => \diff_sec[3]_i_12_n_0\,
      I3 => \diff_csec[6]_i_76_n_0\,
      I4 => \diff_csec[6]_i_77_n_0\,
      I5 => \diff_sec[2]_i_11_n_0\,
      O => \diff_csec[2]_i_15_n_0\
    );
\diff_csec[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAB"
    )
        port map (
      I0 => \diff_sec[0]_i_28_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_sec[4]_i_13_n_0\,
      I3 => \diff_sec[4]_i_14_n_0\,
      O => \diff_csec[2]_i_16_n_0\
    );
\diff_csec[2]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4544"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      O => \diff_csec[2]_i_17_n_0\
    );
\diff_csec[2]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404000400000000"
    )
        port map (
      I0 => \diff_sec[5]_i_4_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[5]_i_6_n_0\,
      I3 => \diff_csec[7]_i_6_n_0\,
      I4 => \diff_csec[5]_i_55_n_0\,
      I5 => \diff_sec[5]_i_3_n_0\,
      O => \diff_csec[2]_i_18_n_0\
    );
\diff_csec[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \diff_sec[4]_i_18_n_0\,
      I1 => \diff_sec[4]_i_19_n_0\,
      O => \diff_csec[2]_i_19_n_0\
    );
\diff_csec[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22FFF20022FF22DD"
    )
        port map (
      I0 => \diff_sec[1]_i_5_n_0\,
      I1 => \diff_csec[7]_i_2_n_0\,
      I2 => \diff_csec[6]_i_5_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_sec[2]_i_2_n_0\,
      I5 => \diff_sec[0]_i_5_n_0\,
      O => \diff_csec[2]_i_2_n_0\
    );
\diff_csec[2]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \diff_sec[3]_i_5_n_0\,
      I1 => \diff_sec[0]_i_25_n_0\,
      O => \diff_csec[2]_i_20_n_0\
    );
\diff_csec[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => \diff_csec[2]_i_6_n_0\,
      I1 => \diff_csec[2]_i_7_n_0\,
      I2 => \diff_sec[1]_i_9_n_0\,
      I3 => \diff_csec[2]_i_8_n_0\,
      O => \diff_csec[2]_i_3_n_0\
    );
\diff_csec[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111111101111101"
    )
        port map (
      I0 => \diff_csec[2]_i_9_n_0\,
      I1 => \diff_csec[6]_i_11_n_0\,
      I2 => \diff_sec[4]_i_6_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_csec[2]_i_10_n_0\,
      I5 => \diff_csec[2]_i_11_n_0\,
      O => \diff_csec[2]_i_4_n_0\
    );
\diff_csec[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \diff_csec[6]_i_11_n_0\,
      I1 => \diff_csec[2]_i_12_n_0\,
      I2 => \diff_csec[2]_i_13_n_0\,
      I3 => \diff_csec[2]_i_14_n_0\,
      O => \diff_csec[2]_i_5_n_0\
    );
\diff_csec[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0F0000080A0F0D0"
    )
        port map (
      I0 => \diff_sec[3]_i_8_n_0\,
      I1 => \diff_sec[1]_i_9_n_0\,
      I2 => \diff_csec[6]_i_12_n_0\,
      I3 => \diff_sec[0]_i_26_n_0\,
      I4 => \diff_csec[7]_i_14_n_0\,
      I5 => \diff_csec[4]_i_10_n_0\,
      O => \diff_csec[2]_i_6_n_0\
    );
\diff_csec[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F08000700080F070"
    )
        port map (
      I0 => \diff_csec[6]_i_55_n_0\,
      I1 => \diff_sec[0]_i_34_n_0\,
      I2 => \diff_sec[0]_i_14_n_0\,
      I3 => \diff_sec[1]_i_18_n_0\,
      I4 => \diff_csec[7]_i_14_n_0\,
      I5 => \diff_sec[0]_i_15_n_0\,
      O => \diff_csec[2]_i_7_n_0\
    );
\diff_csec[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFA53C"
    )
        port map (
      I0 => \diff_csec[2]_i_15_n_0\,
      I1 => \diff_csec[2]_i_16_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[4]_i_12_n_0\,
      I4 => \diff_sec[0]_i_14_n_0\,
      O => \diff_csec[2]_i_8_n_0\
    );
\diff_csec[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F00DDF0F00022"
    )
        port map (
      I0 => \diff_sec[1]_i_12_n_0\,
      I1 => \diff_sec[0]_i_19_n_0\,
      I2 => \diff_csec[5]_i_31_n_0\,
      I3 => \diff_sec[4]_i_6_n_0\,
      I4 => \diff_csec[2]_i_11_n_0\,
      I5 => \diff_csec[7]_i_14_n_0\,
      O => \diff_csec[2]_i_9_n_0\
    );
\diff_csec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8A8A8A8A8AA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[3]_i_2_n_0\,
      I2 => \diff_csec[3]_i_3_n_0\,
      I3 => \diff_csec[3]_i_4_n_0\,
      I4 => \diff_csec[3]_i_5_n_0\,
      I5 => \diff_csec[6]_i_5_n_0\,
      O => \diff_csec[3]_i_1_n_0\
    );
\diff_csec[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000F090F0F0F0F0"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[5]_i_13_n_0\,
      I3 => \diff_csec[3]_i_19_n_0\,
      I4 => \diff_csec[3]_i_20_n_0\,
      I5 => \diff_csec[3]_i_21_n_0\,
      O => \diff_csec[3]_i_10_n_0\
    );
\diff_csec[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAEFFAE"
    )
        port map (
      I0 => \diff_csec[6]_i_12_n_0\,
      I1 => \diff_csec[3]_i_22_n_0\,
      I2 => \diff_csec[3]_i_23_n_0\,
      I3 => \diff_csec[2]_i_11_n_0\,
      I4 => \diff_csec[3]_i_24_n_0\,
      O => \diff_csec[3]_i_11_n_0\
    );
\diff_csec[3]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F566AAAA"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[2]_i_11_n_0\,
      I3 => \diff_csec[3]_i_25_n_0\,
      I4 => \diff_sec[1]_i_8_n_0\,
      O => \diff_csec[3]_i_12_n_0\
    );
\diff_csec[3]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000019005F46"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[4]_i_32_n_0\,
      I3 => \diff_csec[3]_i_26_n_0\,
      I4 => \diff_csec[6]_i_48_n_0\,
      I5 => \diff_csec[6]_i_50_n_0\,
      O => \diff_csec[3]_i_13_n_0\
    );
\diff_csec[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[3]_i_27_n_0\,
      I1 => \diff_sec[1]_i_9_n_0\,
      O => \diff_csec[3]_i_14_n_0\
    );
\diff_csec[3]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0F0E0F0E000E0"
    )
        port map (
      I0 => \diff_csec[3]_i_28_n_0\,
      I1 => \diff_csec[3]_i_29_n_0\,
      I2 => \diff_sec[0]_i_14_n_0\,
      I3 => \diff_sec[1]_i_18_n_0\,
      I4 => \diff_csec[3]_i_30_n_0\,
      I5 => \diff_csec[7]_i_13_n_0\,
      O => \diff_csec[3]_i_15_n_0\
    );
\diff_csec[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0002FFFFFFFF"
    )
        port map (
      I0 => \diff_sec[3]_i_8_n_0\,
      I1 => \diff_sec[1]_i_9_n_0\,
      I2 => \diff_csec[3]_i_31_n_0\,
      I3 => \diff_csec[3]_i_32_n_0\,
      I4 => \diff_csec[3]_i_33_n_0\,
      I5 => \diff_csec[6]_i_12_n_0\,
      O => \diff_csec[3]_i_16_n_0\
    );
\diff_csec[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000006090605"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[1]_i_23_n_0\,
      I3 => \diff_sec[4]_i_19_n_0\,
      I4 => \diff_sec[4]_i_18_n_0\,
      I5 => \diff_csec[6]_i_12_n_0\,
      O => \diff_csec[3]_i_17_n_0\
    );
\diff_csec[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA65AAF5AA65AA"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[4]_i_20_n_0\,
      I3 => \diff_csec[7]_i_3_n_0\,
      I4 => \diff_sec[5]_i_4_n_0\,
      I5 => \diff_sec[5]_i_3_n_0\,
      O => \diff_csec[3]_i_18_n_0\
    );
\diff_csec[3]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \diff_sec[0]_i_38_n_0\,
      I1 => \diff_sec[1]_i_29_n_0\,
      I2 => \diff_sec[1]_i_28_n_0\,
      O => \diff_csec[3]_i_19_n_0\
    );
\diff_csec[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A099A066E6FFE6"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[1]_i_5_n_0\,
      I3 => \diff_csec[7]_i_2_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      I5 => \diff_csec[5]_i_21_n_0\,
      O => \diff_csec[3]_i_2_n_0\
    );
\diff_csec[3]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFBABA"
    )
        port map (
      I0 => \diff_sec[1]_i_29_n_0\,
      I1 => \diff_sec[1]_i_28_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[4]_i_48_n_0\,
      I4 => \diff_sec[2]_i_6_n_0\,
      O => \diff_csec[3]_i_20_n_0\
    );
\diff_csec[3]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6F695F5"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[3]_i_5_n_0\,
      I3 => \diff_sec[0]_i_37_n_0\,
      I4 => \diff_sec[0]_i_25_n_0\,
      O => \diff_csec[3]_i_21_n_0\
    );
\diff_csec[3]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00006AF9FFFFFFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[0]_i_9_n_0\,
      I3 => \diff_sec[0]_i_20_n_0\,
      I4 => \diff_csec[6]_i_11_n_0\,
      I5 => \diff_sec[4]_i_6_n_0\,
      O => \diff_csec[3]_i_22_n_0\
    );
\diff_csec[3]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"09A90505"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[0]_i_19_n_0\,
      I3 => \diff_sec[4]_i_6_n_0\,
      I4 => \diff_sec[1]_i_12_n_0\,
      O => \diff_csec[3]_i_23_n_0\
    );
\diff_csec[3]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66FA069A"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[6]_i_74_n_0\,
      I3 => \diff_sec[1]_i_11_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      O => \diff_csec[3]_i_24_n_0\
    );
\diff_csec[3]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
        port map (
      I0 => \diff_sec[4]_i_9_n_0\,
      I1 => \diff_sec[2]_i_12_n_0\,
      I2 => \diff_csec[7]_i_6_n_0\,
      I3 => \diff_sec[4]_i_7_n_0\,
      O => \diff_csec[3]_i_25_n_0\
    );
\diff_csec[3]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040004040404"
    )
        port map (
      I0 => \diff_sec[4]_i_15_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[4]_i_17_n_0\,
      I3 => \diff_sec[1]_i_41_n_0\,
      I4 => \diff_sec[5]_i_4_n_0\,
      I5 => \diff_sec[3]_i_12_n_0\,
      O => \diff_csec[3]_i_26_n_0\
    );
\diff_csec[3]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000092A096F"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[4]_i_3_n_0\,
      I3 => \diff_sec[0]_i_28_n_0\,
      I4 => \diff_csec[3]_i_34_n_0\,
      I5 => \diff_csec[4]_i_12_n_0\,
      O => \diff_csec[3]_i_27_n_0\
    );
\diff_csec[3]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80882A22"
    )
        port map (
      I0 => \diff_csec[6]_i_54_n_0\,
      I1 => \diff_sec[1]_i_17_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[6]_i_57_n_0\,
      I4 => \diff_csec[7]_i_13_n_0\,
      O => \diff_csec[3]_i_28_n_0\
    );
\diff_csec[3]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00009A96"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[0]_i_35_n_0\,
      I3 => \diff_csec[5]_i_56_n_0\,
      I4 => \diff_csec[6]_i_54_n_0\,
      O => \diff_csec[3]_i_29_n_0\
    );
\diff_csec[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0905000F0B0F0A0"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[3]_i_6_n_0\,
      I3 => \diff_sec[3]_i_4_n_0\,
      I4 => \diff_sec[2]_i_2_n_0\,
      I5 => \diff_csec[6]_i_26_n_0\,
      O => \diff_csec[3]_i_3_n_0\
    );
\diff_csec[3]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \diff_sec[3]_i_7_n_0\,
      I1 => \diff_sec[0]_i_33_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      O => \diff_csec[3]_i_30_n_0\
    );
\diff_csec[3]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"06050609"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[0]_i_43_n_0\,
      I3 => \diff_sec[1]_i_16_n_0\,
      I4 => \diff_sec[1]_i_15_n_0\,
      O => \diff_csec[3]_i_31_n_0\
    );
\diff_csec[3]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F060A0A05060A0A0"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[0]_i_43_n_0\,
      I3 => \diff_csec[6]_i_75_n_0\,
      I4 => \diff_sec[2]_i_10_n_0\,
      I5 => \diff_sec[1]_i_9_n_0\,
      O => \diff_csec[3]_i_32_n_0\
    );
\diff_csec[3]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65606060AFAAAAAA"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[6]_i_46_n_0\,
      I3 => \diff_csec[7]_i_3_n_0\,
      I4 => \diff_csec[3]_i_35_n_0\,
      I5 => \diff_csec[4]_i_7_n_0\,
      O => \diff_csec[3]_i_33_n_0\
    );
\diff_csec[3]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => \diff_sec[4]_i_14_n_0\,
      I1 => \diff_sec[4]_i_13_n_0\,
      I2 => \diff_sec[4]_i_12_n_0\,
      O => \diff_csec[3]_i_34_n_0\
    );
\diff_csec[3]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \diff_sec[4]_i_40_n_0\,
      I1 => \diff_sec[3]_i_11_n_0\,
      I2 => \diff_csec[7]_i_4_n_0\,
      O => \diff_csec[3]_i_35_n_0\
    );
\diff_csec[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFF4F"
    )
        port map (
      I0 => \diff_csec[3]_i_7_n_0\,
      I1 => \diff_csec[3]_i_8_n_0\,
      I2 => \diff_csec[6]_i_11_n_0\,
      I3 => \diff_csec[3]_i_9_n_0\,
      I4 => \diff_csec[3]_i_10_n_0\,
      I5 => \diff_csec[3]_i_11_n_0\,
      O => \diff_csec[3]_i_4_n_0\
    );
\diff_csec[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFD0"
    )
        port map (
      I0 => \diff_csec[3]_i_12_n_0\,
      I1 => \diff_csec[3]_i_13_n_0\,
      I2 => \diff_csec[4]_i_12_n_0\,
      I3 => \diff_csec[3]_i_14_n_0\,
      I4 => \diff_csec[3]_i_15_n_0\,
      I5 => \diff_csec[3]_i_16_n_0\,
      O => \diff_csec[3]_i_5_n_0\
    );
\diff_csec[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_sec[0]_i_5_n_0\,
      I1 => \diff_csec[6]_i_5_n_0\,
      O => \diff_csec[3]_i_6_n_0\
    );
\diff_csec[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB09EF6FFFFFFFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[1]_i_21_n_0\,
      I3 => \diff_csec[5]_i_37_n_0\,
      I4 => \diff_csec[5]_i_38_n_0\,
      I5 => \diff_sec[2]_i_7_n_0\,
      O => \diff_csec[3]_i_7_n_0\
    );
\diff_csec[3]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"45FF"
    )
        port map (
      I0 => \diff_csec[3]_i_17_n_0\,
      I1 => \diff_csec[3]_i_18_n_0\,
      I2 => \diff_sec[1]_i_23_n_0\,
      I3 => \diff_csec[4]_i_42_n_0\,
      O => \diff_csec[3]_i_8_n_0\
    );
\diff_csec[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000556650FA"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[7]_i_3_n_0\,
      I3 => \diff_sec[1]_i_31_n_0\,
      I4 => \diff_sec[1]_i_30_n_0\,
      I5 => \diff_csec[5]_i_13_n_0\,
      O => \diff_csec[3]_i_9_n_0\
    );
\diff_csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A8AAAAAAAA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[4]_i_2_n_0\,
      I2 => \diff_csec[4]_i_3_n_0\,
      I3 => \diff_csec[4]_i_4_n_0\,
      I4 => \diff_csec[6]_i_5_n_0\,
      I5 => \diff_csec[4]_i_5_n_0\,
      O => \diff_csec[4]_i_1_n_0\
    );
\diff_csec[4]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_csec[6]_i_46_n_0\,
      I1 => \diff_csec[4]_i_7_n_0\,
      O => \diff_csec[4]_i_10_n_0\
    );
\diff_csec[4]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000BFF0BFFFFFFFF"
    )
        port map (
      I0 => \diff_csec[4]_i_25_n_0\,
      I1 => \diff_csec[6]_i_54_n_0\,
      I2 => \diff_csec[4]_i_26_n_0\,
      I3 => \diff_sec[1]_i_18_n_0\,
      I4 => \diff_csec[4]_i_27_n_0\,
      I5 => \diff_sec[0]_i_14_n_0\,
      O => \diff_csec[4]_i_11_n_0\
    );
\diff_csec[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202020200020"
    )
        port map (
      I0 => \diff_csec[4]_i_28_n_0\,
      I1 => \diff_sec[4]_i_15_n_0\,
      I2 => \diff_sec[4]_i_14_n_0\,
      I3 => \diff_sec[3]_i_12_n_0\,
      I4 => \diff_csec[4]_i_29_n_0\,
      I5 => \diff_sec[3]_i_10_n_0\,
      O => \diff_csec[4]_i_12_n_0\
    );
\diff_csec[4]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"505050505C5C5C50"
    )
        port map (
      I0 => \diff_csec[4]_i_9_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_sec[0]_i_28_n_0\,
      I3 => \diff_sec[4]_i_12_n_0\,
      I4 => \diff_sec[4]_i_13_n_0\,
      I5 => \diff_sec[4]_i_14_n_0\,
      O => \diff_csec[4]_i_13_n_0\
    );
\diff_csec[4]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_sec[0]_i_29_n_0\,
      I1 => \diff_csec[4]_i_30_n_0\,
      O => \diff_csec[4]_i_14_n_0\
    );
\diff_csec[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \diff_csec[4]_i_31_n_0\,
      I1 => \diff_csec[4]_i_8_n_0\,
      I2 => \diff_csec[4]_i_32_n_0\,
      I3 => \diff_csec[4]_i_9_n_0\,
      I4 => \diff_csec[6]_i_48_n_0\,
      I5 => \diff_csec[4]_i_33_n_0\,
      O => \diff_csec[4]_i_15_n_0\
    );
\diff_csec[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA00BA00BAFFBA00"
    )
        port map (
      I0 => \diff_csec[4]_i_34_n_0\,
      I1 => \diff_csec[4]_i_35_n_0\,
      I2 => \diff_csec[4]_i_36_n_0\,
      I3 => \diff_csec[5]_i_13_n_0\,
      I4 => \diff_csec[4]_i_37_n_0\,
      I5 => \diff_csec[4]_i_38_n_0\,
      O => \diff_csec[4]_i_16_n_0\
    );
\diff_csec[4]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAAEFAAEFAAAA"
    )
        port map (
      I0 => \diff_csec[6]_i_12_n_0\,
      I1 => \diff_csec[4]_i_8_n_0\,
      I2 => \diff_csec[5]_i_37_n_0\,
      I3 => \diff_csec[4]_i_39_n_0\,
      I4 => \diff_csec[5]_i_38_n_0\,
      I5 => \diff_csec[4]_i_9_n_0\,
      O => \diff_csec[4]_i_17_n_0\
    );
\diff_csec[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55555100FFFFFFFF"
    )
        port map (
      I0 => \diff_csec[4]_i_40_n_0\,
      I1 => \diff_sec[1]_i_23_n_0\,
      I2 => \diff_csec[4]_i_8_n_0\,
      I3 => \diff_csec[5]_i_33_n_0\,
      I4 => \diff_csec[4]_i_41_n_0\,
      I5 => \diff_csec[4]_i_42_n_0\,
      O => \diff_csec[4]_i_18_n_0\
    );
\diff_csec[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAEFAAAAAAEFAAEF"
    )
        port map (
      I0 => \diff_csec[6]_i_12_n_0\,
      I1 => \diff_csec[4]_i_43_n_0\,
      I2 => \diff_csec[4]_i_44_n_0\,
      I3 => \diff_csec[4]_i_45_n_0\,
      I4 => \diff_csec[4]_i_46_n_0\,
      I5 => \diff_sec[4]_i_6_n_0\,
      O => \diff_csec[4]_i_19_n_0\
    );
\diff_csec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBFFFFFBBBFBBBF"
    )
        port map (
      I0 => \diff_csec[4]_i_6_n_0\,
      I1 => \diff_csec[6]_i_12_n_0\,
      I2 => \diff_csec[4]_i_7_n_0\,
      I3 => \diff_csec[4]_i_8_n_0\,
      I4 => \diff_csec[4]_i_9_n_0\,
      I5 => \diff_csec[4]_i_10_n_0\,
      O => \diff_csec[4]_i_2_n_0\
    );
\diff_csec[4]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00440F44"
    )
        port map (
      I0 => \diff_csec[4]_i_8_n_0\,
      I1 => \diff_sec[1]_i_5_n_0\,
      I2 => \diff_csec[4]_i_30_n_0\,
      I3 => \diff_csec[7]_i_2_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      O => \diff_csec[4]_i_20_n_0\
    );
\diff_csec[4]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"455503334555CFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_sec[4]_i_2_n_0\,
      I2 => \diff_csec[4]_i_8_n_0\,
      I3 => \diff_csec[6]_i_5_n_0\,
      I4 => \diff_sec[3]_i_4_n_0\,
      I5 => \diff_csec[4]_i_30_n_0\,
      O => \diff_csec[4]_i_21_n_0\
    );
\diff_csec[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0A0C0C000A0C0C0"
    )
        port map (
      I0 => \diff_csec[4]_i_30_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_sec[0]_i_43_n_0\,
      I3 => \diff_csec[6]_i_75_n_0\,
      I4 => \diff_sec[2]_i_10_n_0\,
      I5 => \diff_csec[4]_i_8_n_0\,
      O => \diff_csec[4]_i_22_n_0\
    );
\diff_csec[4]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010151010151515"
    )
        port map (
      I0 => \diff_sec[0]_i_43_n_0\,
      I1 => \diff_csec[4]_i_30_n_0\,
      I2 => \diff_sec[1]_i_16_n_0\,
      I3 => \diff_sec[1]_i_15_n_0\,
      I4 => \diff_csec[4]_i_8_n_0\,
      I5 => \diff_csec[4]_i_9_n_0\,
      O => \diff_csec[4]_i_23_n_0\
    );
\diff_csec[4]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      O => \diff_csec[4]_i_24_n_0\
    );
\diff_csec[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDD11111DDD1DDD"
    )
        port map (
      I0 => \diff_csec[4]_i_8_n_0\,
      I1 => \diff_sec[1]_i_17_n_0\,
      I2 => \diff_csec[4]_i_9_n_0\,
      I3 => \diff_csec[6]_i_57_n_0\,
      I4 => \diff_csec[7]_i_12_n_0\,
      I5 => \diff_sec[0]_i_47_n_0\,
      O => \diff_csec[4]_i_25_n_0\
    );
\diff_csec[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003A3F3A30"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[4]_i_9_n_0\,
      I2 => \diff_sec[0]_i_35_n_0\,
      I3 => \diff_csec[5]_i_56_n_0\,
      I4 => \diff_csec[4]_i_30_n_0\,
      I5 => \diff_csec[6]_i_54_n_0\,
      O => \diff_csec[4]_i_26_n_0\
    );
\diff_csec[4]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10D01FDF"
    )
        port map (
      I0 => \diff_csec[4]_i_30_n_0\,
      I1 => \diff_sec[0]_i_33_n_0\,
      I2 => \diff_sec[3]_i_7_n_0\,
      I3 => \diff_csec[4]_i_8_n_0\,
      I4 => \diff_csec[7]_i_12_n_0\,
      O => \diff_csec[4]_i_27_n_0\
    );
\diff_csec[4]_i_28\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \diff_sec[4]_i_16_n_0\,
      I1 => \diff_sec[5]_i_9_n_0\,
      I2 => \diff_sec[5]_i_8_n_0\,
      I3 => \diff_sec[5]_i_7_n_0\,
      I4 => \diff_sec[5]_i_6_n_0\,
      O => \diff_csec[4]_i_28_n_0\
    );
\diff_csec[4]_i_29\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F700FFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_14_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      O => \diff_csec[4]_i_29_n_0\
    );
\diff_csec[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8AA000020220000"
    )
        port map (
      I0 => \diff_csec[4]_i_11_n_0\,
      I1 => \diff_csec[4]_i_12_n_0\,
      I2 => \diff_csec[4]_i_13_n_0\,
      I3 => \diff_csec[4]_i_14_n_0\,
      I4 => \diff_sec[1]_i_9_n_0\,
      I5 => \diff_csec[4]_i_15_n_0\,
      O => \diff_csec[4]_i_3_n_0\
    );
\diff_csec[4]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      O => \diff_csec[4]_i_30_n_0\
    );
\diff_csec[4]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFFD0FFDF00D000"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_sec[2]_i_11_n_0\,
      I2 => \diff_csec[3]_i_25_n_0\,
      I3 => \diff_sec[1]_i_8_n_0\,
      I4 => \diff_csec[4]_i_9_n_0\,
      I5 => \diff_csec[4]_i_8_n_0\,
      O => \diff_csec[4]_i_31_n_0\
    );
\diff_csec[4]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0504"
    )
        port map (
      I0 => \diff_sec[0]_i_30_n_0\,
      I1 => \diff_sec[3]_i_12_n_0\,
      I2 => \diff_csec[6]_i_76_n_0\,
      I3 => \diff_csec[6]_i_77_n_0\,
      O => \diff_csec[4]_i_32_n_0\
    );
\diff_csec[4]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \diff_csec[4]_i_30_n_0\,
      I1 => \diff_csec[3]_i_26_n_0\,
      I2 => \diff_sec[2]_i_11_n_0\,
      I3 => \diff_sec[0]_i_14_n_0\,
      O => \diff_csec[4]_i_33_n_0\
    );
\diff_csec[4]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0333031100000311"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[4]_i_47_n_0\,
      I2 => \diff_csec[4]_i_30_n_0\,
      I3 => \diff_sec[3]_i_5_n_0\,
      I4 => \diff_sec[0]_i_25_n_0\,
      I5 => \diff_csec[4]_i_9_n_0\,
      O => \diff_csec[4]_i_34_n_0\
    );
\diff_csec[4]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8FFF8F8F8F8"
    )
        port map (
      I0 => \diff_csec[6]_i_68_n_0\,
      I1 => \diff_csec[4]_i_8_n_0\,
      I2 => \diff_sec[1]_i_29_n_0\,
      I3 => \diff_csec[7]_i_12_n_0\,
      I4 => \diff_csec[4]_i_48_n_0\,
      I5 => \diff_sec[2]_i_6_n_0\,
      O => \diff_csec[4]_i_35_n_0\
    );
\diff_csec[4]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \diff_sec[1]_i_28_n_0\,
      I1 => \diff_sec[1]_i_29_n_0\,
      I2 => \diff_sec[0]_i_38_n_0\,
      I3 => \diff_csec[4]_i_9_n_0\,
      O => \diff_csec[4]_i_36_n_0\
    );
\diff_csec[4]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[4]_i_8_n_0\,
      I1 => \diff_sec[1]_i_31_n_0\,
      O => \diff_csec[4]_i_37_n_0\
    );
\diff_csec[4]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F11"
    )
        port map (
      I0 => \diff_sec[2]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[4]_i_30_n_0\,
      I3 => \diff_sec[0]_i_23_n_0\,
      O => \diff_csec[4]_i_38_n_0\
    );
\diff_csec[4]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => \diff_csec[4]_i_42_n_0\,
      I1 => \diff_csec[4]_i_30_n_0\,
      I2 => \diff_sec[1]_i_21_n_0\,
      O => \diff_csec[4]_i_39_n_0\
    );
\diff_csec[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBBBFBFB"
    )
        port map (
      I0 => \diff_csec[4]_i_16_n_0\,
      I1 => \diff_csec[6]_i_11_n_0\,
      I2 => \diff_sec[2]_i_7_n_0\,
      I3 => \diff_csec[4]_i_17_n_0\,
      I4 => \diff_csec[4]_i_18_n_0\,
      I5 => \diff_csec[4]_i_19_n_0\,
      O => \diff_csec[4]_i_4_n_0\
    );
\diff_csec[4]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1133113011001130"
    )
        port map (
      I0 => \diff_csec[4]_i_9_n_0\,
      I1 => \diff_sec[1]_i_23_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_sec[4]_i_19_n_0\,
      I4 => \diff_sec[4]_i_18_n_0\,
      I5 => \diff_csec[4]_i_30_n_0\,
      O => \diff_csec[4]_i_40_n_0\
    );
\diff_csec[4]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F0CCCC8800CCCC"
    )
        port map (
      I0 => \diff_sec[5]_i_3_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[4]_i_30_n_0\,
      I3 => \diff_sec[5]_i_4_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      I5 => \diff_sec[4]_i_20_n_0\,
      O => \diff_csec[4]_i_41_n_0\
    );
\diff_csec[4]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444404040404"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[5]_i_3_n_0\,
      I3 => \diff_csec[4]_i_49_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      I5 => \diff_sec[1]_i_34_n_0\,
      O => \diff_csec[4]_i_42_n_0\
    );
\diff_csec[4]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => \diff_sec[1]_i_11_n_0\,
      I1 => \diff_csec[4]_i_30_n_0\,
      I2 => \diff_csec[2]_i_11_n_0\,
      O => \diff_csec[4]_i_43_n_0\
    );
\diff_csec[4]_i_44\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEE0FEE"
    )
        port map (
      I0 => \diff_sec[1]_i_11_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[4]_i_9_n_0\,
      I3 => \diff_csec[6]_i_74_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      O => \diff_csec[4]_i_44_n_0\
    );
\diff_csec[4]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AF8CA08C"
    )
        port map (
      I0 => \diff_csec[4]_i_50_n_0\,
      I1 => \diff_csec[4]_i_8_n_0\,
      I2 => \diff_sec[0]_i_19_n_0\,
      I3 => \diff_sec[1]_i_12_n_0\,
      I4 => \diff_csec[4]_i_9_n_0\,
      I5 => \diff_csec[2]_i_11_n_0\,
      O => \diff_csec[4]_i_45_n_0\
    );
\diff_csec[4]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555504400445044"
    )
        port map (
      I0 => \diff_csec[6]_i_11_n_0\,
      I1 => \diff_csec[4]_i_30_n_0\,
      I2 => \diff_csec[4]_i_8_n_0\,
      I3 => \diff_sec[0]_i_20_n_0\,
      I4 => \diff_sec[0]_i_9_n_0\,
      I5 => \diff_csec[4]_i_9_n_0\,
      O => \diff_csec[4]_i_46_n_0\
    );
\diff_csec[4]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400404444"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[1]_i_40_n_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_sec[4]_i_12_n_0\,
      I5 => \diff_sec[3]_i_13_n_0\,
      O => \diff_csec[4]_i_47_n_0\
    );
\diff_csec[4]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAE"
    )
        port map (
      I0 => \diff_sec[3]_i_13_n_0\,
      I1 => \diff_sec[2]_i_14_n_0\,
      I2 => \diff_sec[4]_i_12_n_0\,
      I3 => \diff_sec[4]_i_13_n_0\,
      O => \diff_csec[4]_i_48_n_0\
    );
\diff_csec[4]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444044"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      I4 => \diff_csec[7]_i_12_n_0\,
      O => \diff_csec[4]_i_49_n_0\
    );
\diff_csec[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"54005454"
    )
        port map (
      I0 => \diff_csec[4]_i_20_n_0\,
      I1 => \diff_csec[5]_i_21_n_0\,
      I2 => \diff_csec[4]_i_9_n_0\,
      I3 => \diff_csec[4]_i_21_n_0\,
      I4 => \diff_sec[0]_i_5_n_0\,
      O => \diff_csec[4]_i_5_n_0\
    );
\diff_csec[4]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555455505050505"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_sec[4]_i_24_n_0\,
      I2 => \diff_sec[5]_i_5_n_0\,
      I3 => \diff_csec[4]_i_51_n_0\,
      I4 => \diff_sec[4]_i_21_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_csec[4]_i_50_n_0\
    );
\diff_csec[4]_i_51\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      O => \diff_csec[4]_i_51_n_0\
    );
\diff_csec[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050507000000020"
    )
        port map (
      I0 => \diff_sec[3]_i_8_n_0\,
      I1 => \diff_sec[1]_i_9_n_0\,
      I2 => \diff_csec[6]_i_16_n_0\,
      I3 => \diff_csec[4]_i_22_n_0\,
      I4 => \diff_csec[4]_i_23_n_0\,
      I5 => \diff_csec[7]_i_12_n_0\,
      O => \diff_csec[4]_i_6_n_0\
    );
\diff_csec[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040044444444"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[4]_i_13_n_0\,
      I3 => \diff_csec[5]_i_44_n_0\,
      I4 => \diff_csec[4]_i_24_n_0\,
      I5 => \diff_sec[3]_i_15_n_0\,
      O => \diff_csec[4]_i_7_n_0\
    );
\diff_csec[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      O => \diff_csec[4]_i_8_n_0\
    );
\diff_csec[4]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2D"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      O => \diff_csec[4]_i_9_n_0\
    );
\diff_csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A8AAAAAAAA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[5]_i_2_n_0\,
      I2 => \diff_csec[5]_i_3_n_0\,
      I3 => \diff_csec[5]_i_4_n_0\,
      I4 => \diff_csec[6]_i_5_n_0\,
      I5 => \diff_csec[5]_i_5_n_0\,
      O => \diff_csec[5]_i_1_n_0\
    );
\diff_csec[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABAFFBAFFFFFFFF"
    )
        port map (
      I0 => \diff_csec[5]_i_36_n_0\,
      I1 => \diff_csec[5]_i_28_n_0\,
      I2 => \diff_csec[5]_i_37_n_0\,
      I3 => \diff_csec[5]_i_20_n_0\,
      I4 => \diff_csec[5]_i_38_n_0\,
      I5 => \diff_sec[2]_i_7_n_0\,
      O => \diff_csec[5]_i_10_n_0\
    );
\diff_csec[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2F3F3E2E200F3"
    )
        port map (
      I0 => \diff_csec[5]_i_32_n_0\,
      I1 => \diff_sec[1]_i_31_n_0\,
      I2 => \diff_csec[5]_i_39_n_0\,
      I3 => \diff_csec[5]_i_30_n_0\,
      I4 => \diff_sec[1]_i_30_n_0\,
      I5 => \diff_csec[7]_i_3_n_0\,
      O => \diff_csec[5]_i_11_n_0\
    );
\diff_csec[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA8AAA8AAA8AA"
    )
        port map (
      I0 => \diff_csec[5]_i_40_n_0\,
      I1 => \diff_sec[2]_i_7_n_0\,
      I2 => \diff_csec[5]_i_41_n_0\,
      I3 => \diff_csec[5]_i_42_n_0\,
      I4 => \diff_csec[5]_i_26_n_0\,
      I5 => \diff_csec[5]_i_43_n_0\,
      O => \diff_csec[5]_i_12_n_0\
    );
\diff_csec[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555DF5500000000"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_csec[5]_i_44_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[2]_i_17_n_0\,
      I4 => \diff_sec[2]_i_13_n_0\,
      I5 => \diff_sec[5]_i_5_n_0\,
      O => \diff_csec[5]_i_13_n_0\
    );
\diff_csec[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008808AAAAAAAA"
    )
        port map (
      I0 => \diff_csec[4]_i_12_n_0\,
      I1 => \diff_csec[5]_i_45_n_0\,
      I2 => \diff_csec[6]_i_48_n_0\,
      I3 => \diff_csec[5]_i_20_n_0\,
      I4 => \diff_csec[6]_i_50_n_0\,
      I5 => \diff_csec[5]_i_46_n_0\,
      O => \diff_csec[5]_i_14_n_0\
    );
\diff_csec[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F2E002E"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[0]_i_28_n_0\,
      I2 => \diff_csec[5]_i_20_n_0\,
      I3 => \diff_sec[4]_i_3_n_0\,
      I4 => \diff_csec[5]_i_24_n_0\,
      I5 => \diff_csec[4]_i_12_n_0\,
      O => \diff_csec[5]_i_15_n_0\
    );
\diff_csec[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEFE0000"
    )
        port map (
      I0 => \diff_sec[1]_i_18_n_0\,
      I1 => \diff_csec[5]_i_47_n_0\,
      I2 => \diff_csec[6]_i_54_n_0\,
      I3 => \diff_csec[5]_i_48_n_0\,
      I4 => \diff_sec[0]_i_14_n_0\,
      I5 => \diff_csec[5]_i_49_n_0\,
      O => \diff_csec[5]_i_16_n_0\
    );
\diff_csec[5]_i_17\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22F2FFFF"
    )
        port map (
      I0 => \diff_csec[4]_i_10_n_0\,
      I1 => \diff_csec[5]_i_20_n_0\,
      I2 => \diff_csec[5]_i_28_n_0\,
      I3 => \diff_csec[4]_i_7_n_0\,
      I4 => \diff_csec[6]_i_12_n_0\,
      O => \diff_csec[5]_i_17_n_0\
    );
\diff_csec[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5050507000000020"
    )
        port map (
      I0 => \diff_sec[3]_i_8_n_0\,
      I1 => \diff_sec[1]_i_9_n_0\,
      I2 => \diff_csec[6]_i_16_n_0\,
      I3 => \diff_csec[5]_i_50_n_0\,
      I4 => \diff_csec[5]_i_51_n_0\,
      I5 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[5]_i_18_n_0\
    );
\diff_csec[5]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00880F88"
    )
        port map (
      I0 => \diff_csec[5]_i_28_n_0\,
      I1 => \diff_sec[1]_i_5_n_0\,
      I2 => \diff_csec[5]_i_32_n_0\,
      I3 => \diff_csec[7]_i_2_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      O => \diff_csec[5]_i_19_n_0\
    );
\diff_csec[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
        port map (
      I0 => \diff_csec[6]_i_12_n_0\,
      I1 => \diff_csec[5]_i_6_n_0\,
      I2 => \diff_csec[5]_i_7_n_0\,
      I3 => \diff_csec[5]_i_8_n_0\,
      I4 => \diff_csec[6]_i_11_n_0\,
      O => \diff_csec[5]_i_2_n_0\
    );
\diff_csec[5]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[0]_i_32_n_0\,
      O => \diff_csec[5]_i_20_n_0\
    );
\diff_csec[5]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_sec[1]_i_5_n_0\,
      I1 => \diff_csec[5]_i_52_n_0\,
      O => \diff_csec[5]_i_21_n_0\
    );
\diff_csec[5]_i_22\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \diff_csec[5]_i_25_n_0\,
      I1 => \diff_sec[4]_i_2_n_0\,
      I2 => \diff_csec[6]_i_5_n_0\,
      O => \diff_csec[5]_i_22_n_0\
    );
\diff_csec[5]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF808080"
    )
        port map (
      I0 => \diff_csec[5]_i_24_n_0\,
      I1 => \diff_sec[4]_i_2_n_0\,
      I2 => \diff_sec[2]_i_5_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[3]_i_4_n_0\,
      O => \diff_csec[5]_i_23_n_0\
    );
\diff_csec[5]_i_24\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_41_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      O => \diff_csec[5]_i_24_n_0\
    );
\diff_csec[5]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_41_n_0\,
      O => \diff_csec[5]_i_25_n_0\
    );
\diff_csec[5]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[2]_i_12_n_0\,
      O => \diff_csec[5]_i_26_n_0\
    );
\diff_csec[5]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_6_n_0\,
      O => \diff_csec[5]_i_27_n_0\
    );
\diff_csec[5]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[1]_i_20_n_0\,
      O => \diff_csec[5]_i_28_n_0\
    );
\diff_csec[5]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_sec[0]_i_6_n_0\,
      I1 => \diff_csec[5]_i_26_n_0\,
      O => \diff_csec[5]_i_29_n_0\
    );
\diff_csec[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0000000E000E0"
    )
        port map (
      I0 => \diff_csec[5]_i_9_n_0\,
      I1 => \diff_csec[5]_i_10_n_0\,
      I2 => \diff_csec[6]_i_11_n_0\,
      I3 => \diff_csec[5]_i_11_n_0\,
      I4 => \diff_csec[5]_i_12_n_0\,
      I5 => \diff_csec[5]_i_13_n_0\,
      O => \diff_csec[5]_i_3_n_0\
    );
\diff_csec[5]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      O => \diff_csec[5]_i_30_n_0\
    );
\diff_csec[5]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAEAEAAA"
    )
        port map (
      I0 => \diff_sec[1]_i_11_n_0\,
      I1 => \diff_sec[3]_i_12_n_0\,
      I2 => \diff_csec[7]_i_4_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      I4 => \diff_csec[5]_i_53_n_0\,
      I5 => \diff_csec[5]_i_54_n_0\,
      O => \diff_csec[5]_i_31_n_0\
    );
\diff_csec[5]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_5_n_0\,
      O => \diff_csec[5]_i_32_n_0\
    );
\diff_csec[5]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040044444444"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[5]_i_4_n_0\,
      I3 => \diff_csec[7]_i_6_n_0\,
      I4 => \diff_csec[5]_i_55_n_0\,
      I5 => \diff_sec[5]_i_3_n_0\,
      O => \diff_csec[5]_i_33_n_0\
    );
\diff_csec[5]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5655545500550055"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[5]_i_55_n_0\,
      I2 => \diff_sec[5]_i_4_n_0\,
      I3 => \diff_csec[7]_i_3_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_sec[5]_i_3_n_0\,
      O => \diff_csec[5]_i_34_n_0\
    );
\diff_csec[5]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFC5C0C5"
    )
        port map (
      I0 => \diff_csec[5]_i_30_n_0\,
      I1 => \diff_csec[5]_i_26_n_0\,
      I2 => \diff_sec[4]_i_19_n_0\,
      I3 => \diff_sec[4]_i_18_n_0\,
      I4 => \diff_csec[5]_i_32_n_0\,
      I5 => \diff_sec[1]_i_23_n_0\,
      O => \diff_csec[5]_i_35_n_0\
    );
\diff_csec[5]_i_36\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_csec[5]_i_32_n_0\,
      I1 => \diff_sec[1]_i_21_n_0\,
      O => \diff_csec[5]_i_36_n_0\
    );
\diff_csec[5]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_sec[1]_i_21_n_0\,
      I1 => \diff_sec[1]_i_22_n_0\,
      O => \diff_csec[5]_i_37_n_0\
    );
\diff_csec[5]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \diff_sec[1]_i_22_n_0\,
      I1 => \diff_sec[1]_i_21_n_0\,
      I2 => \diff_csec[6]_i_69_n_0\,
      O => \diff_csec[5]_i_38_n_0\
    );
\diff_csec[5]_i_39\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \diff_csec[5]_i_28_n_0\,
      I1 => \diff_csec[5]_i_13_n_0\,
      O => \diff_csec[5]_i_39_n_0\
    );
\diff_csec[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFB"
    )
        port map (
      I0 => \diff_csec[5]_i_14_n_0\,
      I1 => \diff_sec[1]_i_9_n_0\,
      I2 => \diff_csec[5]_i_15_n_0\,
      I3 => \diff_csec[5]_i_16_n_0\,
      I4 => \diff_csec[5]_i_17_n_0\,
      I5 => \diff_csec[5]_i_18_n_0\,
      O => \diff_csec[5]_i_4_n_0\
    );
\diff_csec[5]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0CCE2EEFFFFE2EE"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[3]_i_5_n_0\,
      I2 => \diff_csec[5]_i_24_n_0\,
      I3 => \diff_sec[0]_i_37_n_0\,
      I4 => \diff_sec[0]_i_25_n_0\,
      I5 => \diff_csec[5]_i_20_n_0\,
      O => \diff_csec[5]_i_40_n_0\
    );
\diff_csec[5]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFABFFBB"
    )
        port map (
      I0 => \diff_sec[3]_i_9_n_0\,
      I1 => \diff_csec[5]_i_25_n_0\,
      I2 => \diff_sec[1]_i_28_n_0\,
      I3 => \diff_sec[0]_i_37_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      O => \diff_csec[5]_i_41_n_0\
    );
\diff_csec[5]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF9FDFBFFFFFFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_sec[3]_i_13_n_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_sec[2]_i_6_n_0\,
      O => \diff_csec[5]_i_42_n_0\
    );
\diff_csec[5]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \diff_sec[0]_i_38_n_0\,
      I1 => \diff_csec[7]_i_3_n_0\,
      I2 => \diff_sec[0]_i_37_n_0\,
      I3 => \diff_sec[1]_i_28_n_0\,
      O => \diff_csec[5]_i_43_n_0\
    );
\diff_csec[5]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      O => \diff_csec[5]_i_44_n_0\
    );
\diff_csec[5]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAA3A3AAAAA3AF"
    )
        port map (
      I0 => \diff_csec[5]_i_32_n_0\,
      I1 => \diff_csec[5]_i_28_n_0\,
      I2 => \diff_sec[0]_i_30_n_0\,
      I3 => \diff_sec[3]_i_12_n_0\,
      I4 => \diff_csec[6]_i_76_n_0\,
      I5 => \diff_csec[6]_i_77_n_0\,
      O => \diff_csec[5]_i_45_n_0\
    );
\diff_csec[5]_i_46\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFEFFFE000EF00"
    )
        port map (
      I0 => \diff_sec[2]_i_11_n_0\,
      I1 => \diff_csec[5]_i_30_n_0\,
      I2 => \diff_csec[3]_i_25_n_0\,
      I3 => \diff_sec[1]_i_8_n_0\,
      I4 => \diff_csec[5]_i_26_n_0\,
      I5 => \diff_csec[5]_i_25_n_0\,
      O => \diff_csec[5]_i_46_n_0\
    );
\diff_csec[5]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003A303A3F"
    )
        port map (
      I0 => \diff_csec[5]_i_30_n_0\,
      I1 => \diff_csec[5]_i_26_n_0\,
      I2 => \diff_sec[0]_i_35_n_0\,
      I3 => \diff_csec[5]_i_56_n_0\,
      I4 => \diff_csec[5]_i_32_n_0\,
      I5 => \diff_csec[6]_i_54_n_0\,
      O => \diff_csec[5]_i_47_n_0\
    );
\diff_csec[5]_i_48\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A10FA50FE00EE14B"
    )
        port map (
      I0 => \diff_csec[6]_i_60_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      I3 => \diff_sec[1]_i_20_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_sec[0]_i_32_n_0\,
      O => \diff_csec[5]_i_48_n_0\
    );
\diff_csec[5]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF40FF4F004000"
    )
        port map (
      I0 => \diff_csec[5]_i_25_n_0\,
      I1 => \diff_csec[5]_i_57_n_0\,
      I2 => \diff_sec[0]_i_33_n_0\,
      I3 => \diff_sec[3]_i_7_n_0\,
      I4 => \diff_csec[5]_i_24_n_0\,
      I5 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[5]_i_49_n_0\
    );
\diff_csec[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000540054545454"
    )
        port map (
      I0 => \diff_csec[5]_i_19_n_0\,
      I1 => \diff_csec[5]_i_20_n_0\,
      I2 => \diff_csec[5]_i_21_n_0\,
      I3 => \diff_csec[5]_i_22_n_0\,
      I4 => \diff_csec[5]_i_23_n_0\,
      I5 => \diff_sec[0]_i_5_n_0\,
      O => \diff_csec[5]_i_5_n_0\
    );
\diff_csec[5]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A000C0C0A0F0C0C0"
    )
        port map (
      I0 => \diff_csec[5]_i_28_n_0\,
      I1 => \diff_csec[5]_i_30_n_0\,
      I2 => \diff_sec[0]_i_43_n_0\,
      I3 => \diff_csec[6]_i_75_n_0\,
      I4 => \diff_sec[2]_i_10_n_0\,
      I5 => \diff_csec[5]_i_32_n_0\,
      O => \diff_csec[5]_i_50_n_0\
    );
\diff_csec[5]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003A303A3F"
    )
        port map (
      I0 => \diff_csec[5]_i_25_n_0\,
      I1 => \diff_csec[5]_i_24_n_0\,
      I2 => \diff_sec[1]_i_16_n_0\,
      I3 => \diff_sec[1]_i_15_n_0\,
      I4 => \diff_csec[5]_i_26_n_0\,
      I5 => \diff_sec[0]_i_43_n_0\,
      O => \diff_csec[5]_i_51_n_0\
    );
\diff_csec[5]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CEEECECECEEECEEE"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[4]_i_15_n_0\,
      I2 => \diff_sec[4]_i_16_n_0\,
      I3 => \diff_sec[4]_i_14_n_0\,
      I4 => \diff_sec[2]_i_13_n_0\,
      I5 => \diff_sec[0]_i_17_n_0\,
      O => \diff_csec[5]_i_52_n_0\
    );
\diff_csec[5]_i_53\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      O => \diff_csec[5]_i_53_n_0\
    );
\diff_csec[5]_i_54\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \diff_sec[4]_i_7_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[5]_i_5_n_0\,
      O => \diff_csec[5]_i_54_n_0\
    );
\diff_csec[5]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \diff_csec[7]_i_14_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      O => \diff_csec[5]_i_55_n_0\
    );
\diff_csec[5]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => \diff_sec[3]_i_10_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_sec[2]_i_14_n_0\,
      O => \diff_csec[5]_i_56_n_0\
    );
\diff_csec[5]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA8AAA8888"
    )
        port map (
      I0 => \diff_sec[4]_i_22_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      I3 => \diff_sec[4]_i_41_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_csec[7]_i_4_n_0\,
      O => \diff_csec[5]_i_57_n_0\
    );
\diff_csec[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA880A8800000A88"
    )
        port map (
      I0 => \diff_sec[4]_i_6_n_0\,
      I1 => \diff_csec[5]_i_24_n_0\,
      I2 => \diff_csec[5]_i_25_n_0\,
      I3 => \diff_sec[0]_i_20_n_0\,
      I4 => \diff_sec[0]_i_9_n_0\,
      I5 => \diff_csec[5]_i_26_n_0\,
      O => \diff_csec[5]_i_6_n_0\
    );
\diff_csec[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A08CAF8C"
    )
        port map (
      I0 => \diff_csec[5]_i_27_n_0\,
      I1 => \diff_csec[5]_i_28_n_0\,
      I2 => \diff_sec[0]_i_19_n_0\,
      I3 => \diff_sec[1]_i_12_n_0\,
      I4 => \diff_csec[5]_i_20_n_0\,
      I5 => \diff_csec[2]_i_11_n_0\,
      O => \diff_csec[5]_i_7_n_0\
    );
\diff_csec[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000222022202220"
    )
        port map (
      I0 => \diff_csec[2]_i_11_n_0\,
      I1 => \diff_csec[5]_i_29_n_0\,
      I2 => \diff_csec[5]_i_30_n_0\,
      I3 => \diff_csec[5]_i_31_n_0\,
      I4 => \diff_sec[1]_i_11_n_0\,
      I5 => \diff_csec[5]_i_32_n_0\,
      O => \diff_csec[5]_i_8_n_0\
    );
\diff_csec[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF8A"
    )
        port map (
      I0 => \diff_csec[5]_i_33_n_0\,
      I1 => \diff_csec[5]_i_25_n_0\,
      I2 => \diff_sec[1]_i_23_n_0\,
      I3 => \diff_csec[5]_i_34_n_0\,
      I4 => \diff_csec[5]_i_35_n_0\,
      I5 => \diff_csec[6]_i_35_n_0\,
      O => \diff_csec[5]_i_9_n_0\
    );
\diff_csec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008808AAAAAAAA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_csec[6]_i_2_n_0\,
      I2 => \diff_csec[6]_i_3_n_0\,
      I3 => \diff_csec[6]_i_4_n_0\,
      I4 => \diff_csec[6]_i_5_n_0\,
      I5 => \diff_csec[6]_i_6_n_0\,
      O => \diff_csec[6]_i_1_n_0\
    );
\diff_csec[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4474777744444444"
    )
        port map (
      I0 => \diff_csec[6]_i_40_n_0\,
      I1 => \diff_csec[2]_i_11_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[4]_i_6_n_0\,
      I4 => \diff_sec[0]_i_19_n_0\,
      I5 => \diff_csec[6]_i_41_n_0\,
      O => \diff_csec[6]_i_10_n_0\
    );
\diff_csec[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88880800AAAAAAAA"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[2]_i_17_n_0\,
      I2 => \diff_sec[2]_i_12_n_0\,
      I3 => \diff_csec[7]_i_6_n_0\,
      I4 => \diff_sec[3]_i_10_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_csec[6]_i_11_n_0\
    );
\diff_csec[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555500000051"
    )
        port map (
      I0 => \diff_sec[4]_i_17_n_0\,
      I1 => \diff_sec[4]_i_22_n_0\,
      I2 => \diff_csec[6]_i_42_n_0\,
      I3 => \diff_csec[6]_i_43_n_0\,
      I4 => \diff_sec[4]_i_15_n_0\,
      I5 => \diff_sec[4]_i_16_n_0\,
      O => \diff_csec[6]_i_12_n_0\
    );
\diff_csec[6]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \diff_csec[6]_i_44_n_0\,
      I1 => \diff_csec[6]_i_45_n_0\,
      I2 => \diff_sec[1]_i_9_n_0\,
      O => \diff_csec[6]_i_13_n_0\
    );
\diff_csec[6]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_14_n_0\
    );
\diff_csec[6]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAA"
    )
        port map (
      I0 => \diff_sec[3]_i_15_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_sec[3]_i_11_n_0\,
      I3 => \diff_sec[4]_i_40_n_0\,
      O => \diff_csec[6]_i_15_n_0\
    );
\diff_csec[6]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_csec[7]_i_3_n_0\,
      I1 => \diff_csec[6]_i_46_n_0\,
      O => \diff_csec[6]_i_16_n_0\
    );
\diff_csec[6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00008808AAAAAAAA"
    )
        port map (
      I0 => \diff_csec[4]_i_12_n_0\,
      I1 => \diff_csec[6]_i_47_n_0\,
      I2 => \diff_csec[6]_i_48_n_0\,
      I3 => \diff_csec[6]_i_49_n_0\,
      I4 => \diff_csec[6]_i_50_n_0\,
      I5 => \diff_csec[6]_i_51_n_0\,
      O => \diff_csec[6]_i_17_n_0\
    );
\diff_csec[6]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[6]_i_52_n_0\,
      I1 => \diff_sec[1]_i_9_n_0\,
      O => \diff_csec[6]_i_18_n_0\
    );
\diff_csec[6]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \diff_sec[0]_i_14_n_0\,
      I1 => \diff_csec[6]_i_53_n_0\,
      I2 => \diff_sec[1]_i_18_n_0\,
      O => \diff_csec[6]_i_19_n_0\
    );
\diff_csec[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF444400F0"
    )
        port map (
      I0 => \diff_csec[6]_i_7_n_0\,
      I1 => \diff_csec[6]_i_8_n_0\,
      I2 => \diff_csec[6]_i_9_n_0\,
      I3 => \diff_csec[6]_i_10_n_0\,
      I4 => \diff_csec[6]_i_11_n_0\,
      I5 => \diff_csec[6]_i_12_n_0\,
      O => \diff_csec[6]_i_2_n_0\
    );
\diff_csec[6]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBABBAAAAAAAA"
    )
        port map (
      I0 => \diff_sec[1]_i_18_n_0\,
      I1 => \diff_csec[6]_i_54_n_0\,
      I2 => \diff_csec[6]_i_55_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      I4 => \diff_sec[2]_i_14_n_0\,
      I5 => \diff_csec[6]_i_56_n_0\,
      O => \diff_csec[6]_i_20_n_0\
    );
\diff_csec[6]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFD0C0D0FFFFFFFF"
    )
        port map (
      I0 => \diff_csec[6]_i_57_n_0\,
      I1 => \diff_csec[6]_i_58_n_0\,
      I2 => \diff_csec[6]_i_59_n_0\,
      I3 => \diff_csec[6]_i_60_n_0\,
      I4 => \diff_csec[6]_i_61_n_0\,
      I5 => \diff_csec[6]_i_54_n_0\,
      O => \diff_csec[6]_i_21_n_0\
    );
\diff_csec[6]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0EEE0000"
    )
        port map (
      I0 => \diff_csec[6]_i_62_n_0\,
      I1 => \diff_csec[4]_i_7_n_0\,
      I2 => \diff_csec[4]_i_10_n_0\,
      I3 => \diff_csec[6]_i_49_n_0\,
      I4 => \diff_csec[6]_i_12_n_0\,
      O => \diff_csec[6]_i_22_n_0\
    );
\diff_csec[6]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0D00"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_23_n_0\
    );
\diff_csec[6]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3A3A3F300A3A3"
    )
        port map (
      I0 => \diff_csec[6]_i_62_n_0\,
      I1 => \diff_csec[6]_i_49_n_0\,
      I2 => \diff_sec[1]_i_5_n_0\,
      I3 => \diff_csec[7]_i_3_n_0\,
      I4 => \diff_csec[7]_i_2_n_0\,
      I5 => \diff_csec[6]_i_63_n_0\,
      O => \diff_csec[6]_i_24_n_0\
    );
\diff_csec[6]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[6]_i_14_n_0\,
      I1 => \diff_sec[3]_i_4_n_0\,
      O => \diff_csec[6]_i_25_n_0\
    );
\diff_csec[6]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFBFFFF"
    )
        port map (
      I0 => \diff_sec[4]_i_8_n_0\,
      I1 => \diff_sec[4]_i_9_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[4]_i_11_n_0\,
      I4 => \diff_csec[6]_i_5_n_0\,
      O => \diff_csec[6]_i_26_n_0\
    );
\diff_csec[6]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[4]_i_41_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_27_n_0\
    );
\diff_csec[6]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \diff_sec[3]_i_4_n_0\,
      I1 => \diff_csec[6]_i_64_n_0\,
      I2 => \diff_sec[4]_i_2_n_0\,
      O => \diff_csec[6]_i_28_n_0\
    );
\diff_csec[6]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4777477747774070"
    )
        port map (
      I0 => \diff_csec[6]_i_62_n_0\,
      I1 => \diff_sec[1]_i_31_n_0\,
      I2 => \diff_sec[1]_i_30_n_0\,
      I3 => \diff_csec[6]_i_63_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      I5 => \diff_csec[6]_i_65_n_0\,
      O => \diff_csec[6]_i_29_n_0\
    );
\diff_csec[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F44FFFF"
    )
        port map (
      I0 => \diff_csec[6]_i_13_n_0\,
      I1 => \diff_csec[7]_i_3_n_0\,
      I2 => \diff_csec[6]_i_14_n_0\,
      I3 => \diff_csec[6]_i_15_n_0\,
      I4 => \diff_csec[6]_i_16_n_0\,
      O => \diff_csec[6]_i_3_n_0\
    );
\diff_csec[6]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F332E2200002E22"
    )
        port map (
      I0 => \diff_csec[6]_i_14_n_0\,
      I1 => \diff_sec[3]_i_5_n_0\,
      I2 => \diff_csec[6]_i_64_n_0\,
      I3 => \diff_csec[6]_i_66_n_0\,
      I4 => \diff_sec[0]_i_25_n_0\,
      I5 => \diff_csec[6]_i_49_n_0\,
      O => \diff_csec[6]_i_30_n_0\
    );
\diff_csec[6]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF808080"
    )
        port map (
      I0 => \diff_sec[0]_i_38_n_0\,
      I1 => \diff_sec[1]_i_28_n_0\,
      I2 => \diff_csec[6]_i_67_n_0\,
      I3 => \diff_csec[6]_i_68_n_0\,
      I4 => \diff_csec[6]_i_27_n_0\,
      I5 => \diff_sec[1]_i_29_n_0\,
      O => \diff_csec[6]_i_31_n_0\
    );
\diff_csec[6]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \diff_sec[2]_i_6_n_0\,
      I1 => \diff_sec[2]_i_14_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      O => \diff_csec[6]_i_32_n_0\
    );
\diff_csec[6]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F088FFFFF0880000"
    )
        port map (
      I0 => \diff_csec[6]_i_69_n_0\,
      I1 => \diff_csec[6]_i_58_n_0\,
      I2 => \diff_csec[6]_i_61_n_0\,
      I3 => \diff_sec[1]_i_22_n_0\,
      I4 => \diff_sec[1]_i_21_n_0\,
      I5 => \diff_csec[6]_i_70_n_0\,
      O => \diff_csec[6]_i_33_n_0\
    );
\diff_csec[6]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \diff_csec[6]_i_71_n_0\,
      I1 => \diff_sec[1]_i_23_n_0\,
      I2 => \diff_csec[6]_i_38_n_0\,
      I3 => \diff_csec[5]_i_33_n_0\,
      O => \diff_csec[6]_i_34_n_0\
    );
\diff_csec[6]_i_35\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[6]_i_12_n_0\,
      I1 => \diff_csec[4]_i_42_n_0\,
      O => \diff_csec[6]_i_35_n_0\
    );
\diff_csec[6]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFCC55CCF0"
    )
        port map (
      I0 => \diff_csec[6]_i_63_n_0\,
      I1 => \diff_csec[6]_i_39_n_0\,
      I2 => \diff_csec[6]_i_65_n_0\,
      I3 => \diff_sec[4]_i_19_n_0\,
      I4 => \diff_sec[4]_i_18_n_0\,
      I5 => \diff_sec[1]_i_23_n_0\,
      O => \diff_csec[6]_i_36_n_0\
    );
\diff_csec[6]_i_37\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[6]_i_72_n_0\,
      O => \diff_csec[6]_i_37_n_0\
    );
\diff_csec[6]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"56"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[4]_i_41_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_38_n_0\
    );
\diff_csec[6]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[2]_i_12_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_39_n_0\
    );
\diff_csec[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01110101FFFFFFFF"
    )
        port map (
      I0 => \diff_csec[6]_i_17_n_0\,
      I1 => \diff_csec[6]_i_18_n_0\,
      I2 => \diff_csec[6]_i_19_n_0\,
      I3 => \diff_csec[6]_i_20_n_0\,
      I4 => \diff_csec[6]_i_21_n_0\,
      I5 => \diff_csec[6]_i_22_n_0\,
      O => \diff_csec[6]_i_4_n_0\
    );
\diff_csec[6]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"550C550C550CF5FC"
    )
        port map (
      I0 => \diff_csec[6]_i_70_n_0\,
      I1 => \diff_csec[6]_i_73_n_0\,
      I2 => \diff_csec[6]_i_74_n_0\,
      I3 => \diff_sec[1]_i_11_n_0\,
      I4 => \diff_csec[7]_i_3_n_0\,
      I5 => \diff_csec[6]_i_67_n_0\,
      O => \diff_csec[6]_i_40_n_0\
    );
\diff_csec[6]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FACA"
    )
        port map (
      I0 => \diff_csec[6]_i_61_n_0\,
      I1 => \diff_csec[6]_i_58_n_0\,
      I2 => \diff_sec[1]_i_12_n_0\,
      I3 => \diff_sec[0]_i_19_n_0\,
      O => \diff_csec[6]_i_41_n_0\
    );
\diff_csec[6]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004500FFFFFFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_csec[7]_i_4_n_0\,
      O => \diff_csec[6]_i_42_n_0\
    );
\diff_csec[6]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      O => \diff_csec[6]_i_43_n_0\
    );
\diff_csec[6]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3FAFAFFF3FAFAF"
    )
        port map (
      I0 => \diff_csec[6]_i_73_n_0\,
      I1 => \diff_csec[6]_i_70_n_0\,
      I2 => \diff_sec[0]_i_43_n_0\,
      I3 => \diff_csec[6]_i_75_n_0\,
      I4 => \diff_sec[2]_i_10_n_0\,
      I5 => \diff_csec[6]_i_61_n_0\,
      O => \diff_csec[6]_i_44_n_0\
    );
\diff_csec[6]_i_45\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF30353F35"
    )
        port map (
      I0 => \diff_csec[6]_i_67_n_0\,
      I1 => \diff_csec[6]_i_64_n_0\,
      I2 => \diff_sec[1]_i_16_n_0\,
      I3 => \diff_sec[1]_i_15_n_0\,
      I4 => \diff_csec[6]_i_27_n_0\,
      I5 => \diff_sec[0]_i_43_n_0\,
      O => \diff_csec[6]_i_45_n_0\
    );
\diff_csec[6]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABBBAAAA"
    )
        port map (
      I0 => \diff_sec[3]_i_15_n_0\,
      I1 => \diff_sec[4]_i_23_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      I3 => \diff_sec[0]_i_32_n_0\,
      I4 => \diff_sec[4]_i_40_n_0\,
      O => \diff_csec[6]_i_46_n_0\
    );
\diff_csec[6]_i_47\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555553535555535F"
    )
        port map (
      I0 => \diff_csec[6]_i_63_n_0\,
      I1 => \diff_csec[6]_i_62_n_0\,
      I2 => \diff_sec[0]_i_30_n_0\,
      I3 => \diff_sec[3]_i_12_n_0\,
      I4 => \diff_csec[6]_i_76_n_0\,
      I5 => \diff_csec[6]_i_77_n_0\,
      O => \diff_csec[6]_i_47_n_0\
    );
\diff_csec[6]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000888"
    )
        port map (
      I0 => \diff_sec[4]_i_21_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_csec[7]_i_6_n_0\,
      I3 => \diff_sec[0]_i_32_n_0\,
      I4 => \diff_sec[0]_i_12_n_0\,
      O => \diff_csec[6]_i_48_n_0\
    );
\diff_csec[6]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      I2 => \diff_sec[0]_i_32_n_0\,
      O => \diff_csec[6]_i_49_n_0\
    );
\diff_csec[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0AFF8AFF8AFF8AFF"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[4]_i_7_n_0\,
      I2 => \diff_sec[4]_i_16_n_0\,
      I3 => \diff_sec[5]_i_5_n_0\,
      I4 => \diff_sec[4]_i_9_n_0\,
      I5 => \diff_csec[6]_i_23_n_0\,
      O => \diff_csec[6]_i_5_n_0\
    );
\diff_csec[6]_i_50\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_sec[0]_i_14_n_0\,
      I1 => \diff_sec[2]_i_11_n_0\,
      O => \diff_csec[6]_i_50_n_0\
    );
\diff_csec[6]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D000DF00D0FFDFFF"
    )
        port map (
      I0 => \diff_csec[6]_i_65_n_0\,
      I1 => \diff_sec[2]_i_11_n_0\,
      I2 => \diff_csec[3]_i_25_n_0\,
      I3 => \diff_sec[1]_i_8_n_0\,
      I4 => \diff_csec[6]_i_39_n_0\,
      I5 => \diff_csec[6]_i_38_n_0\,
      O => \diff_csec[6]_i_51_n_0\
    );
\diff_csec[6]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000DDDD808"
    )
        port map (
      I0 => \diff_sec[0]_i_28_n_0\,
      I1 => \diff_csec[6]_i_58_n_0\,
      I2 => \diff_sec[4]_i_3_n_0\,
      I3 => \diff_csec[6]_i_72_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_csec[4]_i_12_n_0\,
      O => \diff_csec[6]_i_52_n_0\
    );
\diff_csec[6]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3CCCCC335555CC33"
    )
        port map (
      I0 => \diff_csec[6]_i_64_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_sec[4]_i_41_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[3]_i_7_n_0\,
      I5 => \diff_sec[0]_i_33_n_0\,
      O => \diff_csec[6]_i_53_n_0\
    );
\diff_csec[6]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000808080808"
    )
        port map (
      I0 => \diff_sec[2]_i_17_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[5]_i_6_n_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_sec[1]_i_36_n_0\,
      I5 => \diff_sec[4]_i_12_n_0\,
      O => \diff_csec[6]_i_54_n_0\
    );
\diff_csec[6]_i_55\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \diff_sec[0]_i_35_n_0\,
      I1 => \diff_sec[2]_i_14_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[3]_i_10_n_0\,
      O => \diff_csec[6]_i_55_n_0\
    );
\diff_csec[6]_i_56\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00D5D5D5"
    )
        port map (
      I0 => \diff_csec[6]_i_67_n_0\,
      I1 => \diff_csec[7]_i_3_n_0\,
      I2 => \diff_sec[2]_i_17_n_0\,
      I3 => \diff_csec[6]_i_70_n_0\,
      I4 => \diff_sec[2]_i_9_n_0\,
      O => \diff_csec[6]_i_56_n_0\
    );
\diff_csec[6]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFEFAAAA"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_57_n_0\
    );
\diff_csec[6]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[0]_i_32_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_58_n_0\
    );
\diff_csec[6]_i_59\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_sec[4]_i_13_n_0\,
      I1 => \diff_sec[1]_i_17_n_0\,
      O => \diff_csec[6]_i_59_n_0\
    );
\diff_csec[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2E2E2EEEEEEE2E"
    )
        port map (
      I0 => \diff_csec[6]_i_24_n_0\,
      I1 => \diff_sec[0]_i_5_n_0\,
      I2 => \diff_csec[6]_i_25_n_0\,
      I3 => \diff_csec[6]_i_26_n_0\,
      I4 => \diff_csec[6]_i_27_n_0\,
      I5 => \diff_csec[6]_i_28_n_0\,
      O => \diff_csec[6]_i_6_n_0\
    );
\diff_csec[6]_i_60\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFBF"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[1]_i_34_n_0\,
      I3 => \diff_sec[4]_i_24_n_0\,
      O => \diff_csec[6]_i_60_n_0\
    );
\diff_csec[6]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"95"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[1]_i_20_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_61_n_0\
    );
\diff_csec[6]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[5]_i_44_n_0\,
      O => \diff_csec[6]_i_62_n_0\
    );
\diff_csec[6]_i_63\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"65"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_5_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_63_n_0\
    );
\diff_csec[6]_i_64\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[4]_i_11_n_0\,
      O => \diff_csec[6]_i_64_n_0\
    );
\diff_csec[6]_i_65\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[4]_i_38_n_0\,
      O => \diff_csec[6]_i_65_n_0\
    );
\diff_csec[6]_i_66\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \diff_sec[4]_i_12_n_0\,
      I1 => \diff_sec[3]_i_12_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      I3 => \diff_sec[4]_i_16_n_0\,
      O => \diff_csec[6]_i_66_n_0\
    );
\diff_csec[6]_i_67\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[5]_i_53_n_0\,
      O => \diff_csec[6]_i_67_n_0\
    );
\diff_csec[6]_i_68\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF22F2FFFF"
    )
        port map (
      I0 => \diff_sec[1]_i_35_n_0\,
      I1 => \diff_csec[6]_i_78_n_0\,
      I2 => \diff_csec[6]_i_66_n_0\,
      I3 => \diff_csec[6]_i_79_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_csec[6]_i_68_n_0\
    );
\diff_csec[6]_i_69\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5D550000"
    )
        port map (
      I0 => \diff_sec[1]_i_34_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_sec[0]_i_32_n_0\,
      I3 => \diff_sec[3]_i_11_n_0\,
      I4 => \diff_sec[5]_i_3_n_0\,
      O => \diff_csec[6]_i_69_n_0\
    );
\diff_csec[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACACACACACACAFA"
    )
        port map (
      I0 => \diff_csec[6]_i_29_n_0\,
      I1 => \diff_csec[6]_i_30_n_0\,
      I2 => \diff_csec[5]_i_13_n_0\,
      I3 => \diff_csec[6]_i_31_n_0\,
      I4 => \diff_csec[6]_i_32_n_0\,
      I5 => \diff_sec[2]_i_7_n_0\,
      O => \diff_csec[6]_i_7_n_0\
    );
\diff_csec[6]_i_70\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_5_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_csec[6]_i_70_n_0\
    );
\diff_csec[6]_i_71\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F2F0F0F0FFF0F0F"
    )
        port map (
      I0 => \diff_csec[6]_i_72_n_0\,
      I1 => \diff_sec[5]_i_4_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[5]_i_6_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[5]_i_3_n_0\,
      O => \diff_csec[6]_i_71_n_0\
    );
\diff_csec[6]_i_72\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8AAA"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      O => \diff_csec[6]_i_72_n_0\
    );
\diff_csec[6]_i_73\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_sec[2]_i_14_n_0\,
      O => \diff_csec[6]_i_73_n_0\
    );
\diff_csec[6]_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFF7F7"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[4]_i_7_n_0\,
      I3 => \diff_sec[0]_i_18_n_0\,
      I4 => \diff_sec[3]_i_12_n_0\,
      O => \diff_csec[6]_i_74_n_0\
    );
\diff_csec[6]_i_75\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"07FF"
    )
        port map (
      I0 => \diff_sec[3]_i_11_n_0\,
      I1 => \diff_csec[7]_i_5_n_0\,
      I2 => \diff_csec[7]_i_4_n_0\,
      I3 => \diff_csec[7]_i_7_n_0\,
      O => \diff_csec[6]_i_75_n_0\
    );
\diff_csec[6]_i_76\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
        port map (
      I0 => \diff_sec[4]_i_17_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[4]_i_15_n_0\,
      O => \diff_csec[6]_i_76_n_0\
    );
\diff_csec[6]_i_77\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \diff_sec[3]_i_11_n_0\,
      I1 => \diff_sec[1]_i_20_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      I3 => \diff_sec[3]_i_10_n_0\,
      O => \diff_csec[6]_i_77_n_0\
    );
\diff_csec[6]_i_78\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7F7F7FF"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_22_n_0\,
      I2 => \diff_sec[4]_i_16_n_0\,
      I3 => \diff_sec[4]_i_12_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      O => \diff_csec[6]_i_78_n_0\
    );
\diff_csec[6]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FBFF"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      I3 => \diff_csec[7]_i_12_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_csec[7]_i_4_n_0\,
      O => \diff_csec[6]_i_79_n_0\
    );
\diff_csec[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDDFDDDD"
    )
        port map (
      I0 => \diff_sec[2]_i_7_n_0\,
      I1 => \diff_csec[6]_i_33_n_0\,
      I2 => \diff_csec[6]_i_34_n_0\,
      I3 => \diff_csec[6]_i_35_n_0\,
      I4 => \diff_csec[6]_i_36_n_0\,
      O => \diff_csec[6]_i_8_n_0\
    );
\diff_csec[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0535FF35FFFFFFFF"
    )
        port map (
      I0 => \diff_csec[6]_i_37_n_0\,
      I1 => \diff_csec[6]_i_38_n_0\,
      I2 => \diff_sec[0]_i_20_n_0\,
      I3 => \diff_sec[0]_i_9_n_0\,
      I4 => \diff_csec[6]_i_39_n_0\,
      I5 => \diff_sec[4]_i_6_n_0\,
      O => \diff_csec[6]_i_9_n_0\
    );
\diff_csec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000002020002000"
    )
        port map (
      I0 => \diff_csec[7]_i_2_n_0\,
      I1 => \diff_csec[7]_i_3_n_0\,
      I2 => \^lap_count_reg[1]_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_csec[7]_i_5_n_0\,
      I5 => \diff_csec[7]_i_6_n_0\,
      O => \diff_csec[7]_i_1_n_0\
    );
\diff_csec[7]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(7),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(7),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(7),
      O => \diff_csec[7]_i_10_n_0\
    );
\diff_csec[7]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      O => \diff_csec[7]_i_100_n_0\
    );
\diff_csec[7]_i_101\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_101_n_0\
    );
\diff_csec[7]_i_102\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \^co\(0),
      I2 => \total_prev__0\(6),
      O => \diff_csec[7]_i_102_n_0\
    );
\diff_csec[7]_i_103\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_103_n_0\
    );
\diff_csec[7]_i_104\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      O => \diff_csec[7]_i_104_n_0\
    );
\diff_csec[7]_i_105\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      O => \diff_csec[7]_i_105_n_0\
    );
\diff_csec[7]_i_106\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A56996A5"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(7),
      I3 => \total_tmp__0\(6),
      I4 => \total_prev__0\(6),
      O => \diff_csec[7]_i_106_n_0\
    );
\diff_csec[7]_i_107\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      I2 => \total_tmp__0\(6),
      I3 => \^co\(0),
      I4 => \total_prev__0\(6),
      O => \diff_csec[7]_i_107_n_0\
    );
\diff_csec[7]_i_108\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      I2 => \total_prev__0\(4),
      I3 => \^co\(0),
      I4 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_108_n_0\
    );
\diff_csec[7]_i_109\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \total_prev__0\(4),
      O => \diff_csec[7]_i_109_n_0\
    );
\diff_csec[7]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(7),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(7),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(7),
      O => \diff_csec[7]_i_11_n_0\
    );
\diff_csec[7]_i_110\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880008"
    )
        port map (
      I0 => data5(4),
      I1 => data9(14),
      I2 => \diff_min[2]_i_5_n_0\,
      I3 => \diff_min[2]_i_6_n_0\,
      I4 => data9(13),
      O => \diff_csec[7]_i_110_n_0\
    );
\diff_csec[7]_i_111\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880008"
    )
        port map (
      I0 => data5(3),
      I1 => data9(14),
      I2 => \diff_min[2]_i_5_n_0\,
      I3 => \diff_min[2]_i_6_n_0\,
      I4 => data9(13),
      O => \diff_csec[7]_i_111_n_0\
    );
\diff_csec[7]_i_112\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880008"
    )
        port map (
      I0 => data5(2),
      I1 => data9(14),
      I2 => \diff_min[2]_i_5_n_0\,
      I3 => \diff_min[2]_i_6_n_0\,
      I4 => data9(13),
      O => \diff_csec[7]_i_112_n_0\
    );
\diff_csec[7]_i_113\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(6),
      I1 => total_prev_n_99,
      O => \diff_csec[7]_i_113_n_0\
    );
\diff_csec[7]_i_114\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(5),
      I1 => total_prev_n_100,
      O => \diff_csec[7]_i_114_n_0\
    );
\diff_csec[7]_i_115\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => prev_csec(4),
      I1 => total_prev_n_101,
      O => \diff_csec[7]_i_115_n_0\
    );
\diff_csec[7]_i_116\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(6),
      I1 => total_tmp_n_99,
      O => \diff_csec[7]_i_116_n_0\
    );
\diff_csec[7]_i_117\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(5),
      I1 => total_tmp_n_100,
      O => \diff_csec[7]_i_117_n_0\
    );
\diff_csec[7]_i_118\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(4),
      I1 => total_tmp_n_101,
      O => \diff_csec[7]_i_118_n_0\
    );
\diff_csec[7]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A3A0A0A3A3A3A3A"
    )
        port map (
      I0 => \diff_csec_reg[7]_i_8_n_7\,
      I1 => \diff_csec[7]_i_32_n_0\,
      I2 => \diff_min[0]_i_2_n_0\,
      I3 => \diff_csec[7]_i_33_n_0\,
      I4 => \diff_csec[7]_i_34_n_0\,
      I5 => \diff_min[1]_i_3_n_0\,
      O => \diff_csec[7]_i_12_n_0\
    );
\diff_csec[7]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB00000FFB0FFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_35_n_0\,
      I1 => \diff_csec[7]_i_36_n_0\,
      I2 => \diff_min[1]_i_3_n_0\,
      I3 => \diff_csec[7]_i_37_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_csec_reg[1]_i_2_n_4\,
      O => \diff_csec[7]_i_13_n_0\
    );
\diff_csec[7]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A3A0A0A3A3A3A3A"
    )
        port map (
      I0 => \diff_csec_reg[1]_i_2_n_5\,
      I1 => \diff_csec[7]_i_38_n_0\,
      I2 => \diff_min[0]_i_2_n_0\,
      I3 => \diff_csec[7]_i_39_n_0\,
      I4 => \diff_csec[7]_i_40_n_0\,
      I5 => \diff_min[1]_i_3_n_0\,
      O => \diff_csec[7]_i_14_n_0\
    );
\diff_csec[7]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"220200002202FFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_41_n_0\,
      I1 => \diff_csec[7]_i_42_n_0\,
      I2 => \diff_min[1]_i_3_n_0\,
      I3 => \diff_csec[7]_i_43_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_csec_reg[7]_i_8_n_6\,
      O => \diff_csec[7]_i_15_n_0\
    );
\diff_csec[7]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(6),
      O => \diff_csec[7]_i_16_n_0\
    );
\diff_csec[7]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_17_n_0\
    );
\diff_csec[7]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_18_n_0\
    );
\diff_csec[7]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      O => \diff_csec[7]_i_19_n_0\
    );
\diff_csec[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAAAA"
    )
        port map (
      I0 => \diff_sec[4]_i_8_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_csec[7]_i_6_n_0\,
      I3 => \diff_csec[7]_i_5_n_0\,
      I4 => \diff_csec[7]_i_7_n_0\,
      O => \diff_csec[7]_i_2_n_0\
    );
\diff_csec[7]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \total_prev__0\(6),
      I2 => \total_tmp__0\(7),
      I3 => \^co\(0),
      I4 => \total_prev__0\(7),
      O => \diff_csec[7]_i_20_n_0\
    );
\diff_csec[7]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      I2 => \total_tmp__0\(6),
      I3 => \^co\(0),
      I4 => \total_prev__0\(6),
      O => \diff_csec[7]_i_21_n_0\
    );
\diff_csec[7]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B847"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      I3 => \total_prev__0\(5),
      I4 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_22_n_0\
    );
\diff_csec[7]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \total_prev__0\(4),
      O => \diff_csec[7]_i_23_n_0\
    );
\diff_csec[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[5]_i_6_n_0\,
      O => \diff_csec[7]_i_3_n_0\
    );
\diff_csec[7]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1100000F11FFFF"
    )
        port map (
      I0 => data3(4),
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => data2(4),
      I3 => \diff_min[2]_i_4_n_0\,
      I4 => \diff_min[3]_i_4_n_0\,
      I5 => data1(4),
      O => \diff_csec[7]_i_32_n_0\
    );
\diff_csec[7]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001D1D003F"
    )
        port map (
      I0 => data8(4),
      I1 => \diff_min[0]_i_5_n_0\,
      I2 => data9(4),
      I3 => data7(4),
      I4 => \diff_min[1]_i_2_n_0\,
      I5 => \diff_min[0]_i_6_n_0\,
      O => \diff_csec[7]_i_33_n_0\
    );
\diff_csec[7]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFD0D0D0FFD0"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data6(4),
      I2 => \diff_min[2]_i_3_n_0\,
      I3 => data4(4),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => \diff_csec[7]_i_110_n_0\,
      O => \diff_csec[7]_i_34_n_0\
    );
\diff_csec[7]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001B1B00FF"
    )
        port map (
      I0 => \diff_min[0]_i_5_n_0\,
      I1 => data8(3),
      I2 => data9(3),
      I3 => data7(3),
      I4 => \diff_min[1]_i_2_n_0\,
      I5 => \diff_min[0]_i_6_n_0\,
      O => \diff_csec[7]_i_35_n_0\
    );
\diff_csec[7]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFD0D0D0FFD0"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data6(3),
      I2 => \diff_min[2]_i_3_n_0\,
      I3 => data4(3),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => \diff_csec[7]_i_111_n_0\,
      O => \diff_csec[7]_i_36_n_0\
    );
\diff_csec[7]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1100000F11FFFF"
    )
        port map (
      I0 => data3(3),
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => data2(3),
      I3 => \diff_min[2]_i_4_n_0\,
      I4 => \diff_min[3]_i_4_n_0\,
      I5 => data1(3),
      O => \diff_csec[7]_i_37_n_0\
    );
\diff_csec[7]_i_38\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F1100000F11FFFF"
    )
        port map (
      I0 => data3(2),
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => data2(2),
      I3 => \diff_min[2]_i_4_n_0\,
      I4 => \diff_min[3]_i_4_n_0\,
      I5 => data1(2),
      O => \diff_csec[7]_i_38_n_0\
    );
\diff_csec[7]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001B1B00FF"
    )
        port map (
      I0 => \diff_min[0]_i_5_n_0\,
      I1 => data8(2),
      I2 => data9(2),
      I3 => data7(2),
      I4 => \diff_min[1]_i_2_n_0\,
      I5 => \diff_min[0]_i_6_n_0\,
      O => \diff_csec[7]_i_39_n_0\
    );
\diff_csec[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2EEE2EEEEEEEE"
    )
        port map (
      I0 => \diff_csec_reg[7]_i_8_n_4\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_csec[7]_i_9_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_csec[7]_i_10_n_0\,
      I5 => \diff_csec[7]_i_11_n_0\,
      O => \diff_csec[7]_i_4_n_0\
    );
\diff_csec[7]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFD0D0D0FFD0"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data6(2),
      I2 => \diff_min[2]_i_3_n_0\,
      I3 => data4(2),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => \diff_csec[7]_i_112_n_0\,
      O => \diff_csec[7]_i_40_n_0\
    );
\diff_csec[7]_i_41\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(5),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(5),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(5),
      O => \diff_csec[7]_i_41_n_0\
    );
\diff_csec[7]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404045404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(5),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data8(5),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data9(5),
      O => \diff_csec[7]_i_42_n_0\
    );
\diff_csec[7]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(5),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(5),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(5),
      O => \diff_csec[7]_i_43_n_0\
    );
\diff_csec[7]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(6),
      O => \diff_csec[7]_i_46_n_0\
    );
\diff_csec[7]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_47_n_0\
    );
\diff_csec[7]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_48_n_0\
    );
\diff_csec[7]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => p_1_in(4)
    );
\diff_csec[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      O => \diff_csec[7]_i_5_n_0\
    );
\diff_csec[7]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \total_prev__0\(6),
      I2 => \total_tmp__0\(7),
      I3 => \^co\(0),
      I4 => \total_prev__0\(7),
      O => \diff_csec[7]_i_50_n_0\
    );
\diff_csec[7]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B847"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      I3 => \total_prev__0\(6),
      I4 => \total_tmp__0\(6),
      O => \diff_csec[7]_i_51_n_0\
    );
\diff_csec[7]_i_52\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      O => \diff_csec[7]_i_52_n_0\
    );
\diff_csec[7]_i_53\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_53_n_0\
    );
\diff_csec[7]_i_54\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \total_prev__0\(7),
      O => \diff_csec[7]_i_54_n_0\
    );
\diff_csec[7]_i_55\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"18"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_55_n_0\
    );
\diff_csec[7]_i_56\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_56_n_0\
    );
\diff_csec[7]_i_57\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      O => \diff_csec[7]_i_57_n_0\
    );
\diff_csec[7]_i_58\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(7),
      I3 => \total_prev__0\(6),
      I4 => \total_tmp__0\(6),
      O => \diff_csec[7]_i_58_n_0\
    );
\diff_csec[7]_i_59\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      I2 => \total_tmp__0\(6),
      I3 => \^co\(0),
      I4 => \total_prev__0\(6),
      O => \diff_csec[7]_i_59_n_0\
    );
\diff_csec[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      O => \diff_csec[7]_i_6_n_0\
    );
\diff_csec[7]_i_60\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B847"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      I3 => \total_prev__0\(5),
      I4 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_60_n_0\
    );
\diff_csec[7]_i_61\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \total_prev__0\(4),
      O => \diff_csec[7]_i_61_n_0\
    );
\diff_csec[7]_i_62\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \^co\(0),
      I2 => \total_prev__0\(6),
      O => \diff_csec[7]_i_62_n_0\
    );
\diff_csec[7]_i_63\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \total_prev__0\(6),
      O => \diff_csec[7]_i_63_n_0\
    );
\diff_csec[7]_i_64\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_64_n_0\
    );
\diff_csec[7]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      O => \diff_csec[7]_i_65_n_0\
    );
\diff_csec[7]_i_66\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A56996A5"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(7),
      I3 => \total_tmp__0\(6),
      I4 => \total_prev__0\(6),
      O => \diff_csec[7]_i_66_n_0\
    );
\diff_csec[7]_i_67\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A69965A"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(6),
      I3 => \total_tmp__0\(5),
      I4 => \total_prev__0\(5),
      O => \diff_csec[7]_i_67_n_0\
    );
\diff_csec[7]_i_68\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"47B8B847"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      I3 => \total_prev__0\(5),
      I4 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_68_n_0\
    );
\diff_csec[7]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \total_prev__0\(4),
      O => \diff_csec[7]_i_69_n_0\
    );
\diff_csec[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \diff_sec[4]_i_12_n_0\,
      I1 => \diff_sec[4]_i_22_n_0\,
      I2 => \diff_sec[3]_i_12_n_0\,
      O => \diff_csec[7]_i_7_n_0\
    );
\diff_csec[7]_i_70\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \total_prev__0\(7),
      O => \diff_csec[7]_i_70_n_0\
    );
\diff_csec[7]_i_71\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_71_n_0\
    );
\diff_csec[7]_i_72\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      O => \diff_csec[7]_i_72_n_0\
    );
\diff_csec[7]_i_73\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \^co\(0),
      I2 => \total_prev__0\(4),
      O => \diff_csec[7]_i_73_n_0\
    );
\diff_csec[7]_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(7),
      I3 => \total_prev__0\(6),
      I4 => \total_tmp__0\(6),
      O => \diff_csec[7]_i_74_n_0\
    );
\diff_csec[7]_i_75\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(6),
      I3 => \total_tmp__0\(5),
      I4 => \total_prev__0\(5),
      O => \diff_csec[7]_i_75_n_0\
    );
\diff_csec[7]_i_76\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      I2 => \total_prev__0\(4),
      I3 => \^co\(0),
      I4 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_76_n_0\
    );
\diff_csec[7]_i_77\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(4),
      I1 => \total_prev__0\(4),
      O => \diff_csec[7]_i_77_n_0\
    );
\diff_csec[7]_i_78\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(6),
      O => \diff_csec[7]_i_78_n_0\
    );
\diff_csec[7]_i_79\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \^co\(0),
      I2 => \total_prev__0\(6),
      O => \diff_csec[7]_i_79_n_0\
    );
\diff_csec[7]_i_80\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_80_n_0\
    );
\diff_csec[7]_i_81\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_81_n_0\
    );
\diff_csec[7]_i_82\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C5AC3A5"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \total_tmp__0\(6),
      I2 => \total_tmp__0\(7),
      I3 => \^co\(0),
      I4 => \total_prev__0\(7),
      O => \diff_csec[7]_i_82_n_0\
    );
\diff_csec[7]_i_83\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \total_prev__0\(6),
      O => \diff_csec[7]_i_83_n_0\
    );
\diff_csec[7]_i_84\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_84_n_0\
    );
\diff_csec[7]_i_85\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_85_n_0\
    );
\diff_csec[7]_i_86\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \^co\(0),
      I2 => \total_prev__0\(7),
      O => \diff_csec[7]_i_86_n_0\
    );
\diff_csec[7]_i_87\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \^co\(0),
      I2 => \total_prev__0\(6),
      O => p_1_in(6)
    );
\diff_csec[7]_i_88\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_88_n_0\
    );
\diff_csec[7]_i_89\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_89_n_0\
    );
\diff_csec[7]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404045404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(7),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data8(7),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data9(7),
      O => \diff_csec[7]_i_9_n_0\
    );
\diff_csec[7]_i_90\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \total_prev__0\(7),
      O => \diff_csec[7]_i_90_n_0\
    );
\diff_csec[7]_i_91\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \total_tmp__0\(6),
      O => \diff_csec[7]_i_91_n_0\
    );
\diff_csec[7]_i_92\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_92_n_0\
    );
\diff_csec[7]_i_93\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_93_n_0\
    );
\diff_csec[7]_i_94\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \^co\(0),
      I2 => \total_prev__0\(6),
      O => \diff_csec[7]_i_94_n_0\
    );
\diff_csec[7]_i_95\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_csec[7]_i_95_n_0\
    );
\diff_csec[7]_i_96\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_96_n_0\
    );
\diff_csec[7]_i_97\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => \diff_csec[7]_i_97_n_0\
    );
\diff_csec[7]_i_98\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2D4BD2B4"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \total_tmp__0\(6),
      I2 => \total_tmp__0\(7),
      I3 => \^co\(0),
      I4 => \total_prev__0\(7),
      O => \diff_csec[7]_i_98_n_0\
    );
\diff_csec[7]_i_99\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"99966696"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \total_prev__0\(6),
      I2 => \total_prev__0\(5),
      I3 => \^co\(0),
      I4 => \total_tmp__0\(5),
      O => \diff_csec[7]_i_99_n_0\
    );
\diff_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[0]_i_1_n_0\,
      Q => diff_csec(0)
    );
\diff_csec_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[0]_i_5_n_0\,
      CO(2) => \diff_csec_reg[0]_i_5_n_1\,
      CO(1) => \diff_csec_reg[0]_i_5_n_2\,
      CO(0) => \diff_csec_reg[0]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => prev_csec(3 downto 0),
      O(3 downto 0) => \total_prev__0\(3 downto 0),
      S(3) => \diff_csec[0]_i_8_n_0\,
      S(2) => \diff_csec[0]_i_9_n_0\,
      S(1) => \diff_csec[0]_i_10_n_0\,
      S(0) => \diff_csec[0]_i_11_n_0\
    );
\diff_csec_reg[0]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[0]_i_6_n_0\,
      CO(2) => \diff_csec_reg[0]_i_6_n_1\,
      CO(1) => \diff_csec_reg[0]_i_6_n_2\,
      CO(0) => \diff_csec_reg[0]_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => tmp_csec(3 downto 0),
      O(3 downto 0) => \total_tmp__0\(3 downto 0),
      S(3) => \diff_csec[0]_i_12_n_0\,
      S(2) => \diff_csec[0]_i_13_n_0\,
      S(1) => \diff_csec[0]_i_14_n_0\,
      S(0) => \diff_csec[0]_i_15_n_0\
    );
\diff_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[1]_i_1_n_0\,
      Q => diff_csec(1)
    );
\diff_csec_reg[1]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_13_n_0\,
      CO(2) => \diff_csec_reg[1]_i_13_n_1\,
      CO(1) => \diff_csec_reg[1]_i_13_n_2\,
      CO(0) => \diff_csec_reg[1]_i_13_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_18_n_0\,
      DI(2) => \diff_csec[1]_i_19_n_0\,
      DI(1) => \diff_csec[1]_i_20_n_0\,
      DI(0) => \diff_csec[1]_i_21_n_0\,
      O(3 downto 1) => data1(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_13_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_22_n_0\,
      S(2) => \diff_csec[1]_i_23_n_0\,
      S(1) => \diff_csec[1]_i_24_n_0\,
      S(0) => \diff_csec[1]_i_25_n_0\
    );
\diff_csec_reg[1]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_16_n_0\,
      CO(2) => \diff_csec_reg[1]_i_16_n_1\,
      CO(1) => \diff_csec_reg[1]_i_16_n_2\,
      CO(0) => \diff_csec_reg[1]_i_16_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_32_n_0\,
      DI(2) => \diff_csec[1]_i_33_n_0\,
      DI(1) => \diff_csec[1]_i_34_n_0\,
      DI(0) => \diff_csec[1]_i_35_n_0\,
      O(3 downto 1) => data2(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_16_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_36_n_0\,
      S(2) => \diff_csec[1]_i_37_n_0\,
      S(1) => \diff_csec[1]_i_38_n_0\,
      S(0) => \diff_csec[1]_i_39_n_0\
    );
\diff_csec_reg[1]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_17_n_0\,
      CO(2) => \diff_csec_reg[1]_i_17_n_1\,
      CO(1) => \diff_csec_reg[1]_i_17_n_2\,
      CO(0) => \diff_csec_reg[1]_i_17_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_40_n_0\,
      DI(2) => \diff_csec[1]_i_41_n_0\,
      DI(1) => \diff_csec[1]_i_42_n_0\,
      DI(0) => \diff_csec[1]_i_43_n_0\,
      O(3 downto 1) => data3(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_17_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_44_n_0\,
      S(2) => \diff_csec[1]_i_45_n_0\,
      S(1) => \diff_csec[1]_i_46_n_0\,
      S(0) => \diff_csec[1]_i_47_n_0\
    );
\diff_csec_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_2_n_0\,
      CO(2) => \diff_csec_reg[1]_i_2_n_1\,
      CO(1) => \diff_csec_reg[1]_i_2_n_2\,
      CO(0) => \diff_csec_reg[1]_i_2_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_4_n_0\,
      DI(2) => \diff_csec[1]_i_5_n_0\,
      DI(1) => \diff_csec[1]_i_6_n_0\,
      DI(0) => \diff_csec[1]_i_7_n_0\,
      O(3) => \diff_csec_reg[1]_i_2_n_4\,
      O(2) => \diff_csec_reg[1]_i_2_n_5\,
      O(1) => \diff_csec_reg[1]_i_2_n_6\,
      O(0) => \NLW_diff_csec_reg[1]_i_2_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_8_n_0\,
      S(2) => \diff_csec[1]_i_9_n_0\,
      S(1) => \diff_csec[1]_i_10_n_0\,
      S(0) => \diff_csec[1]_i_11_n_0\
    );
\diff_csec_reg[1]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_26_n_0\,
      CO(2) => \diff_csec_reg[1]_i_26_n_1\,
      CO(1) => \diff_csec_reg[1]_i_26_n_2\,
      CO(0) => \diff_csec_reg[1]_i_26_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_48_n_0\,
      DI(2) => \diff_csec[1]_i_49_n_0\,
      DI(1) => \diff_csec[1]_i_50_n_0\,
      DI(0) => \diff_csec[1]_i_51_n_0\,
      O(3 downto 0) => data9(3 downto 0),
      S(3) => \diff_csec[1]_i_52_n_0\,
      S(2) => \diff_csec[1]_i_53_n_0\,
      S(1) => \diff_csec[1]_i_54_n_0\,
      S(0) => \diff_csec[1]_i_55_n_0\
    );
\diff_csec_reg[1]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_27_n_0\,
      CO(2) => \diff_csec_reg[1]_i_27_n_1\,
      CO(1) => \diff_csec_reg[1]_i_27_n_2\,
      CO(0) => \diff_csec_reg[1]_i_27_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => p_1_in(3 downto 0),
      O(3 downto 1) => data8(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_27_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_60_n_0\,
      S(2) => \diff_csec[1]_i_61_n_0\,
      S(1) => \diff_csec[1]_i_62_n_0\,
      S(0) => \diff_csec[1]_i_63_n_0\
    );
\diff_csec_reg[1]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_28_n_0\,
      CO(2) => \diff_csec_reg[1]_i_28_n_1\,
      CO(1) => \diff_csec_reg[1]_i_28_n_2\,
      CO(0) => \diff_csec_reg[1]_i_28_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_64_n_0\,
      DI(2) => \diff_csec[1]_i_65_n_0\,
      DI(1) => \diff_csec[1]_i_66_n_0\,
      DI(0) => \diff_csec[1]_i_67_n_0\,
      O(3 downto 1) => data7(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_28_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_68_n_0\,
      S(2) => \diff_csec[1]_i_69_n_0\,
      S(1) => \diff_csec[1]_i_70_n_0\,
      S(0) => \diff_csec[1]_i_71_n_0\
    );
\diff_csec_reg[1]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_29_n_0\,
      CO(2) => \diff_csec_reg[1]_i_29_n_1\,
      CO(1) => \diff_csec_reg[1]_i_29_n_2\,
      CO(0) => \diff_csec_reg[1]_i_29_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_72_n_0\,
      DI(2) => \diff_csec[1]_i_73_n_0\,
      DI(1) => \diff_csec[1]_i_74_n_0\,
      DI(0) => \diff_csec[1]_i_75_n_0\,
      O(3 downto 1) => data6(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_29_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_76_n_0\,
      S(2) => \diff_csec[1]_i_77_n_0\,
      S(1) => \diff_csec[1]_i_78_n_0\,
      S(0) => \diff_csec[1]_i_79_n_0\
    );
\diff_csec_reg[1]_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_30_n_0\,
      CO(2) => \diff_csec_reg[1]_i_30_n_1\,
      CO(1) => \diff_csec_reg[1]_i_30_n_2\,
      CO(0) => \diff_csec_reg[1]_i_30_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_80_n_0\,
      DI(2) => \diff_csec[1]_i_81_n_0\,
      DI(1) => \diff_csec[1]_i_82_n_0\,
      DI(0) => \diff_csec[1]_i_83_n_0\,
      O(3 downto 1) => data5(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_30_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_84_n_0\,
      S(2) => \diff_csec[1]_i_85_n_0\,
      S(1) => \diff_csec[1]_i_86_n_0\,
      S(0) => \diff_csec[1]_i_87_n_0\
    );
\diff_csec_reg[1]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec_reg[1]_i_31_n_0\,
      CO(2) => \diff_csec_reg[1]_i_31_n_1\,
      CO(1) => \diff_csec_reg[1]_i_31_n_2\,
      CO(0) => \diff_csec_reg[1]_i_31_n_3\,
      CYINIT => '1',
      DI(3) => \diff_csec[1]_i_88_n_0\,
      DI(2) => \diff_csec[1]_i_89_n_0\,
      DI(1) => \diff_csec[1]_i_90_n_0\,
      DI(0) => \diff_csec[1]_i_91_n_0\,
      O(3 downto 1) => data4(3 downto 1),
      O(0) => \NLW_diff_csec_reg[1]_i_31_O_UNCONNECTED\(0),
      S(3) => \diff_csec[1]_i_92_n_0\,
      S(2) => \diff_csec[1]_i_93_n_0\,
      S(1) => \diff_csec[1]_i_94_n_0\,
      S(0) => \diff_csec[1]_i_95_n_0\
    );
\diff_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[2]_i_1_n_0\,
      Q => diff_csec(2)
    );
\diff_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[3]_i_1_n_0\,
      Q => diff_csec(3)
    );
\diff_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[4]_i_1_n_0\,
      Q => diff_csec(4)
    );
\diff_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[5]_i_1_n_0\,
      Q => diff_csec(5)
    );
\diff_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[6]_i_1_n_0\,
      Q => diff_csec(6)
    );
\diff_csec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_csec[7]_i_1_n_0\,
      Q => diff_csec(7)
    );
\diff_csec_reg[7]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_28_n_0\,
      CO(3) => \diff_csec_reg[7]_i_24_n_0\,
      CO(2) => \diff_csec_reg[7]_i_24_n_1\,
      CO(1) => \diff_csec_reg[7]_i_24_n_2\,
      CO(0) => \diff_csec_reg[7]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_46_n_0\,
      DI(2) => \diff_csec[7]_i_47_n_0\,
      DI(1) => \diff_csec[7]_i_48_n_0\,
      DI(0) => p_1_in(4),
      O(3 downto 0) => data7(7 downto 4),
      S(3) => \diff_csec[7]_i_50_n_0\,
      S(2) => \diff_csec[7]_i_51_n_0\,
      S(1) => \diff_csec[7]_i_52_n_0\,
      S(0) => \diff_csec[7]_i_53_n_0\
    );
\diff_csec_reg[7]_i_25\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_27_n_0\,
      CO(3) => \diff_csec_reg[7]_i_25_n_0\,
      CO(2) => \diff_csec_reg[7]_i_25_n_1\,
      CO(1) => \diff_csec_reg[7]_i_25_n_2\,
      CO(0) => \diff_csec_reg[7]_i_25_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_54_n_0\,
      DI(2) => \diff_csec[7]_i_55_n_0\,
      DI(1) => \diff_csec[7]_i_56_n_0\,
      DI(0) => \diff_csec[7]_i_57_n_0\,
      O(3 downto 0) => data8(7 downto 4),
      S(3) => \diff_csec[7]_i_58_n_0\,
      S(2) => \diff_csec[7]_i_59_n_0\,
      S(1) => \diff_csec[7]_i_60_n_0\,
      S(0) => \diff_csec[7]_i_61_n_0\
    );
\diff_csec_reg[7]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_31_n_0\,
      CO(3) => \diff_csec_reg[7]_i_26_n_0\,
      CO(2) => \diff_csec_reg[7]_i_26_n_1\,
      CO(1) => \diff_csec_reg[7]_i_26_n_2\,
      CO(0) => \diff_csec_reg[7]_i_26_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_62_n_0\,
      DI(2) => \diff_csec[7]_i_63_n_0\,
      DI(1) => \diff_csec[7]_i_64_n_0\,
      DI(0) => \diff_csec[7]_i_65_n_0\,
      O(3 downto 0) => data4(7 downto 4),
      S(3) => \diff_csec[7]_i_66_n_0\,
      S(2) => \diff_csec[7]_i_67_n_0\,
      S(1) => \diff_csec[7]_i_68_n_0\,
      S(0) => \diff_csec[7]_i_69_n_0\
    );
\diff_csec_reg[7]_i_27\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_29_n_0\,
      CO(3) => \diff_csec_reg[7]_i_27_n_0\,
      CO(2) => \diff_csec_reg[7]_i_27_n_1\,
      CO(1) => \diff_csec_reg[7]_i_27_n_2\,
      CO(0) => \diff_csec_reg[7]_i_27_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_70_n_0\,
      DI(2) => \diff_csec[7]_i_71_n_0\,
      DI(1) => \diff_csec[7]_i_72_n_0\,
      DI(0) => \diff_csec[7]_i_73_n_0\,
      O(3 downto 0) => data6(7 downto 4),
      S(3) => \diff_csec[7]_i_74_n_0\,
      S(2) => \diff_csec[7]_i_75_n_0\,
      S(1) => \diff_csec[7]_i_76_n_0\,
      S(0) => \diff_csec[7]_i_77_n_0\
    );
\diff_csec_reg[7]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_30_n_0\,
      CO(3) => \diff_csec_reg[7]_i_28_n_0\,
      CO(2) => \diff_csec_reg[7]_i_28_n_1\,
      CO(1) => \diff_csec_reg[7]_i_28_n_2\,
      CO(0) => \diff_csec_reg[7]_i_28_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_78_n_0\,
      DI(2) => \diff_csec[7]_i_79_n_0\,
      DI(1) => \diff_csec[7]_i_80_n_0\,
      DI(0) => \diff_csec[7]_i_81_n_0\,
      O(3 downto 0) => data5(7 downto 4),
      S(3) => \diff_csec[7]_i_82_n_0\,
      S(2) => \diff_csec[7]_i_83_n_0\,
      S(1) => \diff_csec[7]_i_84_n_0\,
      S(0) => \diff_csec[7]_i_85_n_0\
    );
\diff_csec_reg[7]_i_29\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_13_n_0\,
      CO(3) => \diff_csec_reg[7]_i_29_n_0\,
      CO(2) => \diff_csec_reg[7]_i_29_n_1\,
      CO(1) => \diff_csec_reg[7]_i_29_n_2\,
      CO(0) => \diff_csec_reg[7]_i_29_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_86_n_0\,
      DI(2) => p_1_in(6),
      DI(1) => \diff_csec[7]_i_88_n_0\,
      DI(0) => \diff_csec[7]_i_89_n_0\,
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \diff_csec[7]_i_90_n_0\,
      S(2) => \diff_csec[7]_i_91_n_0\,
      S(1) => \diff_csec[7]_i_92_n_0\,
      S(0) => \diff_csec[7]_i_93_n_0\
    );
\diff_csec_reg[7]_i_30\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_17_n_0\,
      CO(3) => \diff_csec_reg[7]_i_30_n_0\,
      CO(2) => \diff_csec_reg[7]_i_30_n_1\,
      CO(1) => \diff_csec_reg[7]_i_30_n_2\,
      CO(0) => \diff_csec_reg[7]_i_30_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_94_n_0\,
      DI(2) => \diff_csec[7]_i_95_n_0\,
      DI(1) => \diff_csec[7]_i_96_n_0\,
      DI(0) => \diff_csec[7]_i_97_n_0\,
      O(3 downto 0) => data3(7 downto 4),
      S(3) => \diff_csec[7]_i_98_n_0\,
      S(2) => \diff_csec[7]_i_99_n_0\,
      S(1) => \diff_csec[7]_i_100_n_0\,
      S(0) => \diff_csec[7]_i_101_n_0\
    );
\diff_csec_reg[7]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_16_n_0\,
      CO(3) => \diff_csec_reg[7]_i_31_n_0\,
      CO(2) => \diff_csec_reg[7]_i_31_n_1\,
      CO(1) => \diff_csec_reg[7]_i_31_n_2\,
      CO(0) => \diff_csec_reg[7]_i_31_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_102_n_0\,
      DI(2) => \diff_csec[7]_i_103_n_0\,
      DI(1) => \diff_csec[7]_i_104_n_0\,
      DI(0) => \diff_csec[7]_i_105_n_0\,
      O(3 downto 0) => data2(7 downto 4),
      S(3) => \diff_csec[7]_i_106_n_0\,
      S(2) => \diff_csec[7]_i_107_n_0\,
      S(1) => \diff_csec[7]_i_108_n_0\,
      S(0) => \diff_csec[7]_i_109_n_0\
    );
\diff_csec_reg[7]_i_44\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[0]_i_5_n_0\,
      CO(3) => \diff_csec_reg[7]_i_44_n_0\,
      CO(2) => \diff_csec_reg[7]_i_44_n_1\,
      CO(1) => \diff_csec_reg[7]_i_44_n_2\,
      CO(0) => \diff_csec_reg[7]_i_44_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => prev_csec(6 downto 4),
      O(3 downto 0) => \total_prev__0\(7 downto 4),
      S(3) => total_prev_n_98,
      S(2) => \diff_csec[7]_i_113_n_0\,
      S(1) => \diff_csec[7]_i_114_n_0\,
      S(0) => \diff_csec[7]_i_115_n_0\
    );
\diff_csec_reg[7]_i_45\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[0]_i_6_n_0\,
      CO(3) => \diff_csec_reg[7]_i_45_n_0\,
      CO(2) => \diff_csec_reg[7]_i_45_n_1\,
      CO(1) => \diff_csec_reg[7]_i_45_n_2\,
      CO(0) => \diff_csec_reg[7]_i_45_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_csec(6 downto 4),
      O(3 downto 0) => \total_tmp__0\(7 downto 4),
      S(3) => total_tmp_n_98,
      S(2) => \diff_csec[7]_i_116_n_0\,
      S(1) => \diff_csec[7]_i_117_n_0\,
      S(0) => \diff_csec[7]_i_118_n_0\
    );
\diff_csec_reg[7]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_2_n_0\,
      CO(3) => \diff_csec_reg[7]_i_8_n_0\,
      CO(2) => \diff_csec_reg[7]_i_8_n_1\,
      CO(1) => \diff_csec_reg[7]_i_8_n_2\,
      CO(0) => \diff_csec_reg[7]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => \diff_csec[7]_i_16_n_0\,
      DI(2) => \diff_csec[7]_i_17_n_0\,
      DI(1) => \diff_csec[7]_i_18_n_0\,
      DI(0) => \diff_csec[7]_i_19_n_0\,
      O(3) => \diff_csec_reg[7]_i_8_n_4\,
      O(2) => \diff_csec_reg[7]_i_8_n_5\,
      O(1) => \diff_csec_reg[7]_i_8_n_6\,
      O(0) => \diff_csec_reg[7]_i_8_n_7\,
      S(3) => \diff_csec[7]_i_20_n_0\,
      S(2) => \diff_csec[7]_i_21_n_0\,
      S(1) => \diff_csec[7]_i_22_n_0\,
      S(0) => \diff_csec[7]_i_23_n_0\
    );
\diff_min[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2AAA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_min[1]_i_4_n_0\,
      I3 => \diff_min[0]_i_3_n_0\,
      O => \diff_min[0]_i_1_n_0\
    );
\diff_min[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => data9(7),
      I1 => data9(4),
      I2 => data9(5),
      O => \diff_min[0]_i_10_n_0\
    );
\diff_min[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data9(13),
      I1 => data9(15),
      I2 => data9(17),
      I3 => data9(16),
      I4 => data9(18),
      I5 => data9(14),
      O => \diff_min[0]_i_11_n_0\
    );
\diff_min[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7777777F"
    )
        port map (
      I0 => data9(9),
      I1 => data9(10),
      I2 => data9(7),
      I3 => data9(8),
      I4 => data9(6),
      O => \diff_min[0]_i_12_n_0\
    );
\diff_min[0]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => data9(8),
      I1 => data9(7),
      I2 => data9(4),
      I3 => data9(5),
      O => \diff_min[0]_i_13_n_0\
    );
\diff_min[0]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => data9(13),
      I1 => data9(12),
      I2 => data9(14),
      O => \diff_min[0]_i_14_n_0\
    );
\diff_min[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data9(8),
      I1 => data9(9),
      O => \diff_min[0]_i_15_n_0\
    );
\diff_min[0]_i_16\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEEE"
    )
        port map (
      I0 => data9(9),
      I1 => data9(6),
      I2 => data9(5),
      I3 => data9(4),
      I4 => data9(7),
      O => \diff_min[0]_i_16_n_0\
    );
\diff_min[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1515155555555555"
    )
        port map (
      I0 => \diff_min[1]_i_10_n_0\,
      I1 => data9(14),
      I2 => data9(15),
      I3 => data9(13),
      I4 => data9(12),
      I5 => \diff_min[0]_i_4_n_0\,
      O => \diff_min[0]_i_2_n_0\
    );
\diff_min[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0BFF00000BFF0BFF"
    )
        port map (
      I0 => \diff_min[0]_i_5_n_0\,
      I1 => \diff_min[1]_i_2_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => \diff_min[2]_i_3_n_0\,
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => \diff_min[1]_i_3_n_0\,
      O => \diff_min[0]_i_3_n_0\
    );
\diff_min[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => data9(7),
      I1 => data9(6),
      I2 => data9(4),
      I3 => data9(5),
      I4 => data9(9),
      I5 => \diff_min[0]_i_8_n_0\,
      O => \diff_min[0]_i_4_n_0\
    );
\diff_min[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000005555F7FF"
    )
        port map (
      I0 => data9(12),
      I1 => \diff_min[0]_i_9_n_0\,
      I2 => \diff_min[0]_i_10_n_0\,
      I3 => data9(8),
      I4 => data9(11),
      I5 => \diff_min[0]_i_11_n_0\,
      O => \diff_min[0]_i_5_n_0\
    );
\diff_min[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFABAAAAAAAA"
    )
        port map (
      I0 => \diff_min[2]_i_7_n_0\,
      I1 => \diff_min[0]_i_12_n_0\,
      I2 => \diff_min[0]_i_13_n_0\,
      I3 => \diff_min[1]_i_7_n_0\,
      I4 => data9(11),
      I5 => data9(14),
      O => \diff_min[0]_i_6_n_0\
    );
\diff_min[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4544454545454545"
    )
        port map (
      I0 => \diff_min[2]_i_7_n_0\,
      I1 => \diff_min[0]_i_14_n_0\,
      I2 => data9(11),
      I3 => \diff_min[0]_i_15_n_0\,
      I4 => data9(10),
      I5 => \diff_min[0]_i_16_n_0\,
      O => \diff_min[0]_i_7_n_0\
    );
\diff_min[0]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
        port map (
      I0 => data9(13),
      I1 => data9(10),
      I2 => data9(11),
      I3 => data9(8),
      I4 => data9(9),
      O => \diff_min[0]_i_8_n_0\
    );
\diff_min[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => data9(7),
      I1 => data9(6),
      I2 => data9(9),
      I3 => data9(10),
      O => \diff_min[0]_i_9_n_0\
    );
\diff_min[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20AA2020AAAAAAAA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_min[1]_i_2_n_0\,
      I2 => \diff_min[2]_i_3_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_min[2]_i_2_n_0\,
      I5 => \diff_min[1]_i_4_n_0\,
      O => \diff_min[1]_i_1_n_0\
    );
\diff_min[1]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => data9(18),
      I1 => data9(16),
      I2 => data9(17),
      O => \diff_min[1]_i_10_n_0\
    );
\diff_min[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000DDD"
    )
        port map (
      I0 => \diff_min[1]_i_5_n_0\,
      I1 => \diff_min[1]_i_6_n_0\,
      I2 => data9(12),
      I3 => data9(13),
      I4 => data9(14),
      I5 => \diff_min[2]_i_7_n_0\,
      O => \diff_min[1]_i_2_n_0\
    );
\diff_min[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000011100000FFFF"
    )
        port map (
      I0 => data9(14),
      I1 => \diff_min[1]_i_7_n_0\,
      I2 => \diff_min[1]_i_8_n_0\,
      I3 => \diff_min[1]_i_9_n_0\,
      I4 => \diff_min[1]_i_10_n_0\,
      I5 => data9(15),
      O => \diff_min[1]_i_3_n_0\
    );
\diff_min[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \diff_min[3]_i_4_n_0\,
      I1 => \diff_min[2]_i_4_n_0\,
      O => \diff_min[1]_i_4_n_0\
    );
\diff_min[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EC"
    )
        port map (
      I0 => data9(7),
      I1 => data9(8),
      I2 => data9(5),
      O => \diff_min[1]_i_5_n_0\
    );
\diff_min[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => data9(8),
      I1 => data9(6),
      I2 => data9(13),
      I3 => data9(9),
      I4 => data9(10),
      I5 => data9(11),
      O => \diff_min[1]_i_6_n_0\
    );
\diff_min[1]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => data9(12),
      I1 => data9(13),
      O => \diff_min[1]_i_7_n_0\
    );
\diff_min[1]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => data9(10),
      I1 => data9(11),
      O => \diff_min[1]_i_8_n_0\
    );
\diff_min[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010033"
    )
        port map (
      I0 => data9(6),
      I1 => data9(9),
      I2 => data9(5),
      I3 => data9(8),
      I4 => data9(7),
      O => \diff_min[1]_i_9_n_0\
    );
\diff_min[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08A8"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_min[3]_i_4_n_0\,
      I2 => \diff_min[2]_i_2_n_0\,
      I3 => \diff_min[2]_i_3_n_0\,
      O => \diff_min[2]_i_1_n_0\
    );
\diff_min[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_min[3]_i_4_n_0\,
      I1 => \diff_min[2]_i_4_n_0\,
      O => \diff_min[2]_i_2_n_0\
    );
\diff_min[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000055FD"
    )
        port map (
      I0 => data9(14),
      I1 => \diff_min[2]_i_5_n_0\,
      I2 => \diff_min[2]_i_6_n_0\,
      I3 => data9(13),
      I4 => \diff_min[2]_i_7_n_0\,
      O => \diff_min[2]_i_3_n_0\
    );
\diff_min[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF4000000000000"
    )
        port map (
      I0 => \diff_min[2]_i_8_n_0\,
      I1 => data9(10),
      I2 => data9(11),
      I3 => data9(12),
      I4 => data9(13),
      I5 => data9(15),
      O => \diff_min[2]_i_4_n_0\
    );
\diff_min[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F7F7FFF"
    )
        port map (
      I0 => data9(11),
      I1 => data9(10),
      I2 => data9(12),
      I3 => data9(8),
      I4 => data9(9),
      O => \diff_min[2]_i_5_n_0\
    );
\diff_min[2]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => data9(9),
      I1 => data9(7),
      I2 => data9(6),
      O => \diff_min[2]_i_6_n_0\
    );
\diff_min[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data9(15),
      I1 => data9(17),
      I2 => data9(16),
      I3 => data9(18),
      O => \diff_min[2]_i_7_n_0\
    );
\diff_min[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data9(5),
      I1 => data9(4),
      I2 => data9(7),
      I3 => data9(8),
      I4 => data9(9),
      I5 => data9(6),
      O => \diff_min[2]_i_8_n_0\
    );
\diff_min[3]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \^co\(0),
      I2 => \total_prev__0\(15),
      O => \diff_min[3]_i_10_n_0\
    );
\diff_min[3]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \^co\(0),
      I2 => \total_prev__0\(14),
      O => \diff_min[3]_i_11_n_0\
    );
\diff_min[3]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \^co\(0),
      I2 => \total_prev__0\(13),
      O => \diff_min[3]_i_12_n_0\
    );
\diff_min[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \^co\(0),
      I2 => \total_prev__0\(12),
      O => \diff_min[3]_i_13_n_0\
    );
\diff_min[3]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \total_tmp__0\(15),
      O => \diff_min[3]_i_14_n_0\
    );
\diff_min[3]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(14),
      I1 => \total_tmp__0\(14),
      O => \diff_min[3]_i_15_n_0\
    );
\diff_min[3]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(13),
      I1 => \total_tmp__0\(13),
      O => \diff_min[3]_i_16_n_0\
    );
\diff_min[3]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(12),
      I1 => \total_tmp__0\(12),
      O => \diff_min[3]_i_17_n_0\
    );
\diff_min[3]_i_18\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \^co\(0),
      I2 => \total_prev__0\(11),
      O => \diff_min[3]_i_18_n_0\
    );
\diff_min[3]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \^co\(0),
      I2 => \total_prev__0\(10),
      O => \diff_min[3]_i_19_n_0\
    );
\diff_min[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_min[3]_i_4_n_0\,
      O => \diff_min[3]_i_2_n_0\
    );
\diff_min[3]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \^co\(0),
      I2 => \total_prev__0\(9),
      O => \diff_min[3]_i_20_n_0\
    );
\diff_min[3]_i_21\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \^co\(0),
      I2 => \total_prev__0\(8),
      O => \diff_min[3]_i_21_n_0\
    );
\diff_min[3]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \total_tmp__0\(11),
      O => \diff_min[3]_i_22_n_0\
    );
\diff_min[3]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(10),
      I1 => \total_tmp__0\(10),
      O => \diff_min[3]_i_23_n_0\
    );
\diff_min[3]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \total_tmp__0\(9),
      O => \diff_min[3]_i_24_n_0\
    );
\diff_min[3]_i_25\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(8),
      I1 => \total_tmp__0\(8),
      O => \diff_min[3]_i_25_n_0\
    );
\diff_min[3]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \^co\(0),
      I2 => \total_prev__0\(7),
      O => p_1_in(7)
    );
\diff_min[3]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \total_tmp__0\(6),
      I1 => \^co\(0),
      I2 => \total_prev__0\(6),
      O => \diff_min[3]_i_28_n_0\
    );
\diff_min[3]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \^co\(0),
      I2 => \total_prev__0\(5),
      O => \diff_min[3]_i_29_n_0\
    );
\diff_min[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => \lap_count[7]_i_5_n_0\,
      I1 => lap_count(1),
      I2 => lap_count(0),
      I3 => lap_count(2),
      I4 => lap_count(3),
      O => \^lap_count_reg[1]_0\
    );
\diff_min[3]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(4),
      O => \diff_min[3]_i_30_n_0\
    );
\diff_min[3]_i_31\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \total_tmp__0\(7),
      O => \diff_min[3]_i_31_n_0\
    );
\diff_min[3]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(6),
      I1 => \total_tmp__0\(6),
      O => \diff_min[3]_i_32_n_0\
    );
\diff_min[3]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      O => \diff_min[3]_i_33_n_0\
    );
\diff_min[3]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(4),
      I1 => \total_tmp__0\(4),
      O => \diff_min[3]_i_34_n_0\
    );
\diff_min[3]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(17),
      I1 => \^co\(0),
      I2 => \total_prev__0\(17),
      O => \diff_min[3]_i_39_n_0\
    );
\diff_min[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFFFFFF"
    )
        port map (
      I0 => \diff_min[3]_i_5_n_0\,
      I1 => data9(12),
      I2 => data9(11),
      I3 => data9(13),
      I4 => data9(15),
      I5 => \diff_min[3]_i_8_n_0\,
      O => \diff_min[3]_i_4_n_0\
    );
\diff_min[3]_i_40\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \^co\(0),
      I2 => \total_prev__0\(16),
      O => \diff_min[3]_i_40_n_0\
    );
\diff_min[3]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(18),
      I1 => \total_tmp__0\(18),
      O => \diff_min[3]_i_41_n_0\
    );
\diff_min[3]_i_42\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(17),
      I1 => \total_tmp__0\(17),
      O => \diff_min[3]_i_42_n_0\
    );
\diff_min[3]_i_43\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(16),
      I1 => \total_tmp__0\(16),
      O => \diff_min[3]_i_43_n_0\
    );
\diff_min[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
        port map (
      I0 => data9(10),
      I1 => data9(8),
      I2 => data9(9),
      I3 => data9(7),
      O => \diff_min[3]_i_5_n_0\
    );
\diff_min[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => data9(14),
      I1 => data9(15),
      I2 => data9(17),
      I3 => data9(16),
      I4 => data9(18),
      O => \diff_min[3]_i_8_n_0\
    );
\diff_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_min[0]_i_1_n_0\,
      Q => diff_min(0)
    );
\diff_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_min[1]_i_1_n_0\,
      Q => diff_min(1)
    );
\diff_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_min[2]_i_1_n_0\,
      Q => diff_min(2)
    );
\diff_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_min[3]_i_2_n_0\,
      Q => diff_min(3)
    );
\diff_min_reg[3]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min_reg[3]_i_6_n_0\,
      CO(3 downto 2) => \NLW_diff_min_reg[3]_i_26_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_min_reg[3]_i_26_n_2\,
      CO(0) => \diff_min_reg[3]_i_26_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_min[3]_i_39_n_0\,
      DI(0) => \diff_min[3]_i_40_n_0\,
      O(3) => \NLW_diff_min_reg[3]_i_26_O_UNCONNECTED\(3),
      O(2 downto 0) => data9(18 downto 16),
      S(3) => '0',
      S(2) => \diff_min[3]_i_41_n_0\,
      S(1) => \diff_min[3]_i_42_n_0\,
      S(0) => \diff_min[3]_i_43_n_0\
    );
\diff_min_reg[3]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min_reg[3]_i_37_n_0\,
      CO(3) => \diff_min_reg[3]_i_35_n_0\,
      CO(2) => \diff_min_reg[3]_i_35_n_1\,
      CO(1) => \diff_min_reg[3]_i_35_n_2\,
      CO(0) => \diff_min_reg[3]_i_35_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_tmp__0\(15 downto 12),
      S(3) => total_tmp_n_90,
      S(2) => total_tmp_n_91,
      S(1) => total_tmp_n_92,
      S(0) => total_tmp_n_93
    );
\diff_min_reg[3]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min_reg[3]_i_38_n_0\,
      CO(3) => \diff_min_reg[3]_i_36_n_0\,
      CO(2) => \diff_min_reg[3]_i_36_n_1\,
      CO(1) => \diff_min_reg[3]_i_36_n_2\,
      CO(0) => \diff_min_reg[3]_i_36_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_prev__0\(15 downto 12),
      S(3) => total_prev_n_90,
      S(2) => total_prev_n_91,
      S(1) => total_prev_n_92,
      S(0) => total_prev_n_93
    );
\diff_min_reg[3]_i_37\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_45_n_0\,
      CO(3) => \diff_min_reg[3]_i_37_n_0\,
      CO(2) => \diff_min_reg[3]_i_37_n_1\,
      CO(1) => \diff_min_reg[3]_i_37_n_2\,
      CO(0) => \diff_min_reg[3]_i_37_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_tmp__0\(11 downto 8),
      S(3) => total_tmp_n_94,
      S(2) => total_tmp_n_95,
      S(1) => total_tmp_n_96,
      S(0) => total_tmp_n_97
    );
\diff_min_reg[3]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_44_n_0\,
      CO(3) => \diff_min_reg[3]_i_38_n_0\,
      CO(2) => \diff_min_reg[3]_i_38_n_1\,
      CO(1) => \diff_min_reg[3]_i_38_n_2\,
      CO(0) => \diff_min_reg[3]_i_38_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \total_prev__0\(11 downto 8),
      S(3) => total_prev_n_94,
      S(2) => total_prev_n_95,
      S(1) => total_prev_n_96,
      S(0) => total_prev_n_97
    );
\diff_min_reg[3]_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min_reg[3]_i_7_n_0\,
      CO(3) => \diff_min_reg[3]_i_6_n_0\,
      CO(2) => \diff_min_reg[3]_i_6_n_1\,
      CO(1) => \diff_min_reg[3]_i_6_n_2\,
      CO(0) => \diff_min_reg[3]_i_6_n_3\,
      CYINIT => '0',
      DI(3) => \diff_min[3]_i_10_n_0\,
      DI(2) => \diff_min[3]_i_11_n_0\,
      DI(1) => \diff_min[3]_i_12_n_0\,
      DI(0) => \diff_min[3]_i_13_n_0\,
      O(3 downto 0) => data9(15 downto 12),
      S(3) => \diff_min[3]_i_14_n_0\,
      S(2) => \diff_min[3]_i_15_n_0\,
      S(1) => \diff_min[3]_i_16_n_0\,
      S(0) => \diff_min[3]_i_17_n_0\
    );
\diff_min_reg[3]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min_reg[3]_i_9_n_0\,
      CO(3) => \diff_min_reg[3]_i_7_n_0\,
      CO(2) => \diff_min_reg[3]_i_7_n_1\,
      CO(1) => \diff_min_reg[3]_i_7_n_2\,
      CO(0) => \diff_min_reg[3]_i_7_n_3\,
      CYINIT => '0',
      DI(3) => \diff_min[3]_i_18_n_0\,
      DI(2) => \diff_min[3]_i_19_n_0\,
      DI(1) => \diff_min[3]_i_20_n_0\,
      DI(0) => \diff_min[3]_i_21_n_0\,
      O(3 downto 0) => data9(11 downto 8),
      S(3) => \diff_min[3]_i_22_n_0\,
      S(2) => \diff_min[3]_i_23_n_0\,
      S(1) => \diff_min[3]_i_24_n_0\,
      S(0) => \diff_min[3]_i_25_n_0\
    );
\diff_min_reg[3]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[1]_i_26_n_0\,
      CO(3) => \diff_min_reg[3]_i_9_n_0\,
      CO(2) => \diff_min_reg[3]_i_9_n_1\,
      CO(1) => \diff_min_reg[3]_i_9_n_2\,
      CO(0) => \diff_min_reg[3]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => p_1_in(7),
      DI(2) => \diff_min[3]_i_28_n_0\,
      DI(1) => \diff_min[3]_i_29_n_0\,
      DI(0) => \diff_min[3]_i_30_n_0\,
      O(3 downto 0) => data9(7 downto 4),
      S(3) => \diff_min[3]_i_31_n_0\,
      S(2) => \diff_min[3]_i_32_n_0\,
      S(1) => \diff_min[3]_i_33_n_0\,
      S(0) => \diff_min[3]_i_34_n_0\
    );
\diff_sec[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAA8A8"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[0]_i_2_n_0\,
      I2 => \diff_sec[0]_i_3_n_0\,
      I3 => \diff_sec[0]_i_4_n_0\,
      I4 => \diff_sec[4]_i_4_n_0\,
      O => \diff_sec[0]_i_1_n_0\
    );
\diff_sec[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000070007000700"
    )
        port map (
      I0 => \diff_sec[0]_i_22_n_0\,
      I1 => \diff_sec[3]_i_5_n_0\,
      I2 => \diff_sec[0]_i_23_n_0\,
      I3 => \diff_csec[6]_i_11_n_0\,
      I4 => \diff_sec[0]_i_24_n_0\,
      I5 => \diff_sec[0]_i_25_n_0\,
      O => \diff_sec[0]_i_10_n_0\
    );
\diff_sec[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4044"
    )
        port map (
      I0 => \diff_csec[4]_i_10_n_0\,
      I1 => \diff_csec[6]_i_12_n_0\,
      I2 => \diff_sec[0]_i_26_n_0\,
      I3 => \diff_sec[3]_i_8_n_0\,
      O => \diff_sec[0]_i_11_n_0\
    );
\diff_sec[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFF10"
    )
        port map (
      I0 => \diff_sec[3]_i_10_n_0\,
      I1 => \diff_sec[0]_i_27_n_0\,
      I2 => \diff_sec[3]_i_11_n_0\,
      I3 => \diff_sec[4]_i_17_n_0\,
      I4 => \diff_sec[1]_i_19_n_0\,
      I5 => \diff_sec[3]_i_12_n_0\,
      O => \diff_sec[0]_i_12_n_0\
    );
\diff_sec[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAA8A8A8A"
    )
        port map (
      I0 => \diff_sec[1]_i_9_n_0\,
      I1 => \diff_sec[0]_i_28_n_0\,
      I2 => \diff_sec[0]_i_29_n_0\,
      I3 => \diff_sec[0]_i_30_n_0\,
      I4 => \diff_sec[2]_i_11_n_0\,
      I5 => \diff_sec[0]_i_31_n_0\,
      O => \diff_sec[0]_i_13_n_0\
    );
\diff_sec[0]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0101010101000000"
    )
        port map (
      I0 => \diff_sec[4]_i_17_n_0\,
      I1 => \diff_sec[1]_i_19_n_0\,
      I2 => \diff_sec[3]_i_12_n_0\,
      I3 => \diff_sec[0]_i_32_n_0\,
      I4 => \diff_csec[7]_i_6_n_0\,
      I5 => \diff_sec[1]_i_25_n_0\,
      O => \diff_sec[0]_i_14_n_0\
    );
\diff_sec[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[3]_i_7_n_0\,
      I1 => \diff_sec[0]_i_33_n_0\,
      O => \diff_sec[0]_i_15_n_0\
    );
\diff_sec[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFFAA08AA08"
    )
        port map (
      I0 => \diff_sec[0]_i_34_n_0\,
      I1 => \diff_sec[2]_i_14_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[3]_i_10_n_0\,
      I4 => \diff_sec[1]_i_18_n_0\,
      I5 => \diff_sec[0]_i_35_n_0\,
      O => \diff_sec[0]_i_16_n_0\
    );
\diff_sec[0]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[0]_i_32_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[0]_i_17_n_0\
    );
\diff_sec[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000BFBBFFFFFFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      I5 => \diff_csec[7]_i_4_n_0\,
      O => \diff_sec[0]_i_18_n_0\
    );
\diff_sec[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55550000777F0000"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[4]_i_21_n_0\,
      I2 => \diff_sec[0]_i_36_n_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[4]_i_24_n_0\,
      O => \diff_sec[0]_i_19_n_0\
    );
\diff_sec[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0FD"
    )
        port map (
      I0 => \diff_sec[1]_i_5_n_0\,
      I1 => \diff_csec[7]_i_2_n_0\,
      I2 => \diff_sec[2]_i_2_n_0\,
      I3 => \diff_sec[0]_i_5_n_0\,
      O => \diff_sec[0]_i_2_n_0\
    );
\diff_sec[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A8A8AAA8A"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[2]_i_17_n_0\,
      I2 => \diff_sec[5]_i_6_n_0\,
      I3 => \diff_csec[4]_i_29_n_0\,
      I4 => \diff_sec[4]_i_24_n_0\,
      I5 => \diff_sec[2]_i_13_n_0\,
      O => \diff_sec[0]_i_20_n_0\
    );
\diff_sec[0]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_csec[4]_i_42_n_0\,
      I1 => \diff_csec[2]_i_18_n_0\,
      O => \diff_sec[0]_i_21_n_0\
    );
\diff_sec[0]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFAFAFA"
    )
        port map (
      I0 => \diff_sec[3]_i_9_n_0\,
      I1 => \diff_sec[1]_i_28_n_0\,
      I2 => \diff_sec[0]_i_37_n_0\,
      I3 => \diff_csec[7]_i_3_n_0\,
      I4 => \diff_sec[0]_i_38_n_0\,
      O => \diff_sec[0]_i_22_n_0\
    );
\diff_sec[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040400000000000"
    )
        port map (
      I0 => \diff_sec[0]_i_39_n_0\,
      I1 => \diff_sec[2]_i_17_n_0\,
      I2 => \diff_sec[5]_i_5_n_0\,
      I3 => \diff_sec[0]_i_40_n_0\,
      I4 => \diff_sec[0]_i_41_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[0]_i_23_n_0\
    );
\diff_sec[0]_i_24\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20200020"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[2]_i_13_n_0\,
      I2 => \diff_sec[2]_i_17_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      I4 => \diff_csec[5]_i_44_n_0\,
      O => \diff_sec[0]_i_24_n_0\
    );
\diff_sec[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAAAAAFFFFFFFF"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[2]_i_17_n_0\,
      I2 => \diff_sec[2]_i_13_n_0\,
      I3 => \diff_csec[7]_i_6_n_0\,
      I4 => \diff_sec[0]_i_32_n_0\,
      I5 => \diff_sec[5]_i_5_n_0\,
      O => \diff_sec[0]_i_25_n_0\
    );
\diff_sec[0]_i_26\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \diff_sec[0]_i_42_n_0\,
      I1 => \diff_sec[0]_i_43_n_0\,
      I2 => \diff_sec[0]_i_44_n_0\,
      O => \diff_sec[0]_i_26_n_0\
    );
\diff_sec[0]_i_27\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      O => \diff_sec[0]_i_27_n_0\
    );
\diff_sec[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEFEEEEEE"
    )
        port map (
      I0 => \diff_sec[1]_i_19_n_0\,
      I1 => \diff_sec[4]_i_17_n_0\,
      I2 => \diff_sec[4]_i_14_n_0\,
      I3 => \diff_sec[0]_i_36_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      I5 => \diff_csec[7]_i_7_n_0\,
      O => \diff_sec[0]_i_28_n_0\
    );
\diff_sec[0]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[4]_i_12_n_0\,
      I1 => \diff_sec[4]_i_3_n_0\,
      O => \diff_sec[0]_i_29_n_0\
    );
\diff_sec[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFF2FFFFFFF2"
    )
        port map (
      I0 => \diff_sec[0]_i_6_n_0\,
      I1 => \diff_csec[6]_i_5_n_0\,
      I2 => \diff_sec[0]_i_7_n_0\,
      I3 => \diff_sec[0]_i_8_n_0\,
      I4 => \diff_sec[0]_i_9_n_0\,
      I5 => \diff_sec[0]_i_10_n_0\,
      O => \diff_sec[0]_i_3_n_0\
    );
\diff_sec[0]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AA8888"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[5]_i_4_n_0\,
      I2 => \diff_csec[7]_i_5_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[0]_i_30_n_0\
    );
\diff_sec[0]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000000"
    )
        port map (
      I0 => \diff_sec[0]_i_45_n_0\,
      I1 => \diff_sec[4]_i_17_n_0\,
      I2 => \diff_sec[1]_i_19_n_0\,
      I3 => \diff_sec[4]_i_7_n_0\,
      I4 => \diff_sec[0]_i_46_n_0\,
      I5 => \diff_sec[4]_i_9_n_0\,
      O => \diff_sec[0]_i_31_n_0\
    );
\diff_sec[0]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      O => \diff_sec[0]_i_32_n_0\
    );
\diff_sec[0]_i_33\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"005DFFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[4]_i_11_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[4]_i_12_n_0\,
      I4 => \diff_sec[4]_i_22_n_0\,
      O => \diff_sec[0]_i_33_n_0\
    );
\diff_sec[0]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
        port map (
      I0 => \diff_sec[0]_i_47_n_0\,
      I1 => \diff_sec[1]_i_17_n_0\,
      I2 => \diff_csec[6]_i_54_n_0\,
      O => \diff_sec[0]_i_34_n_0\
    );
\diff_sec[0]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF08FFFFFF"
    )
        port map (
      I0 => \diff_sec[2]_i_12_n_0\,
      I1 => \diff_sec[3]_i_11_n_0\,
      I2 => \diff_sec[3]_i_10_n_0\,
      I3 => \diff_sec[2]_i_17_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[0]_i_35_n_0\
    );
\diff_sec[0]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFEF"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_csec[7]_i_15_n_0\,
      O => \diff_sec[0]_i_36_n_0\
    );
\diff_sec[0]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44404444"
    )
        port map (
      I0 => \diff_sec[3]_i_13_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_csec[7]_i_4_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      I4 => \diff_sec[4]_i_11_n_0\,
      O => \diff_sec[0]_i_37_n_0\
    );
\diff_sec[0]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5444"
    )
        port map (
      I0 => \diff_sec[3]_i_13_n_0\,
      I1 => \diff_sec[2]_i_13_n_0\,
      I2 => \diff_sec[2]_i_12_n_0\,
      I3 => \diff_sec[3]_i_11_n_0\,
      O => \diff_sec[0]_i_38_n_0\
    );
\diff_sec[0]_i_39\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAA8A8"
    )
        port map (
      I0 => \diff_sec[4]_i_12_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_csec[7]_i_12_n_0\,
      O => \diff_sec[0]_i_39_n_0\
    );
\diff_sec[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"080808080808AA08"
    )
        port map (
      I0 => \diff_sec[0]_i_11_n_0\,
      I1 => \diff_sec[0]_i_12_n_0\,
      I2 => \diff_sec[0]_i_13_n_0\,
      I3 => \diff_sec[0]_i_14_n_0\,
      I4 => \diff_sec[0]_i_15_n_0\,
      I5 => \diff_sec[0]_i_16_n_0\,
      O => \diff_sec[0]_i_4_n_0\
    );
\diff_sec[0]_i_40\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888808088808"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_csec[7]_i_13_n_0\,
      I5 => \diff_csec[7]_i_12_n_0\,
      O => \diff_sec[0]_i_40_n_0\
    );
\diff_sec[0]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \diff_sec[4]_i_16_n_0\,
      I1 => \diff_sec[3]_i_12_n_0\,
      I2 => \diff_sec[4]_i_12_n_0\,
      I3 => \diff_sec[4]_i_22_n_0\,
      O => \diff_sec[0]_i_41_n_0\
    );
\diff_sec[0]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
        port map (
      I0 => \diff_sec[0]_i_48_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[1]_i_32_n_0\,
      I3 => \diff_sec[0]_i_49_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[0]_i_42_n_0\
    );
\diff_sec[0]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000555500000001"
    )
        port map (
      I0 => \diff_sec[4]_i_17_n_0\,
      I1 => \diff_csec[5]_i_53_n_0\,
      I2 => \diff_sec[4]_i_13_n_0\,
      I3 => \diff_sec[1]_i_32_n_0\,
      I4 => \diff_sec[4]_i_15_n_0\,
      I5 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[0]_i_43_n_0\
    );
\diff_sec[0]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0100030001000000"
    )
        port map (
      I0 => \diff_sec[2]_i_19_n_0\,
      I1 => \diff_sec[4]_i_17_n_0\,
      I2 => \diff_sec[1]_i_19_n_0\,
      I3 => \diff_csec[7]_i_7_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      I5 => \diff_sec[0]_i_50_n_0\,
      O => \diff_sec[0]_i_44_n_0\
    );
\diff_sec[0]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      O => \diff_sec[0]_i_45_n_0\
    );
\diff_sec[0]_i_46\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00750000"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      I4 => \diff_csec[7]_i_15_n_0\,
      O => \diff_sec[0]_i_46_n_0\
    );
\diff_sec[0]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => \diff_sec[4]_i_24_n_0\,
      I1 => \diff_sec[1]_i_34_n_0\,
      I2 => \diff_sec[5]_i_5_n_0\,
      I3 => \diff_sec[5]_i_6_n_0\,
      I4 => \diff_csec[6]_i_57_n_0\,
      O => \diff_sec[0]_i_47_n_0\
    );
\diff_sec[0]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2022FFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_12_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      O => \diff_sec[0]_i_48_n_0\
    );
\diff_sec[0]_i_49\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF7FFFFFFFFFF"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_csec[7]_i_15_n_0\,
      I5 => \diff_csec[7]_i_12_n_0\,
      O => \diff_sec[0]_i_49_n_0\
    );
\diff_sec[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA08AAAAAAAA"
    )
        port map (
      I0 => \diff_sec[1]_i_24_n_0\,
      I1 => \diff_sec[0]_i_17_n_0\,
      I2 => \diff_sec[2]_i_13_n_0\,
      I3 => \diff_sec[4]_i_14_n_0\,
      I4 => \diff_sec[1]_i_19_n_0\,
      I5 => \diff_sec[1]_i_27_n_0\,
      O => \diff_sec[0]_i_5_n_0\
    );
\diff_sec[0]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40444040"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      I4 => \diff_csec[7]_i_14_n_0\,
      O => \diff_sec[0]_i_50_n_0\
    );
\diff_sec[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FF0000FFFFFFFF"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[0]_i_18_n_0\,
      I2 => \diff_sec[4]_i_7_n_0\,
      I3 => \diff_sec[4]_i_16_n_0\,
      I4 => \diff_sec[5]_i_6_n_0\,
      I5 => \diff_sec[5]_i_5_n_0\,
      O => \diff_sec[0]_i_6_n_0\
    );
\diff_sec[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF2F220F000F00"
    )
        port map (
      I0 => \diff_sec[1]_i_12_n_0\,
      I1 => \diff_sec[0]_i_19_n_0\,
      I2 => \diff_sec[0]_i_20_n_0\,
      I3 => \diff_sec[4]_i_6_n_0\,
      I4 => \diff_csec[2]_i_11_n_0\,
      I5 => \diff_sec[1]_i_11_n_0\,
      O => \diff_sec[0]_i_7_n_0\
    );
\diff_sec[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50725072FFFF5072"
    )
        port map (
      I0 => \diff_sec[1]_i_21_n_0\,
      I1 => \diff_sec[1]_i_22_n_0\,
      I2 => \diff_sec[2]_i_7_n_0\,
      I3 => \diff_sec[0]_i_21_n_0\,
      I4 => \diff_sec[4]_i_19_n_0\,
      I5 => \diff_sec[1]_i_23_n_0\,
      O => \diff_sec[0]_i_8_n_0\
    );
\diff_sec[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFDF555500000000"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[3]_i_10_n_0\,
      I2 => \diff_sec[3]_i_11_n_0\,
      I3 => \diff_sec[4]_i_41_n_0\,
      I4 => \diff_sec[2]_i_17_n_0\,
      I5 => \diff_sec[5]_i_5_n_0\,
      O => \diff_sec[0]_i_9_n_0\
    );
\diff_sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88A888A888A8AAAA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[1]_i_2_n_0\,
      I2 => \diff_sec[4]_i_4_n_0\,
      I3 => \diff_sec[1]_i_3_n_0\,
      I4 => \diff_sec[1]_i_4_n_0\,
      I5 => \diff_sec[4]_i_2_n_0\,
      O => \diff_sec[1]_i_1_n_0\
    );
\diff_sec[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0022022200FFFFFF"
    )
        port map (
      I0 => \diff_sec[1]_i_21_n_0\,
      I1 => \diff_sec[1]_i_22_n_0\,
      I2 => \diff_sec[1]_i_23_n_0\,
      I3 => \diff_sec[5]_i_2_n_0\,
      I4 => \diff_sec[4]_i_20_n_0\,
      I5 => \diff_sec[2]_i_7_n_0\,
      O => \diff_sec[1]_i_10_n_0\
    );
\diff_sec[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22A222A222A2A2A2"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[5]_i_6_n_0\,
      I2 => \diff_sec[4]_i_16_n_0\,
      I3 => \diff_sec[3]_i_12_n_0\,
      I4 => \diff_sec[5]_i_4_n_0\,
      I5 => \diff_sec[2]_i_19_n_0\,
      O => \diff_sec[1]_i_11_n_0\
    );
\diff_sec[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000A8AAAAAAAA"
    )
        port map (
      I0 => \diff_sec[1]_i_24_n_0\,
      I1 => \diff_sec[1]_i_25_n_0\,
      I2 => \diff_sec[1]_i_26_n_0\,
      I3 => \diff_sec[1]_i_19_n_0\,
      I4 => \diff_sec[3]_i_12_n_0\,
      I5 => \diff_sec[1]_i_27_n_0\,
      O => \diff_sec[1]_i_12_n_0\
    );
\diff_sec[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0D0FFD0FFFFFFD0"
    )
        port map (
      I0 => \diff_sec[1]_i_28_n_0\,
      I1 => \diff_sec[1]_i_29_n_0\,
      I2 => \diff_sec[3]_i_5_n_0\,
      I3 => \diff_sec[1]_i_30_n_0\,
      I4 => \diff_sec[1]_i_31_n_0\,
      I5 => \diff_csec[5]_i_13_n_0\,
      O => \diff_sec[1]_i_13_n_0\
    );
\diff_sec[1]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => \diff_sec[4]_i_14_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_csec[5]_i_44_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[1]_i_14_n_0\
    );
\diff_sec[1]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45554444"
    )
        port map (
      I0 => \diff_sec[4]_i_16_n_0\,
      I1 => \diff_sec[1]_i_32_n_0\,
      I2 => \diff_csec[7]_i_6_n_0\,
      I3 => \diff_sec[4]_i_41_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      O => \diff_sec[1]_i_15_n_0\
    );
\diff_sec[1]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBFFFFBBBF"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[4]_i_11_n_0\,
      I3 => \diff_sec[4]_i_23_n_0\,
      I4 => \diff_sec[1]_i_32_n_0\,
      I5 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[1]_i_16_n_0\
    );
\diff_sec[1]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000007000000"
    )
        port map (
      I0 => \diff_sec[1]_i_33_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_sec[4]_i_24_n_0\,
      I3 => \diff_sec[1]_i_34_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[1]_i_17_n_0\
    );
\diff_sec[1]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0FFFFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[1]_i_35_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      I3 => \diff_sec[0]_i_33_n_0\,
      I4 => \diff_sec[3]_i_7_n_0\,
      O => \diff_sec[1]_i_18_n_0\
    );
\diff_sec[1]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
        port map (
      I0 => \diff_sec[5]_i_10_n_0\,
      I1 => \diff_sec[5]_i_11_n_0\,
      I2 => \diff_sec[5]_i_12_n_0\,
      I3 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[1]_i_19_n_0\
    );
\diff_sec[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \diff_sec[2]_i_2_n_0\,
      I1 => \diff_sec[1]_i_5_n_0\,
      O => \diff_sec[1]_i_2_n_0\
    );
\diff_sec[1]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      O => \diff_sec[1]_i_20_n_0\
    );
\diff_sec[1]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4040404000404040"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[3]_i_13_n_0\,
      I3 => \diff_sec[1]_i_36_n_0\,
      I4 => \diff_sec[5]_i_3_n_0\,
      I5 => \diff_sec[3]_i_10_n_0\,
      O => \diff_sec[1]_i_21_n_0\
    );
\diff_sec[1]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00005DDD00000000"
    )
        port map (
      I0 => \diff_sec[4]_i_9_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      I2 => \diff_sec[1]_i_20_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[1]_i_34_n_0\,
      I5 => \diff_sec[5]_i_3_n_0\,
      O => \diff_sec[1]_i_22_n_0\
    );
\diff_sec[1]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF01FFFF"
    )
        port map (
      I0 => \diff_sec[1]_i_25_n_0\,
      I1 => \diff_sec[1]_i_37_n_0\,
      I2 => \diff_sec[4]_i_16_n_0\,
      I3 => \diff_sec[5]_i_3_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[1]_i_23_n_0\
    );
\diff_sec[1]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000C111D"
    )
        port map (
      I0 => \diff_sec_reg[5]_i_16_n_4\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec[1]_i_38_n_0\,
      I3 => \diff_sec[1]_i_39_n_0\,
      I4 => \diff_sec_reg[5]_i_16_n_5\,
      I5 => \diff_sec[5]_i_7_n_0\,
      O => \diff_sec[1]_i_24_n_0\
    );
\diff_sec[1]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      O => \diff_sec[1]_i_25_n_0\
    );
\diff_sec[1]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      O => \diff_sec[1]_i_26_n_0\
    );
\diff_sec[1]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \diff_sec[5]_i_10_n_0\,
      I1 => \diff_sec[5]_i_11_n_0\,
      I2 => \diff_sec[5]_i_12_n_0\,
      I3 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[1]_i_27_n_0\
    );
\diff_sec[1]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCFFDFDFDF"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[3]_i_13_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      I3 => \diff_sec[4]_i_41_n_0\,
      I4 => \diff_csec[7]_i_15_n_0\,
      I5 => \diff_sec[4]_i_12_n_0\,
      O => \diff_sec[1]_i_28_n_0\
    );
\diff_sec[1]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBFFBFBBBB"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[1]_i_40_n_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_sec[4]_i_12_n_0\,
      I5 => \diff_sec[3]_i_13_n_0\,
      O => \diff_sec[1]_i_29_n_0\
    );
\diff_sec[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFFFBFAAAAAAAA"
    )
        port map (
      I0 => \diff_sec[1]_i_6_n_0\,
      I1 => \diff_sec[1]_i_7_n_0\,
      I2 => \diff_sec[4]_i_3_n_0\,
      I3 => \diff_sec[1]_i_8_n_0\,
      I4 => \diff_sec[2]_i_11_n_0\,
      I5 => \diff_sec[1]_i_9_n_0\,
      O => \diff_sec[1]_i_3_n_0\
    );
\diff_sec[1]_i_30\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08880808"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[2]_i_17_n_0\,
      I2 => \diff_sec[4]_i_12_n_0\,
      I3 => \diff_sec[4]_i_13_n_0\,
      I4 => \diff_sec[4]_i_38_n_0\,
      O => \diff_sec[1]_i_30_n_0\
    );
\diff_sec[1]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D555D5D00000000"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[1]_i_34_n_0\,
      I2 => \diff_sec[4]_i_24_n_0\,
      I3 => \diff_sec[1]_i_41_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      I5 => \diff_sec[5]_i_5_n_0\,
      O => \diff_sec[1]_i_31_n_0\
    );
\diff_sec[1]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \diff_sec[4]_i_22_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_sec[3]_i_12_n_0\,
      O => \diff_sec[1]_i_32_n_0\
    );
\diff_sec[1]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A2AA"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      O => \diff_sec[1]_i_33_n_0\
    );
\diff_sec[1]_i_34\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \diff_sec[4]_i_22_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      O => \diff_sec[1]_i_34_n_0\
    );
\diff_sec[1]_i_35\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBFBAAAA"
    )
        port map (
      I0 => \diff_sec[4]_i_12_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[1]_i_35_n_0\
    );
\diff_sec[1]_i_36\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAFFAE"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_12_n_0\,
      I4 => \diff_csec[7]_i_15_n_0\,
      O => \diff_sec[1]_i_36_n_0\
    );
\diff_sec[1]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5545"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      O => \diff_sec[1]_i_37_n_0\
    );
\diff_sec[1]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFF"
    )
        port map (
      I0 => \diff_sec[5]_i_23_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_24_n_0\,
      I3 => \diff_sec[5]_i_25_n_0\,
      O => \diff_sec[1]_i_38_n_0\
    );
\diff_sec[1]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \diff_sec[5]_i_20_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_21_n_0\,
      I3 => \diff_sec[5]_i_22_n_0\,
      O => \diff_sec[1]_i_39_n_0\
    );
\diff_sec[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002202"
    )
        port map (
      I0 => \diff_sec[1]_i_10_n_0\,
      I1 => \diff_sec[3]_i_6_n_0\,
      I2 => \diff_sec[1]_i_11_n_0\,
      I3 => \diff_sec[1]_i_12_n_0\,
      I4 => \diff_csec[6]_i_5_n_0\,
      I5 => \diff_sec[1]_i_13_n_0\,
      O => \diff_sec[1]_i_4_n_0\
    );
\diff_sec[1]_i_40\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555155"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_csec[7]_i_13_n_0\,
      O => \diff_sec[1]_i_40_n_0\
    );
\diff_sec[1]_i_41\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4500FFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_13_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[1]_i_41_n_0\
    );
\diff_sec[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5455"
    )
        port map (
      I0 => \diff_csec[7]_i_3_n_0\,
      I1 => \diff_sec[4]_i_8_n_0\,
      I2 => \diff_csec[7]_i_7_n_0\,
      I3 => \diff_sec[1]_i_14_n_0\,
      O => \diff_sec[1]_i_5_n_0\
    );
\diff_sec[1]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001000F0"
    )
        port map (
      I0 => \diff_sec[1]_i_15_n_0\,
      I1 => \diff_sec[1]_i_16_n_0\,
      I2 => \diff_csec[4]_i_7_n_0\,
      I3 => \diff_sec[2]_i_10_n_0\,
      I4 => \diff_sec[3]_i_8_n_0\,
      O => \diff_sec[1]_i_6_n_0\
    );
\diff_sec[1]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFAEAAAA"
    )
        port map (
      I0 => \diff_sec[0]_i_12_n_0\,
      I1 => \diff_sec[2]_i_9_n_0\,
      I2 => \diff_sec[1]_i_17_n_0\,
      I3 => \diff_sec[1]_i_18_n_0\,
      I4 => \diff_sec[3]_i_7_n_0\,
      O => \diff_sec[1]_i_7_n_0\
    );
\diff_sec[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000101011111111"
    )
        port map (
      I0 => \diff_sec[1]_i_19_n_0\,
      I1 => \diff_sec[4]_i_17_n_0\,
      I2 => \diff_sec[4]_i_9_n_0\,
      I3 => \diff_sec[4]_i_41_n_0\,
      I4 => \diff_sec[3]_i_11_n_0\,
      I5 => \diff_sec[4]_i_7_n_0\,
      O => \diff_sec[1]_i_8_n_0\
    );
\diff_sec[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000004040404"
    )
        port map (
      I0 => \diff_sec[4]_i_15_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[4]_i_17_n_0\,
      I3 => \diff_sec[3]_i_14_n_0\,
      I4 => \diff_sec[1]_i_20_n_0\,
      I5 => \diff_csec[7]_i_7_n_0\,
      O => \diff_sec[1]_i_9_n_0\
    );
\diff_sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888A8A888A"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[2]_i_2_n_0\,
      I2 => \diff_sec[2]_i_3_n_0\,
      I3 => \diff_sec[4]_i_4_n_0\,
      I4 => \diff_sec[2]_i_4_n_0\,
      I5 => \diff_sec[4]_i_2_n_0\,
      O => \diff_sec[2]_i_1_n_0\
    );
\diff_sec[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004040404040404"
    )
        port map (
      I0 => \diff_sec[4]_i_15_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[4]_i_17_n_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_sec[2]_i_19_n_0\,
      I5 => \diff_csec[7]_i_7_n_0\,
      O => \diff_sec[2]_i_10_n_0\
    );
\diff_sec[2]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => \diff_sec[4]_i_7_n_0\,
      I1 => \diff_sec[2]_i_20_n_0\,
      I2 => \diff_sec[4]_i_17_n_0\,
      I3 => \diff_sec[4]_i_16_n_0\,
      I4 => \diff_sec[4]_i_15_n_0\,
      O => \diff_sec[2]_i_11_n_0\
    );
\diff_sec[2]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      O => \diff_sec[2]_i_12_n_0\
    );
\diff_sec[2]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      O => \diff_sec[2]_i_13_n_0\
    );
\diff_sec[2]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      O => \diff_sec[2]_i_14_n_0\
    );
\diff_sec[2]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFF555500000000"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[4]_i_38_n_0\,
      I2 => \diff_sec[4]_i_13_n_0\,
      I3 => \diff_sec[4]_i_12_n_0\,
      I4 => \diff_sec[2]_i_17_n_0\,
      I5 => \diff_sec[5]_i_5_n_0\,
      O => \diff_sec[2]_i_15_n_0\
    );
\diff_sec[2]_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      I2 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[2]_i_16_n_0\
    );
\diff_sec[2]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \diff_sec[4]_i_16_n_0\,
      I1 => \diff_sec[4]_i_22_n_0\,
      I2 => \diff_sec[3]_i_12_n_0\,
      O => \diff_sec[2]_i_17_n_0\
    );
\diff_sec[2]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF75FFFF"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[2]_i_18_n_0\
    );
\diff_sec[2]_i_19\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      I2 => \diff_csec[7]_i_15_n_0\,
      O => \diff_sec[2]_i_19_n_0\
    );
\diff_sec[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_sec[4]_i_2_n_0\,
      I1 => \diff_sec[2]_i_5_n_0\,
      O => \diff_sec[2]_i_2_n_0\
    );
\diff_sec[2]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88880080"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      I2 => \diff_csec[7]_i_12_n_0\,
      I3 => \diff_csec[7]_i_15_n_0\,
      I4 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[2]_i_20_n_0\
    );
\diff_sec[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000D5"
    )
        port map (
      I0 => \diff_sec[2]_i_6_n_0\,
      I1 => \diff_sec[4]_i_5_n_0\,
      I2 => \diff_sec[2]_i_7_n_0\,
      I3 => \diff_sec[2]_i_8_n_0\,
      I4 => \diff_sec[4]_i_4_n_0\,
      O => \diff_sec[2]_i_3_n_0\
    );
\diff_sec[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44F444F4FFFF44F4"
    )
        port map (
      I0 => \diff_sec[2]_i_9_n_0\,
      I1 => \diff_sec[3]_i_7_n_0\,
      I2 => \diff_sec[3]_i_8_n_0\,
      I3 => \diff_sec[2]_i_10_n_0\,
      I4 => \diff_sec[4]_i_3_n_0\,
      I5 => \diff_sec[2]_i_11_n_0\,
      O => \diff_sec[2]_i_4_n_0\
    );
\diff_sec[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44440444"
    )
        port map (
      I0 => \diff_sec[4]_i_8_n_0\,
      I1 => \diff_sec[4]_i_14_n_0\,
      I2 => \diff_sec[3]_i_12_n_0\,
      I3 => \diff_sec[3]_i_11_n_0\,
      I4 => \diff_sec[3]_i_10_n_0\,
      O => \diff_sec[2]_i_5_n_0\
    );
\diff_sec[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444400000444"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[3]_i_11_n_0\,
      I3 => \diff_sec[2]_i_12_n_0\,
      I4 => \diff_sec[2]_i_13_n_0\,
      I5 => \diff_sec[3]_i_13_n_0\,
      O => \diff_sec[2]_i_6_n_0\
    );
\diff_sec[2]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A88AA8A8"
    )
        port map (
      I0 => \diff_sec[2]_i_6_n_0\,
      I1 => \diff_sec[3]_i_13_n_0\,
      I2 => \diff_csec[7]_i_4_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      I4 => \diff_sec[2]_i_14_n_0\,
      O => \diff_sec[2]_i_7_n_0\
    );
\diff_sec[2]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"75FF75FFFFFF00FF"
    )
        port map (
      I0 => \diff_sec[2]_i_15_n_0\,
      I1 => \diff_sec[2]_i_6_n_0\,
      I2 => \diff_sec[3]_i_5_n_0\,
      I3 => \diff_sec[1]_i_11_n_0\,
      I4 => \diff_sec[4]_i_6_n_0\,
      I5 => \diff_sec[0]_i_9_n_0\,
      O => \diff_sec[2]_i_8_n_0\
    );
\diff_sec[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000200030000000"
    )
        port map (
      I0 => \diff_sec[2]_i_16_n_0\,
      I1 => \diff_sec[5]_i_6_n_0\,
      I2 => \diff_sec[5]_i_5_n_0\,
      I3 => \diff_sec[2]_i_17_n_0\,
      I4 => \diff_sec[3]_i_10_n_0\,
      I5 => \diff_sec[2]_i_18_n_0\,
      O => \diff_sec[2]_i_9_n_0\
    );
\diff_sec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA002A"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[3]_i_2_n_0\,
      I2 => \diff_sec[4]_i_5_n_0\,
      I3 => \diff_sec[3]_i_3_n_0\,
      I4 => \diff_sec[3]_i_4_n_0\,
      O => \diff_sec[3]_i_1_n_0\
    );
\diff_sec[3]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      O => \diff_sec[3]_i_10_n_0\
    );
\diff_sec[3]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      O => \diff_sec[3]_i_11_n_0\
    );
\diff_sec[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFFFFFAEFF0000"
    )
        port map (
      I0 => \diff_sec[3]_i_16_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[3]_i_17_n_0\,
      I3 => \diff_sec[3]_i_18_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_sec_reg[4]_i_28_n_5\,
      O => \diff_sec[3]_i_12_n_0\
    );
\diff_sec[3]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \diff_sec[4]_i_16_n_0\,
      I1 => \diff_sec[4]_i_22_n_0\,
      I2 => \diff_sec[3]_i_12_n_0\,
      O => \diff_sec[3]_i_13_n_0\
    );
\diff_sec[3]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \diff_sec[4]_i_10_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      I2 => \diff_csec[7]_i_4_n_0\,
      O => \diff_sec[3]_i_14_n_0\
    );
\diff_sec[3]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
        port map (
      I0 => \diff_sec[4]_i_22_n_0\,
      I1 => \diff_sec[3]_i_12_n_0\,
      I2 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[3]_i_15_n_0\
    );
\diff_sec[3]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5505454555004040"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data8(10),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data9(10),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data7(10),
      O => \diff_sec[3]_i_16_n_0\
    );
\diff_sec[3]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(10),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(10),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(10),
      O => \diff_sec[3]_i_17_n_0\
    );
\diff_sec[3]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(10),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(10),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(10),
      O => \diff_sec[3]_i_18_n_0\
    );
\diff_sec[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0051"
    )
        port map (
      I0 => \diff_sec[4]_i_4_n_0\,
      I1 => \diff_sec[4]_i_6_n_0\,
      I2 => \diff_sec[3]_i_5_n_0\,
      I3 => \diff_sec[3]_i_6_n_0\,
      O => \diff_sec[3]_i_2_n_0\
    );
\diff_sec[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAA"
    )
        port map (
      I0 => \diff_sec[4]_i_2_n_0\,
      I1 => \diff_sec[4]_i_3_n_0\,
      I2 => \diff_sec[3]_i_7_n_0\,
      I3 => \diff_sec[3]_i_8_n_0\,
      O => \diff_sec[3]_i_3_n_0\
    );
\diff_sec[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA2000AAAA"
    )
        port map (
      I0 => \diff_sec[3]_i_9_n_0\,
      I1 => \diff_sec[3]_i_10_n_0\,
      I2 => \diff_sec[3]_i_11_n_0\,
      I3 => \diff_sec[3]_i_12_n_0\,
      I4 => \diff_sec[4]_i_14_n_0\,
      I5 => \diff_sec[4]_i_8_n_0\,
      O => \diff_sec[3]_i_4_n_0\
    );
\diff_sec[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_csec[7]_i_6_n_0\,
      I3 => \diff_sec[3]_i_13_n_0\,
      I4 => \diff_sec[3]_i_10_n_0\,
      O => \diff_sec[3]_i_5_n_0\
    );
\diff_sec[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[4]_i_6_n_0\,
      I1 => \diff_sec[0]_i_9_n_0\,
      O => \diff_sec[3]_i_6_n_0\
    );
\diff_sec[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000040004"
    )
        port map (
      I0 => \diff_sec[4]_i_17_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      I2 => \diff_sec[4]_i_15_n_0\,
      I3 => \diff_sec[3]_i_12_n_0\,
      I4 => \diff_sec[3]_i_14_n_0\,
      I5 => \diff_sec[4]_i_21_n_0\,
      O => \diff_sec[3]_i_7_n_0\
    );
\diff_sec[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004040444"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_5_n_0\,
      I2 => \diff_sec[4]_i_40_n_0\,
      I3 => \diff_sec[3]_i_11_n_0\,
      I4 => \diff_csec[7]_i_4_n_0\,
      I5 => \diff_sec[3]_i_15_n_0\,
      O => \diff_sec[3]_i_8_n_0\
    );
\diff_sec[3]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"D"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[3]_i_9_n_0\
    );
\diff_sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A88AAAAAAAAAAAA"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[4]_i_2_n_0\,
      I2 => \diff_sec[4]_i_3_n_0\,
      I3 => \diff_sec[4]_i_4_n_0\,
      I4 => \diff_sec[4]_i_5_n_0\,
      I5 => \diff_sec[4]_i_6_n_0\,
      O => \diff_sec[4]_i_1_n_0\
    );
\diff_sec[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE2EEE2EEEEEEE2"
    )
        port map (
      I0 => \diff_csec_reg[7]_i_8_n_5\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec[4]_i_25_n_0\,
      I3 => \diff_sec[4]_i_26_n_0\,
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => \diff_sec[4]_i_27_n_0\,
      O => \diff_sec[4]_i_10_n_0\
    );
\diff_sec[4]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      O => \diff_sec[4]_i_100_n_0\
    );
\diff_sec[4]_i_101\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"42"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(7),
      O => \diff_sec[4]_i_101_n_0\
    );
\diff_sec[4]_i_102\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(11),
      I3 => \^co\(0),
      I4 => \total_prev__0\(11),
      O => \diff_sec[4]_i_102_n_0\
    );
\diff_sec[4]_i_103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(10),
      I3 => \^co\(0),
      I4 => \total_prev__0\(10),
      O => \diff_sec[4]_i_103_n_0\
    );
\diff_sec[4]_i_104\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(8),
      I4 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_104_n_0\
    );
\diff_sec[4]_i_105\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BD4242BD"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(7),
      I3 => \total_prev__0\(8),
      I4 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_105_n_0\
    );
\diff_sec[4]_i_106\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_106_n_0\
    );
\diff_sec[4]_i_107\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      O => \diff_sec[4]_i_107_n_0\
    );
\diff_sec[4]_i_108\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_108_n_0\
    );
\diff_sec[4]_i_109\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(7),
      O => \diff_sec[4]_i_109_n_0\
    );
\diff_sec[4]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => \diff_csec[7]_i_12_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      I2 => \diff_csec[7]_i_14_n_0\,
      I3 => \diff_csec[7]_i_13_n_0\,
      O => \diff_sec[4]_i_11_n_0\
    );
\diff_sec[4]_i_110\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(11),
      I3 => \^co\(0),
      I4 => \total_prev__0\(11),
      O => \diff_sec[4]_i_110_n_0\
    );
\diff_sec[4]_i_111\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(9),
      I4 => \^co\(0),
      O => \diff_sec[4]_i_111_n_0\
    );
\diff_sec[4]_i_112\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(9),
      I3 => \^co\(0),
      I4 => \total_prev__0\(9),
      O => \diff_sec[4]_i_112_n_0\
    );
\diff_sec[4]_i_113\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3C5AC3A5"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \total_tmp__0\(7),
      I2 => \total_tmp__0\(8),
      I3 => \^co\(0),
      I4 => \total_prev__0\(8),
      O => \diff_sec[4]_i_113_n_0\
    );
\diff_sec[4]_i_114\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_114_n_0\
    );
\diff_sec[4]_i_115\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      O => \diff_sec[4]_i_115_n_0\
    );
\diff_sec[4]_i_116\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_116_n_0\
    );
\diff_sec[4]_i_117\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      O => \diff_sec[4]_i_117_n_0\
    );
\diff_sec[4]_i_118\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(11),
      I3 => \^co\(0),
      I4 => \total_prev__0\(11),
      O => \diff_sec[4]_i_118_n_0\
    );
\diff_sec[4]_i_119\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(10),
      I3 => \^co\(0),
      I4 => \total_prev__0\(10),
      O => \diff_sec[4]_i_119_n_0\
    );
\diff_sec[4]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2EEE2EEEEEEEE"
    )
        port map (
      I0 => \diff_sec_reg[4]_i_28_n_7\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec[4]_i_29_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_sec[4]_i_30_n_0\,
      I5 => \diff_sec[4]_i_31_n_0\,
      O => \diff_sec[4]_i_12_n_0\
    );
\diff_sec[4]_i_120\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(9),
      I3 => \^co\(0),
      I4 => \total_prev__0\(9),
      O => \diff_sec[4]_i_120_n_0\
    );
\diff_sec[4]_i_121\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66699666"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(7),
      I3 => \^co\(0),
      I4 => \total_prev__0\(7),
      O => \diff_sec[4]_i_121_n_0\
    );
\diff_sec[4]_i_122\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      O => \diff_sec[4]_i_122_n_0\
    );
\diff_sec[4]_i_123\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      O => \diff_sec[4]_i_123_n_0\
    );
\diff_sec[4]_i_124\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_124_n_0\
    );
\diff_sec[4]_i_125\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \^co\(0),
      I2 => \total_prev__0\(7),
      O => \diff_sec[4]_i_125_n_0\
    );
\diff_sec[4]_i_126\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_126_n_0\
    );
\diff_sec[4]_i_127\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(10),
      I3 => \^co\(0),
      I4 => \total_prev__0\(10),
      O => \diff_sec[4]_i_127_n_0\
    );
\diff_sec[4]_i_128\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(9),
      I3 => \^co\(0),
      I4 => \total_prev__0\(9),
      O => \diff_sec[4]_i_128_n_0\
    );
\diff_sec[4]_i_129\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \total_tmp__0\(7),
      I2 => \total_tmp__0\(8),
      I3 => \^co\(0),
      I4 => \total_prev__0\(8),
      O => \diff_sec[4]_i_129_n_0\
    );
\diff_sec[4]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[4]_i_13_n_0\
    );
\diff_sec[4]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_22_n_0\,
      O => \diff_sec[4]_i_14_n_0\
    );
\diff_sec[4]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBBFCB8FFFFFFFF"
    )
        port map (
      I0 => \diff_sec[4]_i_32_n_0\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec_reg[4]_i_33_n_7\,
      I3 => \diff_sec[4]_i_34_n_0\,
      I4 => \diff_sec_reg[4]_i_33_n_6\,
      I5 => \diff_sec[5]_i_10_n_0\,
      O => \diff_sec[4]_i_15_n_0\
    );
\diff_sec[4]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D111D11111111"
    )
        port map (
      I0 => \diff_sec_reg[4]_i_28_n_4\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec[4]_i_35_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_sec[4]_i_36_n_0\,
      I5 => \diff_sec[4]_i_37_n_0\,
      O => \diff_sec[4]_i_16_n_0\
    );
\diff_sec[4]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[5]_i_7_n_0\,
      I2 => \diff_sec[5]_i_8_n_0\,
      I3 => \diff_sec[5]_i_9_n_0\,
      O => \diff_sec[4]_i_17_n_0\
    );
\diff_sec[4]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF11111101"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_21_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      I3 => \diff_sec[4]_i_23_n_0\,
      I4 => \diff_sec[4]_i_38_n_0\,
      I5 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[4]_i_18_n_0\
    );
\diff_sec[4]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF40FFFF"
    )
        port map (
      I0 => \diff_sec[4]_i_39_n_0\,
      I1 => \diff_sec[4]_i_40_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      I3 => \diff_sec[5]_i_3_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[4]_i_19_n_0\
    );
\diff_sec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CECEEECE"
    )
        port map (
      I0 => \diff_sec[4]_i_7_n_0\,
      I1 => \diff_sec[4]_i_8_n_0\,
      I2 => \diff_sec[4]_i_9_n_0\,
      I3 => \diff_sec[4]_i_10_n_0\,
      I4 => \diff_sec[4]_i_11_n_0\,
      I5 => \diff_csec[7]_i_3_n_0\,
      O => \diff_sec[4]_i_2_n_0\
    );
\diff_sec[4]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08AA"
    )
        port map (
      I0 => \diff_sec[5]_i_3_n_0\,
      I1 => \diff_csec[7]_i_14_n_0\,
      I2 => \diff_sec[4]_i_41_n_0\,
      I3 => \diff_csec[7]_i_6_n_0\,
      O => \diff_sec[4]_i_20_n_0\
    );
\diff_sec[4]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \diff_sec[4]_i_22_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      O => \diff_sec[4]_i_21_n_0\
    );
\diff_sec[4]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E2E2EEE2EEEEEEEE"
    )
        port map (
      I0 => \diff_sec_reg[4]_i_28_n_6\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec[4]_i_42_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_sec[4]_i_43_n_0\,
      I5 => \diff_sec[4]_i_44_n_0\,
      O => \diff_sec[4]_i_22_n_0\
    );
\diff_sec[4]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[4]_i_23_n_0\
    );
\diff_sec[4]_i_24\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[4]_i_24_n_0\
    );
\diff_sec[4]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFACA0A0A3A0A"
    )
        port map (
      I0 => data1(6),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(6),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(6),
      O => \diff_sec[4]_i_25_n_0\
    );
\diff_sec[4]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404045404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(6),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data8(6),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data9(6),
      O => \diff_sec[4]_i_26_n_0\
    );
\diff_sec[4]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(6),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(6),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(6),
      O => \diff_sec[4]_i_27_n_0\
    );
\diff_sec[4]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404045404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(8),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data8(8),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data9(8),
      O => \diff_sec[4]_i_29_n_0\
    );
\diff_sec[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000F10000"
    )
        port map (
      I0 => \diff_sec[4]_i_12_n_0\,
      I1 => \diff_sec[4]_i_13_n_0\,
      I2 => \diff_sec[4]_i_14_n_0\,
      I3 => \diff_sec[4]_i_15_n_0\,
      I4 => \diff_sec[4]_i_16_n_0\,
      I5 => \diff_sec[4]_i_17_n_0\,
      O => \diff_sec[4]_i_3_n_0\
    );
\diff_sec[4]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(8),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(8),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(8),
      O => \diff_sec[4]_i_30_n_0\
    );
\diff_sec[4]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(8),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(8),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(8),
      O => \diff_sec[4]_i_31_n_0\
    );
\diff_sec[4]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \diff_sec[5]_i_32_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_33_n_0\,
      I3 => \diff_sec[5]_i_34_n_0\,
      O => \diff_sec[4]_i_32_n_0\
    );
\diff_sec[4]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
        port map (
      I0 => \diff_sec[5]_i_29_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_30_n_0\,
      I3 => \diff_sec[5]_i_31_n_0\,
      O => \diff_sec[4]_i_34_n_0\
    );
\diff_sec[4]_i_35\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454540404045404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(11),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data8(11),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data9(11),
      O => \diff_sec[4]_i_35_n_0\
    );
\diff_sec[4]_i_36\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(11),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(11),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(11),
      O => \diff_sec[4]_i_36_n_0\
    );
\diff_sec[4]_i_37\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(11),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(11),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(11),
      O => \diff_sec[4]_i_37_n_0\
    );
\diff_sec[4]_i_38\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[7]_i_15_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      O => \diff_sec[4]_i_38_n_0\
    );
\diff_sec[4]_i_39\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040444455555555"
    )
        port map (
      I0 => \diff_csec[7]_i_4_n_0\,
      I1 => \diff_csec[7]_i_15_n_0\,
      I2 => \diff_csec[7]_i_13_n_0\,
      I3 => \diff_csec[7]_i_14_n_0\,
      I4 => \diff_csec[7]_i_12_n_0\,
      I5 => \diff_sec[4]_i_10_n_0\,
      O => \diff_sec[4]_i_39_n_0\
    );
\diff_sec[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[4]_i_18_n_0\,
      I1 => \diff_sec[4]_i_19_n_0\,
      O => \diff_sec[4]_i_4_n_0\
    );
\diff_sec[4]_i_40\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[4]_i_12_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[4]_i_40_n_0\
    );
\diff_sec[4]_i_41\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \diff_csec[7]_i_13_n_0\,
      I1 => \diff_csec[7]_i_12_n_0\,
      O => \diff_sec[4]_i_41_n_0\
    );
\diff_sec[4]_i_42\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5505454555004040"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data8(9),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => data9(9),
      I4 => \diff_min[0]_i_5_n_0\,
      I5 => data7(9),
      O => \diff_sec[4]_i_42_n_0\
    );
\diff_sec[4]_i_43\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(9),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(9),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(9),
      O => \diff_sec[4]_i_43_n_0\
    );
\diff_sec[4]_i_44\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(9),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(9),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(9),
      O => \diff_sec[4]_i_44_n_0\
    );
\diff_sec[4]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_45_n_0\
    );
\diff_sec[4]_i_46\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      O => \diff_sec[4]_i_46_n_0\
    );
\diff_sec[4]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_47_n_0\
    );
\diff_sec[4]_i_48\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      O => \diff_sec[4]_i_48_n_0\
    );
\diff_sec[4]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A59669A5"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_49_n_0\
    );
\diff_sec[4]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3B"
    )
        port map (
      I0 => \diff_sec[4]_i_4_n_0\,
      I1 => \diff_sec[5]_i_2_n_0\,
      I2 => \diff_sec[4]_i_20_n_0\,
      O => \diff_sec[4]_i_5_n_0\
    );
\diff_sec[4]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(9),
      I4 => \^co\(0),
      O => \diff_sec[4]_i_50_n_0\
    );
\diff_sec[4]_i_51\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A69965A"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(8),
      I4 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_51_n_0\
    );
\diff_sec[4]_i_52\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66699666"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(7),
      I3 => \^co\(0),
      I4 => \total_prev__0\(7),
      O => \diff_sec[4]_i_52_n_0\
    );
\diff_sec[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555000077570000"
    )
        port map (
      I0 => \diff_sec[5]_i_6_n_0\,
      I1 => \diff_sec[4]_i_21_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      I3 => \diff_sec[4]_i_23_n_0\,
      I4 => \diff_sec[5]_i_5_n_0\,
      I5 => \diff_sec[4]_i_24_n_0\,
      O => \diff_sec[4]_i_6_n_0\
    );
\diff_sec[4]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[4]_i_61_n_0\
    );
\diff_sec[4]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      O => \diff_sec[4]_i_62_n_0\
    );
\diff_sec[4]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[4]_i_63_n_0\
    );
\diff_sec[4]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[4]_i_64_n_0\
    );
\diff_sec[4]_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(15),
      I4 => \^co\(0),
      O => \diff_sec[4]_i_65_n_0\
    );
\diff_sec[4]_i_66\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_66_n_0\
    );
\diff_sec[4]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      O => \diff_sec[4]_i_67_n_0\
    );
\diff_sec[4]_i_68\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_68_n_0\
    );
\diff_sec[4]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      O => \diff_sec[4]_i_69_n_0\
    );
\diff_sec[4]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_sec[4]_i_22_n_0\,
      O => \diff_sec[4]_i_7_n_0\
    );
\diff_sec[4]_i_70\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(10),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(11),
      I3 => \^co\(0),
      I4 => \total_prev__0\(11),
      O => \diff_sec[4]_i_70_n_0\
    );
\diff_sec[4]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_71_n_0\
    );
\diff_sec[4]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A69965A"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(8),
      I4 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_72_n_0\
    );
\diff_sec[4]_i_73\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66699666"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(7),
      I3 => \^co\(0),
      I4 => \total_prev__0\(7),
      O => \diff_sec[4]_i_73_n_0\
    );
\diff_sec[4]_i_74\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      O => \diff_sec[4]_i_74_n_0\
    );
\diff_sec[4]_i_75\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      O => \diff_sec[4]_i_75_n_0\
    );
\diff_sec[4]_i_76\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_76_n_0\
    );
\diff_sec[4]_i_77\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \^co\(0),
      I2 => \total_prev__0\(7),
      O => \diff_sec[4]_i_77_n_0\
    );
\diff_sec[4]_i_78\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_78_n_0\
    );
\diff_sec[4]_i_79\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_79_n_0\
    );
\diff_sec[4]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \diff_sec[5]_i_5_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[4]_i_8_n_0\
    );
\diff_sec[4]_i_80\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(8),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(9),
      I3 => \^co\(0),
      I4 => \total_prev__0\(9),
      O => \diff_sec[4]_i_80_n_0\
    );
\diff_sec[4]_i_81\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(8),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(8),
      I3 => \total_tmp__0\(7),
      I4 => \total_prev__0\(7),
      O => \diff_sec[4]_i_81_n_0\
    );
\diff_sec[4]_i_82\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      O => \diff_sec[4]_i_82_n_0\
    );
\diff_sec[4]_i_83\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      O => \diff_sec[4]_i_83_n_0\
    );
\diff_sec[4]_i_84\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      O => \diff_sec[4]_i_84_n_0\
    );
\diff_sec[4]_i_85\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \^co\(0),
      I2 => \total_prev__0\(7),
      O => \diff_sec[4]_i_85_n_0\
    );
\diff_sec[4]_i_86\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_86_n_0\
    );
\diff_sec[4]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(10),
      I3 => \^co\(0),
      I4 => \total_prev__0\(10),
      O => \diff_sec[4]_i_87_n_0\
    );
\diff_sec[4]_i_88\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(8),
      I4 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_88_n_0\
    );
\diff_sec[4]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(8),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(8),
      I3 => \total_tmp__0\(7),
      I4 => \total_prev__0\(7),
      O => \diff_sec[4]_i_89_n_0\
    );
\diff_sec[4]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \diff_sec[4]_i_22_n_0\,
      I1 => \diff_csec[7]_i_4_n_0\,
      O => \diff_sec[4]_i_9_n_0\
    );
\diff_sec[4]_i_90\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      O => \diff_sec[4]_i_90_n_0\
    );
\diff_sec[4]_i_91\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      O => \diff_sec[4]_i_91_n_0\
    );
\diff_sec[4]_i_92\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(8),
      I2 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_92_n_0\
    );
\diff_sec[4]_i_93\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BD"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \^co\(0),
      I2 => \total_prev__0\(7),
      O => \diff_sec[4]_i_93_n_0\
    );
\diff_sec[4]_i_94\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_94_n_0\
    );
\diff_sec[4]_i_95\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(10),
      I4 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_95_n_0\
    );
\diff_sec[4]_i_96\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A69965A"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(9),
      I3 => \total_prev__0\(8),
      I4 => \total_tmp__0\(8),
      O => \diff_sec[4]_i_96_n_0\
    );
\diff_sec[4]_i_97\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \total_tmp__0\(7),
      I2 => \total_tmp__0\(8),
      I3 => \^co\(0),
      I4 => \total_prev__0\(8),
      O => \diff_sec[4]_i_97_n_0\
    );
\diff_sec[4]_i_98\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(10),
      I2 => \total_tmp__0\(10),
      O => \diff_sec[4]_i_98_n_0\
    );
\diff_sec[4]_i_99\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(9),
      O => \diff_sec[4]_i_99_n_0\
    );
\diff_sec[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => \diff_sec[5]_i_2_n_0\,
      O => \diff_sec[5]_i_1_n_0\
    );
\diff_sec[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D111D11111111"
    )
        port map (
      I0 => \diff_sec_reg[4]_i_33_n_5\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec[5]_i_26_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_sec[5]_i_27_n_0\,
      I5 => \diff_sec[5]_i_28_n_0\,
      O => \diff_sec[5]_i_10_n_0\
    );
\diff_sec[5]_i_100\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      O => \diff_sec[5]_i_100_n_0\
    );
\diff_sec[5]_i_101\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_101_n_0\
    );
\diff_sec[5]_i_102\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_102_n_0\
    );
\diff_sec[5]_i_103\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(15),
      I3 => \^co\(0),
      I4 => \total_prev__0\(15),
      O => \diff_sec[5]_i_103_n_0\
    );
\diff_sec[5]_i_104\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(13),
      I3 => \total_prev__0\(13),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_104_n_0\
    );
\diff_sec[5]_i_105\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(13),
      I4 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_105_n_0\
    );
\diff_sec[5]_i_106\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(12),
      I4 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_106_n_0\
    );
\diff_sec[5]_i_107\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_107_n_0\
    );
\diff_sec[5]_i_108\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_108_n_0\
    );
\diff_sec[5]_i_109\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_109_n_0\
    );
\diff_sec[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFFFFFAE0000"
    )
        port map (
      I0 => \diff_sec[5]_i_29_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_30_n_0\,
      I3 => \diff_sec[5]_i_31_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_sec_reg[4]_i_33_n_6\,
      O => \diff_sec[5]_i_11_n_0\
    );
\diff_sec[5]_i_110\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \total_prev__0\(12),
      O => \diff_sec[5]_i_110_n_0\
    );
\diff_sec[5]_i_111\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(15),
      I3 => \^co\(0),
      I4 => \total_prev__0\(15),
      O => \diff_sec[5]_i_111_n_0\
    );
\diff_sec[5]_i_112\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A59669A5"
    )
        port map (
      I0 => \total_prev__0\(14),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(14),
      I3 => \total_prev__0\(13),
      I4 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_112_n_0\
    );
\diff_sec[5]_i_113\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(13),
      I3 => \^co\(0),
      I4 => \total_prev__0\(13),
      O => \diff_sec[5]_i_113_n_0\
    );
\diff_sec[5]_i_114\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(11),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_114_n_0\
    );
\diff_sec[5]_i_115\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_115_n_0\
    );
\diff_sec[5]_i_116\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      O => \diff_sec[5]_i_116_n_0\
    );
\diff_sec[5]_i_117\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_117_n_0\
    );
\diff_sec[5]_i_118\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_118_n_0\
    );
\diff_sec[5]_i_119\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(15),
      I3 => \^co\(0),
      I4 => \total_prev__0\(15),
      O => \diff_sec[5]_i_119_n_0\
    );
\diff_sec[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFFFFFAE0000"
    )
        port map (
      I0 => \diff_sec[5]_i_32_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_33_n_0\,
      I3 => \diff_sec[5]_i_34_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_sec_reg[4]_i_33_n_7\,
      O => \diff_sec[5]_i_12_n_0\
    );
\diff_sec[5]_i_120\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(13),
      I3 => \total_prev__0\(13),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_120_n_0\
    );
\diff_sec[5]_i_121\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A69965A"
    )
        port map (
      I0 => \total_prev__0\(13),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(13),
      I3 => \total_prev__0\(12),
      I4 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_121_n_0\
    );
\diff_sec[5]_i_122\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A59669A5"
    )
        port map (
      I0 => \total_prev__0\(12),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(11),
      I4 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_122_n_0\
    );
\diff_sec[5]_i_123\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_123_n_0\
    );
\diff_sec[5]_i_124\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(15),
      O => \diff_sec[5]_i_124_n_0\
    );
\diff_sec[5]_i_125\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_125_n_0\
    );
\diff_sec[5]_i_126\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_126_n_0\
    );
\diff_sec[5]_i_127\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(16),
      I3 => \^co\(0),
      I4 => \total_prev__0\(16),
      O => \diff_sec[5]_i_127_n_0\
    );
\diff_sec[5]_i_128\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_128_n_0\
    );
\diff_sec[5]_i_129\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(15),
      O => \diff_sec[5]_i_129_n_0\
    );
\diff_sec[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5404540454040404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(12),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => \diff_min[1]_i_7_n_0\,
      I4 => data8(12),
      I5 => \diff_min[0]_i_5_n_0\,
      O => \diff_sec[5]_i_13_n_0\
    );
\diff_sec[5]_i_130\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_130_n_0\
    );
\diff_sec[5]_i_131\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_131_n_0\
    );
\diff_sec[5]_i_132\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(16),
      I3 => \^co\(0),
      I4 => \total_prev__0\(16),
      O => \diff_sec[5]_i_132_n_0\
    );
\diff_sec[5]_i_133\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_133_n_0\
    );
\diff_sec[5]_i_134\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(15),
      O => \diff_sec[5]_i_134_n_0\
    );
\diff_sec[5]_i_135\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_135_n_0\
    );
\diff_sec[5]_i_136\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_136_n_0\
    );
\diff_sec[5]_i_137\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(16),
      I3 => \^co\(0),
      I4 => \total_prev__0\(16),
      O => \diff_sec[5]_i_137_n_0\
    );
\diff_sec[5]_i_138\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_138_n_0\
    );
\diff_sec[5]_i_139\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(15),
      O => \diff_sec[5]_i_139_n_0\
    );
\diff_sec[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(12),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(12),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(12),
      O => \diff_sec[5]_i_14_n_0\
    );
\diff_sec[5]_i_140\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_140_n_0\
    );
\diff_sec[5]_i_141\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_141_n_0\
    );
\diff_sec[5]_i_142\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(16),
      I3 => \^co\(0),
      I4 => \total_prev__0\(16),
      O => \diff_sec[5]_i_142_n_0\
    );
\diff_sec[5]_i_143\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_143_n_0\
    );
\diff_sec[5]_i_144\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(15),
      O => \diff_sec[5]_i_144_n_0\
    );
\diff_sec[5]_i_145\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_145_n_0\
    );
\diff_sec[5]_i_146\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_146_n_0\
    );
\diff_sec[5]_i_147\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(16),
      I3 => \^co\(0),
      I4 => \total_prev__0\(16),
      O => \diff_sec[5]_i_147_n_0\
    );
\diff_sec[5]_i_148\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_148_n_0\
    );
\diff_sec[5]_i_149\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      O => \diff_sec[5]_i_149_n_0\
    );
\diff_sec[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(12),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(12),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(12),
      O => \diff_sec[5]_i_15_n_0\
    );
\diff_sec[5]_i_150\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_150_n_0\
    );
\diff_sec[5]_i_151\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_151_n_0\
    );
\diff_sec[5]_i_152\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(15),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_152_n_0\
    );
\diff_sec[5]_i_153\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_153_n_0\
    );
\diff_sec[5]_i_154\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      O => \diff_sec[5]_i_154_n_0\
    );
\diff_sec[5]_i_155\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_155_n_0\
    );
\diff_sec[5]_i_156\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_156_n_0\
    );
\diff_sec[5]_i_157\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(15),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_157_n_0\
    );
\diff_sec[5]_i_158\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(16),
      O => \diff_sec[5]_i_158_n_0\
    );
\diff_sec[5]_i_159\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      O => \diff_sec[5]_i_159_n_0\
    );
\diff_sec[5]_i_160\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"96999969"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_160_n_0\
    );
\diff_sec[5]_i_161\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(17),
      I3 => \^co\(0),
      I4 => \total_prev__0\(17),
      O => \diff_sec[5]_i_161_n_0\
    );
\diff_sec[5]_i_162\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(16),
      I1 => \total_prev__0\(16),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(15),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_162_n_0\
    );
\diff_sec[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFACA0A0A3A0A"
    )
        port map (
      I0 => data1(13),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(13),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(13),
      O => \diff_sec[5]_i_17_n_0\
    );
\diff_sec[5]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04540404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(13),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => \diff_min[0]_i_5_n_0\,
      I4 => data8(13),
      O => \diff_sec[5]_i_18_n_0\
    );
\diff_sec[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(13),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(13),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(13),
      O => \diff_sec[5]_i_19_n_0\
    );
\diff_sec[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => \diff_sec[5]_i_3_n_0\,
      I1 => \diff_sec[5]_i_4_n_0\,
      I2 => \diff_sec[5]_i_5_n_0\,
      I3 => \diff_sec[5]_i_6_n_0\,
      O => \diff_sec[5]_i_2_n_0\
    );
\diff_sec[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFACA0A0A3A0A"
    )
        port map (
      I0 => data1(14),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(14),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(14),
      O => \diff_sec[5]_i_20_n_0\
    );
\diff_sec[5]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(14),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(14),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(14),
      O => \diff_sec[5]_i_21_n_0\
    );
\diff_sec[5]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05450040"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data8(14),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => \diff_min[0]_i_5_n_0\,
      I4 => data7(14),
      O => \diff_sec[5]_i_22_n_0\
    );
\diff_sec[5]_i_23\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04540404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(15),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => \diff_min[0]_i_5_n_0\,
      I4 => data8(15),
      O => \diff_sec[5]_i_23_n_0\
    );
\diff_sec[5]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(15),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(15),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(15),
      O => \diff_sec[5]_i_24_n_0\
    );
\diff_sec[5]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35053535F5C5F5F5"
    )
        port map (
      I0 => data1(15),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => data3(15),
      I5 => data2(15),
      O => \diff_sec[5]_i_25_n_0\
    );
\diff_sec[5]_i_26\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04540404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(18),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => \diff_min[0]_i_5_n_0\,
      I4 => data8(18),
      O => \diff_sec[5]_i_26_n_0\
    );
\diff_sec[5]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(18),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(18),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(18),
      O => \diff_sec[5]_i_27_n_0\
    );
\diff_sec[5]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35350535F5F5C5F5"
    )
        port map (
      I0 => data1(18),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(18),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(18),
      O => \diff_sec[5]_i_28_n_0\
    );
\diff_sec[5]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFACA0A0A3A0A"
    )
        port map (
      I0 => data1(17),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(17),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(17),
      O => \diff_sec[5]_i_29_n_0\
    );
\diff_sec[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \diff_sec[3]_i_12_n_0\,
      I1 => \diff_sec[4]_i_16_n_0\,
      O => \diff_sec[5]_i_3_n_0\
    );
\diff_sec[5]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(17),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(17),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(17),
      O => \diff_sec[5]_i_30_n_0\
    );
\diff_sec[5]_i_31\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05450040"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data8(17),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => \diff_min[0]_i_5_n_0\,
      I4 => data7(17),
      O => \diff_sec[5]_i_31_n_0\
    );
\diff_sec[5]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACAFACA0A0A3A0A"
    )
        port map (
      I0 => data1(16),
      I1 => \diff_min[2]_i_4_n_0\,
      I2 => \diff_min[3]_i_4_n_0\,
      I3 => data3(16),
      I4 => \diff_min[1]_i_3_n_0\,
      I5 => data2(16),
      O => \diff_sec[5]_i_32_n_0\
    );
\diff_sec[5]_i_33\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CCC15553FFF1555"
    )
        port map (
      I0 => data4(16),
      I1 => \diff_min[2]_i_3_n_0\,
      I2 => \diff_min[0]_i_6_n_0\,
      I3 => data6(16),
      I4 => \diff_min[0]_i_7_n_0\,
      I5 => data5(16),
      O => \diff_sec[5]_i_33_n_0\
    );
\diff_sec[5]_i_34\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04540404"
    )
        port map (
      I0 => \diff_min[0]_i_6_n_0\,
      I1 => data7(16),
      I2 => \diff_min[1]_i_2_n_0\,
      I3 => \diff_min[0]_i_5_n_0\,
      I4 => data8(16),
      O => \diff_sec[5]_i_34_n_0\
    );
\diff_sec[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \diff_sec[4]_i_22_n_0\,
      I1 => \diff_sec[4]_i_12_n_0\,
      I2 => \diff_csec[7]_i_4_n_0\,
      O => \diff_sec[5]_i_4_n_0\
    );
\diff_sec[5]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_43_n_0\
    );
\diff_sec[5]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_44_n_0\
    );
\diff_sec[5]_i_45\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      O => \diff_sec[5]_i_45_n_0\
    );
\diff_sec[5]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_46_n_0\
    );
\diff_sec[5]_i_47\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D2B42D4B"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(15),
      I3 => \^co\(0),
      I4 => \total_prev__0\(15),
      O => \diff_sec[5]_i_47_n_0\
    );
\diff_sec[5]_i_48\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(14),
      I3 => \^co\(0),
      I4 => \total_prev__0\(14),
      O => \diff_sec[5]_i_48_n_0\
    );
\diff_sec[5]_i_49\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(12),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_49_n_0\
    );
\diff_sec[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => \diff_sec[5]_i_7_n_0\,
      I1 => \diff_sec[5]_i_8_n_0\,
      I2 => \diff_sec[5]_i_9_n_0\,
      I3 => \diff_sec[5]_i_10_n_0\,
      I4 => \diff_sec[5]_i_11_n_0\,
      I5 => \diff_sec[5]_i_12_n_0\,
      O => \diff_sec[5]_i_5_n_0\
    );
\diff_sec[5]_i_50\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(12),
      I3 => \^co\(0),
      I4 => \total_prev__0\(12),
      O => \diff_sec[5]_i_50_n_0\
    );
\diff_sec[5]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_59_n_0\
    );
\diff_sec[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEFFFFFFAEFF0000"
    )
        port map (
      I0 => \diff_sec[5]_i_13_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_14_n_0\,
      I3 => \diff_sec[5]_i_15_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_sec_reg[5]_i_16_n_7\,
      O => \diff_sec[5]_i_6_n_0\
    );
\diff_sec[5]_i_60\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      O => \diff_sec[5]_i_60_n_0\
    );
\diff_sec[5]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_61_n_0\
    );
\diff_sec[5]_i_62\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \total_prev__0\(12),
      O => \diff_sec[5]_i_62_n_0\
    );
\diff_sec[5]_i_63\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A59669A5"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(14),
      I4 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_63_n_0\
    );
\diff_sec[5]_i_64\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(14),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(13),
      I3 => \total_prev__0\(13),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_64_n_0\
    );
\diff_sec[5]_i_65\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A69965A"
    )
        port map (
      I0 => \total_prev__0\(13),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(13),
      I3 => \total_prev__0\(12),
      I4 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_65_n_0\
    );
\diff_sec[5]_i_66\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(11),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_66_n_0\
    );
\diff_sec[5]_i_67\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_67_n_0\
    );
\diff_sec[5]_i_68\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_68_n_0\
    );
\diff_sec[5]_i_69\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      O => \diff_sec[5]_i_69_n_0\
    );
\diff_sec[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEFFFFEEFE0000"
    )
        port map (
      I0 => \diff_sec[5]_i_17_n_0\,
      I1 => \diff_sec[5]_i_18_n_0\,
      I2 => \diff_min[1]_i_3_n_0\,
      I3 => \diff_sec[5]_i_19_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_sec_reg[5]_i_16_n_6\,
      O => \diff_sec[5]_i_7_n_0\
    );
\diff_sec[5]_i_70\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_70_n_0\
    );
\diff_sec[5]_i_71\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A59669A5"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(14),
      I4 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_71_n_0\
    );
\diff_sec[5]_i_72\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A59669A5"
    )
        port map (
      I0 => \total_prev__0\(14),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(14),
      I3 => \total_prev__0\(13),
      I4 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_72_n_0\
    );
\diff_sec[5]_i_73\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(12),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_73_n_0\
    );
\diff_sec[5]_i_74\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(12),
      I3 => \^co\(0),
      I4 => \total_prev__0\(12),
      O => \diff_sec[5]_i_74_n_0\
    );
\diff_sec[5]_i_75\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      O => \diff_sec[5]_i_75_n_0\
    );
\diff_sec[5]_i_76\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_76_n_0\
    );
\diff_sec[5]_i_77\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_77_n_0\
    );
\diff_sec[5]_i_78\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_78_n_0\
    );
\diff_sec[5]_i_79\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(14),
      I4 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_79_n_0\
    );
\diff_sec[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAEFFFFFFAE0000"
    )
        port map (
      I0 => \diff_sec[5]_i_20_n_0\,
      I1 => \diff_min[1]_i_3_n_0\,
      I2 => \diff_sec[5]_i_21_n_0\,
      I3 => \diff_sec[5]_i_22_n_0\,
      I4 => \diff_min[0]_i_2_n_0\,
      I5 => \diff_sec_reg[5]_i_16_n_5\,
      O => \diff_sec[5]_i_8_n_0\
    );
\diff_sec[5]_i_80\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(13),
      I3 => \total_prev__0\(14),
      I4 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_80_n_0\
    );
\diff_sec[5]_i_81\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(13),
      I4 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_81_n_0\
    );
\diff_sec[5]_i_82\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(12),
      I3 => \^co\(0),
      I4 => \total_prev__0\(12),
      O => \diff_sec[5]_i_82_n_0\
    );
\diff_sec[5]_i_83\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      O => \diff_sec[5]_i_83_n_0\
    );
\diff_sec[5]_i_84\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_84_n_0\
    );
\diff_sec[5]_i_85\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_85_n_0\
    );
\diff_sec[5]_i_86\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_86_n_0\
    );
\diff_sec[5]_i_87\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(14),
      I4 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_87_n_0\
    );
\diff_sec[5]_i_88\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(14),
      I3 => \^co\(0),
      I4 => \total_prev__0\(14),
      O => \diff_sec[5]_i_88_n_0\
    );
\diff_sec[5]_i_89\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B4D24B2D"
    )
        port map (
      I0 => \total_tmp__0\(12),
      I1 => \total_prev__0\(12),
      I2 => \total_tmp__0\(13),
      I3 => \^co\(0),
      I4 => \total_prev__0\(13),
      O => \diff_sec[5]_i_89_n_0\
    );
\diff_sec[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1D1D111D11111111"
    )
        port map (
      I0 => \diff_sec_reg[5]_i_16_n_4\,
      I1 => \diff_min[0]_i_2_n_0\,
      I2 => \diff_sec[5]_i_23_n_0\,
      I3 => \diff_min[1]_i_3_n_0\,
      I4 => \diff_sec[5]_i_24_n_0\,
      I5 => \diff_sec[5]_i_25_n_0\,
      O => \diff_sec[5]_i_9_n_0\
    );
\diff_sec[5]_i_90\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A59669A5"
    )
        port map (
      I0 => \total_prev__0\(12),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(11),
      I4 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_90_n_0\
    );
\diff_sec[5]_i_91\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      O => \diff_sec[5]_i_91_n_0\
    );
\diff_sec[5]_i_92\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(13),
      O => \diff_sec[5]_i_92_n_0\
    );
\diff_sec[5]_i_93\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      O => \diff_sec[5]_i_93_n_0\
    );
\diff_sec[5]_i_94\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"24"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      O => \diff_sec[5]_i_94_n_0\
    );
\diff_sec[5]_i_95\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5A96695A"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \^co\(0),
      I2 => \total_tmp__0\(15),
      I3 => \total_prev__0\(14),
      I4 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_95_n_0\
    );
\diff_sec[5]_i_96\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4B2DB4D2"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(14),
      I3 => \^co\(0),
      I4 => \total_prev__0\(14),
      O => \diff_sec[5]_i_96_n_0\
    );
\diff_sec[5]_i_97\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66966966"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(12),
      I4 => \^co\(0),
      O => \diff_sec[5]_i_97_n_0\
    );
\diff_sec[5]_i_98\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DB2424DB"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(11),
      I3 => \total_prev__0\(12),
      I4 => \total_tmp__0\(12),
      O => \diff_sec[5]_i_98_n_0\
    );
\diff_sec[5]_i_99\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E7"
    )
        port map (
      I0 => \^co\(0),
      I1 => \total_prev__0\(14),
      I2 => \total_tmp__0\(14),
      O => \diff_sec[5]_i_99_n_0\
    );
\diff_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_sec[0]_i_1_n_0\,
      Q => diff_sec(0)
    );
\diff_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_sec[1]_i_1_n_0\,
      Q => diff_sec(1)
    );
\diff_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_sec[2]_i_1_n_0\,
      Q => diff_sec(2)
    );
\diff_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_sec[3]_i_1_n_0\,
      Q => diff_sec(3)
    );
\diff_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_sec[4]_i_1_n_0\,
      Q => diff_sec(4)
    );
\diff_sec_reg[4]_i_28\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_8_n_0\,
      CO(3) => \diff_sec_reg[4]_i_28_n_0\,
      CO(2) => \diff_sec_reg[4]_i_28_n_1\,
      CO(1) => \diff_sec_reg[4]_i_28_n_2\,
      CO(0) => \diff_sec_reg[4]_i_28_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_45_n_0\,
      DI(2) => \diff_sec[4]_i_46_n_0\,
      DI(1) => \diff_sec[4]_i_47_n_0\,
      DI(0) => \diff_sec[4]_i_48_n_0\,
      O(3) => \diff_sec_reg[4]_i_28_n_4\,
      O(2) => \diff_sec_reg[4]_i_28_n_5\,
      O(1) => \diff_sec_reg[4]_i_28_n_6\,
      O(0) => \diff_sec_reg[4]_i_28_n_7\,
      S(3) => \diff_sec[4]_i_49_n_0\,
      S(2) => \diff_sec[4]_i_50_n_0\,
      S(1) => \diff_sec[4]_i_51_n_0\,
      S(0) => \diff_sec[4]_i_52_n_0\
    );
\diff_sec_reg[4]_i_33\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_16_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[4]_i_33_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[4]_i_33_n_2\,
      CO(0) => \diff_sec_reg[4]_i_33_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[4]_i_61_n_0\,
      DI(0) => \diff_sec[4]_i_62_n_0\,
      O(3) => \NLW_diff_sec_reg[4]_i_33_O_UNCONNECTED\(3),
      O(2) => \diff_sec_reg[4]_i_33_n_5\,
      O(1) => \diff_sec_reg[4]_i_33_n_6\,
      O(0) => \diff_sec_reg[4]_i_33_n_7\,
      S(3) => '0',
      S(2) => \diff_sec[4]_i_63_n_0\,
      S(1) => \diff_sec[4]_i_64_n_0\,
      S(0) => \diff_sec[4]_i_65_n_0\
    );
\diff_sec_reg[4]_i_53\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_24_n_0\,
      CO(3) => \diff_sec_reg[4]_i_53_n_0\,
      CO(2) => \diff_sec_reg[4]_i_53_n_1\,
      CO(1) => \diff_sec_reg[4]_i_53_n_2\,
      CO(0) => \diff_sec_reg[4]_i_53_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_66_n_0\,
      DI(2) => \diff_sec[4]_i_67_n_0\,
      DI(1) => \diff_sec[4]_i_68_n_0\,
      DI(0) => \diff_sec[4]_i_69_n_0\,
      O(3 downto 0) => data7(11 downto 8),
      S(3) => \diff_sec[4]_i_70_n_0\,
      S(2) => \diff_sec[4]_i_71_n_0\,
      S(1) => \diff_sec[4]_i_72_n_0\,
      S(0) => \diff_sec[4]_i_73_n_0\
    );
\diff_sec_reg[4]_i_54\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_25_n_0\,
      CO(3) => \diff_sec_reg[4]_i_54_n_0\,
      CO(2) => \diff_sec_reg[4]_i_54_n_1\,
      CO(1) => \diff_sec_reg[4]_i_54_n_2\,
      CO(0) => \diff_sec_reg[4]_i_54_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_74_n_0\,
      DI(2) => \diff_sec[4]_i_75_n_0\,
      DI(1) => \diff_sec[4]_i_76_n_0\,
      DI(0) => \diff_sec[4]_i_77_n_0\,
      O(3 downto 0) => data8(11 downto 8),
      S(3) => \diff_sec[4]_i_78_n_0\,
      S(2) => \diff_sec[4]_i_79_n_0\,
      S(1) => \diff_sec[4]_i_80_n_0\,
      S(0) => \diff_sec[4]_i_81_n_0\
    );
\diff_sec_reg[4]_i_55\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_26_n_0\,
      CO(3) => \diff_sec_reg[4]_i_55_n_0\,
      CO(2) => \diff_sec_reg[4]_i_55_n_1\,
      CO(1) => \diff_sec_reg[4]_i_55_n_2\,
      CO(0) => \diff_sec_reg[4]_i_55_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_82_n_0\,
      DI(2) => \diff_sec[4]_i_83_n_0\,
      DI(1) => \diff_sec[4]_i_84_n_0\,
      DI(0) => \diff_sec[4]_i_85_n_0\,
      O(3 downto 0) => data4(11 downto 8),
      S(3) => \diff_sec[4]_i_86_n_0\,
      S(2) => \diff_sec[4]_i_87_n_0\,
      S(1) => \diff_sec[4]_i_88_n_0\,
      S(0) => \diff_sec[4]_i_89_n_0\
    );
\diff_sec_reg[4]_i_56\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_27_n_0\,
      CO(3) => \diff_sec_reg[4]_i_56_n_0\,
      CO(2) => \diff_sec_reg[4]_i_56_n_1\,
      CO(1) => \diff_sec_reg[4]_i_56_n_2\,
      CO(0) => \diff_sec_reg[4]_i_56_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_90_n_0\,
      DI(2) => \diff_sec[4]_i_91_n_0\,
      DI(1) => \diff_sec[4]_i_92_n_0\,
      DI(0) => \diff_sec[4]_i_93_n_0\,
      O(3 downto 0) => data6(11 downto 8),
      S(3) => \diff_sec[4]_i_94_n_0\,
      S(2) => \diff_sec[4]_i_95_n_0\,
      S(1) => \diff_sec[4]_i_96_n_0\,
      S(0) => \diff_sec[4]_i_97_n_0\
    );
\diff_sec_reg[4]_i_57\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_28_n_0\,
      CO(3) => \diff_sec_reg[4]_i_57_n_0\,
      CO(2) => \diff_sec_reg[4]_i_57_n_1\,
      CO(1) => \diff_sec_reg[4]_i_57_n_2\,
      CO(0) => \diff_sec_reg[4]_i_57_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_98_n_0\,
      DI(2) => \diff_sec[4]_i_99_n_0\,
      DI(1) => \diff_sec[4]_i_100_n_0\,
      DI(0) => \diff_sec[4]_i_101_n_0\,
      O(3 downto 0) => data5(11 downto 8),
      S(3) => \diff_sec[4]_i_102_n_0\,
      S(2) => \diff_sec[4]_i_103_n_0\,
      S(1) => \diff_sec[4]_i_104_n_0\,
      S(0) => \diff_sec[4]_i_105_n_0\
    );
\diff_sec_reg[4]_i_58\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_29_n_0\,
      CO(3) => \diff_sec_reg[4]_i_58_n_0\,
      CO(2) => \diff_sec_reg[4]_i_58_n_1\,
      CO(1) => \diff_sec_reg[4]_i_58_n_2\,
      CO(0) => \diff_sec_reg[4]_i_58_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_106_n_0\,
      DI(2) => \diff_sec[4]_i_107_n_0\,
      DI(1) => \diff_sec[4]_i_108_n_0\,
      DI(0) => \diff_sec[4]_i_109_n_0\,
      O(3 downto 0) => data1(11 downto 8),
      S(3) => \diff_sec[4]_i_110_n_0\,
      S(2) => \diff_sec[4]_i_111_n_0\,
      S(1) => \diff_sec[4]_i_112_n_0\,
      S(0) => \diff_sec[4]_i_113_n_0\
    );
\diff_sec_reg[4]_i_59\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_30_n_0\,
      CO(3) => \diff_sec_reg[4]_i_59_n_0\,
      CO(2) => \diff_sec_reg[4]_i_59_n_1\,
      CO(1) => \diff_sec_reg[4]_i_59_n_2\,
      CO(0) => \diff_sec_reg[4]_i_59_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_114_n_0\,
      DI(2) => \diff_sec[4]_i_115_n_0\,
      DI(1) => \diff_sec[4]_i_116_n_0\,
      DI(0) => \diff_sec[4]_i_117_n_0\,
      O(3 downto 0) => data3(11 downto 8),
      S(3) => \diff_sec[4]_i_118_n_0\,
      S(2) => \diff_sec[4]_i_119_n_0\,
      S(1) => \diff_sec[4]_i_120_n_0\,
      S(0) => \diff_sec[4]_i_121_n_0\
    );
\diff_sec_reg[4]_i_60\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec_reg[7]_i_31_n_0\,
      CO(3) => \diff_sec_reg[4]_i_60_n_0\,
      CO(2) => \diff_sec_reg[4]_i_60_n_1\,
      CO(1) => \diff_sec_reg[4]_i_60_n_2\,
      CO(0) => \diff_sec_reg[4]_i_60_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[4]_i_122_n_0\,
      DI(2) => \diff_sec[4]_i_123_n_0\,
      DI(1) => \diff_sec[4]_i_124_n_0\,
      DI(0) => \diff_sec[4]_i_125_n_0\,
      O(3 downto 0) => data2(11 downto 8),
      S(3) => \diff_sec[4]_i_126_n_0\,
      S(2) => \diff_sec[4]_i_127_n_0\,
      S(1) => \diff_sec[4]_i_128_n_0\,
      S(0) => \diff_sec[4]_i_129_n_0\
    );
\diff_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_7,
      CLR => \^ar\(0),
      D => \diff_sec[5]_i_1_n_0\,
      Q => diff_sec(5)
    );
\diff_sec_reg[5]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_28_n_0\,
      CO(3) => \diff_sec_reg[5]_i_16_n_0\,
      CO(2) => \diff_sec_reg[5]_i_16_n_1\,
      CO(1) => \diff_sec_reg[5]_i_16_n_2\,
      CO(0) => \diff_sec_reg[5]_i_16_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_43_n_0\,
      DI(2) => \diff_sec[5]_i_44_n_0\,
      DI(1) => \diff_sec[5]_i_45_n_0\,
      DI(0) => \diff_sec[5]_i_46_n_0\,
      O(3) => \diff_sec_reg[5]_i_16_n_4\,
      O(2) => \diff_sec_reg[5]_i_16_n_5\,
      O(1) => \diff_sec_reg[5]_i_16_n_6\,
      O(0) => \diff_sec_reg[5]_i_16_n_7\,
      S(3) => \diff_sec[5]_i_47_n_0\,
      S(2) => \diff_sec[5]_i_48_n_0\,
      S(1) => \diff_sec[5]_i_49_n_0\,
      S(0) => \diff_sec[5]_i_50_n_0\
    );
\diff_sec_reg[5]_i_35\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_53_n_0\,
      CO(3) => \diff_sec_reg[5]_i_35_n_0\,
      CO(2) => \diff_sec_reg[5]_i_35_n_1\,
      CO(1) => \diff_sec_reg[5]_i_35_n_2\,
      CO(0) => \diff_sec_reg[5]_i_35_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_59_n_0\,
      DI(2) => \diff_sec[5]_i_60_n_0\,
      DI(1) => \diff_sec[5]_i_61_n_0\,
      DI(0) => \diff_sec[5]_i_62_n_0\,
      O(3 downto 0) => data7(15 downto 12),
      S(3) => \diff_sec[5]_i_63_n_0\,
      S(2) => \diff_sec[5]_i_64_n_0\,
      S(1) => \diff_sec[5]_i_65_n_0\,
      S(0) => \diff_sec[5]_i_66_n_0\
    );
\diff_sec_reg[5]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_54_n_0\,
      CO(3) => \diff_sec_reg[5]_i_36_n_0\,
      CO(2) => \diff_sec_reg[5]_i_36_n_1\,
      CO(1) => \diff_sec_reg[5]_i_36_n_2\,
      CO(0) => \diff_sec_reg[5]_i_36_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_67_n_0\,
      DI(2) => \diff_sec[5]_i_68_n_0\,
      DI(1) => \diff_sec[5]_i_69_n_0\,
      DI(0) => \diff_sec[5]_i_70_n_0\,
      O(3 downto 0) => data8(15 downto 12),
      S(3) => \diff_sec[5]_i_71_n_0\,
      S(2) => \diff_sec[5]_i_72_n_0\,
      S(1) => \diff_sec[5]_i_73_n_0\,
      S(0) => \diff_sec[5]_i_74_n_0\
    );
\diff_sec_reg[5]_i_37\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_55_n_0\,
      CO(3) => \diff_sec_reg[5]_i_37_n_0\,
      CO(2) => \diff_sec_reg[5]_i_37_n_1\,
      CO(1) => \diff_sec_reg[5]_i_37_n_2\,
      CO(0) => \diff_sec_reg[5]_i_37_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_75_n_0\,
      DI(2) => \diff_sec[5]_i_76_n_0\,
      DI(1) => \diff_sec[5]_i_77_n_0\,
      DI(0) => \diff_sec[5]_i_78_n_0\,
      O(3 downto 0) => data4(15 downto 12),
      S(3) => \diff_sec[5]_i_79_n_0\,
      S(2) => \diff_sec[5]_i_80_n_0\,
      S(1) => \diff_sec[5]_i_81_n_0\,
      S(0) => \diff_sec[5]_i_82_n_0\
    );
\diff_sec_reg[5]_i_38\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_56_n_0\,
      CO(3) => \diff_sec_reg[5]_i_38_n_0\,
      CO(2) => \diff_sec_reg[5]_i_38_n_1\,
      CO(1) => \diff_sec_reg[5]_i_38_n_2\,
      CO(0) => \diff_sec_reg[5]_i_38_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_83_n_0\,
      DI(2) => \diff_sec[5]_i_84_n_0\,
      DI(1) => \diff_sec[5]_i_85_n_0\,
      DI(0) => \diff_sec[5]_i_86_n_0\,
      O(3 downto 0) => data6(15 downto 12),
      S(3) => \diff_sec[5]_i_87_n_0\,
      S(2) => \diff_sec[5]_i_88_n_0\,
      S(1) => \diff_sec[5]_i_89_n_0\,
      S(0) => \diff_sec[5]_i_90_n_0\
    );
\diff_sec_reg[5]_i_39\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_57_n_0\,
      CO(3) => \diff_sec_reg[5]_i_39_n_0\,
      CO(2) => \diff_sec_reg[5]_i_39_n_1\,
      CO(1) => \diff_sec_reg[5]_i_39_n_2\,
      CO(0) => \diff_sec_reg[5]_i_39_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_91_n_0\,
      DI(2) => \diff_sec[5]_i_92_n_0\,
      DI(1) => \diff_sec[5]_i_93_n_0\,
      DI(0) => \diff_sec[5]_i_94_n_0\,
      O(3 downto 0) => data5(15 downto 12),
      S(3) => \diff_sec[5]_i_95_n_0\,
      S(2) => \diff_sec[5]_i_96_n_0\,
      S(1) => \diff_sec[5]_i_97_n_0\,
      S(0) => \diff_sec[5]_i_98_n_0\
    );
\diff_sec_reg[5]_i_40\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_58_n_0\,
      CO(3) => \diff_sec_reg[5]_i_40_n_0\,
      CO(2) => \diff_sec_reg[5]_i_40_n_1\,
      CO(1) => \diff_sec_reg[5]_i_40_n_2\,
      CO(0) => \diff_sec_reg[5]_i_40_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_99_n_0\,
      DI(2) => \diff_sec[5]_i_100_n_0\,
      DI(1) => \diff_sec[5]_i_101_n_0\,
      DI(0) => \diff_sec[5]_i_102_n_0\,
      O(3 downto 0) => data1(15 downto 12),
      S(3) => \diff_sec[5]_i_103_n_0\,
      S(2) => \diff_sec[5]_i_104_n_0\,
      S(1) => \diff_sec[5]_i_105_n_0\,
      S(0) => \diff_sec[5]_i_106_n_0\
    );
\diff_sec_reg[5]_i_41\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_59_n_0\,
      CO(3) => \diff_sec_reg[5]_i_41_n_0\,
      CO(2) => \diff_sec_reg[5]_i_41_n_1\,
      CO(1) => \diff_sec_reg[5]_i_41_n_2\,
      CO(0) => \diff_sec_reg[5]_i_41_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_107_n_0\,
      DI(2) => \diff_sec[5]_i_108_n_0\,
      DI(1) => \diff_sec[5]_i_109_n_0\,
      DI(0) => \diff_sec[5]_i_110_n_0\,
      O(3 downto 0) => data3(15 downto 12),
      S(3) => \diff_sec[5]_i_111_n_0\,
      S(2) => \diff_sec[5]_i_112_n_0\,
      S(1) => \diff_sec[5]_i_113_n_0\,
      S(0) => \diff_sec[5]_i_114_n_0\
    );
\diff_sec_reg[5]_i_42\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[4]_i_60_n_0\,
      CO(3) => \diff_sec_reg[5]_i_42_n_0\,
      CO(2) => \diff_sec_reg[5]_i_42_n_1\,
      CO(1) => \diff_sec_reg[5]_i_42_n_2\,
      CO(0) => \diff_sec_reg[5]_i_42_n_3\,
      CYINIT => '0',
      DI(3) => \diff_sec[5]_i_115_n_0\,
      DI(2) => \diff_sec[5]_i_116_n_0\,
      DI(1) => \diff_sec[5]_i_117_n_0\,
      DI(0) => \diff_sec[5]_i_118_n_0\,
      O(3 downto 0) => data2(15 downto 12),
      S(3) => \diff_sec[5]_i_119_n_0\,
      S(2) => \diff_sec[5]_i_120_n_0\,
      S(1) => \diff_sec[5]_i_121_n_0\,
      S(0) => \diff_sec[5]_i_122_n_0\
    );
\diff_sec_reg[5]_i_51\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_35_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_51_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_51_n_2\,
      CO(0) => \diff_sec_reg[5]_i_51_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_123_n_0\,
      DI(0) => \diff_sec[5]_i_124_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_51_O_UNCONNECTED\(3),
      O(2 downto 0) => data7(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_125_n_0\,
      S(1) => \diff_sec[5]_i_126_n_0\,
      S(0) => \diff_sec[5]_i_127_n_0\
    );
\diff_sec_reg[5]_i_52\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_36_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_52_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_52_n_2\,
      CO(0) => \diff_sec_reg[5]_i_52_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_128_n_0\,
      DI(0) => \diff_sec[5]_i_129_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_52_O_UNCONNECTED\(3),
      O(2 downto 0) => data8(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_130_n_0\,
      S(1) => \diff_sec[5]_i_131_n_0\,
      S(0) => \diff_sec[5]_i_132_n_0\
    );
\diff_sec_reg[5]_i_53\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_37_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_53_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_53_n_2\,
      CO(0) => \diff_sec_reg[5]_i_53_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_133_n_0\,
      DI(0) => \diff_sec[5]_i_134_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_53_O_UNCONNECTED\(3),
      O(2 downto 0) => data4(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_135_n_0\,
      S(1) => \diff_sec[5]_i_136_n_0\,
      S(0) => \diff_sec[5]_i_137_n_0\
    );
\diff_sec_reg[5]_i_54\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_38_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_54_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_54_n_2\,
      CO(0) => \diff_sec_reg[5]_i_54_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_138_n_0\,
      DI(0) => \diff_sec[5]_i_139_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_54_O_UNCONNECTED\(3),
      O(2 downto 0) => data6(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_140_n_0\,
      S(1) => \diff_sec[5]_i_141_n_0\,
      S(0) => \diff_sec[5]_i_142_n_0\
    );
\diff_sec_reg[5]_i_55\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_39_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_55_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_55_n_2\,
      CO(0) => \diff_sec_reg[5]_i_55_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_143_n_0\,
      DI(0) => \diff_sec[5]_i_144_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_55_O_UNCONNECTED\(3),
      O(2 downto 0) => data5(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_145_n_0\,
      S(1) => \diff_sec[5]_i_146_n_0\,
      S(0) => \diff_sec[5]_i_147_n_0\
    );
\diff_sec_reg[5]_i_56\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_40_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_56_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_56_n_2\,
      CO(0) => \diff_sec_reg[5]_i_56_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_148_n_0\,
      DI(0) => \diff_sec[5]_i_149_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_56_O_UNCONNECTED\(3),
      O(2 downto 0) => data1(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_150_n_0\,
      S(1) => \diff_sec[5]_i_151_n_0\,
      S(0) => \diff_sec[5]_i_152_n_0\
    );
\diff_sec_reg[5]_i_57\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_41_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_57_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_57_n_2\,
      CO(0) => \diff_sec_reg[5]_i_57_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_153_n_0\,
      DI(0) => \diff_sec[5]_i_154_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_57_O_UNCONNECTED\(3),
      O(2 downto 0) => data3(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_155_n_0\,
      S(1) => \diff_sec[5]_i_156_n_0\,
      S(0) => \diff_sec[5]_i_157_n_0\
    );
\diff_sec_reg[5]_i_58\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_reg[5]_i_42_n_0\,
      CO(3 downto 2) => \NLW_diff_sec_reg[5]_i_58_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \diff_sec_reg[5]_i_58_n_2\,
      CO(0) => \diff_sec_reg[5]_i_58_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \diff_sec[5]_i_158_n_0\,
      DI(0) => \diff_sec[5]_i_159_n_0\,
      O(3) => \NLW_diff_sec_reg[5]_i_58_O_UNCONNECTED\(3),
      O(2 downto 0) => data2(18 downto 16),
      S(3) => '0',
      S(2) => \diff_sec[5]_i_160_n_0\,
      S(1) => \diff_sec[5]_i_161_n_0\,
      S(0) => \diff_sec[5]_i_162_n_0\
    );
ed_clear: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      AR(0) => \^ar\(0),
      D(19) => ed_clear_n_7,
      D(18) => ed_clear_n_8,
      D(17) => ed_clear_n_9,
      D(16) => ed_clear_n_10,
      D(15) => ed_clear_n_11,
      D(14) => ed_clear_n_12,
      D(13) => ed_clear_n_13,
      D(12) => ed_clear_n_14,
      D(11) => ed_clear_n_15,
      D(10) => ed_clear_n_16,
      D(9) => ed_clear_n_17,
      D(8) => ed_clear_n_18,
      D(7) => ed_clear_n_19,
      D(6) => ed_clear_n_20,
      D(5) => ed_clear_n_21,
      D(4) => ed_clear_n_22,
      D(3) => ed_clear_n_23,
      D(2) => ed_clear_n_24,
      D(1) => ed_clear_n_25,
      D(0) => ed_clear_n_26,
      E(0) => ed_clear_n_4,
      Q(0) => Q(1),
      cnt_sysclk20(18 downto 0) => cnt_sysclk20(19 downto 1),
      \cnt_sysclk2_reg[0]\(0) => \cnt_sysclk2_reg_n_0_[0]\,
      \cnt_sysclk2_reg[19]\ => ed_start_n_9,
      \csec_reg[6]\ => \cnt_sysclk1[19]_i_4_n_0\,
      ff_cur_reg_0 => ed_clear_n_3,
      ff_cur_reg_1(0) => ed_clear_n_5,
      ff_cur_reg_2(0) => ed_clear_n_6,
      ff_cur_reg_3(0) => ed_clear_n_27,
      ff_cur_reg_4(0) => ed_clear_n_28,
      ff_cur_reg_5(0) => ed_clear_n_29,
      ff_cur_reg_6(0) => cnt_sysclk2,
      ff_old_reg_0(0) => ed_clear_n_30,
      \lap_csec_reg[0]\ => \cnt_sysclk2[19]_i_3_n_0\,
      \lap_csec_reg[5]\(6) => ed_clear_n_44,
      \lap_csec_reg[5]\(5) => ed_clear_n_45,
      \lap_csec_reg[5]\(4) => ed_clear_n_46,
      \lap_csec_reg[5]\(3) => ed_clear_n_47,
      \lap_csec_reg[5]\(2) => ed_clear_n_48,
      \lap_csec_reg[5]\(1) => ed_clear_n_49,
      \lap_csec_reg[5]\(0) => ed_clear_n_50,
      \lap_csec_reg[5]_0\ => \lap_csec[5]_i_2_n_0\,
      \lap_csec_reg[6]\(6 downto 0) => lap_csec(6 downto 0),
      \lap_csec_reg[6]_0\ => \lap_csec[6]_i_4_n_0\,
      \lap_csec_reg[6]_1\ => \lap_csec[6]_i_5_n_0\,
      \lap_min_reg[0]\ => \lap_min[5]_i_3_n_0\,
      \lap_min_reg[3]\(5) => ed_clear_n_32,
      \lap_min_reg[3]\(4) => ed_clear_n_33,
      \lap_min_reg[3]\(3) => ed_clear_n_34,
      \lap_min_reg[3]\(2) => ed_clear_n_35,
      \lap_min_reg[3]\(1) => ed_clear_n_36,
      \lap_min_reg[3]\(0) => ed_clear_n_37,
      \lap_min_reg[5]\(5 downto 0) => lap_min(5 downto 0),
      \lap_min_reg[5]_0\ => \lap_min[5]_i_5_n_0\,
      \lap_min_reg[5]_1\ => \lap_min[5]_i_7_n_0\,
      \lap_sec_reg[3]\(5) => ed_clear_n_38,
      \lap_sec_reg[3]\(4) => ed_clear_n_39,
      \lap_sec_reg[3]\(3) => ed_clear_n_40,
      \lap_sec_reg[3]\(2) => ed_clear_n_41,
      \lap_sec_reg[3]\(1) => ed_clear_n_42,
      \lap_sec_reg[3]\(0) => ed_clear_n_43,
      \lap_sec_reg[5]\(5 downto 0) => lap_sec(5 downto 0),
      \lap_sec_reg[5]_0\ => \lap_sec[5]_i_5_n_0\,
      \min_reg[0]\ => \csec[6]_i_3_n_0\,
      \min_reg[0]_0\ => \sec[4]_i_2_n_0\,
      p_0_in(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      \sec_reg[0]\ => \^run\
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
     port map (
      AR(0) => \^ar\(0),
      D(0) => ed_start_n_8,
      E(0) => ed_start_n_5,
      \FSM_onehot_diff_state_reg[0]\ => ed_start_n_4,
      \FSM_onehot_diff_state_reg[1]\(0) => ed_start_n_7,
      \FSM_onehot_diff_state_reg[2]\ => ed_start_n_6,
      Q(1) => Q(2),
      Q(0) => Q(0),
      \diff_csec_reg[0]\ => \^fsm_onehot_diff_state_reg[1]_0\,
      ff_cur_reg_0 => p_0_in(1),
      ff_cur_reg_1 => ed_start_n_3,
      ff_old_reg_0 => p_0_in(0),
      \lap_count_reg[0]\(3 downto 0) => lap_count(3 downto 0),
      \lap_count_reg[0]_0\ => \^run\,
      \lap_count_reg[0]_1\ => \lap_count[7]_i_5_n_0\,
      \lap_count_reg[3]\ => ed_start_n_9,
      p_0_in(1 downto 0) => p_0_in_0(1 downto 0),
      \prev_csec_reg[0]\ => \^fsm_onehot_diff_state_reg[2]_0\,
      s00_axi_aclk => s00_axi_aclk,
      \slv_reg0_reg[2]\ => ed_start_n_2,
      start_p => start_p,
      \tmp_csec_reg[0]\ => \^fsm_onehot_diff_state_reg[0]_0\
    );
\lap_count[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"60"
    )
        port map (
      I0 => lap_count(1),
      I1 => lap_count(0),
      I2 => \^run\,
      O => \lap_count[1]_i_1_n_0\
    );
\lap_count[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^run\,
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
      I0 => \^run\,
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
      I0 => \^run\,
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
      I0 => \^run\,
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
      I2 => \^run\,
      O => \lap_count[6]_i_1_n_0\
    );
\lap_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \^run\,
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
\lap_count[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lap_count(7),
      I1 => lap_count(5),
      I2 => lap_count(6),
      I3 => lap_count(4),
      O => \lap_count[7]_i_5_n_0\
    );
\lap_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
      D => ed_start_n_8,
      Q => lap_count(0)
    );
\lap_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
      D => \lap_count[1]_i_1_n_0\,
      Q => lap_count(1)
    );
\lap_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
      D => \lap_count[2]_i_1_n_0\,
      Q => lap_count(2)
    );
\lap_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
      D => \lap_count[3]_i_1_n_0\,
      Q => lap_count(3)
    );
\lap_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
      D => \lap_count[4]_i_1_n_0\,
      Q => lap_count(4)
    );
\lap_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
      D => \lap_count[5]_i_1_n_0\,
      Q => lap_count(5)
    );
\lap_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
      D => \lap_count[6]_i_1_n_0\,
      Q => lap_count(6)
    );
\lap_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_30,
      CLR => \^ar\(0),
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
      CE => ed_clear_n_29,
      CLR => \^ar\(0),
      D => ed_clear_n_50,
      Q => lap_csec(0)
    );
\lap_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_29,
      CLR => \^ar\(0),
      D => ed_clear_n_49,
      Q => lap_csec(1)
    );
\lap_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_29,
      CLR => \^ar\(0),
      D => ed_clear_n_48,
      Q => lap_csec(2)
    );
\lap_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_29,
      CLR => \^ar\(0),
      D => ed_clear_n_47,
      Q => lap_csec(3)
    );
\lap_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_29,
      CLR => \^ar\(0),
      D => ed_clear_n_46,
      Q => lap_csec(4)
    );
\lap_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_29,
      CLR => \^ar\(0),
      D => ed_clear_n_45,
      Q => lap_csec(5)
    );
\lap_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_29,
      CLR => \^ar\(0),
      D => ed_clear_n_44,
      Q => lap_csec(6)
    );
lap_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
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
      CE => ed_clear_n_5,
      CLR => \^ar\(0),
      D => ed_clear_n_37,
      Q => lap_min(0)
    );
\lap_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^ar\(0),
      D => ed_clear_n_36,
      Q => lap_min(1)
    );
\lap_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^ar\(0),
      D => ed_clear_n_35,
      Q => lap_min(2)
    );
\lap_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^ar\(0),
      D => ed_clear_n_34,
      Q => lap_min(3)
    );
\lap_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^ar\(0),
      D => ed_clear_n_33,
      Q => lap_min(4)
    );
\lap_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^ar\(0),
      D => ed_clear_n_32,
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
      CE => ed_clear_n_6,
      CLR => \^ar\(0),
      D => ed_clear_n_43,
      Q => lap_sec(0)
    );
\lap_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^ar\(0),
      D => ed_clear_n_42,
      Q => lap_sec(1)
    );
\lap_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^ar\(0),
      D => ed_clear_n_41,
      Q => lap_sec(2)
    );
\lap_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^ar\(0),
      D => ed_clear_n_40,
      Q => lap_sec(3)
    );
\lap_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^ar\(0),
      D => ed_clear_n_39,
      Q => lap_sec(4)
    );
\lap_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_6,
      CLR => \^ar\(0),
      D => ed_clear_n_38,
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
      I0 => \^run\,
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
      I0 => \^run\,
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
      CE => ed_clear_n_27,
      CLR => \^ar\(0),
      D => \min[0]_i_1_n_0\,
      Q => min(0)
    );
\min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_27,
      CLR => \^ar\(0),
      D => \min[1]_i_1_n_0\,
      Q => min(1)
    );
\min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_27,
      CLR => \^ar\(0),
      D => \min[2]_i_1_n_0\,
      Q => min(2)
    );
\min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_27,
      CLR => \^ar\(0),
      D => \min[3]_i_1_n_0\,
      Q => min(3)
    );
\min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_27,
      CLR => \^ar\(0),
      D => \min[4]_i_1_n_0\,
      Q => min(4)
    );
\min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_27,
      CLR => \^ar\(0),
      D => \min[5]_i_2_n_0\,
      Q => min(5)
    );
\prev_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_csec(0),
      Q => prev_csec(0)
    );
\prev_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_csec(1),
      Q => prev_csec(1)
    );
\prev_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_csec(2),
      Q => prev_csec(2)
    );
\prev_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_csec(3),
      Q => prev_csec(3)
    );
\prev_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_csec(4),
      Q => prev_csec(4)
    );
\prev_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_csec(5),
      Q => prev_csec(5)
    );
\prev_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_csec(6),
      Q => prev_csec(6)
    );
\prev_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => \tmp_min__0\(0),
      Q => \prev_min__0\(0)
    );
\prev_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => \tmp_min__0\(1),
      Q => \prev_min__0\(1)
    );
\prev_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => \tmp_min__0\(2),
      Q => \prev_min__0\(2)
    );
\prev_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => \tmp_min__0\(3),
      Q => \prev_min__0\(3)
    );
\prev_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => \tmp_min__0\(4),
      Q => \prev_min__0\(4)
    );
\prev_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => \tmp_min__0\(5),
      Q => \prev_min__0\(5)
    );
\prev_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_sec(0),
      Q => prev_sec(0)
    );
\prev_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_sec(1),
      Q => prev_sec(1)
    );
\prev_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_sec(2),
      Q => prev_sec(2)
    );
\prev_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_sec(3),
      Q => prev_sec(3)
    );
\prev_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_sec(4),
      Q => prev_sec(4)
    );
\prev_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_5,
      CLR => \^ar\(0),
      D => tmp_sec(5),
      Q => prev_sec(5)
    );
run_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => run_reg_0,
      Q => \^run\
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
      I3 => \^run\,
      I4 => sel0(0),
      I5 => Q(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(0),
      I1 => \s00_axi_rdata[19]_0\(0),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(0),
      I4 => sel0(0),
      I5 => diff_csec(0),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[10]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(10),
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
      I3 => Q(10),
      I4 => sel0(0),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(10),
      I1 => \s00_axi_rdata[19]_0\(10),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(10),
      I4 => sel0(0),
      I5 => diff_sec(2),
      O => \s00_axi_rdata[10]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[11]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(11),
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
      I3 => Q(11),
      I4 => sel0(0),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(11),
      I1 => \s00_axi_rdata[19]_0\(11),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(11),
      I4 => sel0(0),
      I5 => diff_sec(3),
      O => \s00_axi_rdata[11]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[12]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(12),
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
      I3 => Q(12),
      I4 => sel0(0),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(12),
      I1 => \s00_axi_rdata[19]_0\(12),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(12),
      I4 => sel0(0),
      I5 => diff_sec(4),
      O => \s00_axi_rdata[12]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[13]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(13),
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
      I3 => Q(13),
      I4 => sel0(0),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(13),
      I1 => \s00_axi_rdata[19]_0\(13),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(13),
      I4 => sel0(0),
      I5 => diff_sec(5),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
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
      I0 => \s00_axi_rdata[19]\(14),
      I1 => \s00_axi_rdata[19]_0\(14),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(14),
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
      I0 => \s00_axi_rdata[19]\(15),
      I1 => \s00_axi_rdata[19]_0\(15),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(15),
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
      I0 => \s00_axi_rdata[19]\(16),
      I1 => \s00_axi_rdata[19]_0\(16),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(16),
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
      I0 => \s00_axi_rdata[19]\(17),
      I1 => \s00_axi_rdata[19]_0\(17),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(17),
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
      I0 => \s00_axi_rdata[19]\(1),
      I1 => \s00_axi_rdata[19]_0\(1),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(1),
      I4 => sel0(0),
      I5 => diff_csec(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => s00_axi_rdata_20_sn_1,
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
      I3 => sel0(1),
      I4 => Q(20),
      I5 => sel0(0),
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
      I3 => sel0(1),
      I4 => Q(21),
      I5 => sel0(0),
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
      I3 => sel0(1),
      I4 => Q(23),
      I5 => sel0(0),
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
      I0 => \s00_axi_rdata[19]\(2),
      I1 => \s00_axi_rdata[19]_0\(2),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(2),
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
      I3 => sel0(1),
      I4 => Q(26),
      I5 => sel0(0),
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
      I3 => sel0(1),
      I4 => Q(27),
      I5 => sel0(0),
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
      I0 => \s00_axi_rdata[19]\(3),
      I1 => \s00_axi_rdata[19]_0\(3),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(3),
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
      I0 => \s00_axi_rdata[19]\(4),
      I1 => \s00_axi_rdata[19]_0\(4),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(4),
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
      I0 => \s00_axi_rdata[19]\(5),
      I1 => \s00_axi_rdata[19]_0\(5),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(5),
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
      I0 => \s00_axi_rdata[19]\(6),
      I1 => \s00_axi_rdata[19]_0\(6),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(6),
      I4 => sel0(0),
      I5 => diff_csec(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => Q(7),
      I4 => sel0(1),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(7),
      I1 => \s00_axi_rdata[19]_0\(7),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(7),
      I4 => sel0(0),
      I5 => diff_csec(7),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[8]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(8),
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
      I3 => Q(8),
      I4 => sel0(0),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(8),
      I1 => \s00_axi_rdata[19]_0\(8),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(8),
      I4 => sel0(0),
      I5 => diff_sec(0),
      O => \s00_axi_rdata[8]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[9]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(9),
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
      I3 => Q(9),
      I4 => sel0(0),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[19]\(9),
      I1 => \s00_axi_rdata[19]_0\(9),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[19]_1\(9),
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
      I0 => \^run\,
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
      I0 => \^run\,
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
      CE => ed_clear_n_28,
      CLR => \^ar\(0),
      D => \sec[0]_i_1_n_0\,
      Q => sec(0)
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_28,
      CLR => \^ar\(0),
      D => \sec[1]_i_1_n_0\,
      Q => sec(1)
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_28,
      CLR => \^ar\(0),
      D => \sec[2]_i_1_n_0\,
      Q => sec(2)
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_28,
      CLR => \^ar\(0),
      D => \sec[3]_i_1_n_0\,
      Q => sec(3)
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_28,
      CLR => \^ar\(0),
      D => \sec[4]_i_1_n_0\,
      Q => sec(4)
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_28,
      CLR => \^ar\(0),
      D => \sec[5]_i_2_n_0\,
      Q => sec(5)
    );
sign_flag_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(13),
      I1 => \total_prev__0\(13),
      I2 => \total_tmp__0\(12),
      I3 => \total_prev__0\(12),
      O => sign_flag_i_10_n_0
    );
sign_flag_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(11),
      I1 => \total_prev__0\(11),
      I2 => \total_tmp__0\(10),
      I3 => \total_prev__0\(10),
      O => sign_flag_i_11_n_0
    );
sign_flag_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(9),
      I1 => \total_prev__0\(9),
      I2 => \total_tmp__0\(8),
      I3 => \total_prev__0\(8),
      O => sign_flag_i_12_n_0
    );
sign_flag_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(15),
      I1 => \total_tmp__0\(15),
      I2 => \total_prev__0\(14),
      I3 => \total_tmp__0\(14),
      O => sign_flag_i_13_n_0
    );
sign_flag_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(13),
      I1 => \total_tmp__0\(13),
      I2 => \total_prev__0\(12),
      I3 => \total_tmp__0\(12),
      O => sign_flag_i_14_n_0
    );
sign_flag_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(11),
      I1 => \total_tmp__0\(11),
      I2 => \total_prev__0\(10),
      I3 => \total_tmp__0\(10),
      O => sign_flag_i_15_n_0
    );
sign_flag_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(9),
      I1 => \total_tmp__0\(9),
      I2 => \total_prev__0\(8),
      I3 => \total_tmp__0\(8),
      O => sign_flag_i_16_n_0
    );
sign_flag_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(7),
      I1 => \total_prev__0\(7),
      I2 => \total_tmp__0\(6),
      I3 => \total_prev__0\(6),
      O => sign_flag_i_19_n_0
    );
sign_flag_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(5),
      I1 => \total_prev__0\(5),
      I2 => \total_tmp__0\(4),
      I3 => \total_prev__0\(4),
      O => sign_flag_i_20_n_0
    );
sign_flag_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(3),
      I1 => \total_prev__0\(3),
      I2 => \total_tmp__0\(2),
      I3 => \total_prev__0\(2),
      O => sign_flag_i_21_n_0
    );
sign_flag_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(1),
      I1 => \total_prev__0\(1),
      I2 => \total_tmp__0\(0),
      I3 => \total_prev__0\(0),
      O => sign_flag_i_22_n_0
    );
sign_flag_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(7),
      I1 => \total_tmp__0\(7),
      I2 => \total_prev__0\(6),
      I3 => \total_tmp__0\(6),
      O => sign_flag_i_23_n_0
    );
sign_flag_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(5),
      I1 => \total_tmp__0\(5),
      I2 => \total_prev__0\(4),
      I3 => \total_tmp__0\(4),
      O => sign_flag_i_24_n_0
    );
sign_flag_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(3),
      I1 => \total_tmp__0\(3),
      I2 => \total_prev__0\(2),
      I3 => \total_tmp__0\(2),
      O => sign_flag_i_25_n_0
    );
sign_flag_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(1),
      I1 => \total_tmp__0\(1),
      I2 => \total_prev__0\(0),
      I3 => \total_tmp__0\(0),
      O => sign_flag_i_26_n_0
    );
sign_flag_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \total_tmp__0\(18),
      I1 => \total_prev__0\(18),
      O => sign_flag_i_4_n_0
    );
sign_flag_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(17),
      I1 => \total_prev__0\(17),
      I2 => \total_tmp__0\(16),
      I3 => \total_prev__0\(16),
      O => sign_flag_i_5_n_0
    );
sign_flag_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \total_prev__0\(18),
      I1 => \total_tmp__0\(18),
      O => sign_flag_i_6_n_0
    );
sign_flag_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \total_prev__0\(17),
      I1 => \total_tmp__0\(17),
      I2 => \total_prev__0\(16),
      I3 => \total_tmp__0\(16),
      O => sign_flag_i_7_n_0
    );
sign_flag_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \total_tmp__0\(15),
      I1 => \total_prev__0\(15),
      I2 => \total_tmp__0\(14),
      I3 => \total_prev__0\(14),
      O => sign_flag_i_9_n_0
    );
sign_flag_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => sign_flag_reg_0,
      Q => \^sign_flag\
    );
sign_flag_reg_i_17: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min_reg[3]_i_35_n_0\,
      CO(3 downto 2) => NLW_sign_flag_reg_i_17_CO_UNCONNECTED(3 downto 2),
      CO(1) => sign_flag_reg_i_17_n_2,
      CO(0) => sign_flag_reg_i_17_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_sign_flag_reg_i_17_O_UNCONNECTED(3),
      O(2 downto 0) => \total_tmp__0\(18 downto 16),
      S(3) => '0',
      S(2) => total_tmp_n_87,
      S(1) => total_tmp_n_88,
      S(0) => total_tmp_n_89
    );
sign_flag_reg_i_18: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min_reg[3]_i_36_n_0\,
      CO(3 downto 2) => NLW_sign_flag_reg_i_18_CO_UNCONNECTED(3 downto 2),
      CO(1) => sign_flag_reg_i_18_n_2,
      CO(0) => sign_flag_reg_i_18_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => NLW_sign_flag_reg_i_18_O_UNCONNECTED(3),
      O(2 downto 0) => \total_prev__0\(18 downto 16),
      S(3) => '0',
      S(2) => total_prev_n_87,
      S(1) => total_prev_n_88,
      S(0) => total_prev_n_89
    );
sign_flag_reg_i_2: unisim.vcomponents.CARRY4
     port map (
      CI => sign_flag_reg_i_3_n_0,
      CO(3 downto 2) => NLW_sign_flag_reg_i_2_CO_UNCONNECTED(3 downto 2),
      CO(1) => \^co\(0),
      CO(0) => sign_flag_reg_i_2_n_3,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => sign_flag_i_4_n_0,
      DI(0) => sign_flag_i_5_n_0,
      O(3 downto 0) => NLW_sign_flag_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => sign_flag_i_6_n_0,
      S(0) => sign_flag_i_7_n_0
    );
sign_flag_reg_i_3: unisim.vcomponents.CARRY4
     port map (
      CI => sign_flag_reg_i_8_n_0,
      CO(3) => sign_flag_reg_i_3_n_0,
      CO(2) => sign_flag_reg_i_3_n_1,
      CO(1) => sign_flag_reg_i_3_n_2,
      CO(0) => sign_flag_reg_i_3_n_3,
      CYINIT => '0',
      DI(3) => sign_flag_i_9_n_0,
      DI(2) => sign_flag_i_10_n_0,
      DI(1) => sign_flag_i_11_n_0,
      DI(0) => sign_flag_i_12_n_0,
      O(3 downto 0) => NLW_sign_flag_reg_i_3_O_UNCONNECTED(3 downto 0),
      S(3) => sign_flag_i_13_n_0,
      S(2) => sign_flag_i_14_n_0,
      S(1) => sign_flag_i_15_n_0,
      S(0) => sign_flag_i_16_n_0
    );
sign_flag_reg_i_8: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => sign_flag_reg_i_8_n_0,
      CO(2) => sign_flag_reg_i_8_n_1,
      CO(1) => sign_flag_reg_i_8_n_2,
      CO(0) => sign_flag_reg_i_8_n_3,
      CYINIT => '1',
      DI(3) => sign_flag_i_19_n_0,
      DI(2) => sign_flag_i_20_n_0,
      DI(1) => sign_flag_i_21_n_0,
      DI(0) => sign_flag_i_22_n_0,
      O(3 downto 0) => NLW_sign_flag_reg_i_8_O_UNCONNECTED(3 downto 0),
      S(3) => sign_flag_i_23_n_0,
      S(2) => sign_flag_i_24_n_0,
      S(1) => sign_flag_i_25_n_0,
      S(0) => sign_flag_i_26_n_0
    );
\tmp_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_csec(0),
      Q => tmp_csec(0)
    );
\tmp_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_csec(1),
      Q => tmp_csec(1)
    );
\tmp_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_csec(2),
      Q => tmp_csec(2)
    );
\tmp_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_csec(3),
      Q => tmp_csec(3)
    );
\tmp_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_csec(4),
      Q => tmp_csec(4)
    );
\tmp_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_csec(5),
      Q => tmp_csec(5)
    );
\tmp_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_csec(6),
      Q => tmp_csec(6)
    );
\tmp_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_min(0),
      Q => \tmp_min__0\(0)
    );
\tmp_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_min(1),
      Q => \tmp_min__0\(1)
    );
\tmp_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_min(2),
      Q => \tmp_min__0\(2)
    );
\tmp_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_min(3),
      Q => \tmp_min__0\(3)
    );
\tmp_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_min(4),
      Q => \tmp_min__0\(4)
    );
\tmp_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_min(5),
      Q => \tmp_min__0\(5)
    );
\tmp_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_sec(0),
      Q => tmp_sec(0)
    );
\tmp_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_sec(1),
      Q => tmp_sec(1)
    );
\tmp_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_sec(2),
      Q => tmp_sec(2)
    );
\tmp_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_sec(3),
      Q => tmp_sec(3)
    );
\tmp_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
      D => lap_sec(4),
      Q => tmp_sec(4)
    );
\tmp_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_start_n_3,
      CLR => \^ar\(0),
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
      B(5 downto 0) => \prev_min__0\(5 downto 0),
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
      P(47 downto 19) => NLW_total_prev_P_UNCONNECTED(47 downto 19),
      P(18) => total_prev_n_87,
      P(17) => total_prev_n_88,
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
      B(5 downto 0) => \tmp_min__0\(5 downto 0),
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
      P(47 downto 19) => NLW_total_tmp_P_UNCONNECTED(47 downto 19),
      P(18) => total_tmp_n_87,
      P(17) => total_tmp_n_88,
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
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_awaddr_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal \ed_start/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal lap_flag : STD_LOGIC;
  signal lap_flag_i_1_n_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal run : STD_LOGIC;
  signal run_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_2_n_0\ : STD_LOGIC;
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
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sign_flag : STD_LOGIC;
  signal sign_flag_i_1_n_0 : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
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
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
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
  signal start_p : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stop_watch_inst_n_2 : STD_LOGIC;
  signal stop_watch_inst_n_36 : STD_LOGIC;
  signal stop_watch_inst_n_37 : STD_LOGIC;
  signal stop_watch_inst_n_38 : STD_LOGIC;
  signal stop_watch_inst_n_6 : STD_LOGIC;
  signal stop_watch_inst_n_7 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair129";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \slv_reg6[31]_i_2\ : label is "soft_lutpair130";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF0007777FFFF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => s00_axi_rready,
      I3 => \^axi_rvalid_reg_0\,
      I4 => state_read(0),
      I5 => state_read(1),
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
      I4 => state_read(0),
      I5 => state_read(1),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => state_read(0),
      R => stop_watch_inst_n_2
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => stop_watch_inst_n_2
    );
\FSM_sequential_state_write[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF0F7FF"
    )
        port map (
      I0 => \^axi_awready_reg_0\,
      I1 => s00_axi_awvalid,
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
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
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
      R => stop_watch_inst_n_2
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => stop_watch_inst_n_2
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
      I3 => state_read(0),
      I4 => state_read(1),
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
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C4C4C4C4FFCFCFCF"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => state_read(1),
      I3 => s00_axi_rready,
      I4 => \^axi_rvalid_reg_0\,
      I5 => state_read(0),
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^axi_arready_reg_0\,
      R => stop_watch_inst_n_2
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFF20000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => state_write(1),
      I2 => state_write(0),
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
      I1 => state_write(1),
      I2 => state_write(0),
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
      I1 => state_write(1),
      I2 => state_write(0),
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
      R => stop_watch_inst_n_2
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => stop_watch_inst_n_2
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => stop_watch_inst_n_2
    );
axi_awready_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC4FFCF"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^axi_awready_reg_0\,
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
      R => stop_watch_inst_n_2
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
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => stop_watch_inst_n_2
    );
axi_rvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFFFFF00800080"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => state_read(0),
      I3 => state_read(1),
      I4 => s00_axi_rready,
      I5 => \^axi_rvalid_reg_0\,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^axi_rvalid_reg_0\,
      R => stop_watch_inst_n_2
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
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_i_1_n_0,
      Q => \^s00_axi_wready\,
      R => stop_watch_inst_n_2
    );
lap_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFC500FF0080"
    )
        port map (
      I0 => stop_watch_inst_n_38,
      I1 => slv_reg0(2),
      I2 => stop_watch_inst_n_36,
      I3 => start_p,
      I4 => stop_watch_inst_n_37,
      I5 => lap_flag,
      O => lap_flag_i_1_n_0
    );
run_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => \ed_start/p_0_in\(0),
      I1 => \ed_start/p_0_in\(1),
      I2 => run,
      O => run_i_1_n_0
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \slv_reg0_reg_n_0_[14]\,
      I4 => sel0(1),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(14),
      I1 => slv_reg6(14),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(14),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \slv_reg0_reg_n_0_[15]\,
      I4 => sel0(1),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(15),
      I1 => slv_reg6(15),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(15),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(20),
      I1 => slv_reg6(20),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(20),
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
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
      INIT => X"88888B88"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \slv_reg0_reg_n_0_[22]\,
      I4 => sel0(1),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(22),
      I1 => slv_reg6(22),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(22),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888B88"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => sel0(2),
      I2 => sel0(0),
      I3 => \slv_reg0_reg_n_0_[23]\,
      I4 => sel0(1),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => slv_reg7(23),
      I1 => slv_reg6(23),
      I2 => sel0(1),
      I3 => sel0(0),
      I4 => slv_reg5(23),
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
sign_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5DFFFFFF51000000"
    )
        port map (
      I0 => stop_watch_inst_n_6,
      I1 => \ed_start/p_0_in\(1),
      I2 => \ed_start/p_0_in\(0),
      I3 => stop_watch_inst_n_37,
      I4 => stop_watch_inst_n_7,
      I5 => sign_flag,
      O => sign_flag_i_1_n_0
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
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => stop_watch_inst_n_2
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
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => stop_watch_inst_n_2
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => stop_watch_inst_n_2
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
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => stop_watch_inst_n_2
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => stop_watch_inst_n_2
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
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => stop_watch_inst_n_2
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => stop_watch_inst_n_2
    );
stop_watch_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip
     port map (
      AR(0) => stop_watch_inst_n_2,
      CO(0) => stop_watch_inst_n_6,
      \FSM_onehot_diff_state_reg[0]_0\ => stop_watch_inst_n_38,
      \FSM_onehot_diff_state_reg[1]_0\ => stop_watch_inst_n_37,
      \FSM_onehot_diff_state_reg[2]_0\ => stop_watch_inst_n_36,
      Q(27) => \slv_reg0_reg_n_0_[31]\,
      Q(26) => \slv_reg0_reg_n_0_[30]\,
      Q(25) => \slv_reg0_reg_n_0_[29]\,
      Q(24) => \slv_reg0_reg_n_0_[28]\,
      Q(23) => \slv_reg0_reg_n_0_[27]\,
      Q(22) => \slv_reg0_reg_n_0_[26]\,
      Q(21) => \slv_reg0_reg_n_0_[25]\,
      Q(20) => \slv_reg0_reg_n_0_[24]\,
      Q(19) => \slv_reg0_reg_n_0_[21]\,
      Q(18) => \slv_reg0_reg_n_0_[20]\,
      Q(17) => \slv_reg0_reg_n_0_[19]\,
      Q(16) => \slv_reg0_reg_n_0_[18]\,
      Q(15) => \slv_reg0_reg_n_0_[17]\,
      Q(14) => \slv_reg0_reg_n_0_[16]\,
      Q(13) => \slv_reg0_reg_n_0_[13]\,
      Q(12) => \slv_reg0_reg_n_0_[12]\,
      Q(11) => \slv_reg0_reg_n_0_[11]\,
      Q(10) => \slv_reg0_reg_n_0_[10]\,
      Q(9) => \slv_reg0_reg_n_0_[9]\,
      Q(8) => \slv_reg0_reg_n_0_[8]\,
      Q(7) => \slv_reg0_reg_n_0_[7]\,
      Q(6) => \slv_reg0_reg_n_0_[6]\,
      Q(5) => \slv_reg0_reg_n_0_[5]\,
      Q(4) => \slv_reg0_reg_n_0_[4]\,
      Q(3) => \slv_reg0_reg_n_0_[3]\,
      Q(2 downto 0) => slv_reg0(2 downto 0),
      \lap_count_reg[1]_0\ => stop_watch_inst_n_7,
      lap_flag => lap_flag,
      lap_flag_reg_0 => lap_flag_i_1_n_0,
      p_0_in(1 downto 0) => \ed_start/p_0_in\(1 downto 0),
      run => run,
      run_reg_0 => run_i_1_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(27 downto 20) => s00_axi_rdata(31 downto 24),
      s00_axi_rdata(19 downto 14) => s00_axi_rdata(21 downto 16),
      s00_axi_rdata(13 downto 0) => s00_axi_rdata(13 downto 0),
      \s00_axi_rdata[19]\(17 downto 14) => slv_reg7(19 downto 16),
      \s00_axi_rdata[19]\(13 downto 0) => slv_reg7(13 downto 0),
      \s00_axi_rdata[19]_0\(17 downto 14) => slv_reg6(19 downto 16),
      \s00_axi_rdata[19]_0\(13 downto 0) => slv_reg6(13 downto 0),
      \s00_axi_rdata[19]_1\(17 downto 14) => slv_reg5(19 downto 16),
      \s00_axi_rdata[19]_1\(13 downto 0) => slv_reg5(13 downto 0),
      \s00_axi_rdata[28]\ => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      \s00_axi_rdata[29]\ => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      \s00_axi_rdata[30]\ => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      \s00_axi_rdata[31]\ => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      s00_axi_rdata_20_sp_1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      s00_axi_rdata_21_sp_1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      s00_axi_rdata_24_sp_1 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      s00_axi_rdata_25_sp_1 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      s00_axi_rdata_26_sp_1 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      s00_axi_rdata_27_sp_1 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      sel0(2 downto 0) => sel0(2 downto 0),
      sign_flag => sign_flag,
      sign_flag_reg_0 => sign_flag_i_1_n_0,
      start_p => start_p
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
begin
myip_stopwatch_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => axi_arready_reg,
      axi_awready_reg_0 => axi_awready_reg,
      axi_rvalid_reg_0 => axi_rvalid_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
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
