-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Jan 30 10:06:55 2026
-- Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_completeClock_myip_stopwatch_0_0_sim_netlist.vhdl
-- Design      : soc_completeClock_myip_stopwatch_0_0
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
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \slv_reg0_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \lap_min_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_sec_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_csec_reg[5]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    run_reg_3 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    run : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_sec_reg[0]\ : in STD_LOGIC;
    \lap_min_reg[0]\ : in STD_LOGIC;
    sign_flag_reg : in STD_LOGIC;
    sign_flag_reg_0 : in STD_LOGIC;
    \min_reg[0]\ : in STD_LOGIC;
    \min_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \min_reg[0]_1\ : in STD_LOGIC;
    \cnt_sysclk2_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    cnt_sysclk20 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    data3 : in STD_LOGIC_VECTOR ( 18 downto 0 );
    \lap_min_reg[5]\ : in STD_LOGIC;
    \lap_sec_reg[5]\ : in STD_LOGIC;
    \lap_csec_reg[5]_0\ : in STD_LOGIC;
    \lap_csec_reg[6]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \lap_csec[6]_i_4_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_4_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_5_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_6_n_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cap_min[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_sysclk1[31]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_sysclk2[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt_sysclk2[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_sysclk2[31]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \csec[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lap_csec[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lap_csec[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lap_csec[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of lap_flag_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \lap_min[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lap_min[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \lap_min[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_min[3]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_min[5]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lap_sec[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \lap_sec[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \lap_sec[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_sec[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sec[5]_i_1\ : label is "soft_lutpair1";
begin
  AR(0) <= \^ar\(0);
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\cap_min[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B0"
    )
        port map (
      I0 => Q(1),
      I1 => run,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => \slv_reg0_reg[2]\(0)
    );
\cnt_sysclk1[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => run,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      O => run_reg(0)
    );
\cnt_sysclk2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004044"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \cnt_sysclk2_reg[0]\(0),
      O => D(0)
    );
\cnt_sysclk2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(9),
      O => D(10)
    );
\cnt_sysclk2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(10),
      O => D(11)
    );
\cnt_sysclk2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(11),
      O => D(12)
    );
\cnt_sysclk2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(12),
      O => D(13)
    );
\cnt_sysclk2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(13),
      O => D(14)
    );
\cnt_sysclk2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(14),
      O => D(15)
    );
\cnt_sysclk2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(15),
      O => D(16)
    );
\cnt_sysclk2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(16),
      O => D(17)
    );
\cnt_sysclk2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(17),
      O => D(18)
    );
\cnt_sysclk2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(18),
      O => D(19)
    );
\cnt_sysclk2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(0),
      O => D(1)
    );
\cnt_sysclk2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(19),
      O => D(20)
    );
\cnt_sysclk2[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(20),
      O => D(21)
    );
\cnt_sysclk2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(21),
      O => D(22)
    );
\cnt_sysclk2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(22),
      O => D(23)
    );
\cnt_sysclk2[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(23),
      O => D(24)
    );
\cnt_sysclk2[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(24),
      O => D(25)
    );
\cnt_sysclk2[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(25),
      O => D(26)
    );
\cnt_sysclk2[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(26),
      O => D(27)
    );
\cnt_sysclk2[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(27),
      O => D(28)
    );
\cnt_sysclk2[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(28),
      O => D(29)
    );
\cnt_sysclk2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(1),
      O => D(2)
    );
\cnt_sysclk2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(29),
      O => D(30)
    );
\cnt_sysclk2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB44"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => Q(1),
      I3 => run,
      O => E(0)
    );
\cnt_sysclk2[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(30),
      O => D(31)
    );
\cnt_sysclk2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(2),
      O => D(3)
    );
\cnt_sysclk2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(3),
      O => D(4)
    );
\cnt_sysclk2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(4),
      O => D(5)
    );
\cnt_sysclk2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(5),
      O => D(6)
    );
\cnt_sysclk2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(6),
      O => D(7)
    );
\cnt_sysclk2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(7),
      O => D(8)
    );
\cnt_sysclk2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40440000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => cnt_sysclk20(8),
      O => D(9)
    );
\csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \min_reg[0]_0\(0),
      I1 => run,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      O => run_reg_2(0)
    );
\diff_csec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E0FF0000"
    )
        port map (
      I0 => sign_flag_reg,
      I1 => sign_flag_reg_0,
      I2 => Q(1),
      I3 => run,
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => \slv_reg0_reg[2]_0\(0)
    );
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => Q(0),
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
\lap_csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_csec[6]_i_4_n_0\,
      I1 => data3(0),
      O => \lap_csec_reg[5]\(0)
    );
\lap_csec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_csec[6]_i_4_n_0\,
      I1 => data3(0),
      I2 => data3(1),
      O => \lap_csec_reg[5]\(1)
    );
\lap_csec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_csec[6]_i_4_n_0\,
      I1 => data3(0),
      I2 => data3(1),
      I3 => data3(2),
      O => \lap_csec_reg[5]\(2)
    );
\lap_csec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_csec[6]_i_4_n_0\,
      I1 => data3(1),
      I2 => data3(0),
      I3 => data3(2),
      I4 => data3(3),
      O => \lap_csec_reg[5]\(3)
    );
\lap_csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_csec[6]_i_4_n_0\,
      I1 => data3(2),
      I2 => data3(0),
      I3 => data3(1),
      I4 => data3(3),
      I5 => data3(4),
      O => \lap_csec_reg[5]\(4)
    );
\lap_csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_csec[6]_i_4_n_0\,
      I1 => data3(3),
      I2 => \lap_csec_reg[5]_0\,
      I3 => data3(2),
      I4 => data3(4),
      I5 => data3(5),
      O => \lap_csec_reg[5]\(5)
    );
\lap_csec[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BA308A30"
    )
        port map (
      I0 => CO(0),
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      I3 => run,
      I4 => Q(1),
      O => ff_old_reg_0(0)
    );
\lap_csec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => data3(5),
      I1 => \lap_csec_reg[6]\,
      I2 => \lap_csec[6]_i_4_n_0\,
      I3 => data3(6),
      O => \lap_csec_reg[5]\(6)
    );
\lap_csec[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D0"
    )
        port map (
      I0 => p_0_in(1),
      I1 => p_0_in(0),
      I2 => run,
      I3 => \lap_sec_reg[0]\,
      O => \lap_csec[6]_i_4_n_0\
    );
lap_flag_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F0080"
    )
        port map (
      I0 => run,
      I1 => Q(1),
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => data1(0),
      O => run_reg_3
    );
\lap_min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_min[5]_i_5_n_0\,
      I1 => data3(13),
      O => \lap_min_reg[3]\(0)
    );
\lap_min[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_min[5]_i_5_n_0\,
      I1 => data3(13),
      I2 => data3(14),
      O => \lap_min_reg[3]\(1)
    );
\lap_min[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_min[5]_i_5_n_0\,
      I1 => data3(13),
      I2 => data3(14),
      I3 => data3(15),
      O => \lap_min_reg[3]\(2)
    );
\lap_min[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_min[5]_i_5_n_0\,
      I1 => data3(14),
      I2 => data3(13),
      I3 => data3(15),
      I4 => data3(16),
      O => \lap_min_reg[3]\(3)
    );
\lap_min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_min[5]_i_5_n_0\,
      I1 => data3(15),
      I2 => data3(13),
      I3 => data3(14),
      I4 => data3(16),
      I5 => data3(17),
      O => \lap_min_reg[3]\(4)
    );
\lap_min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F888F8888888F88"
    )
        port map (
      I0 => \lap_min_reg[0]\,
      I1 => \lap_min[5]_i_4_n_0\,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => run,
      I5 => Q(1),
      O => ff_old_reg_2(0)
    );
\lap_min[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_min[5]_i_5_n_0\,
      I1 => data3(16),
      I2 => \lap_min_reg[5]\,
      I3 => data3(15),
      I4 => data3(17),
      I5 => data3(18),
      O => \lap_min_reg[3]\(5)
    );
\lap_min[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80880000"
    )
        port map (
      I0 => CO(0),
      I1 => run,
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => \lap_sec_reg[0]\,
      O => \lap_min[5]_i_4_n_0\
    );
\lap_min[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \lap_sec[5]_i_6_n_0\,
      I1 => \lap_min_reg[5]\,
      I2 => data3(15),
      I3 => data3(18),
      I4 => data3(16),
      I5 => data3(17),
      O => \lap_min[5]_i_5_n_0\
    );
\lap_sec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => data3(7),
      O => \lap_sec_reg[3]\(0)
    );
\lap_sec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => data3(8),
      I2 => data3(7),
      O => \lap_sec_reg[3]\(1)
    );
\lap_sec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => data3(7),
      I2 => data3(8),
      I3 => data3(9),
      O => \lap_sec_reg[3]\(2)
    );
\lap_sec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => data3(8),
      I2 => data3(7),
      I3 => data3(9),
      I4 => data3(10),
      O => \lap_sec_reg[3]\(3)
    );
\lap_sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => data3(9),
      I2 => data3(7),
      I3 => data3(8),
      I4 => data3(10),
      I5 => data3(11),
      O => \lap_sec_reg[3]\(4)
    );
\lap_sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F880F0080880F00"
    )
        port map (
      I0 => \lap_sec_reg[0]\,
      I1 => CO(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      I4 => run,
      I5 => Q(1),
      O => ff_old_reg_1(0)
    );
\lap_sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => data3(10),
      I2 => \lap_sec_reg[5]\,
      I3 => data3(9),
      I4 => data3(11),
      I5 => data3(12),
      O => \lap_sec_reg[3]\(5)
    );
\lap_sec[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAAAAAAAAAAAAA"
    )
        port map (
      I0 => \lap_sec[5]_i_6_n_0\,
      I1 => \lap_sec_reg[5]\,
      I2 => data3(9),
      I3 => data3(12),
      I4 => data3(10),
      I5 => data3(11),
      O => \lap_sec[5]_i_4_n_0\
    );
\lap_sec[5]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => run,
      I1 => p_0_in(0),
      I2 => p_0_in(1),
      O => \lap_sec[5]_i_6_n_0\
    );
\min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080FF8000"
    )
        port map (
      I0 => \min_reg[0]\,
      I1 => \min_reg[0]_0\(0),
      I2 => \min_reg[0]_1\,
      I3 => run,
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => run_reg_0(0)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808F80"
    )
        port map (
      I0 => \min_reg[0]_1\,
      I1 => \min_reg[0]_0\(0),
      I2 => run,
      I3 => p_0_in(1),
      I4 => p_0_in(0),
      O => run_reg_1(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  port (
    ff_old_reg_0 : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 );
    run : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => p_0_in(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => p_0_in(1),
      Q => p_0_in(0)
    );
run_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => p_0_in(0),
      I1 => p_0_in(1),
      I2 => run,
      O => ff_old_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \s00_axi_rdata[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \s00_axi_rdata[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_inferred__11/i__carry__0_n_1\ : STD_LOGIC;
  signal \_inferred__11/i__carry__0_n_2\ : STD_LOGIC;
  signal \_inferred__11/i__carry__0_n_3\ : STD_LOGIC;
  signal \_inferred__11/i__carry_n_0\ : STD_LOGIC;
  signal \_inferred__11/i__carry_n_1\ : STD_LOGIC;
  signal \_inferred__11/i__carry_n_2\ : STD_LOGIC;
  signal \_inferred__11/i__carry_n_3\ : STD_LOGIC;
  signal cnt_sysclk1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt_sysclk10 : STD_LOGIC_VECTOR ( 31 downto 1 );
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
  signal \cnt_sysclk10_carry__3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__3_n_1\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__3_n_3\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__4_n_1\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__4_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__4_n_3\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__5_n_1\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__5_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__5_n_3\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__6_n_2\ : STD_LOGIC;
  signal \cnt_sysclk10_carry__6_n_3\ : STD_LOGIC;
  signal cnt_sysclk10_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk10_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk10_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk10_carry_n_3 : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk11_carry__2_n_3\ : STD_LOGIC;
  signal cnt_sysclk11_carry_i_1_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_i_2_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_i_3_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_i_4_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_i_5_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_i_6_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_i_7_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk11_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk11_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk11_carry_n_3 : STD_LOGIC;
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
  signal \cnt_sysclk1[19]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[21]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[22]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[23]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[25]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[26]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[27]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[28]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[29]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[30]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[31]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk1[9]_i_1_n_0\ : STD_LOGIC;
  signal cnt_sysclk2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt_sysclk20 : STD_LOGIC_VECTOR ( 31 downto 1 );
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
  signal \cnt_sysclk20_carry__3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__3_n_1\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__3_n_3\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__4_n_1\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__4_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__4_n_3\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__5_n_1\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__5_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__5_n_3\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__6_n_2\ : STD_LOGIC;
  signal \cnt_sysclk20_carry__6_n_3\ : STD_LOGIC;
  signal cnt_sysclk20_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk20_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk20_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk20_carry_n_3 : STD_LOGIC;
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
  signal data1 : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal data2 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal data3 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal data4 : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal data5 : STD_LOGIC_VECTOR ( 23 downto 0 );
  signal \diff_csec[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_5_n_0\ : STD_LOGIC;
  signal \diff_min[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[6]_i_1_n_0\ : STD_LOGIC;
  signal \diff_min[7]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[0]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[1]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[2]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[3]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[4]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[5]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[6]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[6]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[6]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[6]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[6]_i_5_n_0\ : STD_LOGIC;
  signal \diff_sec[7]_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec[7]_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec[7]_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec[7]_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec[7]_i_5_n_0\ : STD_LOGIC;
  signal dtmp_csec0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dtmp_csec01_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal dtmp_csec03_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dtmp_csec04_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \dtmp_csec0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_n_1\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_csec0_carry__0_n_3\ : STD_LOGIC;
  signal dtmp_csec0_carry_i_1_n_0 : STD_LOGIC;
  signal dtmp_csec0_carry_i_2_n_0 : STD_LOGIC;
  signal dtmp_csec0_carry_i_3_n_0 : STD_LOGIC;
  signal dtmp_csec0_carry_i_4_n_0 : STD_LOGIC;
  signal dtmp_csec0_carry_i_5_n_0 : STD_LOGIC;
  signal dtmp_csec0_carry_n_0 : STD_LOGIC;
  signal dtmp_csec0_carry_n_1 : STD_LOGIC;
  signal dtmp_csec0_carry_n_2 : STD_LOGIC;
  signal dtmp_csec0_carry_n_3 : STD_LOGIC;
  signal \dtmp_csec0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_csec0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal dtmp_min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal dtmp_min1_carry_i_1_n_0 : STD_LOGIC;
  signal dtmp_min1_carry_i_2_n_0 : STD_LOGIC;
  signal dtmp_min1_carry_i_3_n_0 : STD_LOGIC;
  signal dtmp_min1_carry_i_4_n_0 : STD_LOGIC;
  signal dtmp_min1_carry_i_5_n_0 : STD_LOGIC;
  signal dtmp_min1_carry_i_6_n_0 : STD_LOGIC;
  signal dtmp_min1_carry_n_1 : STD_LOGIC;
  signal dtmp_min1_carry_n_2 : STD_LOGIC;
  signal dtmp_min1_carry_n_3 : STD_LOGIC;
  signal \dtmp_min1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_min1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_min1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_min1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_min1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_min1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_min1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal dtmp_sec0 : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal dtmp_sec010_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal dtmp_sec011_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal dtmp_sec01_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dtmp_sec03_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal dtmp_sec04_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal dtmp_sec07_in : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal dtmp_sec08_in : STD_LOGIC_VECTOR ( 5 downto 1 );
  signal \dtmp_sec0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_carry__0_n_3\ : STD_LOGIC;
  signal dtmp_sec0_carry_i_1_n_0 : STD_LOGIC;
  signal dtmp_sec0_carry_i_2_n_0 : STD_LOGIC;
  signal dtmp_sec0_carry_i_3_n_0 : STD_LOGIC;
  signal dtmp_sec0_carry_i_4_n_0 : STD_LOGIC;
  signal dtmp_sec0_carry_i_5_n_0 : STD_LOGIC;
  signal dtmp_sec0_carry_n_0 : STD_LOGIC;
  signal dtmp_sec0_carry_n_1 : STD_LOGIC;
  signal dtmp_sec0_carry_n_2 : STD_LOGIC;
  signal dtmp_sec0_carry_n_3 : STD_LOGIC;
  signal \dtmp_sec0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__3/i__carry__0_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__3/i__carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__3/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__3/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__3/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__3/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__3/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__4/i__carry__0_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__4/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__4/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__4/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__4/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__4/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__5/i__carry__0_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__5/i__carry__0_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__5/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__5/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__5/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__5/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__5/i__carry_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__6/i__carry__0_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__6/i__carry__0_n_3\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__6/i__carry_n_0\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__6/i__carry_n_1\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__6/i__carry_n_2\ : STD_LOGIC;
  signal \dtmp_sec0_inferred__6/i__carry_n_3\ : STD_LOGIC;
  signal ed_clear_n_1 : STD_LOGIC;
  signal ed_clear_n_10 : STD_LOGIC;
  signal ed_clear_n_2 : STD_LOGIC;
  signal ed_clear_n_3 : STD_LOGIC;
  signal ed_clear_n_4 : STD_LOGIC;
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
  signal ed_clear_n_52 : STD_LOGIC;
  signal ed_clear_n_53 : STD_LOGIC;
  signal ed_clear_n_54 : STD_LOGIC;
  signal ed_clear_n_55 : STD_LOGIC;
  signal ed_clear_n_56 : STD_LOGIC;
  signal ed_clear_n_57 : STD_LOGIC;
  signal ed_clear_n_58 : STD_LOGIC;
  signal ed_clear_n_59 : STD_LOGIC;
  signal ed_clear_n_60 : STD_LOGIC;
  signal ed_clear_n_61 : STD_LOGIC;
  signal ed_clear_n_62 : STD_LOGIC;
  signal ed_clear_n_7 : STD_LOGIC;
  signal ed_clear_n_8 : STD_LOGIC;
  signal ed_clear_n_9 : STD_LOGIC;
  signal ed_start_n_0 : STD_LOGIC;
  signal \i__carry__0_i_10_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_11_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_12_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_13_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_14_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_15_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_16_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_17_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_18_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_19_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__9_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__9_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_4\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_8_n_7\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_4\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_5\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_6\ : STD_LOGIC;
  signal \i__carry__0_i_9_n_7\ : STD_LOGIC;
  signal \i__carry_i_10_n_0\ : STD_LOGIC;
  signal \i__carry_i_10_n_1\ : STD_LOGIC;
  signal \i__carry_i_10_n_2\ : STD_LOGIC;
  signal \i__carry_i_10_n_3\ : STD_LOGIC;
  signal \i__carry_i_10_n_4\ : STD_LOGIC;
  signal \i__carry_i_10_n_5\ : STD_LOGIC;
  signal \i__carry_i_10_n_6\ : STD_LOGIC;
  signal \i__carry_i_10_n_7\ : STD_LOGIC;
  signal \i__carry_i_11_n_0\ : STD_LOGIC;
  signal \i__carry_i_12_n_0\ : STD_LOGIC;
  signal \i__carry_i_13_n_0\ : STD_LOGIC;
  signal \i__carry_i_14_n_0\ : STD_LOGIC;
  signal \i__carry_i_15_n_0\ : STD_LOGIC;
  signal \i__carry_i_16_n_0\ : STD_LOGIC;
  signal \i__carry_i_17_n_0\ : STD_LOGIC;
  signal \i__carry_i_18_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__10_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__11_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__12_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__13_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__8_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__9_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__7_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_0\ : STD_LOGIC;
  signal \i__carry_i_9_n_1\ : STD_LOGIC;
  signal \i__carry_i_9_n_2\ : STD_LOGIC;
  signal \i__carry_i_9_n_3\ : STD_LOGIC;
  signal \i__carry_i_9_n_4\ : STD_LOGIC;
  signal \i__carry_i_9_n_5\ : STD_LOGIC;
  signal \i__carry_i_9_n_6\ : STD_LOGIC;
  signal \i__carry_i_9_n_7\ : STD_LOGIC;
  signal \lap_csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \lap_csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__0_n_1\ : STD_LOGIC;
  signal \lap_min1_carry__0_n_2\ : STD_LOGIC;
  signal \lap_min1_carry__0_n_3\ : STD_LOGIC;
  signal \lap_min1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__1_n_1\ : STD_LOGIC;
  signal \lap_min1_carry__1_n_2\ : STD_LOGIC;
  signal \lap_min1_carry__1_n_3\ : STD_LOGIC;
  signal \lap_min1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \lap_min1_carry__2_n_1\ : STD_LOGIC;
  signal \lap_min1_carry__2_n_2\ : STD_LOGIC;
  signal \lap_min1_carry__2_n_3\ : STD_LOGIC;
  signal lap_min1_carry_i_1_n_0 : STD_LOGIC;
  signal lap_min1_carry_i_2_n_0 : STD_LOGIC;
  signal lap_min1_carry_i_3_n_0 : STD_LOGIC;
  signal lap_min1_carry_i_4_n_0 : STD_LOGIC;
  signal lap_min1_carry_i_5_n_0 : STD_LOGIC;
  signal lap_min1_carry_i_6_n_0 : STD_LOGIC;
  signal lap_min1_carry_i_7_n_0 : STD_LOGIC;
  signal lap_min1_carry_n_0 : STD_LOGIC;
  signal lap_min1_carry_n_1 : STD_LOGIC;
  signal lap_min1_carry_n_2 : STD_LOGIC;
  signal lap_min1_carry_n_3 : STD_LOGIC;
  signal \lap_min[5]_i_3_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_6_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_5_n_0\ : STD_LOGIC;
  signal \min[0]_i_1_n_0\ : STD_LOGIC;
  signal \min[1]_i_1_n_0\ : STD_LOGIC;
  signal \min[2]_i_1_n_0\ : STD_LOGIC;
  signal \min[3]_i_1_n_0\ : STD_LOGIC;
  signal \min[4]_i_1_n_0\ : STD_LOGIC;
  signal \min[4]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_3_n_0\ : STD_LOGIC;
  signal \min[5]_i_4_n_0\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal prev_csec : STD_LOGIC;
  signal prev_csec0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal prev_min : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal prev_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal ptmp_min1_carry_i_2_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_i_3_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_i_4_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_i_5_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_i_6_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_i_7_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_i_8_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_i_9_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_n_0 : STD_LOGIC;
  signal ptmp_min1_carry_n_1 : STD_LOGIC;
  signal ptmp_min1_carry_n_2 : STD_LOGIC;
  signal ptmp_min1_carry_n_3 : STD_LOGIC;
  signal \ptmp_min1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \ptmp_min1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \ptmp_min1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal ptmp_min2 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal run : STD_LOGIC;
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
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
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
  signal \s00_axi_rdata[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
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
  signal \sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \sec[4]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \sec[5]_i_4_n_0\ : STD_LOGIC;
  signal sign_flag0_out : STD_LOGIC;
  signal tmp_min1_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_min1_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_min1_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_min1_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_min1_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_min1_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_min1_carry_i_8_n_0 : STD_LOGIC;
  signal tmp_min1_carry_i_9_n_0 : STD_LOGIC;
  signal tmp_min1_carry_n_1 : STD_LOGIC;
  signal tmp_min1_carry_n_2 : STD_LOGIC;
  signal tmp_min1_carry_n_3 : STD_LOGIC;
  signal \tmp_min1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \tmp_min1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal tmp_min2 : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \NLW__inferred__11/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_sysclk10_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk10_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cnt_sysclk11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk11_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_sysclk11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk20_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_csec0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_csec0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_csec0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_dtmp_csec0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_csec0_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_csec0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_csec0_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_dtmp_csec0_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_dtmp_min1_carry_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_dtmp_min1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dtmp_min1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dtmp_min1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_dtmp_sec0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_dtmp_sec0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_sec0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_sec0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dtmp_sec0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dtmp_sec0_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_dtmp_sec0_inferred__1/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_sec0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_sec0_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dtmp_sec0_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dtmp_sec0_inferred__3/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_sec0_inferred__3/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_dtmp_sec0_inferred__3/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_sec0_inferred__4/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_sec0_inferred__4/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dtmp_sec0_inferred__4/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_dtmp_sec0_inferred__5/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_sec0_inferred__5/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_dtmp_sec0_inferred__5/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_dtmp_sec0_inferred__6/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_dtmp_sec0_inferred__6/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_dtmp_sec0_inferred__6/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i__carry__0_i_8_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i__carry__0_i_9_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_lap_min1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lap_min1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lap_min1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lap_min1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_lap_min1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ptmp_min1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_ptmp_min1_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ptmp_min1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_min1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_min1_inferred__0/i__carry_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_min1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \_inferred__11/i__carry\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__11/i__carry\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute ADDER_THRESHOLD of \_inferred__11/i__carry__0\ : label is 35;
  attribute METHODOLOGY_DRC_VIOS of \_inferred__11/i__carry__0\ : label is "{SYNTH-8 {cell *THIS*}}";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cap_csec[0]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cap_csec[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cap_csec[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cap_csec[3]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cap_csec[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cap_csec[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cap_csec[6]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cap_min[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cap_min[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cap_min[2]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cap_min[3]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cap_min[4]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cap_min[5]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cap_sec[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cap_sec[2]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cap_sec[3]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cap_sec[4]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cap_sec[5]_i_1\ : label is "soft_lutpair51";
  attribute ADDER_THRESHOLD of cnt_sysclk10_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk10_carry__6\ : label is 35;
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cnt_sysclk11_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk11_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk11_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt_sysclk11_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \cnt_sysclk1[0]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt_sysclk1[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt_sysclk1[11]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \cnt_sysclk1[12]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt_sysclk1[13]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \cnt_sysclk1[14]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt_sysclk1[15]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \cnt_sysclk1[16]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt_sysclk1[17]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \cnt_sysclk1[18]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt_sysclk1[19]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \cnt_sysclk1[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \cnt_sysclk1[20]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt_sysclk1[21]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \cnt_sysclk1[22]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt_sysclk1[23]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \cnt_sysclk1[24]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt_sysclk1[25]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \cnt_sysclk1[26]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_sysclk1[27]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_sysclk1[28]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt_sysclk1[29]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt_sysclk1[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cnt_sysclk1[30]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_sysclk1[31]_i_2\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_sysclk1[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \cnt_sysclk1[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt_sysclk1[5]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \cnt_sysclk1[6]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt_sysclk1[7]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \cnt_sysclk1[8]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \cnt_sysclk1[9]_i_1\ : label is "soft_lutpair32";
  attribute ADDER_THRESHOLD of cnt_sysclk20_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \csec[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \csec[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \csec[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \csec[5]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \csec[6]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \csec[6]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \csec[6]_i_4\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \diff_csec[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \diff_csec[0]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \diff_csec[1]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \diff_min[0]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \diff_min[1]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \diff_min[2]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \diff_min[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \diff_min[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \diff_min[5]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \diff_min[6]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \diff_min[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \diff_sec[0]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \diff_sec[1]_i_4\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \diff_sec[2]_i_4\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \diff_sec[6]_i_3\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \diff_sec[6]_i_5\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \diff_sec[7]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \diff_sec[7]_i_5\ : label is "soft_lutpair23";
  attribute ADDER_THRESHOLD of dtmp_csec0_carry : label is 35;
  attribute ADDER_THRESHOLD of \dtmp_csec0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \dtmp_csec0_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \dtmp_csec0_inferred__1/i__carry__0\ : label is 35;
  attribute COMPARATOR_THRESHOLD of \dtmp_min1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \dtmp_min1_inferred__1/i__carry\ : label is 11;
  attribute ADDER_THRESHOLD of \i__carry__0_i_8\ : label is 35;
  attribute ADDER_THRESHOLD of \i__carry__0_i_9\ : label is 35;
  attribute ADDER_THRESHOLD of \i__carry_i_10\ : label is 35;
  attribute ADDER_THRESHOLD of \i__carry_i_9\ : label is 35;
  attribute SOFT_HLUTNM of \lap_csec[5]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_3\ : label is "soft_lutpair15";
  attribute COMPARATOR_THRESHOLD of lap_min1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \lap_min1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \lap_min1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \lap_min1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \lap_min[5]_i_6\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_5\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \min[0]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \min[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \min[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \min[3]_i_1\ : label is "soft_lutpair16";
  attribute COMPARATOR_THRESHOLD of ptmp_min1_carry : label is 11;
  attribute SOFT_HLUTNM of ptmp_min1_carry_i_9 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \sec[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sec[1]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \sec[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \sec[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of sign_flag_i_1 : label is "soft_lutpair21";
  attribute COMPARATOR_THRESHOLD of tmp_min1_carry : label is 11;
  attribute SOFT_HLUTNM of tmp_min1_carry_i_9 : label is "soft_lutpair20";
begin
  SR(0) <= \^sr\(0);
\_inferred__11/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \_inferred__11/i__carry_n_0\,
      CO(2) => \_inferred__11/i__carry_n_1\,
      CO(1) => \_inferred__11/i__carry_n_2\,
      CO(0) => \_inferred__11/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => \i__carry_i_2__3_n_0\,
      DI(1) => \i__carry_i_3__3_n_0\,
      DI(0) => \i__carry_i_4__3_n_0\,
      O(3 downto 0) => dtmp_min(3 downto 0),
      S(3) => \i__carry_i_5__4_n_0\,
      S(2) => \i__carry_i_6__3_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\_inferred__11/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \_inferred__11/i__carry_n_0\,
      CO(3) => \NLW__inferred__11/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \_inferred__11/i__carry__0_n_1\,
      CO(1) => \_inferred__11/i__carry__0_n_2\,
      CO(0) => \_inferred__11/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__2_n_0\,
      DI(1) => \i__carry__0_i_2__2_n_0\,
      DI(0) => \i__carry__0_i_3__2_n_0\,
      O(3 downto 0) => dtmp_min(7 downto 4),
      S(3) => \i__carry__0_i_4__2_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7__0_n_0\
    );
\cap_csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(0),
      O => prev_csec0_in(0)
    );
\cap_csec[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(1),
      O => prev_csec0_in(1)
    );
\cap_csec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(2),
      O => prev_csec0_in(2)
    );
\cap_csec[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(3),
      O => prev_csec0_in(3)
    );
\cap_csec[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(4),
      O => prev_csec0_in(4)
    );
\cap_csec[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(5),
      O => prev_csec0_in(5)
    );
\cap_csec[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(6),
      O => prev_csec0_in(6)
    );
\cap_csec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_csec0_in(0),
      Q => data4(0)
    );
\cap_csec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_csec0_in(1),
      Q => data4(1)
    );
\cap_csec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_csec0_in(2),
      Q => data4(2)
    );
\cap_csec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_csec0_in(3),
      Q => data4(3)
    );
\cap_csec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_csec0_in(4),
      Q => data4(4)
    );
\cap_csec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_csec0_in(5),
      Q => data4(5)
    );
\cap_csec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_csec0_in(6),
      Q => data4(6)
    );
\cap_min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(16),
      O => prev_min(0)
    );
\cap_min[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(17),
      O => prev_min(1)
    );
\cap_min[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(18),
      O => prev_min(2)
    );
\cap_min[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(19),
      O => prev_min(3)
    );
\cap_min[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(20),
      O => prev_min(4)
    );
\cap_min[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(21),
      O => prev_min(5)
    );
\cap_min_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_min(0),
      Q => data4(16)
    );
\cap_min_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_min(1),
      Q => data4(17)
    );
\cap_min_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_min(2),
      Q => data4(18)
    );
\cap_min_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_min(3),
      Q => data4(19)
    );
\cap_min_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_min(4),
      Q => data4(20)
    );
\cap_min_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_min(5),
      Q => data4(21)
    );
\cap_sec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(8),
      O => prev_sec(0)
    );
\cap_sec[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(9),
      O => prev_sec(1)
    );
\cap_sec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(10),
      O => prev_sec(2)
    );
\cap_sec[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(11),
      O => prev_sec(3)
    );
\cap_sec[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(12),
      O => prev_sec(4)
    );
\cap_sec[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => data3(13),
      O => prev_sec(5)
    );
\cap_sec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_sec(0),
      Q => data4(8)
    );
\cap_sec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_sec(1),
      Q => data4(9)
    );
\cap_sec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_sec(2),
      Q => data4(10)
    );
\cap_sec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_sec(3),
      Q => data4(11)
    );
\cap_sec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_sec(4),
      Q => data4(12)
    );
\cap_sec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => prev_csec,
      CLR => \^sr\(0),
      D => prev_sec(5),
      Q => data4(13)
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
      CO(3) => \cnt_sysclk10_carry__3_n_0\,
      CO(2) => \cnt_sysclk10_carry__3_n_1\,
      CO(1) => \cnt_sysclk10_carry__3_n_2\,
      CO(0) => \cnt_sysclk10_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(20 downto 17),
      S(3 downto 0) => cnt_sysclk1(20 downto 17)
    );
\cnt_sysclk10_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk10_carry__3_n_0\,
      CO(3) => \cnt_sysclk10_carry__4_n_0\,
      CO(2) => \cnt_sysclk10_carry__4_n_1\,
      CO(1) => \cnt_sysclk10_carry__4_n_2\,
      CO(0) => \cnt_sysclk10_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(24 downto 21),
      S(3 downto 0) => cnt_sysclk1(24 downto 21)
    );
\cnt_sysclk10_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk10_carry__4_n_0\,
      CO(3) => \cnt_sysclk10_carry__5_n_0\,
      CO(2) => \cnt_sysclk10_carry__5_n_1\,
      CO(1) => \cnt_sysclk10_carry__5_n_2\,
      CO(0) => \cnt_sysclk10_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk10(28 downto 25),
      S(3 downto 0) => cnt_sysclk1(28 downto 25)
    );
\cnt_sysclk10_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk10_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk10_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk10_carry__6_n_2\,
      CO(0) => \cnt_sysclk10_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk10_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk10(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt_sysclk1(31 downto 29)
    );
cnt_sysclk11_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_sysclk11_carry_n_0,
      CO(2) => cnt_sysclk11_carry_n_1,
      CO(1) => cnt_sysclk11_carry_n_2,
      CO(0) => cnt_sysclk11_carry_n_3,
      CYINIT => cnt_sysclk11_carry_i_1_n_0,
      DI(3) => cnt_sysclk11_carry_i_2_n_0,
      DI(2) => cnt_sysclk11_carry_i_3_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_cnt_sysclk11_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt_sysclk11_carry_i_4_n_0,
      S(2) => cnt_sysclk11_carry_i_5_n_0,
      S(1) => cnt_sysclk11_carry_i_6_n_0,
      S(0) => cnt_sysclk11_carry_i_7_n_0
    );
\cnt_sysclk11_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_sysclk11_carry_n_0,
      CO(3) => \cnt_sysclk11_carry__0_n_0\,
      CO(2) => \cnt_sysclk11_carry__0_n_1\,
      CO(1) => \cnt_sysclk11_carry__0_n_2\,
      CO(0) => \cnt_sysclk11_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cnt_sysclk1(15),
      DI(1) => \cnt_sysclk11_carry__0_i_1_n_0\,
      DI(0) => \cnt_sysclk11_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_cnt_sysclk11_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_sysclk11_carry__0_i_3_n_0\,
      S(2) => \cnt_sysclk11_carry__0_i_4_n_0\,
      S(1) => \cnt_sysclk11_carry__0_i_5_n_0\,
      S(0) => \cnt_sysclk11_carry__0_i_6_n_0\
    );
\cnt_sysclk11_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(12),
      I1 => cnt_sysclk1(13),
      O => \cnt_sysclk11_carry__0_i_1_n_0\
    );
\cnt_sysclk11_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(10),
      I1 => cnt_sysclk1(11),
      O => \cnt_sysclk11_carry__0_i_2_n_0\
    );
\cnt_sysclk11_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(16),
      I1 => cnt_sysclk1(17),
      O => \cnt_sysclk11_carry__0_i_3_n_0\
    );
\cnt_sysclk11_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk1(14),
      I1 => cnt_sysclk1(15),
      O => \cnt_sysclk11_carry__0_i_4_n_0\
    );
\cnt_sysclk11_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(13),
      I1 => cnt_sysclk1(12),
      O => \cnt_sysclk11_carry__0_i_5_n_0\
    );
\cnt_sysclk11_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(11),
      I1 => cnt_sysclk1(10),
      O => \cnt_sysclk11_carry__0_i_6_n_0\
    );
\cnt_sysclk11_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk11_carry__0_n_0\,
      CO(3) => \cnt_sysclk11_carry__1_n_0\,
      CO(2) => \cnt_sysclk11_carry__1_n_1\,
      CO(1) => \cnt_sysclk11_carry__1_n_2\,
      CO(0) => \cnt_sysclk11_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \cnt_sysclk11_carry__1_i_1_n_0\,
      DI(2) => \cnt_sysclk11_carry__1_i_2_n_0\,
      DI(1) => \cnt_sysclk11_carry__1_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_cnt_sysclk11_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt_sysclk11_carry__1_i_4_n_0\,
      S(2) => \cnt_sysclk11_carry__1_i_5_n_0\,
      S(1) => \cnt_sysclk11_carry__1_i_6_n_0\,
      S(0) => \cnt_sysclk11_carry__1_i_7_n_0\
    );
\cnt_sysclk11_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(24),
      I1 => cnt_sysclk1(25),
      O => \cnt_sysclk11_carry__1_i_1_n_0\
    );
\cnt_sysclk11_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(22),
      I1 => cnt_sysclk1(23),
      O => \cnt_sysclk11_carry__1_i_2_n_0\
    );
\cnt_sysclk11_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(20),
      I1 => cnt_sysclk1(21),
      O => \cnt_sysclk11_carry__1_i_3_n_0\
    );
\cnt_sysclk11_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(25),
      I1 => cnt_sysclk1(24),
      O => \cnt_sysclk11_carry__1_i_4_n_0\
    );
\cnt_sysclk11_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(23),
      I1 => cnt_sysclk1(22),
      O => \cnt_sysclk11_carry__1_i_5_n_0\
    );
\cnt_sysclk11_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(21),
      I1 => cnt_sysclk1(20),
      O => \cnt_sysclk11_carry__1_i_6_n_0\
    );
\cnt_sysclk11_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(18),
      I1 => cnt_sysclk1(19),
      O => \cnt_sysclk11_carry__1_i_7_n_0\
    );
\cnt_sysclk11_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk11_carry__1_n_0\,
      CO(3) => \NLW_cnt_sysclk11_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \cnt_sysclk11_carry__2_n_1\,
      CO(1) => \cnt_sysclk11_carry__2_n_2\,
      CO(0) => \cnt_sysclk11_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \cnt_sysclk11_carry__2_i_1_n_0\,
      DI(1) => \cnt_sysclk11_carry__2_i_2_n_0\,
      DI(0) => \cnt_sysclk11_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_cnt_sysclk11_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \cnt_sysclk11_carry__2_i_4_n_0\,
      S(1) => \cnt_sysclk11_carry__2_i_5_n_0\,
      S(0) => \cnt_sysclk11_carry__2_i_6_n_0\
    );
\cnt_sysclk11_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk1(30),
      I1 => cnt_sysclk1(31),
      O => \cnt_sysclk11_carry__2_i_1_n_0\
    );
\cnt_sysclk11_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(28),
      I1 => cnt_sysclk1(29),
      O => \cnt_sysclk11_carry__2_i_2_n_0\
    );
\cnt_sysclk11_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(26),
      I1 => cnt_sysclk1(27),
      O => \cnt_sysclk11_carry__2_i_3_n_0\
    );
\cnt_sysclk11_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(31),
      I1 => cnt_sysclk1(30),
      O => \cnt_sysclk11_carry__2_i_4_n_0\
    );
\cnt_sysclk11_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(29),
      I1 => cnt_sysclk1(28),
      O => \cnt_sysclk11_carry__2_i_5_n_0\
    );
\cnt_sysclk11_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(27),
      I1 => cnt_sysclk1(26),
      O => \cnt_sysclk11_carry__2_i_6_n_0\
    );
cnt_sysclk11_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(0),
      I1 => cnt_sysclk1(1),
      O => cnt_sysclk11_carry_i_1_n_0
    );
cnt_sysclk11_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(8),
      I1 => cnt_sysclk1(9),
      O => cnt_sysclk11_carry_i_2_n_0
    );
cnt_sysclk11_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(6),
      I1 => cnt_sysclk1(7),
      O => cnt_sysclk11_carry_i_3_n_0
    );
cnt_sysclk11_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk1(9),
      I1 => cnt_sysclk1(8),
      O => cnt_sysclk11_carry_i_4_n_0
    );
cnt_sysclk11_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(7),
      I1 => cnt_sysclk1(6),
      O => cnt_sysclk11_carry_i_5_n_0
    );
cnt_sysclk11_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(4),
      I1 => cnt_sysclk1(5),
      O => cnt_sysclk11_carry_i_6_n_0
    );
cnt_sysclk11_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(2),
      I1 => cnt_sysclk1(3),
      O => cnt_sysclk11_carry_i_7_n_0
    );
\cnt_sysclk1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk1(0),
      O => \cnt_sysclk1[0]_i_1_n_0\
    );
\cnt_sysclk1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(10),
      O => \cnt_sysclk1[10]_i_1_n_0\
    );
\cnt_sysclk1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(11),
      O => \cnt_sysclk1[11]_i_1_n_0\
    );
\cnt_sysclk1[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(12),
      O => \cnt_sysclk1[12]_i_1_n_0\
    );
\cnt_sysclk1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(13),
      O => \cnt_sysclk1[13]_i_1_n_0\
    );
\cnt_sysclk1[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(14),
      O => \cnt_sysclk1[14]_i_1_n_0\
    );
\cnt_sysclk1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(15),
      O => \cnt_sysclk1[15]_i_1_n_0\
    );
\cnt_sysclk1[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(16),
      O => \cnt_sysclk1[16]_i_1_n_0\
    );
\cnt_sysclk1[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(17),
      O => \cnt_sysclk1[17]_i_1_n_0\
    );
\cnt_sysclk1[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(18),
      O => \cnt_sysclk1[18]_i_1_n_0\
    );
\cnt_sysclk1[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(19),
      O => \cnt_sysclk1[19]_i_1_n_0\
    );
\cnt_sysclk1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(1),
      O => \cnt_sysclk1[1]_i_1_n_0\
    );
\cnt_sysclk1[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(20),
      O => \cnt_sysclk1[20]_i_1_n_0\
    );
\cnt_sysclk1[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(21),
      O => \cnt_sysclk1[21]_i_1_n_0\
    );
\cnt_sysclk1[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(22),
      O => \cnt_sysclk1[22]_i_1_n_0\
    );
\cnt_sysclk1[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(23),
      O => \cnt_sysclk1[23]_i_1_n_0\
    );
\cnt_sysclk1[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(24),
      O => \cnt_sysclk1[24]_i_1_n_0\
    );
\cnt_sysclk1[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(25),
      O => \cnt_sysclk1[25]_i_1_n_0\
    );
\cnt_sysclk1[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(26),
      O => \cnt_sysclk1[26]_i_1_n_0\
    );
\cnt_sysclk1[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(27),
      O => \cnt_sysclk1[27]_i_1_n_0\
    );
\cnt_sysclk1[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(28),
      O => \cnt_sysclk1[28]_i_1_n_0\
    );
\cnt_sysclk1[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(29),
      O => \cnt_sysclk1[29]_i_1_n_0\
    );
\cnt_sysclk1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(2),
      O => \cnt_sysclk1[2]_i_1_n_0\
    );
\cnt_sysclk1[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(30),
      O => \cnt_sysclk1[30]_i_1_n_0\
    );
\cnt_sysclk1[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(31),
      O => \cnt_sysclk1[31]_i_2_n_0\
    );
\cnt_sysclk1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(3),
      O => \cnt_sysclk1[3]_i_1_n_0\
    );
\cnt_sysclk1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(4),
      O => \cnt_sysclk1[4]_i_1_n_0\
    );
\cnt_sysclk1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(5),
      O => \cnt_sysclk1[5]_i_1_n_0\
    );
\cnt_sysclk1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(6),
      O => \cnt_sysclk1[6]_i_1_n_0\
    );
\cnt_sysclk1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(7),
      O => \cnt_sysclk1[7]_i_1_n_0\
    );
\cnt_sysclk1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(8),
      O => \cnt_sysclk1[8]_i_1_n_0\
    );
\cnt_sysclk1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \cnt_sysclk11_carry__2_n_1\,
      I1 => run,
      I2 => cnt_sysclk10(9),
      O => \cnt_sysclk1[9]_i_1_n_0\
    );
\cnt_sysclk1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[0]_i_1_n_0\,
      Q => cnt_sysclk1(0)
    );
\cnt_sysclk1_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[10]_i_1_n_0\,
      Q => cnt_sysclk1(10)
    );
\cnt_sysclk1_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[11]_i_1_n_0\,
      Q => cnt_sysclk1(11)
    );
\cnt_sysclk1_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[12]_i_1_n_0\,
      Q => cnt_sysclk1(12)
    );
\cnt_sysclk1_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[13]_i_1_n_0\,
      Q => cnt_sysclk1(13)
    );
\cnt_sysclk1_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[14]_i_1_n_0\,
      Q => cnt_sysclk1(14)
    );
\cnt_sysclk1_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[15]_i_1_n_0\,
      Q => cnt_sysclk1(15)
    );
\cnt_sysclk1_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[16]_i_1_n_0\,
      Q => cnt_sysclk1(16)
    );
\cnt_sysclk1_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[17]_i_1_n_0\,
      Q => cnt_sysclk1(17)
    );
\cnt_sysclk1_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[18]_i_1_n_0\,
      Q => cnt_sysclk1(18)
    );
\cnt_sysclk1_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[19]_i_1_n_0\,
      Q => cnt_sysclk1(19)
    );
\cnt_sysclk1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[1]_i_1_n_0\,
      Q => cnt_sysclk1(1)
    );
\cnt_sysclk1_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[20]_i_1_n_0\,
      Q => cnt_sysclk1(20)
    );
\cnt_sysclk1_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[21]_i_1_n_0\,
      Q => cnt_sysclk1(21)
    );
\cnt_sysclk1_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[22]_i_1_n_0\,
      Q => cnt_sysclk1(22)
    );
\cnt_sysclk1_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[23]_i_1_n_0\,
      Q => cnt_sysclk1(23)
    );
\cnt_sysclk1_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[24]_i_1_n_0\,
      Q => cnt_sysclk1(24)
    );
\cnt_sysclk1_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[25]_i_1_n_0\,
      Q => cnt_sysclk1(25)
    );
\cnt_sysclk1_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[26]_i_1_n_0\,
      Q => cnt_sysclk1(26)
    );
\cnt_sysclk1_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[27]_i_1_n_0\,
      Q => cnt_sysclk1(27)
    );
\cnt_sysclk1_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[28]_i_1_n_0\,
      Q => cnt_sysclk1(28)
    );
\cnt_sysclk1_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[29]_i_1_n_0\,
      Q => cnt_sysclk1(29)
    );
\cnt_sysclk1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[2]_i_1_n_0\,
      Q => cnt_sysclk1(2)
    );
\cnt_sysclk1_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[30]_i_1_n_0\,
      Q => cnt_sysclk1(30)
    );
\cnt_sysclk1_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[31]_i_2_n_0\,
      Q => cnt_sysclk1(31)
    );
\cnt_sysclk1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[3]_i_1_n_0\,
      Q => cnt_sysclk1(3)
    );
\cnt_sysclk1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[4]_i_1_n_0\,
      Q => cnt_sysclk1(4)
    );
\cnt_sysclk1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[5]_i_1_n_0\,
      Q => cnt_sysclk1(5)
    );
\cnt_sysclk1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[6]_i_1_n_0\,
      Q => cnt_sysclk1(6)
    );
\cnt_sysclk1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[7]_i_1_n_0\,
      Q => cnt_sysclk1(7)
    );
\cnt_sysclk1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[8]_i_1_n_0\,
      Q => cnt_sysclk1(8)
    );
\cnt_sysclk1_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_2,
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
      CYINIT => cnt_sysclk2(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(4 downto 1),
      S(3 downto 0) => cnt_sysclk2(4 downto 1)
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
      S(3 downto 0) => cnt_sysclk2(8 downto 5)
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
      S(3 downto 0) => cnt_sysclk2(12 downto 9)
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
      S(3 downto 0) => cnt_sysclk2(16 downto 13)
    );
\cnt_sysclk20_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk20_carry__2_n_0\,
      CO(3) => \cnt_sysclk20_carry__3_n_0\,
      CO(2) => \cnt_sysclk20_carry__3_n_1\,
      CO(1) => \cnt_sysclk20_carry__3_n_2\,
      CO(0) => \cnt_sysclk20_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(20 downto 17),
      S(3 downto 0) => cnt_sysclk2(20 downto 17)
    );
\cnt_sysclk20_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk20_carry__3_n_0\,
      CO(3) => \cnt_sysclk20_carry__4_n_0\,
      CO(2) => \cnt_sysclk20_carry__4_n_1\,
      CO(1) => \cnt_sysclk20_carry__4_n_2\,
      CO(0) => \cnt_sysclk20_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(24 downto 21),
      S(3 downto 0) => cnt_sysclk2(24 downto 21)
    );
\cnt_sysclk20_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk20_carry__4_n_0\,
      CO(3) => \cnt_sysclk20_carry__5_n_0\,
      CO(2) => \cnt_sysclk20_carry__5_n_1\,
      CO(1) => \cnt_sysclk20_carry__5_n_2\,
      CO(0) => \cnt_sysclk20_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk20(28 downto 25),
      S(3 downto 0) => cnt_sysclk2(28 downto 25)
    );
\cnt_sysclk20_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk20_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk20_carry__6_n_2\,
      CO(0) => \cnt_sysclk20_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk20_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk20(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt_sysclk2(31 downto 29)
    );
\cnt_sysclk2_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(0),
      Q => cnt_sysclk2(0)
    );
\cnt_sysclk2_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(10),
      Q => cnt_sysclk2(10)
    );
\cnt_sysclk2_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(11),
      Q => cnt_sysclk2(11)
    );
\cnt_sysclk2_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(12),
      Q => cnt_sysclk2(12)
    );
\cnt_sysclk2_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(13),
      Q => cnt_sysclk2(13)
    );
\cnt_sysclk2_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(14),
      Q => cnt_sysclk2(14)
    );
\cnt_sysclk2_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(15),
      Q => cnt_sysclk2(15)
    );
\cnt_sysclk2_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(16),
      Q => cnt_sysclk2(16)
    );
\cnt_sysclk2_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(17),
      Q => cnt_sysclk2(17)
    );
\cnt_sysclk2_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(18),
      Q => cnt_sysclk2(18)
    );
\cnt_sysclk2_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(19),
      Q => cnt_sysclk2(19)
    );
\cnt_sysclk2_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(1),
      Q => cnt_sysclk2(1)
    );
\cnt_sysclk2_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(20),
      Q => cnt_sysclk2(20)
    );
\cnt_sysclk2_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(21),
      Q => cnt_sysclk2(21)
    );
\cnt_sysclk2_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(22),
      Q => cnt_sysclk2(22)
    );
\cnt_sysclk2_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(23),
      Q => cnt_sysclk2(23)
    );
\cnt_sysclk2_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(24),
      Q => cnt_sysclk2(24)
    );
\cnt_sysclk2_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(25),
      Q => cnt_sysclk2(25)
    );
\cnt_sysclk2_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(26),
      Q => cnt_sysclk2(26)
    );
\cnt_sysclk2_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(27),
      Q => cnt_sysclk2(27)
    );
\cnt_sysclk2_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(28),
      Q => cnt_sysclk2(28)
    );
\cnt_sysclk2_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(29),
      Q => cnt_sysclk2(29)
    );
\cnt_sysclk2_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(2),
      Q => cnt_sysclk2(2)
    );
\cnt_sysclk2_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(30),
      Q => cnt_sysclk2(30)
    );
\cnt_sysclk2_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(31),
      Q => cnt_sysclk2(31)
    );
\cnt_sysclk2_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(3),
      Q => cnt_sysclk2(3)
    );
\cnt_sysclk2_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => cnt_sysclk2(4)
    );
\cnt_sysclk2_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => cnt_sysclk2(5)
    );
\cnt_sysclk2_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => cnt_sysclk2(6)
    );
\cnt_sysclk2_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => cnt_sysclk2(7)
    );
\cnt_sysclk2_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(8),
      Q => cnt_sysclk2(8)
    );
\cnt_sysclk2_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_1,
      CLR => \^sr\(0),
      D => p_1_in(9),
      Q => cnt_sysclk2(9)
    );
\csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \csec[6]_i_4_n_0\,
      I1 => data2(0),
      O => \csec[0]_i_1_n_0\
    );
\csec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \csec[6]_i_4_n_0\,
      I1 => data2(0),
      I2 => data2(1),
      O => \csec[1]_i_1_n_0\
    );
\csec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \csec[6]_i_4_n_0\,
      I1 => data2(0),
      I2 => data2(1),
      I3 => data2(2),
      O => \csec[2]_i_1_n_0\
    );
\csec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \csec[6]_i_4_n_0\,
      I1 => data2(1),
      I2 => data2(0),
      I3 => data2(2),
      I4 => data2(3),
      O => \csec[3]_i_1_n_0\
    );
\csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \csec[6]_i_4_n_0\,
      I1 => data2(2),
      I2 => data2(0),
      I3 => data2(1),
      I4 => data2(3),
      I5 => data2(4),
      O => \csec[4]_i_1_n_0\
    );
\csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \csec[6]_i_4_n_0\,
      I1 => data2(3),
      I2 => \csec[5]_i_2_n_0\,
      I3 => data2(2),
      I4 => data2(4),
      I5 => data2(5),
      O => \csec[5]_i_1_n_0\
    );
\csec[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data2(1),
      I1 => data2(0),
      O => \csec[5]_i_2_n_0\
    );
\csec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7080"
    )
        port map (
      I0 => data2(5),
      I1 => \csec[6]_i_3_n_0\,
      I2 => \csec[6]_i_4_n_0\,
      I3 => data2(6),
      O => \csec[6]_i_2_n_0\
    );
\csec[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => data2(4),
      I1 => data2(2),
      I2 => data2(0),
      I3 => data2(1),
      I4 => data2(3),
      O => \csec[6]_i_3_n_0\
    );
\csec[6]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => run,
      I1 => \sec[5]_i_3_n_0\,
      O => \csec[6]_i_4_n_0\
    );
\csec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_10,
      CLR => \^sr\(0),
      D => \csec[0]_i_1_n_0\,
      Q => data2(0)
    );
\csec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_10,
      CLR => \^sr\(0),
      D => \csec[1]_i_1_n_0\,
      Q => data2(1)
    );
\csec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_10,
      CLR => \^sr\(0),
      D => \csec[2]_i_1_n_0\,
      Q => data2(2)
    );
\csec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_10,
      CLR => \^sr\(0),
      D => \csec[3]_i_1_n_0\,
      Q => data2(3)
    );
\csec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_10,
      CLR => \^sr\(0),
      D => \csec[4]_i_1_n_0\,
      Q => data2(4)
    );
\csec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_10,
      CLR => \^sr\(0),
      D => \csec[5]_i_1_n_0\,
      Q => data2(5)
    );
\csec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_10,
      CLR => \^sr\(0),
      D => \csec[6]_i_2_n_0\,
      Q => data2(6)
    );
\diff_csec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA000022A0"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[0]_i_2_n_0\,
      I2 => dtmp_csec0(0),
      I3 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I4 => dtmp_min1_carry_n_1,
      I5 => \diff_csec[0]_i_3_n_0\,
      O => \diff_csec[0]_i_1_n_0\
    );
\diff_csec[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(0),
      I1 => data3(0),
      O => \diff_csec[0]_i_2_n_0\
    );
\diff_csec[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6600F000"
    )
        port map (
      I0 => data3(0),
      I1 => data4(0),
      I2 => dtmp_csec03_in(0),
      I3 => dtmp_min1_carry_n_1,
      I4 => p_2_in,
      O => \diff_csec[0]_i_3_n_0\
    );
\diff_csec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[1]_i_2_n_0\,
      I2 => dtmp_csec04_in(1),
      I3 => dtmp_csec03_in(1),
      I4 => dtmp_min1_carry_n_1,
      I5 => p_2_in,
      O => \diff_csec[1]_i_1_n_0\
    );
\diff_csec[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_csec01_in(1),
      I1 => dtmp_csec0(1),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => dtmp_min1_carry_n_1,
      O => \diff_csec[1]_i_2_n_0\
    );
\diff_csec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[2]_i_2_n_0\,
      I2 => dtmp_csec04_in(2),
      I3 => dtmp_csec03_in(2),
      I4 => dtmp_min1_carry_n_1,
      I5 => p_2_in,
      O => \diff_csec[2]_i_1_n_0\
    );
\diff_csec[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_csec01_in(2),
      I1 => dtmp_csec0(2),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => dtmp_min1_carry_n_1,
      O => \diff_csec[2]_i_2_n_0\
    );
\diff_csec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[3]_i_2_n_0\,
      I2 => dtmp_csec04_in(3),
      I3 => dtmp_csec03_in(3),
      I4 => dtmp_min1_carry_n_1,
      I5 => p_2_in,
      O => \diff_csec[3]_i_1_n_0\
    );
\diff_csec[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_csec01_in(3),
      I1 => dtmp_csec0(3),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => dtmp_min1_carry_n_1,
      O => \diff_csec[3]_i_2_n_0\
    );
\diff_csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[4]_i_2_n_0\,
      I2 => dtmp_csec04_in(4),
      I3 => dtmp_csec03_in(4),
      I4 => dtmp_min1_carry_n_1,
      I5 => p_2_in,
      O => \diff_csec[4]_i_1_n_0\
    );
\diff_csec[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_csec01_in(4),
      I1 => dtmp_csec0(4),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => dtmp_min1_carry_n_1,
      O => \diff_csec[4]_i_2_n_0\
    );
\diff_csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[5]_i_2_n_0\,
      I2 => dtmp_csec04_in(5),
      I3 => dtmp_csec03_in(5),
      I4 => dtmp_min1_carry_n_1,
      I5 => p_2_in,
      O => \diff_csec[5]_i_1_n_0\
    );
\diff_csec[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_csec01_in(5),
      I1 => dtmp_csec0(5),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => dtmp_min1_carry_n_1,
      O => \diff_csec[5]_i_2_n_0\
    );
\diff_csec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A88888AA888888"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[6]_i_2_n_0\,
      I2 => dtmp_csec04_in(6),
      I3 => dtmp_csec03_in(6),
      I4 => dtmp_min1_carry_n_1,
      I5 => p_2_in,
      O => \diff_csec[6]_i_1_n_0\
    );
\diff_csec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_csec01_in(6),
      I1 => dtmp_csec0(6),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => dtmp_min1_carry_n_1,
      O => \diff_csec[6]_i_2_n_0\
    );
\diff_csec[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8888AA888888"
    )
        port map (
      I0 => run,
      I1 => \diff_csec[7]_i_5_n_0\,
      I2 => \dtmp_csec0_inferred__2/i__carry__0_n_0\,
      I3 => dtmp_csec03_in(7),
      I4 => dtmp_min1_carry_n_1,
      I5 => p_2_in,
      O => \diff_csec[7]_i_2_n_0\
    );
\diff_csec[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(8),
      I1 => Q(7),
      I2 => Q(9),
      I3 => Q(10),
      O => \diff_csec[7]_i_3_n_0\
    );
\diff_csec[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => Q(3),
      I1 => Q(4),
      I2 => Q(6),
      I3 => Q(5),
      O => \diff_csec[7]_i_4_n_0\
    );
\diff_csec[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005C"
    )
        port map (
      I0 => \dtmp_csec0_inferred__0/i__carry__0_n_0\,
      I1 => dtmp_csec0(7),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => dtmp_min1_carry_n_1,
      O => \diff_csec[7]_i_5_n_0\
    );
\diff_csec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[0]_i_1_n_0\,
      Q => data5(0)
    );
\diff_csec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[1]_i_1_n_0\,
      Q => data5(1)
    );
\diff_csec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[2]_i_1_n_0\,
      Q => data5(2)
    );
\diff_csec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[3]_i_1_n_0\,
      Q => data5(3)
    );
\diff_csec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[4]_i_1_n_0\,
      Q => data5(4)
    );
\diff_csec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[5]_i_1_n_0\,
      Q => data5(5)
    );
\diff_csec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[6]_i_1_n_0\,
      Q => data5(6)
    );
\diff_csec_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_csec[7]_i_2_n_0\,
      Q => data5(7)
    );
\diff_min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(0),
      O => \diff_min[0]_i_1_n_0\
    );
\diff_min[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(1),
      O => \diff_min[1]_i_1_n_0\
    );
\diff_min[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(2),
      O => \diff_min[2]_i_1_n_0\
    );
\diff_min[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(3),
      O => \diff_min[3]_i_1_n_0\
    );
\diff_min[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(4),
      O => \diff_min[4]_i_1_n_0\
    );
\diff_min[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(5),
      O => \diff_min[5]_i_1_n_0\
    );
\diff_min[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(6),
      O => \diff_min[6]_i_1_n_0\
    );
\diff_min[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => run,
      I1 => dtmp_min(7),
      O => \diff_min[7]_i_1_n_0\
    );
\diff_min_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[0]_i_1_n_0\,
      Q => data5(16)
    );
\diff_min_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[1]_i_1_n_0\,
      Q => data5(17)
    );
\diff_min_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[2]_i_1_n_0\,
      Q => data5(18)
    );
\diff_min_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[3]_i_1_n_0\,
      Q => data5(19)
    );
\diff_min_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[4]_i_1_n_0\,
      Q => data5(20)
    );
\diff_min_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[5]_i_1_n_0\,
      Q => data5(21)
    );
\diff_min_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[6]_i_1_n_0\,
      Q => data5(22)
    );
\diff_min_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_min[7]_i_1_n_0\,
      Q => data5(23)
    );
\diff_sec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"69690000FF000000"
    )
        port map (
      I0 => p_2_in,
      I1 => data4(8),
      I2 => data3(8),
      I3 => \diff_sec[0]_i_2_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[0]_i_1_n_0\
    );
\diff_sec[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD08F8FD0D0808F"
    )
        port map (
      I0 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I1 => dtmp_sec04_in(0),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => ptmp_min1_carry_n_0,
      I4 => \diff_sec[0]_i_3_n_0\,
      I5 => dtmp_sec01_in(0),
      O => \diff_sec[0]_i_2_n_0\
    );
\diff_sec[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(8),
      I1 => data4(8),
      O => \diff_sec[0]_i_3_n_0\
    );
\diff_sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => \diff_sec[1]_i_2_n_0\,
      I1 => \diff_sec[1]_i_3_n_0\,
      I2 => \diff_sec[1]_i_4_n_0\,
      I3 => \diff_sec[1]_i_5_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[1]_i_1_n_0\
    );
\diff_sec[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec011_in(1),
      I1 => dtmp_sec010_in(1),
      I2 => p_2_in,
      I3 => p_9_in,
      O => \diff_sec[1]_i_2_n_0\
    );
\diff_sec[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec08_in(1),
      I1 => dtmp_sec07_in(1),
      I2 => p_6_in,
      I3 => p_2_in,
      O => \diff_sec[1]_i_3_n_0\
    );
\diff_sec[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec04_in(1),
      I1 => dtmp_sec03_in(1),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => \ptmp_min1_inferred__0/i__carry_n_1\,
      O => \diff_sec[1]_i_4_n_0\
    );
\diff_sec[1]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec01_in(1),
      I1 => dtmp_sec0(1),
      I2 => ptmp_min1_carry_n_0,
      I3 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_sec[1]_i_5_n_0\
    );
\diff_sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => \diff_sec[2]_i_2_n_0\,
      I1 => \diff_sec[2]_i_3_n_0\,
      I2 => \diff_sec[2]_i_4_n_0\,
      I3 => \diff_sec[2]_i_5_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[2]_i_1_n_0\
    );
\diff_sec[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec011_in(2),
      I1 => dtmp_sec010_in(2),
      I2 => p_2_in,
      I3 => p_9_in,
      O => \diff_sec[2]_i_2_n_0\
    );
\diff_sec[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec08_in(2),
      I1 => dtmp_sec07_in(2),
      I2 => p_6_in,
      I3 => p_2_in,
      O => \diff_sec[2]_i_3_n_0\
    );
\diff_sec[2]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec04_in(2),
      I1 => dtmp_sec03_in(2),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => \ptmp_min1_inferred__0/i__carry_n_1\,
      O => \diff_sec[2]_i_4_n_0\
    );
\diff_sec[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec01_in(2),
      I1 => dtmp_sec0(2),
      I2 => ptmp_min1_carry_n_0,
      I3 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_sec[2]_i_5_n_0\
    );
\diff_sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => \diff_sec[3]_i_2_n_0\,
      I1 => \diff_sec[3]_i_3_n_0\,
      I2 => \diff_sec[3]_i_4_n_0\,
      I3 => \diff_sec[3]_i_5_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[3]_i_1_n_0\
    );
\diff_sec[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec011_in(3),
      I1 => dtmp_sec010_in(3),
      I2 => p_2_in,
      I3 => p_9_in,
      O => \diff_sec[3]_i_2_n_0\
    );
\diff_sec[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec08_in(3),
      I1 => dtmp_sec07_in(3),
      I2 => p_6_in,
      I3 => p_2_in,
      O => \diff_sec[3]_i_3_n_0\
    );
\diff_sec[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec04_in(3),
      I1 => dtmp_sec03_in(3),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => \ptmp_min1_inferred__0/i__carry_n_1\,
      O => \diff_sec[3]_i_4_n_0\
    );
\diff_sec[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec01_in(3),
      I1 => dtmp_sec0(3),
      I2 => ptmp_min1_carry_n_0,
      I3 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_sec[3]_i_5_n_0\
    );
\diff_sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => \diff_sec[4]_i_2_n_0\,
      I1 => \diff_sec[4]_i_3_n_0\,
      I2 => \diff_sec[4]_i_4_n_0\,
      I3 => \diff_sec[4]_i_5_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[4]_i_1_n_0\
    );
\diff_sec[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec011_in(4),
      I1 => dtmp_sec010_in(4),
      I2 => p_2_in,
      I3 => p_9_in,
      O => \diff_sec[4]_i_2_n_0\
    );
\diff_sec[4]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec08_in(4),
      I1 => dtmp_sec07_in(4),
      I2 => p_6_in,
      I3 => p_2_in,
      O => \diff_sec[4]_i_3_n_0\
    );
\diff_sec[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec04_in(4),
      I1 => dtmp_sec03_in(4),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => \ptmp_min1_inferred__0/i__carry_n_1\,
      O => \diff_sec[4]_i_4_n_0\
    );
\diff_sec[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec01_in(4),
      I1 => dtmp_sec0(4),
      I2 => ptmp_min1_carry_n_0,
      I3 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_sec[4]_i_5_n_0\
    );
\diff_sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => \diff_sec[5]_i_2_n_0\,
      I1 => \diff_sec[5]_i_3_n_0\,
      I2 => \diff_sec[5]_i_4_n_0\,
      I3 => \diff_sec[5]_i_5_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[5]_i_1_n_0\
    );
\diff_sec[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec011_in(5),
      I1 => dtmp_sec010_in(5),
      I2 => p_2_in,
      I3 => p_9_in,
      O => \diff_sec[5]_i_2_n_0\
    );
\diff_sec[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec08_in(5),
      I1 => dtmp_sec07_in(5),
      I2 => p_6_in,
      I3 => p_2_in,
      O => \diff_sec[5]_i_3_n_0\
    );
\diff_sec[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0C0"
    )
        port map (
      I0 => dtmp_sec04_in(5),
      I1 => dtmp_sec03_in(5),
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I3 => \ptmp_min1_inferred__0/i__carry_n_1\,
      O => \diff_sec[5]_i_4_n_0\
    );
\diff_sec[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AC"
    )
        port map (
      I0 => dtmp_sec01_in(5),
      I1 => dtmp_sec0(5),
      I2 => ptmp_min1_carry_n_0,
      I3 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_sec[5]_i_5_n_0\
    );
\diff_sec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => \diff_sec[6]_i_2_n_0\,
      I1 => \diff_sec[6]_i_3_n_0\,
      I2 => \diff_sec[6]_i_4_n_0\,
      I3 => \diff_sec[6]_i_5_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[6]_i_1_n_0\
    );
\diff_sec[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C022E233F322E2"
    )
        port map (
      I0 => dtmp_sec07_in(6),
      I1 => p_2_in,
      I2 => p_9_in,
      I3 => \dtmp_sec0_inferred__6/i__carry__0_n_1\,
      I4 => p_6_in,
      I5 => \dtmp_sec0_inferred__4/i__carry__0_n_1\,
      O => \diff_sec[6]_i_2_n_0\
    );
\diff_sec[6]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => p_9_in,
      I1 => p_2_in,
      I2 => dtmp_sec010_in(6),
      O => \diff_sec[6]_i_3_n_0\
    );
\diff_sec[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C022E233F322E2"
    )
        port map (
      I0 => dtmp_sec0(6),
      I1 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I2 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I3 => \dtmp_sec0_inferred__2/i__carry__0_n_1\,
      I4 => ptmp_min1_carry_n_0,
      I5 => \dtmp_sec0_inferred__0/i__carry__0_n_1\,
      O => \diff_sec[6]_i_4_n_0\
    );
\diff_sec[6]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I1 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I2 => dtmp_sec03_in(6),
      O => \diff_sec[6]_i_5_n_0\
    );
\diff_sec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEE0000FFF00000"
    )
        port map (
      I0 => \diff_sec[7]_i_2_n_0\,
      I1 => \diff_sec[7]_i_3_n_0\,
      I2 => \diff_sec[7]_i_4_n_0\,
      I3 => \diff_sec[7]_i_5_n_0\,
      I4 => run,
      I5 => dtmp_min1_carry_n_1,
      O => \diff_sec[7]_i_1_n_0\
    );
\diff_sec[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C011D133F311D1"
    )
        port map (
      I0 => \dtmp_sec0_inferred__3/i__carry__0_n_0\,
      I1 => p_2_in,
      I2 => p_9_in,
      I3 => \dtmp_sec0_inferred__6/i__carry__0_n_1\,
      I4 => p_6_in,
      I5 => \dtmp_sec0_inferred__4/i__carry__0_n_1\,
      O => \diff_sec[7]_i_2_n_0\
    );
\diff_sec[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_9_in,
      I1 => p_2_in,
      I2 => \dtmp_sec0_inferred__5/i__carry__0_n_0\,
      O => \diff_sec[7]_i_3_n_0\
    );
\diff_sec[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00C011D133F311D1"
    )
        port map (
      I0 => \dtmp_sec0_carry__0_n_0\,
      I1 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I2 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I3 => \dtmp_sec0_inferred__2/i__carry__0_n_1\,
      I4 => ptmp_min1_carry_n_0,
      I5 => \dtmp_sec0_inferred__0/i__carry__0_n_1\,
      O => \diff_sec[7]_i_4_n_0\
    );
\diff_sec[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I1 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I2 => \dtmp_sec0_inferred__1/i__carry__0_n_0\,
      O => \diff_sec[7]_i_5_n_0\
    );
\diff_sec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[0]_i_1_n_0\,
      Q => data5(8)
    );
\diff_sec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[1]_i_1_n_0\,
      Q => data5(9)
    );
\diff_sec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[2]_i_1_n_0\,
      Q => data5(10)
    );
\diff_sec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[3]_i_1_n_0\,
      Q => data5(11)
    );
\diff_sec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[4]_i_1_n_0\,
      Q => data5(12)
    );
\diff_sec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[5]_i_1_n_0\,
      Q => data5(13)
    );
\diff_sec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[6]_i_1_n_0\,
      Q => data5(14)
    );
\diff_sec_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => \diff_sec[7]_i_1_n_0\,
      Q => data5(15)
    );
dtmp_csec0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dtmp_csec0_carry_n_0,
      CO(2) => dtmp_csec0_carry_n_1,
      CO(1) => dtmp_csec0_carry_n_2,
      CO(0) => dtmp_csec0_carry_n_3,
      CYINIT => '1',
      DI(3) => dtmp_csec0_carry_i_1_n_0,
      DI(2) => data3(2),
      DI(1 downto 0) => data4(1 downto 0),
      O(3 downto 0) => dtmp_csec0(3 downto 0),
      S(3) => dtmp_csec0_carry_i_2_n_0,
      S(2) => dtmp_csec0_carry_i_3_n_0,
      S(1) => dtmp_csec0_carry_i_4_n_0,
      S(0) => dtmp_csec0_carry_i_5_n_0
    );
\dtmp_csec0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dtmp_csec0_carry_n_0,
      CO(3) => \NLW_dtmp_csec0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \dtmp_csec0_carry__0_n_1\,
      CO(1) => \dtmp_csec0_carry__0_n_2\,
      CO(0) => \dtmp_csec0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \dtmp_csec0_carry__0_i_1_n_0\,
      DI(1) => \dtmp_csec0_carry__0_i_2_n_0\,
      DI(0) => \dtmp_csec0_carry__0_i_3_n_0\,
      O(3 downto 0) => dtmp_csec0(7 downto 4),
      S(3) => \dtmp_csec0_carry__0_i_4_n_0\,
      S(2) => \dtmp_csec0_carry__0_i_5_n_0\,
      S(1) => \dtmp_csec0_carry__0_i_6_n_0\,
      S(0) => \dtmp_csec0_carry__0_i_7_n_0\
    );
\dtmp_csec0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data4(5),
      I1 => data3(5),
      O => \dtmp_csec0_carry__0_i_1_n_0\
    );
\dtmp_csec0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(5),
      I1 => data4(5),
      O => \dtmp_csec0_carry__0_i_2_n_0\
    );
\dtmp_csec0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data4(3),
      I1 => data3(3),
      O => \dtmp_csec0_carry__0_i_3_n_0\
    );
\dtmp_csec0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data3(6),
      I1 => data4(6),
      O => \dtmp_csec0_carry__0_i_4_n_0\
    );
\dtmp_csec0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data4(5),
      I1 => data3(5),
      I2 => data3(6),
      I3 => data4(6),
      O => \dtmp_csec0_carry__0_i_5_n_0\
    );
\dtmp_csec0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => data3(5),
      I1 => data4(5),
      I2 => data3(4),
      I3 => data4(4),
      O => \dtmp_csec0_carry__0_i_6_n_0\
    );
\dtmp_csec0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data3(3),
      I1 => data4(3),
      I2 => data3(4),
      I3 => data4(4),
      O => \dtmp_csec0_carry__0_i_7_n_0\
    );
dtmp_csec0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data3(2),
      O => dtmp_csec0_carry_i_1_n_0
    );
dtmp_csec0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data3(2),
      I1 => data3(3),
      I2 => data4(3),
      O => dtmp_csec0_carry_i_2_n_0
    );
dtmp_csec0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(2),
      I1 => data4(2),
      O => dtmp_csec0_carry_i_3_n_0
    );
dtmp_csec0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(1),
      I1 => data3(1),
      O => dtmp_csec0_carry_i_4_n_0
    );
dtmp_csec0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(0),
      I1 => data3(0),
      O => dtmp_csec0_carry_i_5_n_0
    );
\dtmp_csec0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_csec0_inferred__0/i__carry_n_0\,
      CO(2) => \dtmp_csec0_inferred__0/i__carry_n_1\,
      CO(1) => \dtmp_csec0_inferred__0/i__carry_n_2\,
      CO(0) => \dtmp_csec0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => data4(3 downto 0),
      O(3 downto 1) => dtmp_csec01_in(3 downto 1),
      O(0) => \NLW_dtmp_csec0_inferred__0/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_1__9_n_0\,
      S(2) => \i__carry_i_2__10_n_0\,
      S(1) => \i__carry_i_3__11_n_0\,
      S(0) => \i__carry_i_4__9_n_0\
    );
\dtmp_csec0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_csec0_inferred__0/i__carry_n_0\,
      CO(3) => \dtmp_csec0_inferred__0/i__carry__0_n_0\,
      CO(2) => \NLW_dtmp_csec0_inferred__0/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \dtmp_csec0_inferred__0/i__carry__0_n_2\,
      CO(0) => \dtmp_csec0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data4(6 downto 4),
      O(3) => \NLW_dtmp_csec0_inferred__0/i__carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => dtmp_csec01_in(6 downto 4),
      S(3) => '1',
      S(2) => \i__carry__0_i_1__7_n_0\,
      S(1) => \i__carry__0_i_2__7_n_0\,
      S(0) => \i__carry__0_i_3__5_n_0\
    );
\dtmp_csec0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_csec0_inferred__1/i__carry_n_0\,
      CO(2) => \dtmp_csec0_inferred__1/i__carry_n_1\,
      CO(1) => \dtmp_csec0_inferred__1/i__carry_n_2\,
      CO(0) => \dtmp_csec0_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => data4(2),
      DI(1 downto 0) => data3(1 downto 0),
      O(3 downto 0) => dtmp_csec03_in(3 downto 0),
      S(3) => \i__carry_i_2__4_n_0\,
      S(2) => \i__carry_i_3__5_n_0\,
      S(1) => \i__carry_i_4__10_n_0\,
      S(0) => \i__carry_i_5__7_n_0\
    );
\dtmp_csec0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_csec0_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_dtmp_csec0_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \dtmp_csec0_inferred__1/i__carry__0_n_1\,
      CO(1) => \dtmp_csec0_inferred__1/i__carry__0_n_2\,
      CO(0) => \dtmp_csec0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1_n_0\,
      DI(1) => \i__carry__0_i_2_n_0\,
      DI(0) => \i__carry__0_i_3_n_0\,
      O(3 downto 0) => dtmp_csec03_in(7 downto 4),
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5__0_n_0\,
      S(1) => \i__carry__0_i_6__0_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\dtmp_csec0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_csec0_inferred__2/i__carry_n_0\,
      CO(2) => \dtmp_csec0_inferred__2/i__carry_n_1\,
      CO(1) => \dtmp_csec0_inferred__2/i__carry_n_2\,
      CO(0) => \dtmp_csec0_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => data3(3 downto 0),
      O(3 downto 1) => dtmp_csec04_in(3 downto 1),
      O(0) => \NLW_dtmp_csec0_inferred__2/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_1__11_n_0\,
      S(2) => \i__carry_i_2__5_n_0\,
      S(1) => \i__carry_i_3__8_n_0\,
      S(0) => \i__carry_i_4__8_n_0\
    );
\dtmp_csec0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_csec0_inferred__2/i__carry_n_0\,
      CO(3) => \dtmp_csec0_inferred__2/i__carry__0_n_0\,
      CO(2) => \NLW_dtmp_csec0_inferred__2/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \dtmp_csec0_inferred__2/i__carry__0_n_2\,
      CO(0) => \dtmp_csec0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => data3(6 downto 4),
      O(3) => \NLW_dtmp_csec0_inferred__2/i__carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => dtmp_csec04_in(6 downto 4),
      S(3) => '1',
      S(2) => \i__carry__0_i_1__6_n_0\,
      S(1) => \i__carry__0_i_2__4_n_0\,
      S(0) => \i__carry__0_i_3__4_n_0\
    );
dtmp_min1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => NLW_dtmp_min1_carry_CO_UNCONNECTED(3),
      CO(2) => dtmp_min1_carry_n_1,
      CO(1) => dtmp_min1_carry_n_2,
      CO(0) => dtmp_min1_carry_n_3,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => dtmp_min1_carry_i_1_n_0,
      DI(1) => dtmp_min1_carry_i_2_n_0,
      DI(0) => dtmp_min1_carry_i_3_n_0,
      O(3 downto 0) => NLW_dtmp_min1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => '0',
      S(2) => dtmp_min1_carry_i_4_n_0,
      S(1) => dtmp_min1_carry_i_5_n_0,
      S(0) => dtmp_min1_carry_i_6_n_0
    );
dtmp_min1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(20),
      I1 => data4(20),
      I2 => data4(21),
      I3 => data3(21),
      O => dtmp_min1_carry_i_1_n_0
    );
dtmp_min1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(18),
      I1 => data4(18),
      I2 => data4(19),
      I3 => data3(19),
      O => dtmp_min1_carry_i_2_n_0
    );
dtmp_min1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(16),
      I1 => data4(16),
      I2 => data4(17),
      I3 => data3(17),
      O => dtmp_min1_carry_i_3_n_0
    );
dtmp_min1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data4(21),
      I1 => data3(21),
      I2 => data4(20),
      I3 => data3(20),
      O => dtmp_min1_carry_i_4_n_0
    );
dtmp_min1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data4(19),
      I1 => data3(19),
      I2 => data4(18),
      I3 => data3(18),
      O => dtmp_min1_carry_i_5_n_0
    );
dtmp_min1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data4(17),
      I1 => data3(17),
      I2 => data4(16),
      I3 => data3(16),
      O => dtmp_min1_carry_i_6_n_0
    );
\dtmp_min1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_min1_inferred__0/i__carry_n_0\,
      CO(2) => \dtmp_min1_inferred__0/i__carry_n_1\,
      CO(1) => \dtmp_min1_inferred__0/i__carry_n_2\,
      CO(0) => \dtmp_min1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__6_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_dtmp_min1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__6_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\dtmp_min1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_2_in,
      CO(2) => \dtmp_min1_inferred__1/i__carry_n_1\,
      CO(1) => \dtmp_min1_inferred__1/i__carry_n_2\,
      CO(0) => \dtmp_min1_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_dtmp_min1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
dtmp_sec0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => dtmp_sec0_carry_n_0,
      CO(2) => dtmp_sec0_carry_n_1,
      CO(1) => dtmp_sec0_carry_n_2,
      CO(0) => dtmp_sec0_carry_n_3,
      CYINIT => '0',
      DI(3) => dtmp_sec0_carry_i_1_n_0,
      DI(2) => data3(10),
      DI(1 downto 0) => data4(9 downto 8),
      O(3 downto 1) => dtmp_sec0(3 downto 1),
      O(0) => dtmp_sec01_in(0),
      S(3) => dtmp_sec0_carry_i_2_n_0,
      S(2) => dtmp_sec0_carry_i_3_n_0,
      S(1) => dtmp_sec0_carry_i_4_n_0,
      S(0) => dtmp_sec0_carry_i_5_n_0
    );
\dtmp_sec0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => dtmp_sec0_carry_n_0,
      CO(3) => \dtmp_sec0_carry__0_n_0\,
      CO(2) => \NLW_dtmp_sec0_carry__0_CO_UNCONNECTED\(2),
      CO(1) => \dtmp_sec0_carry__0_n_2\,
      CO(0) => \dtmp_sec0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \dtmp_sec0_carry__0_i_1_n_0\,
      DI(1) => \dtmp_sec0_carry__0_i_2_n_0\,
      DI(0) => \dtmp_sec0_carry__0_i_3_n_0\,
      O(3) => \NLW_dtmp_sec0_carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => dtmp_sec0(6 downto 4),
      S(3) => '1',
      S(2) => \dtmp_sec0_carry__0_i_4_n_0\,
      S(1) => \dtmp_sec0_carry__0_i_5_n_0\,
      S(0) => \dtmp_sec0_carry__0_i_6_n_0\
    );
\dtmp_sec0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data4(13),
      I1 => data3(13),
      O => \dtmp_sec0_carry__0_i_1_n_0\
    );
\dtmp_sec0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data4(12),
      I1 => data3(12),
      O => \dtmp_sec0_carry__0_i_2_n_0\
    );
\dtmp_sec0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      O => \dtmp_sec0_carry__0_i_3_n_0\
    );
\dtmp_sec0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data3(13),
      I1 => data4(13),
      O => \dtmp_sec0_carry__0_i_4_n_0\
    );
\dtmp_sec0_carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data4(12),
      I1 => data3(12),
      I2 => data3(13),
      I3 => data4(13),
      O => \dtmp_sec0_carry__0_i_5_n_0\
    );
\dtmp_sec0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      I2 => data3(12),
      I3 => data4(12),
      O => \dtmp_sec0_carry__0_i_6_n_0\
    );
dtmp_sec0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      O => dtmp_sec0_carry_i_1_n_0
    );
dtmp_sec0_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      I2 => data3(10),
      O => dtmp_sec0_carry_i_2_n_0
    );
dtmp_sec0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      O => dtmp_sec0_carry_i_3_n_0
    );
dtmp_sec0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(9),
      I1 => data3(9),
      O => dtmp_sec0_carry_i_4_n_0
    );
dtmp_sec0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => dtmp_sec0_carry_i_5_n_0
    );
\dtmp_sec0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_sec0_inferred__0/i__carry_n_0\,
      CO(2) => \dtmp_sec0_inferred__0/i__carry_n_1\,
      CO(1) => \dtmp_sec0_inferred__0/i__carry_n_2\,
      CO(0) => \dtmp_sec0_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data4(11 downto 8),
      O(3 downto 1) => dtmp_sec01_in(3 downto 1),
      O(0) => \NLW_dtmp_sec0_inferred__0/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_1__12_n_0\,
      S(2) => \i__carry_i_2__11_n_0\,
      S(1) => \i__carry_i_3__12_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\dtmp_sec0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_sec0_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_dtmp_sec0_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \dtmp_sec0_inferred__0/i__carry__0_n_1\,
      CO(1) => \NLW_dtmp_sec0_inferred__0/i__carry__0_CO_UNCONNECTED\(1),
      CO(0) => \dtmp_sec0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => data4(13 downto 12),
      O(3 downto 2) => \NLW_dtmp_sec0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => dtmp_sec01_in(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => \i__carry__0_i_1__8_n_0\,
      S(0) => \i__carry__0_i_2__8_n_0\
    );
\dtmp_sec0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_sec0_inferred__1/i__carry_n_0\,
      CO(2) => \dtmp_sec0_inferred__1/i__carry_n_1\,
      CO(1) => \dtmp_sec0_inferred__1/i__carry_n_2\,
      CO(0) => \dtmp_sec0_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__4_n_0\,
      DI(2) => data3(10),
      DI(1 downto 0) => data4(9 downto 8),
      O(3 downto 1) => dtmp_sec03_in(3 downto 1),
      O(0) => dtmp_sec04_in(0),
      S(3) => \i__carry_i_2__8_n_0\,
      S(2) => \i__carry_i_3__6_n_0\,
      S(1) => \i__carry_i_4__11_n_0\,
      S(0) => \i__carry_i_5__1_n_0\
    );
\dtmp_sec0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_sec0_inferred__1/i__carry_n_0\,
      CO(3) => \dtmp_sec0_inferred__1/i__carry__0_n_0\,
      CO(2) => \NLW_dtmp_sec0_inferred__1/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \dtmp_sec0_inferred__1/i__carry__0_n_2\,
      CO(0) => \dtmp_sec0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__1_n_0\,
      DI(1) => \i__carry__0_i_2__1_n_0\,
      DI(0) => \i__carry__0_i_3__1_n_0\,
      O(3) => \NLW_dtmp_sec0_inferred__1/i__carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => dtmp_sec03_in(6 downto 4),
      S(3) => '1',
      S(2) => \i__carry__0_i_4__1_n_0\,
      S(1) => \i__carry__0_i_5__2_n_0\,
      S(0) => \i__carry__0_i_6__2_n_0\
    );
\dtmp_sec0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_sec0_inferred__2/i__carry_n_0\,
      CO(2) => \dtmp_sec0_inferred__2/i__carry_n_1\,
      CO(1) => \dtmp_sec0_inferred__2/i__carry_n_2\,
      CO(0) => \dtmp_sec0_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => data4(11 downto 8),
      O(3 downto 1) => dtmp_sec04_in(3 downto 1),
      O(0) => \NLW_dtmp_sec0_inferred__2/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_1__10_n_0\,
      S(2) => \i__carry_i_2__9_n_0\,
      S(1) => \i__carry_i_3__10_n_0\,
      S(0) => \i__carry_i_4__6_n_0\
    );
\dtmp_sec0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_sec0_inferred__2/i__carry_n_0\,
      CO(3) => \NLW_dtmp_sec0_inferred__2/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \dtmp_sec0_inferred__2/i__carry__0_n_1\,
      CO(1) => \NLW_dtmp_sec0_inferred__2/i__carry__0_CO_UNCONNECTED\(1),
      CO(0) => \dtmp_sec0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => data4(13 downto 12),
      O(3 downto 2) => \NLW_dtmp_sec0_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => dtmp_sec04_in(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => \i__carry__0_i_1__4_n_0\,
      S(0) => \i__carry__0_i_2__5_n_0\
    );
\dtmp_sec0_inferred__3/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_sec0_inferred__3/i__carry_n_0\,
      CO(2) => \dtmp_sec0_inferred__3/i__carry_n_1\,
      CO(1) => \dtmp_sec0_inferred__3/i__carry_n_2\,
      CO(0) => \dtmp_sec0_inferred__3/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__7_n_0\,
      DI(2) => data4(10),
      DI(1 downto 0) => data3(9 downto 8),
      O(3 downto 1) => dtmp_sec07_in(3 downto 1),
      O(0) => \NLW_dtmp_sec0_inferred__3/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_2__12_n_0\,
      S(2) => \i__carry_i_3__7_n_0\,
      S(1) => \i__carry_i_4__12_n_0\,
      S(0) => \i__carry_i_5__2_n_0\
    );
\dtmp_sec0_inferred__3/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_sec0_inferred__3/i__carry_n_0\,
      CO(3) => \dtmp_sec0_inferred__3/i__carry__0_n_0\,
      CO(2) => \NLW_dtmp_sec0_inferred__3/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \dtmp_sec0_inferred__3/i__carry__0_n_2\,
      CO(0) => \dtmp_sec0_inferred__3/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__3_n_0\,
      DI(1) => \i__carry__0_i_2__3_n_0\,
      DI(0) => \i__carry__0_i_3__3_n_0\,
      O(3) => \NLW_dtmp_sec0_inferred__3/i__carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => dtmp_sec07_in(6 downto 4),
      S(3) => '1',
      S(2) => \i__carry__0_i_4__3_n_0\,
      S(1) => \i__carry__0_i_5__3_n_0\,
      S(0) => \i__carry__0_i_6__3_n_0\
    );
\dtmp_sec0_inferred__4/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_sec0_inferred__4/i__carry_n_0\,
      CO(2) => \dtmp_sec0_inferred__4/i__carry_n_1\,
      CO(1) => \dtmp_sec0_inferred__4/i__carry_n_2\,
      CO(0) => \dtmp_sec0_inferred__4/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data3(11 downto 8),
      O(3 downto 1) => dtmp_sec08_in(3 downto 1),
      O(0) => \NLW_dtmp_sec0_inferred__4/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_1__13_n_0\,
      S(2) => \i__carry_i_2__13_n_0\,
      S(1) => \i__carry_i_3__13_n_0\,
      S(0) => \i__carry_i_4__7_n_0\
    );
\dtmp_sec0_inferred__4/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_sec0_inferred__4/i__carry_n_0\,
      CO(3) => \NLW_dtmp_sec0_inferred__4/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \dtmp_sec0_inferred__4/i__carry__0_n_1\,
      CO(1) => \NLW_dtmp_sec0_inferred__4/i__carry__0_CO_UNCONNECTED\(1),
      CO(0) => \dtmp_sec0_inferred__4/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => data3(13 downto 12),
      O(3 downto 2) => \NLW_dtmp_sec0_inferred__4/i__carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => dtmp_sec08_in(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => \i__carry__0_i_1__9_n_0\,
      S(0) => \i__carry__0_i_2__9_n_0\
    );
\dtmp_sec0_inferred__5/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_sec0_inferred__5/i__carry_n_0\,
      CO(2) => \dtmp_sec0_inferred__5/i__carry_n_1\,
      CO(1) => \dtmp_sec0_inferred__5/i__carry_n_2\,
      CO(0) => \dtmp_sec0_inferred__5/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__5_n_0\,
      DI(2) => data4(10),
      DI(1 downto 0) => data3(9 downto 8),
      O(3 downto 1) => dtmp_sec010_in(3 downto 1),
      O(0) => \NLW_dtmp_sec0_inferred__5/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_2__7_n_0\,
      S(2) => \i__carry_i_3__4_n_0\,
      S(1) => \i__carry_i_4__13_n_0\,
      S(0) => \i__carry_i_5__3_n_0\
    );
\dtmp_sec0_inferred__5/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_sec0_inferred__5/i__carry_n_0\,
      CO(3) => \dtmp_sec0_inferred__5/i__carry__0_n_0\,
      CO(2) => \NLW_dtmp_sec0_inferred__5/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \dtmp_sec0_inferred__5/i__carry__0_n_2\,
      CO(0) => \dtmp_sec0_inferred__5/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_2__0_n_0\,
      DI(0) => \i__carry__0_i_3__0_n_0\,
      O(3) => \NLW_dtmp_sec0_inferred__5/i__carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => dtmp_sec010_in(6 downto 4),
      S(3) => '1',
      S(2) => \i__carry__0_i_4__0_n_0\,
      S(1) => \i__carry__0_i_5__1_n_0\,
      S(0) => \i__carry__0_i_6__1_n_0\
    );
\dtmp_sec0_inferred__6/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \dtmp_sec0_inferred__6/i__carry_n_0\,
      CO(2) => \dtmp_sec0_inferred__6/i__carry_n_1\,
      CO(1) => \dtmp_sec0_inferred__6/i__carry_n_2\,
      CO(0) => \dtmp_sec0_inferred__6/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => data3(11 downto 8),
      O(3 downto 1) => dtmp_sec011_in(3 downto 1),
      O(0) => \NLW_dtmp_sec0_inferred__6/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_1__8_n_0\,
      S(2) => \i__carry_i_2__6_n_0\,
      S(1) => \i__carry_i_3__9_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\dtmp_sec0_inferred__6/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \dtmp_sec0_inferred__6/i__carry_n_0\,
      CO(3) => \NLW_dtmp_sec0_inferred__6/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \dtmp_sec0_inferred__6/i__carry__0_n_1\,
      CO(1) => \NLW_dtmp_sec0_inferred__6/i__carry__0_CO_UNCONNECTED\(1),
      CO(0) => \dtmp_sec0_inferred__6/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => data3(13 downto 12),
      O(3 downto 2) => \NLW_dtmp_sec0_inferred__6/i__carry__0_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => dtmp_sec011_in(5 downto 4),
      S(3 downto 2) => B"01",
      S(1) => \i__carry__0_i_1__5_n_0\,
      S(0) => \i__carry__0_i_2__6_n_0\
    );
ed_clear: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      AR(0) => \^sr\(0),
      CO(0) => \lap_min1_carry__2_n_1\,
      D(31 downto 0) => p_1_in(31 downto 0),
      E(0) => ed_clear_n_1,
      Q(1 downto 0) => Q(2 downto 1),
      cnt_sysclk20(30 downto 0) => cnt_sysclk20(31 downto 1),
      \cnt_sysclk2_reg[0]\(0) => cnt_sysclk2(0),
      data1(0) => data1(1),
      data3(18 downto 13) => data3(21 downto 16),
      data3(12 downto 7) => data3(13 downto 8),
      data3(6 downto 0) => data3(6 downto 0),
      ff_old_reg_0(0) => ed_clear_n_3,
      ff_old_reg_1(0) => ed_clear_n_4,
      ff_old_reg_2(0) => ed_clear_n_5,
      \lap_csec_reg[5]\(6) => ed_clear_n_55,
      \lap_csec_reg[5]\(5) => ed_clear_n_56,
      \lap_csec_reg[5]\(4) => ed_clear_n_57,
      \lap_csec_reg[5]\(3) => ed_clear_n_58,
      \lap_csec_reg[5]\(2) => ed_clear_n_59,
      \lap_csec_reg[5]\(1) => ed_clear_n_60,
      \lap_csec_reg[5]\(0) => ed_clear_n_61,
      \lap_csec_reg[5]_0\ => \lap_csec[5]_i_2_n_0\,
      \lap_csec_reg[6]\ => \lap_csec[6]_i_3_n_0\,
      \lap_min_reg[0]\ => \lap_min[5]_i_3_n_0\,
      \lap_min_reg[3]\(5) => ed_clear_n_43,
      \lap_min_reg[3]\(4) => ed_clear_n_44,
      \lap_min_reg[3]\(3) => ed_clear_n_45,
      \lap_min_reg[3]\(2) => ed_clear_n_46,
      \lap_min_reg[3]\(1) => ed_clear_n_47,
      \lap_min_reg[3]\(0) => ed_clear_n_48,
      \lap_min_reg[5]\ => \lap_min[5]_i_6_n_0\,
      \lap_sec_reg[0]\ => \lap_sec[5]_i_3_n_0\,
      \lap_sec_reg[3]\(5) => ed_clear_n_49,
      \lap_sec_reg[3]\(4) => ed_clear_n_50,
      \lap_sec_reg[3]\(3) => ed_clear_n_51,
      \lap_sec_reg[3]\(2) => ed_clear_n_52,
      \lap_sec_reg[3]\(1) => ed_clear_n_53,
      \lap_sec_reg[3]\(0) => ed_clear_n_54,
      \lap_sec_reg[5]\ => \lap_sec[5]_i_5_n_0\,
      \min_reg[0]\ => \min[5]_i_3_n_0\,
      \min_reg[0]_0\(0) => \cnt_sysclk11_carry__2_n_1\,
      \min_reg[0]_1\ => \sec[5]_i_3_n_0\,
      run => run,
      run_reg(0) => ed_clear_n_2,
      run_reg_0(0) => ed_clear_n_8,
      run_reg_1(0) => ed_clear_n_9,
      run_reg_2(0) => ed_clear_n_10,
      run_reg_3 => ed_clear_n_62,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      sign_flag_reg => \diff_csec[7]_i_3_n_0\,
      sign_flag_reg_0 => \diff_csec[7]_i_4_n_0\,
      \slv_reg0_reg[2]\(0) => prev_csec,
      \slv_reg0_reg[2]_0\(0) => ed_clear_n_7
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
     port map (
      AR(0) => \^sr\(0),
      Q(0) => Q(0),
      ff_old_reg_0 => ed_start_n_0,
      run => run,
      s00_axi_aclk => s00_axi_aclk
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data3(5),
      I1 => data4(5),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => p_6_in,
      I1 => p_9_in,
      I2 => p_2_in,
      O => \i__carry__0_i_10_n_0\
    );
\i__carry__0_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => p_6_in,
      I1 => p_9_in,
      I2 => p_2_in,
      O => \i__carry__0_i_11_n_0\
    );
\i__carry__0_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => p_6_in,
      I1 => p_9_in,
      I2 => p_2_in,
      O => \i__carry__0_i_12_n_0\
    );
\i__carry__0_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => p_2_in,
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => data3(21),
      O => \i__carry__0_i_13_n_0\
    );
\i__carry__0_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => p_2_in,
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => data3(20),
      O => \i__carry__0_i_14_n_0\
    );
\i__carry__0_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => ptmp_min1_carry_n_0,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \i__carry__0_i_15_n_0\
    );
\i__carry__0_i_16\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => ptmp_min1_carry_n_0,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \i__carry__0_i_16_n_0\
    );
\i__carry__0_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => ptmp_min1_carry_n_0,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => \dtmp_min1_inferred__0/i__carry_n_0\,
      O => \i__carry__0_i_17_n_0\
    );
\i__carry__0_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => ptmp_min1_carry_n_0,
      I3 => data4(21),
      O => \i__carry__0_i_18_n_0\
    );
\i__carry__0_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => ptmp_min1_carry_n_0,
      I3 => data4(20),
      O => \i__carry__0_i_19_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data3(13),
      I1 => data4(13),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data4(13),
      I1 => data3(13),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__0_i_8_n_5\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry__0_i_9_n_5\,
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data3(13),
      I1 => data4(13),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(13),
      I1 => data3(13),
      O => \i__carry__0_i_1__4_n_0\
    );
\i__carry__0_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(13),
      I1 => data4(13),
      O => \i__carry__0_i_1__5_n_0\
    );
\i__carry__0_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(6),
      I1 => data4(6),
      O => \i__carry__0_i_1__6_n_0\
    );
\i__carry__0_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(6),
      I1 => data3(6),
      O => \i__carry__0_i_1__7_n_0\
    );
\i__carry__0_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(13),
      I1 => data3(13),
      O => \i__carry__0_i_1__8_n_0\
    );
\i__carry__0_i_1__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(13),
      I1 => data4(13),
      O => \i__carry__0_i_1__9_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(5),
      I1 => data3(5),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data4(12),
      I1 => data3(12),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__0_i_8_n_6\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry__0_i_9_n_6\,
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(5),
      I1 => data4(5),
      O => \i__carry__0_i_2__4_n_0\
    );
\i__carry__0_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(12),
      I1 => data3(12),
      O => \i__carry__0_i_2__5_n_0\
    );
\i__carry__0_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      O => \i__carry__0_i_2__6_n_0\
    );
\i__carry__0_i_2__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(5),
      I1 => data3(5),
      O => \i__carry__0_i_2__7_n_0\
    );
\i__carry__0_i_2__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(12),
      I1 => data3(12),
      O => \i__carry__0_i_2__8_n_0\
    );
\i__carry__0_i_2__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      O => \i__carry__0_i_2__9_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data3(3),
      I1 => data4(3),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry__0_i_8_n_7\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry__0_i_9_n_7\,
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(4),
      I1 => data4(4),
      O => \i__carry__0_i_3__4_n_0\
    );
\i__carry__0_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(4),
      I1 => data3(4),
      O => \i__carry__0_i_3__5_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data4(6),
      I1 => data3(6),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data4(13),
      I1 => data3(13),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data3(13),
      I1 => data4(13),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"47"
    )
        port map (
      I0 => \i__carry__0_i_8_n_4\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry__0_i_9_n_4\,
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data4(13),
      I1 => data3(13),
      O => \i__carry__0_i_4__3_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => \i__carry__0_i_9_n_5\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry__0_i_8_n_5\,
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data3(5),
      I1 => data4(5),
      I2 => data4(6),
      I3 => data3(6),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      I2 => data4(13),
      I3 => data3(13),
      O => \i__carry__0_i_5__1_n_0\
    );
\i__carry__0_i_5__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data4(12),
      I1 => data3(12),
      I2 => data3(13),
      I3 => data4(13),
      O => \i__carry__0_i_5__2_n_0\
    );
\i__carry__0_i_5__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      I2 => data4(13),
      I3 => data3(13),
      O => \i__carry__0_i_5__3_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \i__carry__0_i_9_n_6\,
      I1 => \i__carry__0_i_8_n_6\,
      I2 => data3(21),
      I3 => dtmp_min1_carry_n_1,
      I4 => data4(21),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => data4(5),
      I1 => data3(5),
      I2 => data4(4),
      I3 => data3(4),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      I2 => data4(12),
      I3 => data3(12),
      O => \i__carry__0_i_6__1_n_0\
    );
\i__carry__0_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      I2 => data3(12),
      I3 => data4(12),
      O => \i__carry__0_i_6__2_n_0\
    );
\i__carry__0_i_6__3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      I2 => data4(12),
      I3 => data3(12),
      O => \i__carry__0_i_6__3_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => data4(3),
      I1 => data3(3),
      I2 => data4(4),
      I3 => data3(4),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \i__carry__0_i_9_n_7\,
      I1 => \i__carry__0_i_8_n_7\,
      I2 => data3(20),
      I3 => dtmp_min1_carry_n_1,
      I4 => data4(20),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry__0_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_9_n_0\,
      CO(3) => \NLW_i__carry__0_i_8_CO_UNCONNECTED\(3),
      CO(2) => \i__carry__0_i_8_n_1\,
      CO(1) => \i__carry__0_i_8_n_2\,
      CO(0) => \i__carry__0_i_8_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_10_n_0\,
      DI(1 downto 0) => data3(21 downto 20),
      O(3) => \i__carry__0_i_8_n_4\,
      O(2) => \i__carry__0_i_8_n_5\,
      O(1) => \i__carry__0_i_8_n_6\,
      O(0) => \i__carry__0_i_8_n_7\,
      S(3) => \i__carry__0_i_11_n_0\,
      S(2) => \i__carry__0_i_12_n_0\,
      S(1) => \i__carry__0_i_13_n_0\,
      S(0) => \i__carry__0_i_14_n_0\
    );
\i__carry__0_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry_i_10_n_0\,
      CO(3) => \NLW_i__carry__0_i_9_CO_UNCONNECTED\(3),
      CO(2) => \i__carry__0_i_9_n_1\,
      CO(1) => \i__carry__0_i_9_n_2\,
      CO(0) => \i__carry__0_i_9_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_15_n_0\,
      DI(1 downto 0) => data4(21 downto 20),
      O(3) => \i__carry__0_i_9_n_4\,
      O(2) => \i__carry__0_i_9_n_5\,
      O(1) => \i__carry__0_i_9_n_6\,
      O(0) => \i__carry__0_i_9_n_7\,
      S(3) => \i__carry__0_i_16_n_0\,
      S(2) => \i__carry__0_i_17_n_0\,
      S(1) => \i__carry__0_i_18_n_0\,
      S(0) => \i__carry__0_i_19_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => data4(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_10_n_0\,
      CO(2) => \i__carry_i_10_n_1\,
      CO(1) => \i__carry_i_10_n_2\,
      CO(0) => \i__carry_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data4(19 downto 16),
      O(3) => \i__carry_i_10_n_4\,
      O(2) => \i__carry_i_10_n_5\,
      O(1) => \i__carry_i_10_n_6\,
      O(0) => \i__carry_i_10_n_7\,
      S(3) => \i__carry_i_15_n_0\,
      S(2) => \i__carry_i_16_n_0\,
      S(1) => \i__carry_i_17_n_0\,
      S(0) => \i__carry_i_18_n_0\
    );
\i__carry_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => p_2_in,
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => data3(19),
      O => \i__carry_i_11_n_0\
    );
\i__carry_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => p_2_in,
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => data3(18),
      O => \i__carry_i_12_n_0\
    );
\i__carry_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => p_2_in,
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => data3(17),
      O => \i__carry_i_13_n_0\
    );
\i__carry_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => p_2_in,
      I1 => p_9_in,
      I2 => p_6_in,
      I3 => data3(16),
      O => \i__carry_i_14_n_0\
    );
\i__carry_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => ptmp_min1_carry_n_0,
      I3 => data4(19),
      O => \i__carry_i_15_n_0\
    );
\i__carry_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => ptmp_min1_carry_n_0,
      I3 => data4(18),
      O => \i__carry_i_16_n_0\
    );
\i__carry_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => ptmp_min1_carry_n_0,
      I3 => data4(17),
      O => \i__carry_i_17_n_0\
    );
\i__carry_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D827"
    )
        port map (
      I0 => \dtmp_min1_inferred__0/i__carry_n_0\,
      I1 => \ptmp_min1_inferred__0/i__carry_n_1\,
      I2 => ptmp_min1_carry_n_0,
      I3 => data4(16),
      O => \i__carry_i_18_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data3(6),
      I1 => data4(6),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => data4(12),
      I1 => data3(12),
      I2 => data4(13),
      I3 => data3(13),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      O => \i__carry_i_1__10_n_0\
    );
\i__carry_i_1__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(3),
      I1 => data4(3),
      O => \i__carry_i_1__11_n_0\
    );
\i__carry_i_1__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      O => \i__carry_i_1__12_n_0\
    );
\i__carry_i_1__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      O => \i__carry_i_1__13_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20F2"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      I2 => data3(13),
      I3 => data4(13),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_9_n_4\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry_i_10_n_4\,
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data4(6),
      I1 => data3(6),
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_1__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      O => \i__carry_i_1__7_n_0\
    );
\i__carry_i_1__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      O => \i__carry_i_1__8_n_0\
    );
\i__carry_i_1__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(3),
      I1 => data3(3),
      O => \i__carry_i_1__9_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data4(4),
      I1 => data3(4),
      I2 => data3(5),
      I3 => data4(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(4),
      I1 => data4(4),
      I2 => data4(5),
      I3 => data3(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data4(10),
      I1 => data3(10),
      I2 => data3(11),
      I3 => data4(11),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(2),
      I1 => data3(2),
      O => \i__carry_i_2__10_n_0\
    );
\i__carry_i_2__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(10),
      I1 => data3(10),
      O => \i__carry_i_2__11_n_0\
    );
\i__carry_i_2__12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      I2 => data4(10),
      O => \i__carry_i_2__12_n_0\
    );
\i__carry_i_2__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      O => \i__carry_i_2__13_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      I2 => data4(11),
      I3 => data3(11),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_9_n_5\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry_i_10_n_5\,
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => data4(2),
      I1 => data4(3),
      I2 => data3(3),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(2),
      I1 => data4(2),
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_2__7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      I2 => data4(10),
      O => \i__carry_i_2__7_n_0\
    );
\i__carry_i_2__8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      I2 => data3(10),
      O => \i__carry_i_2__8_n_0\
    );
\i__carry_i_2__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(10),
      I1 => data3(10),
      O => \i__carry_i_2__9_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data4(2),
      I1 => data3(2),
      I2 => data3(3),
      I3 => data4(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(2),
      I1 => data4(2),
      I2 => data4(3),
      I3 => data3(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      I2 => data3(9),
      I3 => data4(9),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(9),
      I1 => data3(9),
      O => \i__carry_i_3__10_n_0\
    );
\i__carry_i_3__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(1),
      I1 => data3(1),
      O => \i__carry_i_3__11_n_0\
    );
\i__carry_i_3__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(9),
      I1 => data3(9),
      O => \i__carry_i_3__12_n_0\
    );
\i__carry_i_3__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(9),
      I1 => data4(9),
      O => \i__carry_i_3__13_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(8),
      I1 => data4(8),
      I2 => data4(9),
      I3 => data3(9),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_9_n_6\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry_i_10_n_6\,
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(2),
      I1 => data4(2),
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_3__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      O => \i__carry_i_3__7_n_0\
    );
\i__carry_i_3__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(1),
      I1 => data4(1),
      O => \i__carry_i_3__8_n_0\
    );
\i__carry_i_3__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(9),
      I1 => data4(9),
      O => \i__carry_i_3__9_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data4(0),
      I1 => data3(0),
      I2 => data3(1),
      I3 => data4(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => data3(0),
      I1 => data4(0),
      I2 => data4(1),
      I3 => data3(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(1),
      I1 => data4(1),
      O => \i__carry_i_4__10_n_0\
    );
\i__carry_i_4__11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(9),
      I1 => data3(9),
      O => \i__carry_i_4__11_n_0\
    );
\i__carry_i_4__12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(9),
      I1 => data4(9),
      O => \i__carry_i_4__12_n_0\
    );
\i__carry_i_4__13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(9),
      I1 => data4(9),
      O => \i__carry_i_4__13_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      I2 => data3(13),
      I3 => data4(13),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \i__carry_i_9_n_7\,
      I1 => dtmp_min1_carry_n_1,
      I2 => \i__carry_i_10_n_7\,
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(12),
      I1 => data4(12),
      I2 => data3(13),
      I3 => data4(13),
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => \i__carry_i_4__6_n_0\
    );
\i__carry_i_4__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => \i__carry_i_4__7_n_0\
    );
\i__carry_i_4__8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(0),
      I1 => data4(0),
      O => \i__carry_i_4__8_n_0\
    );
\i__carry_i_4__9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(0),
      I1 => data3(0),
      O => \i__carry_i_4__9_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      I2 => data3(11),
      I3 => data4(11),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(10),
      I1 => data4(10),
      I2 => data3(11),
      I3 => data4(11),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_5__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \i__carry_i_10_n_4\,
      I1 => \i__carry_i_9_n_4\,
      I2 => data3(19),
      I3 => dtmp_min1_carry_n_1,
      I4 => data4(19),
      O => \i__carry_i_5__4_n_0\
    );
\i__carry_i_5__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data4(6),
      I1 => data3(6),
      O => \i__carry_i_5__5_n_0\
    );
\i__carry_i_5__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(6),
      I1 => data4(6),
      O => \i__carry_i_5__6_n_0\
    );
\i__carry_i_5__7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => data3(0),
      I1 => data4(0),
      O => \i__carry_i_5__7_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(4),
      I1 => data4(4),
      I2 => data3(5),
      I3 => data4(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(9),
      I1 => data4(9),
      I2 => data4(8),
      I3 => data3(8),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(4),
      I1 => data4(4),
      I2 => data3(5),
      I3 => data4(5),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_6__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(9),
      I1 => data4(9),
      I2 => data4(8),
      I3 => data3(8),
      O => \i__carry_i_6__2_n_0\
    );
\i__carry_i_6__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \i__carry_i_10_n_5\,
      I1 => \i__carry_i_9_n_5\,
      I2 => data3(18),
      I3 => dtmp_min1_carry_n_1,
      I4 => data4(18),
      O => \i__carry_i_6__3_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(2),
      I1 => data4(2),
      I2 => data4(3),
      I3 => data3(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(2),
      I1 => data4(2),
      I2 => data4(3),
      I3 => data3(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \i__carry_i_10_n_6\,
      I1 => \i__carry_i_9_n_6\,
      I2 => data3(17),
      I3 => dtmp_min1_carry_n_1,
      I4 => data4(17),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(0),
      I1 => data4(0),
      I2 => data3(1),
      I3 => data4(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => data3(0),
      I1 => data4(0),
      I2 => data3(1),
      I3 => data4(1),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA533A5"
    )
        port map (
      I0 => \i__carry_i_10_n_7\,
      I1 => \i__carry_i_9_n_7\,
      I2 => data3(16),
      I3 => dtmp_min1_carry_n_1,
      I4 => data4(16),
      O => \i__carry_i_8__1_n_0\
    );
\i__carry_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i__carry_i_9_n_0\,
      CO(2) => \i__carry_i_9_n_1\,
      CO(1) => \i__carry_i_9_n_2\,
      CO(0) => \i__carry_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => data3(19 downto 16),
      O(3) => \i__carry_i_9_n_4\,
      O(2) => \i__carry_i_9_n_5\,
      O(1) => \i__carry_i_9_n_6\,
      O(0) => \i__carry_i_9_n_7\,
      S(3) => \i__carry_i_11_n_0\,
      S(2) => \i__carry_i_12_n_0\,
      S(1) => \i__carry_i_13_n_0\,
      S(0) => \i__carry_i_14_n_0\
    );
\lap_csec[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data3(1),
      I1 => data3(0),
      O => \lap_csec[5]_i_2_n_0\
    );
\lap_csec[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => data3(4),
      I1 => data3(2),
      I2 => data3(0),
      I3 => data3(1),
      I4 => data3(3),
      O => \lap_csec[6]_i_3_n_0\
    );
\lap_csec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_61,
      Q => data3(0)
    );
\lap_csec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_60,
      Q => data3(1)
    );
\lap_csec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_59,
      Q => data3(2)
    );
\lap_csec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_58,
      Q => data3(3)
    );
\lap_csec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_57,
      Q => data3(4)
    );
\lap_csec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_56,
      Q => data3(5)
    );
\lap_csec_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_3,
      CLR => \^sr\(0),
      D => ed_clear_n_55,
      Q => data3(6)
    );
lap_flag_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_62,
      Q => data1(1)
    );
lap_min1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => lap_min1_carry_n_0,
      CO(2) => lap_min1_carry_n_1,
      CO(1) => lap_min1_carry_n_2,
      CO(0) => lap_min1_carry_n_3,
      CYINIT => lap_min1_carry_i_1_n_0,
      DI(3) => lap_min1_carry_i_2_n_0,
      DI(2) => lap_min1_carry_i_3_n_0,
      DI(1 downto 0) => B"00",
      O(3 downto 0) => NLW_lap_min1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => lap_min1_carry_i_4_n_0,
      S(2) => lap_min1_carry_i_5_n_0,
      S(1) => lap_min1_carry_i_6_n_0,
      S(0) => lap_min1_carry_i_7_n_0
    );
\lap_min1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => lap_min1_carry_n_0,
      CO(3) => \lap_min1_carry__0_n_0\,
      CO(2) => \lap_min1_carry__0_n_1\,
      CO(1) => \lap_min1_carry__0_n_2\,
      CO(0) => \lap_min1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => cnt_sysclk2(15),
      DI(1) => \lap_min1_carry__0_i_1_n_0\,
      DI(0) => \lap_min1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_lap_min1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \lap_min1_carry__0_i_3_n_0\,
      S(2) => \lap_min1_carry__0_i_4_n_0\,
      S(1) => \lap_min1_carry__0_i_5_n_0\,
      S(0) => \lap_min1_carry__0_i_6_n_0\
    );
\lap_min1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(12),
      I1 => cnt_sysclk2(13),
      O => \lap_min1_carry__0_i_1_n_0\
    );
\lap_min1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(10),
      I1 => cnt_sysclk2(11),
      O => \lap_min1_carry__0_i_2_n_0\
    );
\lap_min1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(16),
      I1 => cnt_sysclk2(17),
      O => \lap_min1_carry__0_i_3_n_0\
    );
\lap_min1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk2(14),
      I1 => cnt_sysclk2(15),
      O => \lap_min1_carry__0_i_4_n_0\
    );
\lap_min1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(13),
      I1 => cnt_sysclk2(12),
      O => \lap_min1_carry__0_i_5_n_0\
    );
\lap_min1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(11),
      I1 => cnt_sysclk2(10),
      O => \lap_min1_carry__0_i_6_n_0\
    );
\lap_min1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \lap_min1_carry__0_n_0\,
      CO(3) => \lap_min1_carry__1_n_0\,
      CO(2) => \lap_min1_carry__1_n_1\,
      CO(1) => \lap_min1_carry__1_n_2\,
      CO(0) => \lap_min1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \lap_min1_carry__1_i_1_n_0\,
      DI(2) => \lap_min1_carry__1_i_2_n_0\,
      DI(1) => \lap_min1_carry__1_i_3_n_0\,
      DI(0) => '0',
      O(3 downto 0) => \NLW_lap_min1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \lap_min1_carry__1_i_4_n_0\,
      S(2) => \lap_min1_carry__1_i_5_n_0\,
      S(1) => \lap_min1_carry__1_i_6_n_0\,
      S(0) => \lap_min1_carry__1_i_7_n_0\
    );
\lap_min1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(24),
      I1 => cnt_sysclk2(25),
      O => \lap_min1_carry__1_i_1_n_0\
    );
\lap_min1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(22),
      I1 => cnt_sysclk2(23),
      O => \lap_min1_carry__1_i_2_n_0\
    );
\lap_min1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(20),
      I1 => cnt_sysclk2(21),
      O => \lap_min1_carry__1_i_3_n_0\
    );
\lap_min1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(25),
      I1 => cnt_sysclk2(24),
      O => \lap_min1_carry__1_i_4_n_0\
    );
\lap_min1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(23),
      I1 => cnt_sysclk2(22),
      O => \lap_min1_carry__1_i_5_n_0\
    );
\lap_min1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(21),
      I1 => cnt_sysclk2(20),
      O => \lap_min1_carry__1_i_6_n_0\
    );
\lap_min1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(18),
      I1 => cnt_sysclk2(19),
      O => \lap_min1_carry__1_i_7_n_0\
    );
\lap_min1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \lap_min1_carry__1_n_0\,
      CO(3) => \NLW_lap_min1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \lap_min1_carry__2_n_1\,
      CO(1) => \lap_min1_carry__2_n_2\,
      CO(0) => \lap_min1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \lap_min1_carry__2_i_1_n_0\,
      DI(1) => \lap_min1_carry__2_i_2_n_0\,
      DI(0) => \lap_min1_carry__2_i_3_n_0\,
      O(3 downto 0) => \NLW_lap_min1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \lap_min1_carry__2_i_4_n_0\,
      S(1) => \lap_min1_carry__2_i_5_n_0\,
      S(0) => \lap_min1_carry__2_i_6_n_0\
    );
\lap_min1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk2(30),
      I1 => cnt_sysclk2(31),
      O => \lap_min1_carry__2_i_1_n_0\
    );
\lap_min1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(28),
      I1 => cnt_sysclk2(29),
      O => \lap_min1_carry__2_i_2_n_0\
    );
\lap_min1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(26),
      I1 => cnt_sysclk2(27),
      O => \lap_min1_carry__2_i_3_n_0\
    );
\lap_min1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(31),
      I1 => cnt_sysclk2(30),
      O => \lap_min1_carry__2_i_4_n_0\
    );
\lap_min1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(29),
      I1 => cnt_sysclk2(28),
      O => \lap_min1_carry__2_i_5_n_0\
    );
\lap_min1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(27),
      I1 => cnt_sysclk2(26),
      O => \lap_min1_carry__2_i_6_n_0\
    );
lap_min1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(0),
      I1 => cnt_sysclk2(1),
      O => lap_min1_carry_i_1_n_0
    );
lap_min1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(8),
      I1 => cnt_sysclk2(9),
      O => lap_min1_carry_i_2_n_0
    );
lap_min1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(6),
      I1 => cnt_sysclk2(7),
      O => lap_min1_carry_i_3_n_0
    );
lap_min1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk2(9),
      I1 => cnt_sysclk2(8),
      O => lap_min1_carry_i_4_n_0
    );
lap_min1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(7),
      I1 => cnt_sysclk2(6),
      O => lap_min1_carry_i_5_n_0
    );
lap_min1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(4),
      I1 => cnt_sysclk2(5),
      O => lap_min1_carry_i_6_n_0
    );
lap_min1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(2),
      I1 => cnt_sysclk2(3),
      O => lap_min1_carry_i_7_n_0
    );
\lap_min[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080008000"
    )
        port map (
      I0 => data3(12),
      I1 => data3(11),
      I2 => data3(13),
      I3 => data3(10),
      I4 => data3(8),
      I5 => data3(9),
      O => \lap_min[5]_i_3_n_0\
    );
\lap_min[5]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data3(17),
      I1 => data3(16),
      O => \lap_min[5]_i_6_n_0\
    );
\lap_min_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_48,
      Q => data3(16)
    );
\lap_min_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_47,
      Q => data3(17)
    );
\lap_min_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_46,
      Q => data3(18)
    );
\lap_min_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_45,
      Q => data3(19)
    );
\lap_min_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_44,
      Q => data3(20)
    );
\lap_min_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_5,
      CLR => \^sr\(0),
      D => ed_clear_n_43,
      Q => data3(21)
    );
\lap_sec[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => data3(6),
      I1 => data3(5),
      I2 => data3(2),
      I3 => data3(3),
      I4 => data3(4),
      I5 => \lap_csec[5]_i_2_n_0\,
      O => \lap_sec[5]_i_3_n_0\
    );
\lap_sec[5]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data3(9),
      I1 => data3(8),
      O => \lap_sec[5]_i_5_n_0\
    );
\lap_sec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_54,
      Q => data3(8)
    );
\lap_sec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_53,
      Q => data3(9)
    );
\lap_sec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_52,
      Q => data3(10)
    );
\lap_sec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_51,
      Q => data3(11)
    );
\lap_sec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_50,
      Q => data3(12)
    );
\lap_sec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_49,
      Q => data3(13)
    );
\min[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => data2(16),
      O => \min[0]_i_1_n_0\
    );
\min[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => data2(16),
      I2 => data2(17),
      O => \min[1]_i_1_n_0\
    );
\min[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => data2(16),
      I2 => data2(17),
      I3 => data2(18),
      O => \min[2]_i_1_n_0\
    );
\min[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => data2(17),
      I2 => data2(16),
      I3 => data2(18),
      I4 => data2(19),
      O => \min[3]_i_1_n_0\
    );
\min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => data2(18),
      I2 => data2(16),
      I3 => data2(17),
      I4 => data2(19),
      I5 => data2(20),
      O => \min[4]_i_1_n_0\
    );
\min[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAAAAAAAAAAAAA"
    )
        port map (
      I0 => run,
      I1 => \min[5]_i_4_n_0\,
      I2 => data2(18),
      I3 => data2(21),
      I4 => data2(19),
      I5 => data2(20),
      O => \min[4]_i_2_n_0\
    );
\min[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0280AA00AA00AA00"
    )
        port map (
      I0 => run,
      I1 => \min[5]_i_4_n_0\,
      I2 => data2(18),
      I3 => data2(21),
      I4 => data2(19),
      I5 => data2(20),
      O => \min[5]_i_2_n_0\
    );
\min[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080008000"
    )
        port map (
      I0 => data2(12),
      I1 => data2(11),
      I2 => data2(13),
      I3 => data2(10),
      I4 => data2(8),
      I5 => data2(9),
      O => \min[5]_i_3_n_0\
    );
\min[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data2(17),
      I1 => data2(16),
      O => \min[5]_i_4_n_0\
    );
\min_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => \min[0]_i_1_n_0\,
      Q => data2(16)
    );
\min_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => \min[1]_i_1_n_0\,
      Q => data2(17)
    );
\min_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => \min[2]_i_1_n_0\,
      Q => data2(18)
    );
\min_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => \min[3]_i_1_n_0\,
      Q => data2(19)
    );
\min_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => \min[4]_i_1_n_0\,
      Q => data2(20)
    );
\min_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_8,
      CLR => \^sr\(0),
      D => \min[5]_i_2_n_0\,
      Q => data2(21)
    );
ptmp_min1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => ptmp_min1_carry_n_0,
      CO(2) => ptmp_min1_carry_n_1,
      CO(1) => ptmp_min1_carry_n_2,
      CO(0) => ptmp_min1_carry_n_3,
      CYINIT => '1',
      DI(3) => ptmp_min2(7),
      DI(2) => ptmp_min1_carry_i_2_n_0,
      DI(1) => ptmp_min1_carry_i_3_n_0,
      DI(0) => ptmp_min1_carry_i_4_n_0,
      O(3 downto 0) => NLW_ptmp_min1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => ptmp_min1_carry_i_5_n_0,
      S(2) => ptmp_min1_carry_i_6_n_0,
      S(1) => ptmp_min1_carry_i_7_n_0,
      S(0) => ptmp_min1_carry_i_8_n_0
    );
ptmp_min1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data4(13),
      I1 => data4(11),
      I2 => data4(9),
      I3 => data4(8),
      I4 => data4(10),
      I5 => data4(12),
      O => ptmp_min2(7)
    );
ptmp_min1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"71303017"
    )
        port map (
      I0 => data3(12),
      I1 => data3(13),
      I2 => data4(13),
      I3 => ptmp_min1_carry_i_9_n_0,
      I4 => data4(12),
      O => ptmp_min1_carry_i_2_n_0
    );
ptmp_min1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7373733110101007"
    )
        port map (
      I0 => data3(10),
      I1 => data3(11),
      I2 => data4(10),
      I3 => data4(8),
      I4 => data4(9),
      I5 => data4(11),
      O => ptmp_min1_carry_i_3_n_0
    );
ptmp_min1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3107"
    )
        port map (
      I0 => data3(8),
      I1 => data3(9),
      I2 => data4(8),
      I3 => data4(9),
      O => ptmp_min1_carry_i_4_n_0
    );
ptmp_min1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data4(12),
      I1 => data4(10),
      I2 => data4(8),
      I3 => data4(9),
      I4 => data4(11),
      I5 => data4(13),
      O => ptmp_min1_carry_i_5_n_0
    );
ptmp_min1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81422814"
    )
        port map (
      I0 => data3(13),
      I1 => data4(12),
      I2 => ptmp_min1_carry_i_9_n_0,
      I3 => data4(13),
      I4 => data3(12),
      O => ptmp_min1_carry_i_6_n_0
    );
ptmp_min1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990000600099990"
    )
        port map (
      I0 => data3(11),
      I1 => data4(11),
      I2 => data4(9),
      I3 => data4(8),
      I4 => data4(10),
      I5 => data3(10),
      O => ptmp_min1_carry_i_7_n_0
    );
ptmp_min1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => data3(8),
      I1 => data4(8),
      I2 => data4(9),
      I3 => data3(9),
      O => ptmp_min1_carry_i_8_n_0
    );
ptmp_min1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data4(10),
      I1 => data4(8),
      I2 => data4(9),
      I3 => data4(11),
      O => ptmp_min1_carry_i_9_n_0
    );
\ptmp_min1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_ptmp_min1_inferred__0/i__carry_CO_UNCONNECTED\(3),
      CO(2) => \ptmp_min1_inferred__0/i__carry_n_1\,
      CO(1) => \ptmp_min1_inferred__0/i__carry_n_2\,
      CO(0) => \ptmp_min1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \i__carry_i_1__1_n_0\,
      DI(1) => \i__carry_i_2__1_n_0\,
      DI(0) => \i__carry_i_3__1_n_0\,
      O(3 downto 0) => \NLW_ptmp_min1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_4__5_n_0\,
      S(1) => \i__carry_i_5__0_n_0\,
      S(0) => \i__carry_i_6__2_n_0\
    );
run_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_start_n_0,
      Q => run
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
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => run,
      I1 => data3(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => Q(0),
      I5 => data2(0),
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(0),
      I1 => \s00_axi_rdata[23]\(0),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(0),
      I5 => \s00_axi_rdata[23]_0\(0),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(10),
      I1 => data2(10),
      I2 => data3(10),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[10]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(10),
      I1 => \s00_axi_rdata[23]\(10),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(10),
      I5 => \s00_axi_rdata[23]_0\(10),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(11),
      I1 => data2(11),
      I2 => data3(11),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(11),
      I1 => \s00_axi_rdata[23]\(11),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(11),
      I5 => \s00_axi_rdata[23]_0\(11),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(12),
      I1 => data2(12),
      I2 => data3(12),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(12),
      I1 => \s00_axi_rdata[23]\(12),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(12),
      I5 => \s00_axi_rdata[23]_0\(12),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(13),
      I1 => data2(13),
      I2 => data3(13),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(13),
      I1 => \s00_axi_rdata[23]\(13),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(13),
      I5 => \s00_axi_rdata[23]_0\(13),
      O => \s00_axi_rdata[13]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => Q(14),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6C4A28000000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \s00_axi_rdata[23]\(14),
      I3 => data5(14),
      I4 => \s00_axi_rdata[23]_0\(14),
      I5 => sel0(2),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => Q(15),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6C4A28000000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \s00_axi_rdata[23]\(15),
      I3 => data5(15),
      I4 => \s00_axi_rdata[23]_0\(15),
      I5 => sel0(2),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[16]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(16),
      S => sel0(2)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(16),
      I1 => data2(16),
      I2 => data3(16),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(16),
      I1 => \s00_axi_rdata[23]\(16),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(16),
      I5 => \s00_axi_rdata[23]_0\(16),
      O => \s00_axi_rdata[16]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[17]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(17),
      S => sel0(2)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(17),
      I1 => data2(17),
      I2 => data3(17),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(17),
      I1 => \s00_axi_rdata[23]\(17),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(17),
      I5 => \s00_axi_rdata[23]_0\(17),
      O => \s00_axi_rdata[17]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[18]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(18),
      S => sel0(2)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(18),
      I1 => data2(18),
      I2 => data3(18),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(18),
      I1 => \s00_axi_rdata[23]\(18),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(18),
      I5 => \s00_axi_rdata[23]_0\(18),
      O => \s00_axi_rdata[18]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[19]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(19),
      S => sel0(2)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(19),
      I1 => data2(19),
      I2 => data3(19),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(19),
      I1 => \s00_axi_rdata[23]\(19),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(19),
      I5 => \s00_axi_rdata[23]_0\(19),
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
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data1(1),
      I1 => data3(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => Q(1),
      I5 => data2(1),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(1),
      I1 => \s00_axi_rdata[23]\(1),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(1),
      I5 => \s00_axi_rdata[23]_0\(1),
      O => \s00_axi_rdata[1]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[20]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(20),
      S => sel0(2)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(20),
      I1 => data2(20),
      I2 => data3(20),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(20),
      I1 => \s00_axi_rdata[23]\(20),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(20),
      I5 => \s00_axi_rdata[23]_0\(20),
      O => \s00_axi_rdata[20]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => \s00_axi_rdata[21]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(21),
      S => sel0(2)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(21),
      I1 => data2(21),
      I2 => data3(21),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(21),
      I1 => \s00_axi_rdata[23]\(21),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(21),
      I5 => \s00_axi_rdata[23]_0\(21),
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => Q(22),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6C4A28000000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \s00_axi_rdata[23]\(22),
      I3 => data5(22),
      I4 => \s00_axi_rdata[23]_0\(22),
      I5 => sel0(2),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => Q(23),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6C4A28000000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \s00_axi_rdata[23]\(23),
      I3 => data5(23),
      I4 => \s00_axi_rdata[23]_0\(23),
      I5 => sel0(2),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
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
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data1(2),
      I1 => data3(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => Q(2),
      I5 => data2(2),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(2),
      I1 => \s00_axi_rdata[23]\(2),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(2),
      I5 => \s00_axi_rdata[23]_0\(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(3),
      I1 => data2(3),
      I2 => data3(3),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(3),
      I1 => \s00_axi_rdata[23]\(3),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(3),
      I5 => \s00_axi_rdata[23]_0\(3),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(4),
      I1 => data2(4),
      I2 => data3(4),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(4),
      I1 => \s00_axi_rdata[23]\(4),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(4),
      I5 => \s00_axi_rdata[23]_0\(4),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(5),
      I1 => data2(5),
      I2 => data3(5),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(5),
      I1 => \s00_axi_rdata[23]\(5),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(5),
      I5 => \s00_axi_rdata[23]_0\(5),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(6),
      I1 => data2(6),
      I2 => data3(6),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(6),
      I1 => \s00_axi_rdata[23]\(6),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(6),
      I5 => \s00_axi_rdata[23]_0\(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAE"
    )
        port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => Q(7),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => sel0(2),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6C4A28000000000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => \s00_axi_rdata[23]\(7),
      I3 => data5(7),
      I4 => \s00_axi_rdata[23]_0\(7),
      I5 => sel0(2),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(8),
      I1 => data2(8),
      I2 => data3(8),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(8),
      I1 => \s00_axi_rdata[23]\(8),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(8),
      I5 => \s00_axi_rdata[23]_0\(8),
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
      INIT => X"F000CCAA"
    )
        port map (
      I0 => Q(9),
      I1 => data2(9),
      I2 => data3(9),
      I3 => sel0(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CFAFCFA0C0AFC0A0"
    )
        port map (
      I0 => data5(9),
      I1 => \s00_axi_rdata[23]\(9),
      I2 => sel0(0),
      I3 => sel0(1),
      I4 => data4(9),
      I5 => \s00_axi_rdata[23]_0\(9),
      O => \s00_axi_rdata[9]_INST_0_i_2_n_0\
    );
\sec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => data2(8),
      O => \sec[0]_i_1_n_0\
    );
\sec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => data2(8),
      I2 => data2(9),
      O => \sec[1]_i_1_n_0\
    );
\sec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => data2(8),
      I2 => data2(9),
      I3 => data2(10),
      O => \sec[2]_i_1_n_0\
    );
\sec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => data2(9),
      I2 => data2(8),
      I3 => data2(10),
      I4 => data2(11),
      O => \sec[3]_i_1_n_0\
    );
\sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => data2(10),
      I2 => data2(8),
      I3 => data2(9),
      I4 => data2(11),
      I5 => data2(12),
      O => \sec[4]_i_1_n_0\
    );
\sec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"02AAAAAAAAAAAAAA"
    )
        port map (
      I0 => run,
      I1 => \sec[5]_i_4_n_0\,
      I2 => data2(10),
      I3 => data2(13),
      I4 => data2(11),
      I5 => data2(12),
      O => \sec[4]_i_2_n_0\
    );
\sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0280AA00AA00AA00"
    )
        port map (
      I0 => run,
      I1 => \sec[5]_i_4_n_0\,
      I2 => data2(10),
      I3 => data2(13),
      I4 => data2(11),
      I5 => data2(12),
      O => \sec[5]_i_2_n_0\
    );
\sec[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888880"
    )
        port map (
      I0 => data2(6),
      I1 => data2(5),
      I2 => data2(2),
      I3 => data2(3),
      I4 => data2(4),
      I5 => \csec[5]_i_2_n_0\,
      O => \sec[5]_i_3_n_0\
    );
\sec[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => data2(9),
      I1 => data2(8),
      O => \sec[5]_i_4_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \sec[0]_i_1_n_0\,
      Q => data2(8)
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \sec[1]_i_1_n_0\,
      Q => data2(9)
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \sec[2]_i_1_n_0\,
      Q => data2(10)
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \sec[3]_i_1_n_0\,
      Q => data2(11)
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \sec[4]_i_1_n_0\,
      Q => data2(12)
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_9,
      CLR => \^sr\(0),
      D => \sec[5]_i_2_n_0\,
      Q => data2(13)
    );
sign_flag_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => run,
      I1 => dtmp_min1_carry_n_1,
      O => sign_flag0_out
    );
sign_flag_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_7,
      CLR => \^sr\(0),
      D => sign_flag0_out,
      Q => data1(2)
    );
tmp_min1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_6_in,
      CO(2) => tmp_min1_carry_n_1,
      CO(1) => tmp_min1_carry_n_2,
      CO(0) => tmp_min1_carry_n_3,
      CYINIT => '1',
      DI(3) => tmp_min2(7),
      DI(2) => tmp_min1_carry_i_2_n_0,
      DI(1) => tmp_min1_carry_i_3_n_0,
      DI(0) => tmp_min1_carry_i_4_n_0,
      O(3 downto 0) => NLW_tmp_min1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_min1_carry_i_5_n_0,
      S(2) => tmp_min1_carry_i_6_n_0,
      S(1) => tmp_min1_carry_i_7_n_0,
      S(0) => tmp_min1_carry_i_8_n_0
    );
tmp_min1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => data3(13),
      I1 => data3(11),
      I2 => data3(9),
      I3 => data3(8),
      I4 => data3(10),
      I5 => data3(12),
      O => tmp_min2(7)
    );
tmp_min1_carry_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"71303017"
    )
        port map (
      I0 => data4(12),
      I1 => data4(13),
      I2 => data3(13),
      I3 => tmp_min1_carry_i_9_n_0,
      I4 => data3(12),
      O => tmp_min1_carry_i_2_n_0
    );
tmp_min1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7373733110101007"
    )
        port map (
      I0 => data4(10),
      I1 => data4(11),
      I2 => data3(10),
      I3 => data3(8),
      I4 => data3(9),
      I5 => data3(11),
      O => tmp_min1_carry_i_3_n_0
    );
tmp_min1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"01D3"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      I2 => data3(9),
      I3 => data4(9),
      O => tmp_min1_carry_i_4_n_0
    );
tmp_min1_carry_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => data3(12),
      I1 => data3(10),
      I2 => data3(8),
      I3 => data3(9),
      I4 => data3(11),
      I5 => data3(13),
      O => tmp_min1_carry_i_5_n_0
    );
tmp_min1_carry_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"81422814"
    )
        port map (
      I0 => data4(13),
      I1 => data3(12),
      I2 => tmp_min1_carry_i_9_n_0,
      I3 => data3(13),
      I4 => data4(12),
      O => tmp_min1_carry_i_6_n_0
    );
tmp_min1_carry_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9990000600099990"
    )
        port map (
      I0 => data4(11),
      I1 => data3(11),
      I2 => data3(9),
      I3 => data3(8),
      I4 => data3(10),
      I5 => data4(10),
      O => tmp_min1_carry_i_7_n_0
    );
tmp_min1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4224"
    )
        port map (
      I0 => data4(8),
      I1 => data3(8),
      I2 => data3(9),
      I3 => data4(9),
      O => tmp_min1_carry_i_8_n_0
    );
tmp_min1_carry_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data3(10),
      I1 => data3(8),
      I2 => data3(9),
      I3 => data3(11),
      O => tmp_min1_carry_i_9_n_0
    );
\tmp_min1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \NLW_tmp_min1_inferred__0/i__carry_CO_UNCONNECTED\(3),
      CO(2) => p_9_in,
      CO(1) => \tmp_min1_inferred__0/i__carry_n_2\,
      CO(0) => \tmp_min1_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => '0',
      DI(2) => \i__carry_i_1__2_n_0\,
      DI(1) => \i__carry_i_2__2_n_0\,
      DI(0) => \i__carry_i_3__2_n_0\,
      O(3 downto 0) => \NLW_tmp_min1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry_i_4__2_n_0\,
      S(1) => \i__carry_i_5_n_0\,
      S(0) => \i__carry_i_6__0_n_0\
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
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
  signal cp : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
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
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal stop_watch_inst_n_0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair58";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \slv_reg6[31]_i_2\ : label is "soft_lutpair59";
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
      R => stop_watch_inst_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[3]\,
      R => stop_watch_inst_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[4]_i_1_n_0\,
      Q => \axi_awaddr_reg_n_0_[4]\,
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => slv_reg6(24),
      I2 => slv_reg7(24),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => slv_reg6(25),
      I2 => slv_reg7(25),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => slv_reg6(26),
      I2 => slv_reg7(26),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => slv_reg6(27),
      I2 => slv_reg7(27),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => slv_reg6(28),
      I2 => slv_reg7(28),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => slv_reg6(29),
      I2 => slv_reg7(29),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => slv_reg6(30),
      I2 => slv_reg7(30),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0CC0000000000AA"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => slv_reg6(31),
      I2 => slv_reg7(31),
      I3 => sel0(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => s00_axi_rdata(31)
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
      O => \slv_reg0[15]_i_1_n_0\
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
      O => \slv_reg0[23]_i_1_n_0\
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
      O => \slv_reg0[31]_i_1_n_0\
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
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => cp,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => stop_watch_inst_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => stop_watch_inst_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => stop_watch_inst_n_0
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
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => stop_watch_inst_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => stop_watch_inst_n_0
    );
stop_watch_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip
     port map (
      Q(23) => \slv_reg0_reg_n_0_[23]\,
      Q(22) => \slv_reg0_reg_n_0_[22]\,
      Q(21) => \slv_reg0_reg_n_0_[21]\,
      Q(20) => \slv_reg0_reg_n_0_[20]\,
      Q(19) => \slv_reg0_reg_n_0_[19]\,
      Q(18) => \slv_reg0_reg_n_0_[18]\,
      Q(17) => \slv_reg0_reg_n_0_[17]\,
      Q(16) => \slv_reg0_reg_n_0_[16]\,
      Q(15) => \slv_reg0_reg_n_0_[15]\,
      Q(14) => \slv_reg0_reg_n_0_[14]\,
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
      Q(2) => slv_reg0(2),
      Q(1) => cp,
      Q(0) => \slv_reg0_reg_n_0_[0]\,
      SR(0) => stop_watch_inst_n_0,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(23 downto 0) => s00_axi_rdata(23 downto 0),
      \s00_axi_rdata[23]\(23 downto 0) => slv_reg7(23 downto 0),
      \s00_axi_rdata[23]_0\(23 downto 0) => slv_reg6(23 downto 0),
      sel0(2 downto 0) => sel0(2 downto 0)
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
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
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
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_completeClock_myip_stopwatch_0_0,myip_stopwatch,{}";
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
