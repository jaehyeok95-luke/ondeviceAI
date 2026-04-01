-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Tue Mar 10 17:45:48 2026
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
    run_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    clear_p : out STD_LOGIC;
    ff_cur_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_0 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp_sec_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    run_reg_1 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    run_reg_2 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ff_cur_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_min_reg[7]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    ff_old_reg_2 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_csec_reg[6]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \lap_sec_reg[3]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    run_reg_3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    run_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_csec_reg[6]_0\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ff_cur_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_5 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_aresetn_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    run_reg_7 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ff_old_reg_3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_old_reg_4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    \lap_count_reg[1]\ : in STD_LOGIC;
    \tmp_sec_reg[4]\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_sec_reg[5]\ : in STD_LOGIC;
    \tmp_sec_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \lap_min_reg[0]\ : in STD_LOGIC;
    \lap_min_reg[0]_0\ : in STD_LOGIC;
    \tmp_min_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \lap_min_reg[4]\ : in STD_LOGIC;
    \sec_reg[0]\ : in STD_LOGIC;
    \sec_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \min_reg[0]\ : in STD_LOGIC;
    \lap_count_reg[0]\ : in STD_LOGIC;
    \lap_count_reg[0]_0\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \lap_count_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp_sec_reg[3]\ : in STD_LOGIC;
    \tmp_sec_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \tmp_sec_reg[3]_0\ : in STD_LOGIC;
    \tmp_sec_reg[3]_1\ : in STD_LOGIC;
    \tmp_sec_reg[4]_0\ : in STD_LOGIC;
    \tmp_sec_reg[4]_1\ : in STD_LOGIC;
    \tmp_sec_reg[6]\ : in STD_LOGIC;
    \tmp_sec_reg[6]_0\ : in STD_LOGIC;
    \tmp_sec_reg[6]_1\ : in STD_LOGIC;
    \tmp_sec_reg[6]_2\ : in STD_LOGIC;
    \tmp_sec_reg[7]_1\ : in STD_LOGIC;
    \tmp_sec_reg[7]_2\ : in STD_LOGIC;
    \tmp_sec_reg[5]_0\ : in STD_LOGIC;
    \tmp_sec_reg[5]_1\ : in STD_LOGIC;
    \tmp_sec_reg[1]\ : in STD_LOGIC;
    data1 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \diff_min_reg[7]\ : in STD_LOGIC;
    data0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \diff_sec_reg[7]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \diff_sec_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \diff_sec_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \prev_sec_reg[0]\ : in STD_LOGIC;
    \prev_sec_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prev_sec_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prev_sec_reg[0]_2\ : in STD_LOGIC;
    \tmp_sec_reg[2]\ : in STD_LOGIC;
    \tmp_sec_reg[0]\ : in STD_LOGIC;
    \tmp_min_reg[7]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \tmp_min_reg[5]_0\ : in STD_LOGIC;
    \tmp_min_reg[5]_1\ : in STD_LOGIC;
    \tmp_min_reg[4]\ : in STD_LOGIC;
    \tmp_min_reg[7]_1\ : in STD_LOGIC;
    \tmp_min_reg[3]\ : in STD_LOGIC;
    \prev_min_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prev_min_reg[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_count_reg[6]\ : in STD_LOGIC;
    \lap_count_reg[5]\ : in STD_LOGIC;
    \lap_count_reg[4]\ : in STD_LOGIC;
    \lap_csec_reg[6]_1\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \lap_csec_reg[5]\ : in STD_LOGIC;
    \lap_csec_reg[6]_2\ : in STD_LOGIC;
    \lap_sec_reg[5]_0\ : in STD_LOGIC;
    \lap_sec_reg[5]_1\ : in STD_LOGIC;
    \prev_sec_reg[6]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \prev_sec_reg[6]_0\ : in STD_LOGIC;
    \prev_sec_reg[6]_1\ : in STD_LOGIC;
    \prev_sec_reg[6]_2\ : in STD_LOGIC;
    \tmp_sec_reg[3]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \tmp_sec_reg[3]_3\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \prev_min_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \prev_min_reg[7]_0\ : in STD_LOGIC;
    \prev_min_reg[5]\ : in STD_LOGIC;
    \prev_min_reg[4]\ : in STD_LOGIC;
    \prev_min_reg[3]\ : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    cnt_sysclk20 : in STD_LOGIC_VECTOR ( 30 downto 0 );
    \cnt_sysclk2_reg[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \lap_min_reg[5]\ : in STD_LOGIC;
    \prev_sec_reg[7]\ : in STD_LOGIC;
    \prev_sec_reg[5]\ : in STD_LOGIC;
    \prev_sec_reg[5]_0\ : in STD_LOGIC;
    \prev_sec_reg[2]\ : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^clear_p\ : STD_LOGIC;
  signal \^ff_cur_reg_0\ : STD_LOGIC;
  signal \^ff_old_reg_0\ : STD_LOGIC;
  signal \lap_csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \prev_sec[6]_i_2_n_0\ : STD_LOGIC;
  signal \^run_reg\ : STD_LOGIC;
  signal \tmp_min[2]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[3]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_sec[3]_i_5_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk1[31]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \csec[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \lap_count[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \lap_count[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \lap_count[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \lap_count[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \lap_csec[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lap_csec[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \lap_csec[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lap_csec[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lap_csec[6]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \lap_min[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \lap_sec[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lap_sec[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \lap_sec[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_sec[3]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \lap_sec[5]_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \prev_csec[6]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \prev_sec[6]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sec[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \tmp_csec[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \tmp_csec[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmp_csec[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \tmp_csec[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmp_csec[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \tmp_csec[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tmp_csec[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \tmp_min[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \tmp_sec[3]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \tmp_sec[7]_i_3\ : label is "soft_lutpair8";
begin
  AR(0) <= \^ar\(0);
  clear_p <= \^clear_p\;
  ff_cur_reg_0 <= \^ff_cur_reg_0\;
  ff_old_reg_0 <= \^ff_old_reg_0\;
  run_reg <= \^run_reg\;
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\cnt_sysclk1[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_old_reg_0\,
      I2 => \^ff_cur_reg_0\,
      O => run_reg_4(0)
    );
\cnt_sysclk2[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15150015"
    )
        port map (
      I0 => \cnt_sysclk2_reg[0]\(0),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(0)
    );
\cnt_sysclk2[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(9),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(10)
    );
\cnt_sysclk2[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(10),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(11)
    );
\cnt_sysclk2[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(11),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(12)
    );
\cnt_sysclk2[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(12),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(13)
    );
\cnt_sysclk2[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(13),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(14)
    );
\cnt_sysclk2[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(14),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(15)
    );
\cnt_sysclk2[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(15),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(16)
    );
\cnt_sysclk2[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(16),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(17)
    );
\cnt_sysclk2[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(17),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(18)
    );
\cnt_sysclk2[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(18),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(19)
    );
\cnt_sysclk2[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(0),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(1)
    );
\cnt_sysclk2[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(19),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(20)
    );
\cnt_sysclk2[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(20),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(21)
    );
\cnt_sysclk2[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(21),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(22)
    );
\cnt_sysclk2[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(22),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(23)
    );
\cnt_sysclk2[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(23),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(24)
    );
\cnt_sysclk2[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(24),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(25)
    );
\cnt_sysclk2[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(25),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(26)
    );
\cnt_sysclk2[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(26),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(27)
    );
\cnt_sysclk2[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(27),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(28)
    );
\cnt_sysclk2[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(28),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(29)
    );
\cnt_sysclk2[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(1),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(2)
    );
\cnt_sysclk2[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(29),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(30)
    );
\cnt_sysclk2[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C8FFC8"
    )
        port map (
      I0 => s00_axi_aresetn,
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => s00_axi_aresetn_0(0)
    );
\cnt_sysclk2[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(30),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(31)
    );
\cnt_sysclk2[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(2),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(3)
    );
\cnt_sysclk2[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(3),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(4)
    );
\cnt_sysclk2[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(4),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(5)
    );
\cnt_sysclk2[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(5),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(6)
    );
\cnt_sysclk2[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(6),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(7)
    );
\cnt_sysclk2[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(7),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(8)
    );
\cnt_sysclk2[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2A2A002A"
    )
        port map (
      I0 => cnt_sysclk20(8),
      I1 => \lap_count_reg[1]\,
      I2 => CO(0),
      I3 => \^ff_cur_reg_0\,
      I4 => \^ff_old_reg_0\,
      O => run_reg_7(9)
    );
\csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \sec_reg[0]_0\(0),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => run_reg_5(0)
    );
\diff_min[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(0),
      I2 => \diff_min_reg[7]\,
      I3 => data0(0),
      O => run_reg_1(0)
    );
\diff_min[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(1),
      I2 => \diff_min_reg[7]\,
      I3 => data0(1),
      O => run_reg_1(1)
    );
\diff_min[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(2),
      I2 => \diff_min_reg[7]\,
      I3 => data0(2),
      O => run_reg_1(2)
    );
\diff_min[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(3),
      I2 => \diff_min_reg[7]\,
      I3 => data0(3),
      O => run_reg_1(3)
    );
\diff_min[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(4),
      I2 => \diff_min_reg[7]\,
      I3 => data0(4),
      O => run_reg_1(4)
    );
\diff_min[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(5),
      I2 => \diff_min_reg[7]\,
      I3 => data0(5),
      O => run_reg_1(5)
    );
\diff_min[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(6),
      I2 => \diff_min_reg[7]\,
      I3 => data0(6),
      O => run_reg_1(6)
    );
\diff_min[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => data1(7),
      I2 => \diff_min_reg[7]\,
      I3 => data0(7),
      O => run_reg_1(7)
    );
\diff_sec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => \diff_sec_reg[3]\(0),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[3]_0\(0),
      O => run_reg_2(0)
    );
\diff_sec[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => \diff_sec_reg[3]\(1),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[3]_0\(1),
      O => run_reg_2(1)
    );
\diff_sec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => \diff_sec_reg[3]\(2),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[3]_0\(2),
      O => run_reg_2(2)
    );
\diff_sec[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => \diff_sec_reg[3]\(3),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[3]_0\(3),
      O => run_reg_2(3)
    );
\diff_sec[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => O(0),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[7]\(0),
      O => run_reg_2(4)
    );
\diff_sec[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => O(1),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[7]\(1),
      O => run_reg_2(5)
    );
\diff_sec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => O(2),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[7]\(2),
      O => run_reg_2(6)
    );
\diff_sec[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A808"
    )
        port map (
      I0 => \^run_reg\,
      I1 => O(3),
      I2 => \diff_min_reg[7]\,
      I3 => \diff_sec_reg[7]\(3),
      O => run_reg_2(7)
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
\lap_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF4F"
    )
        port map (
      I0 => \lap_count_reg[7]\(0),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => run_reg_0(0)
    );
\lap_count[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \lap_count_reg[7]\(0),
      I4 => \lap_count_reg[7]\(1),
      O => run_reg_0(1)
    );
\lap_count[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008080008000800"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \lap_count_reg[7]\(2),
      I4 => \lap_count_reg[7]\(1),
      I5 => \lap_count_reg[7]\(0),
      O => run_reg_0(2)
    );
\lap_count[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0880808080808080"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^clear_p\,
      I2 => \lap_count_reg[7]\(3),
      I3 => \lap_count_reg[7]\(2),
      I4 => \lap_count_reg[7]\(0),
      I5 => \lap_count_reg[7]\(1),
      O => run_reg_0(3)
    );
\lap_count[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080088080808080"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^clear_p\,
      I2 => \lap_count_reg[7]\(4),
      I3 => \lap_count_reg[7]\(3),
      I4 => \lap_count_reg[4]\,
      I5 => \lap_count_reg[7]\(2),
      O => run_reg_0(4)
    );
\lap_count[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000008"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \lap_count_reg[7]\(5),
      I4 => \lap_count_reg[5]\,
      O => run_reg_0(5)
    );
\lap_count[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080800"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \lap_count_reg[7]\(6),
      I4 => \lap_count_reg[6]\,
      O => run_reg_0(6)
    );
\lap_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444444F4444"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \lap_count_reg[0]\,
      I3 => \lap_count_reg[0]_0\,
      I4 => p_0_in(1),
      I5 => p_0_in(0),
      O => ff_old_reg_1(0)
    );
\lap_count[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000028880000"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \lap_count_reg[7]\(7),
      I2 => \lap_count_reg[7]\(6),
      I3 => \lap_count_reg[6]\,
      I4 => \^ff_cur_reg_0\,
      I5 => \^ff_old_reg_0\,
      O => run_reg_0(7)
    );
\lap_csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]_1\(0),
      O => \lap_csec_reg[6]\(0)
    );
\lap_csec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]_1\(1),
      I2 => \lap_csec_reg[6]_1\(0),
      O => \lap_csec_reg[6]\(1)
    );
\lap_csec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]_1\(0),
      I2 => \lap_csec_reg[6]_1\(1),
      I3 => \lap_csec_reg[6]_1\(2),
      O => \lap_csec_reg[6]\(2)
    );
\lap_csec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]_1\(2),
      I2 => \lap_csec_reg[6]_1\(1),
      I3 => \lap_csec_reg[6]_1\(0),
      I4 => \lap_csec_reg[6]_1\(3),
      O => \lap_csec_reg[6]\(3)
    );
\lap_csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]_1\(0),
      I2 => \lap_csec_reg[6]_1\(1),
      I3 => \lap_csec_reg[6]_1\(2),
      I4 => \lap_csec_reg[6]_1\(3),
      I5 => \lap_csec_reg[6]_1\(4),
      O => \lap_csec_reg[6]\(4)
    );
\lap_csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(5),
      I1 => \lap_csec_reg[6]_1\(4),
      I2 => \lap_csec_reg[5]\,
      I3 => \lap_csec_reg[6]_1\(2),
      I4 => \lap_csec_reg[6]_1\(3),
      I5 => \lap_csec[6]_i_3_n_0\,
      O => \lap_csec_reg[6]\(5)
    );
\lap_csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => CO(0),
      I3 => \lap_count_reg[1]\,
      O => ff_old_reg_3(0)
    );
\lap_csec[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \lap_csec[6]_i_3_n_0\,
      I1 => \lap_csec_reg[6]_1\(6),
      I2 => \lap_csec_reg[6]_2\,
      O => \lap_csec_reg[6]\(6)
    );
\lap_csec[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8808"
    )
        port map (
      I0 => \lap_sec_reg[5]\,
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec[6]_i_3_n_0\
    );
\lap_min[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004044"
    )
        port map (
      I0 => \tmp_min_reg[5]\(0),
      I1 => \lap_min_reg[0]\,
      I2 => \^ff_old_reg_0\,
      I3 => \^ff_cur_reg_0\,
      I4 => \lap_min_reg[0]_0\,
      O => D(0)
    );
\lap_min[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008A008A0000"
    )
        port map (
      I0 => \lap_min_reg[0]\,
      I1 => \^ff_old_reg_0\,
      I2 => \^ff_cur_reg_0\,
      I3 => \lap_min_reg[0]_0\,
      I4 => \tmp_min_reg[5]\(1),
      I5 => \tmp_min_reg[5]\(0),
      O => D(1)
    );
\lap_min[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002020002000200"
    )
        port map (
      I0 => \lap_min_reg[0]\,
      I1 => \^clear_p\,
      I2 => \lap_min_reg[0]_0\,
      I3 => \tmp_min_reg[5]\(2),
      I4 => \tmp_min_reg[5]\(1),
      I5 => \tmp_min_reg[5]\(0),
      O => D(2)
    );
\lap_min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"008A00000000008A"
    )
        port map (
      I0 => \lap_min_reg[0]\,
      I1 => \^ff_old_reg_0\,
      I2 => \^ff_cur_reg_0\,
      I3 => \lap_min_reg[0]_0\,
      I4 => \lap_min_reg[4]\,
      I5 => \tmp_min_reg[5]\(3),
      O => D(3)
    );
\lap_min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0202000200000200"
    )
        port map (
      I0 => \lap_min_reg[0]\,
      I1 => \^clear_p\,
      I2 => \lap_min_reg[0]_0\,
      I3 => \tmp_min_reg[5]\(3),
      I4 => \lap_min_reg[4]\,
      I5 => \tmp_min_reg[5]\(4),
      O => D(4)
    );
\lap_min[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4444"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \lap_min_reg[0]_0\,
      I3 => s00_axi_aresetn,
      I4 => \lap_min_reg[0]\,
      O => ff_old_reg_4(0)
    );
\lap_min[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000007800"
    )
        port map (
      I0 => \lap_min_reg[5]\,
      I1 => \tmp_min_reg[5]\(4),
      I2 => \tmp_min_reg[5]\(5),
      I3 => \lap_min_reg[0]\,
      I4 => \^clear_p\,
      I5 => \lap_min_reg[0]_0\,
      O => D(5)
    );
\lap_sec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \tmp_sec_reg[5]\(0),
      O => \lap_sec_reg[3]\(0)
    );
\lap_sec[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \tmp_sec_reg[5]\(1),
      I2 => \tmp_sec_reg[5]\(0),
      O => \lap_sec_reg[3]\(1)
    );
\lap_sec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2888"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \tmp_sec_reg[5]\(2),
      I2 => \tmp_sec_reg[5]\(1),
      I3 => \tmp_sec_reg[5]\(0),
      O => \lap_sec_reg[3]\(2)
    );
\lap_sec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \tmp_sec_reg[5]\(2),
      I2 => \tmp_sec_reg[5]\(1),
      I3 => \tmp_sec_reg[5]\(0),
      I4 => \tmp_sec_reg[5]\(3),
      O => \lap_sec_reg[3]\(3)
    );
\lap_sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA8000AAAA0000"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \tmp_sec_reg[5]\(2),
      I2 => \tmp_sec_reg[5]\(1),
      I3 => \tmp_sec_reg[5]\(0),
      I4 => \tmp_sec_reg[5]\(4),
      I5 => \tmp_sec_reg[5]\(3),
      O => \lap_sec_reg[3]\(4)
    );
\lap_sec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4444F444"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \lap_count_reg[1]\,
      I3 => CO(0),
      I4 => \lap_sec_reg[5]\,
      O => E(0)
    );
\lap_sec[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA0080"
    )
        port map (
      I0 => \lap_sec[5]_i_4_n_0\,
      I1 => \tmp_sec_reg[5]\(3),
      I2 => \tmp_sec_reg[5]\(4),
      I3 => \lap_sec_reg[5]_0\,
      I4 => \tmp_sec_reg[5]\(5),
      O => \lap_sec_reg[3]\(5)
    );
\lap_sec[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
        port map (
      I0 => \lap_sec_reg[5]_1\,
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_sec[5]_i_4_n_0\
    );
\min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F022002200220022"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      I2 => \sec_reg[0]\,
      I3 => \lap_count_reg[1]\,
      I4 => \sec_reg[0]_0\(0),
      I5 => \min_reg[0]\,
      O => ff_cur_reg_1(0)
    );
\prev_csec[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      O => \^clear_p\
    );
\prev_min[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(0),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_min_reg[7]\(0),
      O => run_reg_6(0)
    );
\prev_min[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F00800080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(1),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_min_reg[7]\(0),
      I5 => \prev_min_reg[7]\(1),
      O => run_reg_6(1)
    );
\prev_min[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F808F80808F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(2),
      I2 => \^clear_p\,
      I3 => \prev_min_reg[7]\(2),
      I4 => \prev_min_reg[7]\(1),
      I5 => \prev_min_reg[7]\(0),
      O => run_reg_6(2)
    );
\prev_min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F00800080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(3),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_min_reg[7]\(3),
      I5 => \prev_min_reg[3]\,
      O => run_reg_6(3)
    );
\prev_min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F00800080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(4),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_min_reg[7]\(4),
      I5 => \prev_min_reg[4]\,
      O => run_reg_6(4)
    );
\prev_min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F00800080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(5),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_min_reg[7]\(5),
      I5 => \prev_min_reg[5]\,
      O => run_reg_6(5)
    );
\prev_min[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080FF8FFF8F0080"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(6),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_min_reg[7]\(6),
      I5 => \prev_min_reg[7]_0\,
      O => run_reg_6(6)
    );
\prev_min[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44444444444F4444"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \tmp_sec_reg[4]\,
      I3 => \prev_min_reg[0]\(0),
      I4 => \prev_min_reg[0]_0\(0),
      I5 => \prev_sec_reg[0]_1\(0),
      O => ff_old_reg_2(0)
    );
\prev_min[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808F8F808F80"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_min_reg[7]_0\(7),
      I2 => \^clear_p\,
      I3 => \prev_min_reg[7]\(7),
      I4 => \prev_min_reg[7]\(6),
      I5 => \prev_min_reg[7]_0\,
      O => run_reg_6(7)
    );
\prev_sec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F00800080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_sec_reg[7]_0\(0),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_sec_reg[6]\(0),
      I5 => \prev_sec_reg[6]_1\,
      O => run_reg_3(0)
    );
\prev_sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F808F80808F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_sec_reg[7]_0\(1),
      I2 => \^clear_p\,
      I3 => \prev_sec_reg[6]\(1),
      I4 => \prev_sec_reg[6]_1\,
      I5 => \prev_sec_reg[6]\(0),
      O => run_reg_3(1)
    );
\prev_sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F00800080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_sec_reg[7]_0\(2),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_sec_reg[6]\(2),
      I5 => \prev_sec_reg[2]\,
      O => run_reg_3(2)
    );
\prev_sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8F00800080FF8F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_sec_reg[7]_0\(3),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_sec_reg[6]\(3),
      I5 => \prev_sec_reg[5]\,
      O => run_reg_3(3)
    );
\prev_sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F8F8F808080808F"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_sec_reg[7]_0\(4),
      I2 => \^clear_p\,
      I3 => \prev_sec_reg[6]\(3),
      I4 => \prev_sec_reg[5]\,
      I5 => \prev_sec_reg[6]\(4),
      O => run_reg_3(4)
    );
\prev_sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F80808F8F808F80"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_sec_reg[7]_0\(5),
      I2 => \^clear_p\,
      I3 => \prev_sec_reg[6]\(5),
      I4 => \prev_sec_reg[5]\,
      I5 => \prev_sec_reg[5]_0\,
      O => run_reg_3(5)
    );
\prev_sec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAABABABBAABBABA"
    )
        port map (
      I0 => \prev_sec[6]_i_2_n_0\,
      I1 => \^clear_p\,
      I2 => \prev_sec_reg[6]\(6),
      I3 => \prev_sec_reg[6]_0\,
      I4 => \prev_sec_reg[6]_1\,
      I5 => \prev_sec_reg[6]_2\,
      O => run_reg_3(6)
    );
\prev_sec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \tmp_sec_reg[7]_0\(6),
      O => \prev_sec[6]_i_2_n_0\
    );
\prev_sec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAABFFFBBBB"
    )
        port map (
      I0 => \^clear_p\,
      I1 => \prev_sec_reg[0]\,
      I2 => \prev_sec_reg[0]_0\(0),
      I3 => \prev_sec_reg[0]_1\(0),
      I4 => \prev_sec_reg[0]_2\,
      I5 => \tmp_sec_reg[4]\,
      O => ff_cur_reg_2(0)
    );
\prev_sec[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8F0080"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \tmp_sec_reg[7]_0\(7),
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      I4 => \prev_sec_reg[7]\,
      O => run_reg_3(7)
    );
\sec[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0220022"
    )
        port map (
      I0 => \^ff_cur_reg_0\,
      I1 => \^ff_old_reg_0\,
      I2 => \sec_reg[0]\,
      I3 => \lap_count_reg[1]\,
      I4 => \sec_reg[0]_0\(0),
      O => ff_cur_reg_3(0)
    );
\tmp_csec[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(0),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec_reg[6]_0\(0)
    );
\tmp_csec[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(1),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec_reg[6]_0\(1)
    );
\tmp_csec[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(2),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec_reg[6]_0\(2)
    );
\tmp_csec[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(3),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec_reg[6]_0\(3)
    );
\tmp_csec[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(4),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec_reg[6]_0\(4)
    );
\tmp_csec[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(5),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec_reg[6]_0\(5)
    );
\tmp_csec[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \lap_csec_reg[6]_1\(6),
      I1 => \lap_count_reg[1]\,
      I2 => \^ff_cur_reg_0\,
      I3 => \^ff_old_reg_0\,
      O => \lap_csec_reg[6]_0\(6)
    );
\tmp_min[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E2E2E2E2E002E2E"
    )
        port map (
      I0 => \tmp_min_reg[5]\(0),
      I1 => \tmp_min_reg[5]_1\,
      I2 => \tmp_min_reg[7]_0\(0),
      I3 => \^ff_old_reg_0\,
      I4 => \^ff_cur_reg_0\,
      I5 => \lap_count_reg[1]\,
      O => \tmp_min_reg[7]\(0)
    );
\tmp_min[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F099F0000099F0"
    )
        port map (
      I0 => \tmp_min_reg[7]_0\(0),
      I1 => \tmp_min_reg[7]_0\(1),
      I2 => \tmp_min_reg[5]\(1),
      I3 => \tmp_min_reg[5]_1\,
      I4 => \^clear_p\,
      I5 => \lap_count_reg[1]\,
      O => \tmp_min_reg[7]\(1)
    );
\tmp_min[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000A9A90000FF00"
    )
        port map (
      I0 => \tmp_min_reg[7]_0\(2),
      I1 => \tmp_min_reg[7]_0\(1),
      I2 => \tmp_min_reg[7]_0\(0),
      I3 => \tmp_min_reg[5]\(2),
      I4 => \tmp_min[2]_i_2_n_0\,
      I5 => \tmp_min_reg[5]_1\,
      O => \tmp_min_reg[7]\(2)
    );
\tmp_min[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^ff_old_reg_0\,
      I1 => \^ff_cur_reg_0\,
      I2 => \lap_count_reg[1]\,
      O => \tmp_min[2]_i_2_n_0\
    );
\tmp_min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E22EE22E0000E22E"
    )
        port map (
      I0 => \tmp_min_reg[5]\(3),
      I1 => \tmp_min_reg[5]_1\,
      I2 => \tmp_min_reg[3]\,
      I3 => \tmp_min_reg[7]_0\(3),
      I4 => \^clear_p\,
      I5 => \lap_count_reg[1]\,
      O => \tmp_min_reg[7]\(3)
    );
\tmp_min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F099F0000099F0"
    )
        port map (
      I0 => \tmp_min_reg[7]_0\(4),
      I1 => \tmp_min_reg[4]\,
      I2 => \tmp_min_reg[5]\(4),
      I3 => \tmp_min_reg[5]_1\,
      I4 => \^clear_p\,
      I5 => \lap_count_reg[1]\,
      O => \tmp_min_reg[7]\(4)
    );
\tmp_min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99F099F0000099F0"
    )
        port map (
      I0 => \tmp_min_reg[7]_0\(5),
      I1 => \tmp_min_reg[5]_0\,
      I2 => \tmp_min_reg[5]\(5),
      I3 => \tmp_min_reg[5]_1\,
      I4 => \^clear_p\,
      I5 => \lap_count_reg[1]\,
      O => \tmp_min_reg[7]\(5)
    );
\tmp_min[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA8A00000000AA8A"
    )
        port map (
      I0 => \tmp_min_reg[5]_1\,
      I1 => \^ff_old_reg_0\,
      I2 => \^ff_cur_reg_0\,
      I3 => \lap_count_reg[1]\,
      I4 => \tmp_min_reg[7]_1\,
      I5 => \tmp_min_reg[7]_0\(6),
      O => \tmp_min_reg[7]\(6)
    );
\tmp_min[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A900A9A900000000"
    )
        port map (
      I0 => \tmp_min_reg[7]_0\(7),
      I1 => \tmp_min_reg[7]_1\,
      I2 => \tmp_min_reg[7]_0\(6),
      I3 => \lap_count_reg[1]\,
      I4 => \^clear_p\,
      I5 => \tmp_min_reg[5]_1\,
      O => \tmp_min_reg[7]\(7)
    );
\tmp_sec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E0E0E0E0E000E0E"
    )
        port map (
      I0 => \tmp_sec_reg[3]\,
      I1 => \tmp_sec_reg[5]\(0),
      I2 => \tmp_sec_reg[0]\,
      I3 => \^ff_old_reg_0\,
      I4 => \^ff_cur_reg_0\,
      I5 => \lap_count_reg[1]\,
      O => \tmp_sec_reg[7]\(0)
    );
\tmp_sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F4444444F444F44"
    )
        port map (
      I0 => \tmp_sec_reg[1]\,
      I1 => \^run_reg\,
      I2 => \tmp_sec_reg[3]\,
      I3 => \tmp_sec_reg[5]\(1),
      I4 => \lap_count_reg[1]\,
      I5 => \^clear_p\,
      O => \tmp_sec_reg[7]\(1)
    );
\tmp_sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE0EEE00000EEE0"
    )
        port map (
      I0 => \tmp_sec_reg[3]\,
      I1 => \tmp_sec_reg[5]\(2),
      I2 => \tmp_sec_reg[4]\,
      I3 => \tmp_sec_reg[2]\,
      I4 => \^clear_p\,
      I5 => \lap_count_reg[1]\,
      O => \tmp_sec_reg[7]\(2)
    );
\tmp_sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EEE0EEEEEEEE"
    )
        port map (
      I0 => \tmp_sec_reg[3]\,
      I1 => \tmp_sec_reg[5]\(3),
      I2 => \tmp_sec_reg[3]_0\,
      I3 => \tmp_sec_reg[3]_1\,
      I4 => \tmp_sec[3]_i_4_n_0\,
      I5 => \tmp_sec[3]_i_5_n_0\,
      O => \tmp_sec_reg[7]\(3)
    );
\tmp_sec[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAEAAAEAAAAAA"
    )
        port map (
      I0 => \tmp_min[2]_i_2_n_0\,
      I1 => \tmp_sec_reg[3]_2\(0),
      I2 => \tmp_sec_reg[3]_3\(0),
      I3 => \prev_min_reg[0]\(0),
      I4 => \tmp_sec_reg[7]_0\(2),
      I5 => \tmp_sec_reg[7]_0\(3),
      O => \tmp_sec[3]_i_4_n_0\
    );
\tmp_sec[3]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \tmp_sec_reg[4]\,
      O => \tmp_sec[3]_i_5_n_0\
    );
\tmp_sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EEEE000000E0"
    )
        port map (
      I0 => \tmp_sec_reg[3]\,
      I1 => \tmp_sec_reg[5]\(4),
      I2 => \tmp_sec_reg[4]_0\,
      I3 => \tmp_sec_reg[4]_1\,
      I4 => \tmp_min[2]_i_2_n_0\,
      I5 => \tmp_sec_reg[4]\,
      O => \tmp_sec_reg[7]\(4)
    );
\tmp_sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF04FF04040404"
    )
        port map (
      I0 => \tmp_sec_reg[3]\,
      I1 => \tmp_sec_reg[5]\(5),
      I2 => \tmp_min[2]_i_2_n_0\,
      I3 => \tmp_sec_reg[5]_0\,
      I4 => \tmp_sec_reg[5]_1\,
      I5 => \^run_reg\,
      O => \tmp_sec_reg[7]\(5)
    );
\tmp_sec[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000444444444"
    )
        port map (
      I0 => \tmp_sec_reg[6]\,
      I1 => \^run_reg\,
      I2 => \tmp_sec_reg[6]_0\,
      I3 => \tmp_sec_reg[6]_1\,
      I4 => \tmp_sec_reg[7]_0\(6),
      I5 => \tmp_sec_reg[6]_2\,
      O => \tmp_sec_reg[7]\(6)
    );
\tmp_sec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444404000004"
    )
        port map (
      I0 => \tmp_sec_reg[6]\,
      I1 => \^run_reg\,
      I2 => \tmp_sec_reg[6]_0\,
      I3 => \tmp_sec_reg[7]_1\,
      I4 => \tmp_sec_reg[7]_0\(7),
      I5 => \tmp_sec_reg[7]_2\,
      O => \tmp_sec_reg[7]\(7)
    );
\tmp_sec[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
        port map (
      I0 => \lap_count_reg[1]\,
      I1 => \^ff_cur_reg_0\,
      I2 => \^ff_old_reg_0\,
      I3 => \tmp_sec_reg[4]\,
      O => \^run_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 : entity is "edge_detector_p";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0 is
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
ff_cur_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => Q(0),
      Q => \^p_0_in\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => AR(0),
      D => \^p_0_in\(1),
      Q => \^p_0_in\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg : out STD_LOGIC;
    ff_old_reg : out STD_LOGIC;
    run_reg_0 : out STD_LOGIC;
    sign_flag : out STD_LOGIC;
    \lap_count_reg[1]_0\ : out STD_LOGIC;
    \tmp_min1_inferred__0/i__carry_0\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    run_reg_1 : in STD_LOGIC;
    sign_flag_reg_0 : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_rdata_31_sp_1 : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_rdata_30_sp_1 : in STD_LOGIC;
    s00_axi_rdata_29_sp_1 : in STD_LOGIC;
    s00_axi_rdata_28_sp_1 : in STD_LOGIC;
    s00_axi_rdata_27_sp_1 : in STD_LOGIC;
    s00_axi_rdata_26_sp_1 : in STD_LOGIC;
    s00_axi_rdata_25_sp_1 : in STD_LOGIC;
    s00_axi_rdata_24_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[23]\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \s00_axi_rdata[23]_0\ : in STD_LOGIC_VECTOR ( 23 downto 0 );
    \s00_axi_rdata[23]_1\ : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_stop_watch_ip is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal clear_p : STD_LOGIC;
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
  signal data0 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal diff_csec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal diff_csec0 : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal diff_csec01_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \diff_csec0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec0_carry__0_n_0\ : STD_LOGIC;
  signal \diff_csec0_carry__0_n_2\ : STD_LOGIC;
  signal \diff_csec0_carry__0_n_3\ : STD_LOGIC;
  signal \diff_csec0_carry__0_n_5\ : STD_LOGIC;
  signal \diff_csec0_carry__0_n_6\ : STD_LOGIC;
  signal \diff_csec0_carry__0_n_7\ : STD_LOGIC;
  signal diff_csec0_carry_i_1_n_0 : STD_LOGIC;
  signal diff_csec0_carry_i_2_n_0 : STD_LOGIC;
  signal diff_csec0_carry_i_3_n_0 : STD_LOGIC;
  signal diff_csec0_carry_i_4_n_0 : STD_LOGIC;
  signal diff_csec0_carry_n_0 : STD_LOGIC;
  signal diff_csec0_carry_n_1 : STD_LOGIC;
  signal diff_csec0_carry_n_2 : STD_LOGIC;
  signal diff_csec0_carry_n_3 : STD_LOGIC;
  signal diff_csec0_carry_n_4 : STD_LOGIC;
  signal diff_csec0_carry_n_5 : STD_LOGIC;
  signal diff_csec0_carry_n_6 : STD_LOGIC;
  signal diff_csec0_carry_n_7 : STD_LOGIC;
  signal \diff_csec0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \diff_csec0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \diff_csec0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \diff_csec0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \diff_csec0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \diff_csec0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \diff_csec0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry__0_n_4\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry__0_n_5\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry__0_n_6\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry__0_n_7\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry_n_4\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry_n_5\ : STD_LOGIC;
  signal \diff_csec0_inferred__1/i__carry_n_6\ : STD_LOGIC;
  signal \diff_csec0_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \diff_csec0_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \diff_csec0_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \diff_csec0_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \diff_csec0_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \diff_csec0_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \diff_csec0_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \diff_csec[0]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[0]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[1]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[2]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[3]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[4]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[5]_i_5_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[6]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_1_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_2_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_3_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_4_n_0\ : STD_LOGIC;
  signal \diff_csec[7]_i_5_n_0\ : STD_LOGIC;
  signal diff_min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \diff_min0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \diff_min0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \diff_min0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \diff_min0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \diff_min0_carry__0_n_1\ : STD_LOGIC;
  signal \diff_min0_carry__0_n_2\ : STD_LOGIC;
  signal \diff_min0_carry__0_n_3\ : STD_LOGIC;
  signal diff_min0_carry_i_1_n_0 : STD_LOGIC;
  signal diff_min0_carry_i_2_n_0 : STD_LOGIC;
  signal diff_min0_carry_i_3_n_0 : STD_LOGIC;
  signal diff_min0_carry_i_4_n_0 : STD_LOGIC;
  signal diff_min0_carry_n_0 : STD_LOGIC;
  signal diff_min0_carry_n_1 : STD_LOGIC;
  signal diff_min0_carry_n_2 : STD_LOGIC;
  signal diff_min0_carry_n_3 : STD_LOGIC;
  signal \diff_min0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \diff_min0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \diff_min0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \diff_min0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \diff_min0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \diff_min0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \diff_min0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal diff_sec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \diff_sec_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \diff_sec_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \diff_sec_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \diff_sec_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \diff_sec_carry__0_n_1\ : STD_LOGIC;
  signal \diff_sec_carry__0_n_2\ : STD_LOGIC;
  signal \diff_sec_carry__0_n_3\ : STD_LOGIC;
  signal \diff_sec_carry__0_n_4\ : STD_LOGIC;
  signal \diff_sec_carry__0_n_5\ : STD_LOGIC;
  signal \diff_sec_carry__0_n_6\ : STD_LOGIC;
  signal \diff_sec_carry__0_n_7\ : STD_LOGIC;
  signal diff_sec_carry_i_1_n_0 : STD_LOGIC;
  signal diff_sec_carry_i_2_n_0 : STD_LOGIC;
  signal diff_sec_carry_i_3_n_0 : STD_LOGIC;
  signal diff_sec_carry_i_4_n_0 : STD_LOGIC;
  signal diff_sec_carry_n_0 : STD_LOGIC;
  signal diff_sec_carry_n_1 : STD_LOGIC;
  signal diff_sec_carry_n_2 : STD_LOGIC;
  signal diff_sec_carry_n_3 : STD_LOGIC;
  signal diff_sec_carry_n_4 : STD_LOGIC;
  signal diff_sec_carry_n_5 : STD_LOGIC;
  signal diff_sec_carry_n_6 : STD_LOGIC;
  signal diff_sec_carry_n_7 : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry__0_n_4\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry__0_n_5\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry__0_n_6\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry__0_n_7\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_4\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_5\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_6\ : STD_LOGIC;
  signal \diff_sec_inferred__0/i__carry_n_7\ : STD_LOGIC;
  signal ed_clear_n_10 : STD_LOGIC;
  signal ed_clear_n_12 : STD_LOGIC;
  signal ed_clear_n_128 : STD_LOGIC;
  signal ed_clear_n_129 : STD_LOGIC;
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
  signal ed_clear_n_52 : STD_LOGIC;
  signal ed_clear_n_53 : STD_LOGIC;
  signal ed_clear_n_54 : STD_LOGIC;
  signal ed_clear_n_55 : STD_LOGIC;
  signal ed_clear_n_56 : STD_LOGIC;
  signal ed_clear_n_57 : STD_LOGIC;
  signal ed_clear_n_58 : STD_LOGIC;
  signal ed_clear_n_59 : STD_LOGIC;
  signal ed_clear_n_6 : STD_LOGIC;
  signal ed_clear_n_60 : STD_LOGIC;
  signal ed_clear_n_61 : STD_LOGIC;
  signal ed_clear_n_62 : STD_LOGIC;
  signal ed_clear_n_63 : STD_LOGIC;
  signal ed_clear_n_64 : STD_LOGIC;
  signal ed_clear_n_65 : STD_LOGIC;
  signal ed_clear_n_66 : STD_LOGIC;
  signal ed_clear_n_67 : STD_LOGIC;
  signal ed_clear_n_68 : STD_LOGIC;
  signal ed_clear_n_69 : STD_LOGIC;
  signal ed_clear_n_7 : STD_LOGIC;
  signal ed_clear_n_70 : STD_LOGIC;
  signal ed_clear_n_71 : STD_LOGIC;
  signal ed_clear_n_72 : STD_LOGIC;
  signal ed_clear_n_73 : STD_LOGIC;
  signal ed_clear_n_74 : STD_LOGIC;
  signal ed_clear_n_75 : STD_LOGIC;
  signal ed_clear_n_76 : STD_LOGIC;
  signal ed_clear_n_77 : STD_LOGIC;
  signal ed_clear_n_78 : STD_LOGIC;
  signal ed_clear_n_79 : STD_LOGIC;
  signal ed_clear_n_8 : STD_LOGIC;
  signal ed_clear_n_80 : STD_LOGIC;
  signal ed_clear_n_81 : STD_LOGIC;
  signal ed_clear_n_82 : STD_LOGIC;
  signal ed_clear_n_83 : STD_LOGIC;
  signal ed_clear_n_84 : STD_LOGIC;
  signal ed_clear_n_85 : STD_LOGIC;
  signal ed_clear_n_86 : STD_LOGIC;
  signal ed_clear_n_9 : STD_LOGIC;
  signal ed_clear_n_95 : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__5_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__6_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_6__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_6_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_7__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_7_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_8__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_8_n_0\ : STD_LOGIC;
  signal lap_count : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \lap_count[4]_i_2_n_0\ : STD_LOGIC;
  signal \lap_count[5]_i_2_n_0\ : STD_LOGIC;
  signal \lap_count[7]_i_3_n_0\ : STD_LOGIC;
  signal \lap_count[7]_i_4_n_0\ : STD_LOGIC;
  signal \lap_count[7]_i_5_n_0\ : STD_LOGIC;
  signal \^lap_count_reg[1]_0\ : STD_LOGIC;
  signal lap_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \lap_csec[5]_i_2_n_0\ : STD_LOGIC;
  signal \lap_csec[6]_i_4_n_0\ : STD_LOGIC;
  signal lap_min : STD_LOGIC_VECTOR ( 5 downto 0 );
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
  signal \lap_min[4]_i_2_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_3_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_4_n_0\ : STD_LOGIC;
  signal \lap_min[5]_i_5_n_0\ : STD_LOGIC;
  signal lap_sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \lap_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_5_n_0\ : STD_LOGIC;
  signal \lap_sec[5]_i_6_n_0\ : STD_LOGIC;
  signal min : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \min[0]_i_1_n_0\ : STD_LOGIC;
  signal \min[1]_i_1_n_0\ : STD_LOGIC;
  signal \min[2]_i_1_n_0\ : STD_LOGIC;
  signal \min[3]_i_1_n_0\ : STD_LOGIC;
  signal \min[4]_i_1_n_0\ : STD_LOGIC;
  signal \min[4]_i_2_n_0\ : STD_LOGIC;
  signal \min[4]_i_3_n_0\ : STD_LOGIC;
  signal \min[5]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_3_n_0\ : STD_LOGIC;
  signal \min[5]_i_4_n_0\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_3_in : STD_LOGIC;
  signal prev_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \prev_csec[0]_i_1_n_0\ : STD_LOGIC;
  signal \prev_csec[1]_i_1_n_0\ : STD_LOGIC;
  signal \prev_csec[2]_i_1_n_0\ : STD_LOGIC;
  signal \prev_csec[3]_i_1_n_0\ : STD_LOGIC;
  signal \prev_csec[4]_i_1_n_0\ : STD_LOGIC;
  signal \prev_csec[5]_i_1_n_0\ : STD_LOGIC;
  signal \prev_csec[6]_i_2_n_0\ : STD_LOGIC;
  signal \prev_min[3]_i_2_n_0\ : STD_LOGIC;
  signal \prev_min[4]_i_2_n_0\ : STD_LOGIC;
  signal \prev_min[5]_i_2_n_0\ : STD_LOGIC;
  signal \prev_min[7]_i_3_n_0\ : STD_LOGIC;
  signal prev_min_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \prev_sec[2]_i_2_n_0\ : STD_LOGIC;
  signal \prev_sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \prev_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \prev_sec[6]_i_3_n_0\ : STD_LOGIC;
  signal \prev_sec[6]_i_4_n_0\ : STD_LOGIC;
  signal \prev_sec[6]_i_5_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_10_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_11_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_12_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_13_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_14_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_15_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_16_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_17_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_18_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_19_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_20_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_21_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_22_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_23_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_24_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_25_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_26_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_27_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_28_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_29_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_30_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_31_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_32_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_33_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_34_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_35_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_36_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_37_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_38_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_39_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_3_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_40_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_41_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_42_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_43_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_6_n_0\ : STD_LOGIC;
  signal \prev_sec[7]_i_7_n_0\ : STD_LOGIC;
  signal \prev_sec__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \prev_sec_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_4_n_1\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_4_n_2\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_4_n_3\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_5_n_1\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_5_n_2\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_5_n_3\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_8_n_1\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_8_n_2\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_8_n_3\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_9_n_1\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_9_n_2\ : STD_LOGIC;
  signal \prev_sec_reg[7]_i_9_n_3\ : STD_LOGIC;
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
  signal s00_axi_rdata_24_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_25_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_26_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_27_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_28_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_29_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_30_sn_1 : STD_LOGIC;
  signal s00_axi_rdata_31_sn_1 : STD_LOGIC;
  signal sec : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \sec[4]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \^sign_flag\ : STD_LOGIC;
  signal tmp_csec : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal tmp_min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^tmp_min1_inferred__0/i__carry_0\ : STD_LOGIC;
  signal \tmp_min1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \tmp_min1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \tmp_min1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \tmp_min1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \tmp_min1_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \tmp_min1_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \tmp_min1_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \tmp_min[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_min[4]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_min[5]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_min[7]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_min[7]_i_3_n_0\ : STD_LOGIC;
  signal tmp_sec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tmp_sec1_carry_i_1_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_i_2_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_i_3_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_i_4_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_i_5_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_i_6_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_i_7_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_i_8_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_n_0 : STD_LOGIC;
  signal tmp_sec1_carry_n_1 : STD_LOGIC;
  signal tmp_sec1_carry_n_2 : STD_LOGIC;
  signal tmp_sec1_carry_n_3 : STD_LOGIC;
  signal \tmp_sec1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \tmp_sec1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \tmp_sec1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \tmp_sec1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \tmp_sec[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[1]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[2]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[2]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_sec[3]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[3]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_sec[4]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[4]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_sec[4]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_sec[5]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_sec[6]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[6]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_sec[6]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_sec[7]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_sec[7]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_sec[7]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_sec[7]_i_6_n_0\ : STD_LOGIC;
  signal \tmp_sec[7]_i_7_n_0\ : STD_LOGIC;
  signal \NLW_cnt_sysclk10_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk10_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_cnt_sysclk11_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk11_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk11_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk11_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_cnt_sysclk11_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_sysclk20_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk20_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_csec0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_diff_csec0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_csec0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_diff_csec0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_csec0_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec0_inferred__1/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_csec0_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_diff_csec0_inferred__2/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_min0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_min0_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_diff_sec_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_lap_min1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lap_min1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lap_min1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_lap_min1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_lap_min1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_prev_sec_reg[7]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_prev_sec_reg[7]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_prev_sec_reg[7]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_prev_sec_reg[7]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_min1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_min1_inferred__1/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_tmp_sec1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_sec1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute ADDER_THRESHOLD : integer;
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
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_sysclk1[0]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_sysclk1[10]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt_sysclk1[11]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \cnt_sysclk1[12]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt_sysclk1[13]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \cnt_sysclk1[14]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt_sysclk1[15]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \cnt_sysclk1[16]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cnt_sysclk1[17]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \cnt_sysclk1[18]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt_sysclk1[19]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \cnt_sysclk1[1]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \cnt_sysclk1[20]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cnt_sysclk1[21]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \cnt_sysclk1[22]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cnt_sysclk1[23]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \cnt_sysclk1[24]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cnt_sysclk1[25]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \cnt_sysclk1[26]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cnt_sysclk1[27]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \cnt_sysclk1[28]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cnt_sysclk1[29]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \cnt_sysclk1[2]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt_sysclk1[30]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cnt_sysclk1[31]_i_2\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \cnt_sysclk1[3]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \cnt_sysclk1[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_sysclk1[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \cnt_sysclk1[6]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt_sysclk1[7]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cnt_sysclk1[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \cnt_sysclk1[9]_i_1\ : label is "soft_lutpair45";
  attribute ADDER_THRESHOLD of cnt_sysclk20_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk20_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \csec[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \csec[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \csec[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \csec[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \csec[6]_i_3\ : label is "soft_lutpair33";
  attribute ADDER_THRESHOLD of \diff_csec0_inferred__1/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_csec0_inferred__1/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_csec0_inferred__2/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_csec0_inferred__2/i__carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \diff_csec[0]_i_3\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \diff_csec[0]_i_5\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \diff_csec[1]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \diff_csec[2]_i_3\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \diff_csec[7]_i_5\ : label is "soft_lutpair22";
  attribute ADDER_THRESHOLD of diff_min0_carry : label is 35;
  attribute ADDER_THRESHOLD of \diff_min0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_min0_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_min0_inferred__0/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of diff_sec_carry : label is 35;
  attribute ADDER_THRESHOLD of \diff_sec_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_sec_inferred__0/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \diff_sec_inferred__0/i__carry__0\ : label is 35;
  attribute SOFT_HLUTNM of \lap_count[4]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \lap_count[5]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \lap_count[7]_i_4\ : label is "soft_lutpair20";
  attribute COMPARATOR_THRESHOLD of lap_min1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \lap_min1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \lap_min1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \lap_min1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \lap_min[4]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \lap_min[5]_i_4\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \lap_min[5]_i_5\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \min[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \min[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \min[2]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \min[3]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \min[4]_i_3\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \min[5]_i_4\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \prev_csec[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \prev_csec[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \prev_csec[2]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \prev_csec[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \prev_csec[4]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \prev_csec[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \prev_csec[6]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \prev_min[4]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \prev_min[5]_i_2\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \prev_sec[2]_i_2\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \prev_sec[6]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \prev_sec[6]_i_4\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \prev_sec[7]_i_27\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \prev_sec[7]_i_3\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \prev_sec[7]_i_6\ : label is "soft_lutpair21";
  attribute COMPARATOR_THRESHOLD of \prev_sec_reg[7]_i_4\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \prev_sec_reg[7]_i_5\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \prev_sec_reg[7]_i_8\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \prev_sec_reg[7]_i_9\ : label is 11;
  attribute SOFT_HLUTNM of \sec[0]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sec[1]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \sec[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sec[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \sec[4]_i_2\ : label is "soft_lutpair57";
  attribute COMPARATOR_THRESHOLD of \tmp_min1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \tmp_min1_inferred__1/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of \tmp_min[4]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \tmp_min[5]_i_2\ : label is "soft_lutpair29";
  attribute COMPARATOR_THRESHOLD of tmp_sec1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \tmp_sec1_inferred__0/i__carry\ : label is 11;
  attribute SOFT_HLUTNM of \tmp_sec[2]_i_3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tmp_sec[3]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tmp_sec[4]_i_4\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \tmp_sec[4]_i_5\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tmp_sec[5]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \tmp_sec[5]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tmp_sec[5]_i_5\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \tmp_sec[6]_i_2\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \tmp_sec[6]_i_4\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \tmp_sec[7]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \tmp_sec[7]_i_4\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \tmp_sec[7]_i_5\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \tmp_sec[7]_i_6\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \tmp_sec[7]_i_7\ : label is "soft_lutpair16";
begin
  SR(0) <= \^sr\(0);
  \lap_count_reg[1]_0\ <= \^lap_count_reg[1]_0\;
  p_0_in(1 downto 0) <= \^p_0_in\(1 downto 0);
  run_reg_0 <= \^run_reg_0\;
  s00_axi_rdata_24_sn_1 <= s00_axi_rdata_24_sp_1;
  s00_axi_rdata_25_sn_1 <= s00_axi_rdata_25_sp_1;
  s00_axi_rdata_26_sn_1 <= s00_axi_rdata_26_sp_1;
  s00_axi_rdata_27_sn_1 <= s00_axi_rdata_27_sp_1;
  s00_axi_rdata_28_sn_1 <= s00_axi_rdata_28_sp_1;
  s00_axi_rdata_29_sn_1 <= s00_axi_rdata_29_sp_1;
  s00_axi_rdata_30_sn_1 <= s00_axi_rdata_30_sp_1;
  s00_axi_rdata_31_sn_1 <= s00_axi_rdata_31_sp_1;
  sign_flag <= \^sign_flag\;
  \tmp_min1_inferred__0/i__carry_0\ <= \^tmp_min1_inferred__0/i__carry_0\;
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
      I0 => cnt_sysclk1(13),
      I1 => cnt_sysclk1(12),
      O => \cnt_sysclk11_carry__0_i_1_n_0\
    );
\cnt_sysclk11_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(11),
      I1 => cnt_sysclk1(10),
      O => \cnt_sysclk11_carry__0_i_2_n_0\
    );
\cnt_sysclk11_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(17),
      I1 => cnt_sysclk1(16),
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
      I0 => cnt_sysclk1(12),
      I1 => cnt_sysclk1(13),
      O => \cnt_sysclk11_carry__0_i_5_n_0\
    );
\cnt_sysclk11_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(10),
      I1 => cnt_sysclk1(11),
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
      I0 => cnt_sysclk1(25),
      I1 => cnt_sysclk1(24),
      O => \cnt_sysclk11_carry__1_i_1_n_0\
    );
\cnt_sysclk11_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(23),
      I1 => cnt_sysclk1(22),
      O => \cnt_sysclk11_carry__1_i_2_n_0\
    );
\cnt_sysclk11_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(21),
      I1 => cnt_sysclk1(20),
      O => \cnt_sysclk11_carry__1_i_3_n_0\
    );
\cnt_sysclk11_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(24),
      I1 => cnt_sysclk1(25),
      O => \cnt_sysclk11_carry__1_i_4_n_0\
    );
\cnt_sysclk11_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(22),
      I1 => cnt_sysclk1(23),
      O => \cnt_sysclk11_carry__1_i_5_n_0\
    );
\cnt_sysclk11_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(20),
      I1 => cnt_sysclk1(21),
      O => \cnt_sysclk11_carry__1_i_6_n_0\
    );
\cnt_sysclk11_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(19),
      I1 => cnt_sysclk1(18),
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
      I0 => cnt_sysclk1(29),
      I1 => cnt_sysclk1(28),
      O => \cnt_sysclk11_carry__2_i_2_n_0\
    );
\cnt_sysclk11_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(27),
      I1 => cnt_sysclk1(26),
      O => \cnt_sysclk11_carry__2_i_3_n_0\
    );
\cnt_sysclk11_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(30),
      I1 => cnt_sysclk1(31),
      O => \cnt_sysclk11_carry__2_i_4_n_0\
    );
\cnt_sysclk11_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(28),
      I1 => cnt_sysclk1(29),
      O => \cnt_sysclk11_carry__2_i_5_n_0\
    );
\cnt_sysclk11_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk1(26),
      I1 => cnt_sysclk1(27),
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
      I0 => cnt_sysclk1(9),
      I1 => cnt_sysclk1(8),
      O => cnt_sysclk11_carry_i_2_n_0
    );
cnt_sysclk11_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk1(7),
      I1 => cnt_sysclk1(6),
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
      I0 => cnt_sysclk1(6),
      I1 => cnt_sysclk1(7),
      O => cnt_sysclk11_carry_i_5_n_0
    );
cnt_sysclk11_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(5),
      I1 => cnt_sysclk1(4),
      O => cnt_sysclk11_carry_i_6_n_0
    );
cnt_sysclk11_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk1(3),
      I1 => cnt_sysclk1(2),
      O => cnt_sysclk11_carry_i_7_n_0
    );
\cnt_sysclk1[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => cnt_sysclk1(0),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[0]_i_1_n_0\
    );
\cnt_sysclk1[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(10),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[10]_i_1_n_0\
    );
\cnt_sysclk1[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(11),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[11]_i_1_n_0\
    );
\cnt_sysclk1[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(12),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[12]_i_1_n_0\
    );
\cnt_sysclk1[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(13),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[13]_i_1_n_0\
    );
\cnt_sysclk1[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(14),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[14]_i_1_n_0\
    );
\cnt_sysclk1[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(15),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[15]_i_1_n_0\
    );
\cnt_sysclk1[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(16),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[16]_i_1_n_0\
    );
\cnt_sysclk1[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(17),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[17]_i_1_n_0\
    );
\cnt_sysclk1[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(18),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[18]_i_1_n_0\
    );
\cnt_sysclk1[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(19),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[19]_i_1_n_0\
    );
\cnt_sysclk1[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(1),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[1]_i_1_n_0\
    );
\cnt_sysclk1[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(20),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[20]_i_1_n_0\
    );
\cnt_sysclk1[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(21),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[21]_i_1_n_0\
    );
\cnt_sysclk1[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(22),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[22]_i_1_n_0\
    );
\cnt_sysclk1[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(23),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[23]_i_1_n_0\
    );
\cnt_sysclk1[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(24),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[24]_i_1_n_0\
    );
\cnt_sysclk1[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(25),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[25]_i_1_n_0\
    );
\cnt_sysclk1[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(26),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[26]_i_1_n_0\
    );
\cnt_sysclk1[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(27),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[27]_i_1_n_0\
    );
\cnt_sysclk1[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(28),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[28]_i_1_n_0\
    );
\cnt_sysclk1[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(29),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[29]_i_1_n_0\
    );
\cnt_sysclk1[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(2),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[2]_i_1_n_0\
    );
\cnt_sysclk1[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(30),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[30]_i_1_n_0\
    );
\cnt_sysclk1[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(31),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[31]_i_2_n_0\
    );
\cnt_sysclk1[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(3),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[3]_i_1_n_0\
    );
\cnt_sysclk1[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(4),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[4]_i_1_n_0\
    );
\cnt_sysclk1[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(5),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[5]_i_1_n_0\
    );
\cnt_sysclk1[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(6),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[6]_i_1_n_0\
    );
\cnt_sysclk1[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(7),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[7]_i_1_n_0\
    );
\cnt_sysclk1[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(8),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[8]_i_1_n_0\
    );
\cnt_sysclk1[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => cnt_sysclk10(9),
      I1 => \^run_reg_0\,
      I2 => \cnt_sysclk11_carry__2_n_1\,
      O => \cnt_sysclk1[9]_i_1_n_0\
    );
\cnt_sysclk1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[0]_i_1_n_0\,
      Q => cnt_sysclk1(0)
    );
\cnt_sysclk1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[10]_i_1_n_0\,
      Q => cnt_sysclk1(10)
    );
\cnt_sysclk1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[11]_i_1_n_0\,
      Q => cnt_sysclk1(11)
    );
\cnt_sysclk1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[12]_i_1_n_0\,
      Q => cnt_sysclk1(12)
    );
\cnt_sysclk1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[13]_i_1_n_0\,
      Q => cnt_sysclk1(13)
    );
\cnt_sysclk1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[14]_i_1_n_0\,
      Q => cnt_sysclk1(14)
    );
\cnt_sysclk1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[15]_i_1_n_0\,
      Q => cnt_sysclk1(15)
    );
\cnt_sysclk1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[16]_i_1_n_0\,
      Q => cnt_sysclk1(16)
    );
\cnt_sysclk1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[17]_i_1_n_0\,
      Q => cnt_sysclk1(17)
    );
\cnt_sysclk1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[18]_i_1_n_0\,
      Q => cnt_sysclk1(18)
    );
\cnt_sysclk1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[19]_i_1_n_0\,
      Q => cnt_sysclk1(19)
    );
\cnt_sysclk1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[1]_i_1_n_0\,
      Q => cnt_sysclk1(1)
    );
\cnt_sysclk1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[20]_i_1_n_0\,
      Q => cnt_sysclk1(20)
    );
\cnt_sysclk1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[21]_i_1_n_0\,
      Q => cnt_sysclk1(21)
    );
\cnt_sysclk1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[22]_i_1_n_0\,
      Q => cnt_sysclk1(22)
    );
\cnt_sysclk1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[23]_i_1_n_0\,
      Q => cnt_sysclk1(23)
    );
\cnt_sysclk1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[24]_i_1_n_0\,
      Q => cnt_sysclk1(24)
    );
\cnt_sysclk1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[25]_i_1_n_0\,
      Q => cnt_sysclk1(25)
    );
\cnt_sysclk1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[26]_i_1_n_0\,
      Q => cnt_sysclk1(26)
    );
\cnt_sysclk1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[27]_i_1_n_0\,
      Q => cnt_sysclk1(27)
    );
\cnt_sysclk1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[28]_i_1_n_0\,
      Q => cnt_sysclk1(28)
    );
\cnt_sysclk1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[29]_i_1_n_0\,
      Q => cnt_sysclk1(29)
    );
\cnt_sysclk1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[2]_i_1_n_0\,
      Q => cnt_sysclk1(2)
    );
\cnt_sysclk1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[30]_i_1_n_0\,
      Q => cnt_sysclk1(30)
    );
\cnt_sysclk1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[31]_i_2_n_0\,
      Q => cnt_sysclk1(31)
    );
\cnt_sysclk1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[3]_i_1_n_0\,
      Q => cnt_sysclk1(3)
    );
\cnt_sysclk1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[4]_i_1_n_0\,
      Q => cnt_sysclk1(4)
    );
\cnt_sysclk1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[5]_i_1_n_0\,
      Q => cnt_sysclk1(5)
    );
\cnt_sysclk1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[6]_i_1_n_0\,
      Q => cnt_sysclk1(6)
    );
\cnt_sysclk1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[7]_i_1_n_0\,
      Q => cnt_sysclk1(7)
    );
\cnt_sysclk1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
      CLR => \^sr\(0),
      D => \cnt_sysclk1[8]_i_1_n_0\,
      Q => cnt_sysclk1(8)
    );
\cnt_sysclk1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_77,
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
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(0),
      Q => cnt_sysclk2(0)
    );
\cnt_sysclk2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(10),
      Q => cnt_sysclk2(10)
    );
\cnt_sysclk2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(11),
      Q => cnt_sysclk2(11)
    );
\cnt_sysclk2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(12),
      Q => cnt_sysclk2(12)
    );
\cnt_sysclk2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(13),
      Q => cnt_sysclk2(13)
    );
\cnt_sysclk2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(14),
      Q => cnt_sysclk2(14)
    );
\cnt_sysclk2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(15),
      Q => cnt_sysclk2(15)
    );
\cnt_sysclk2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(16),
      Q => cnt_sysclk2(16)
    );
\cnt_sysclk2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(17),
      Q => cnt_sysclk2(17)
    );
\cnt_sysclk2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(18),
      Q => cnt_sysclk2(18)
    );
\cnt_sysclk2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(19),
      Q => cnt_sysclk2(19)
    );
\cnt_sysclk2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(1),
      Q => cnt_sysclk2(1)
    );
\cnt_sysclk2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(20),
      Q => cnt_sysclk2(20)
    );
\cnt_sysclk2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(21),
      Q => cnt_sysclk2(21)
    );
\cnt_sysclk2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(22),
      Q => cnt_sysclk2(22)
    );
\cnt_sysclk2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(23),
      Q => cnt_sysclk2(23)
    );
\cnt_sysclk2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(24),
      Q => cnt_sysclk2(24)
    );
\cnt_sysclk2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(25),
      Q => cnt_sysclk2(25)
    );
\cnt_sysclk2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(26),
      Q => cnt_sysclk2(26)
    );
\cnt_sysclk2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(27),
      Q => cnt_sysclk2(27)
    );
\cnt_sysclk2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(28),
      Q => cnt_sysclk2(28)
    );
\cnt_sysclk2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(29),
      Q => cnt_sysclk2(29)
    );
\cnt_sysclk2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(2),
      Q => cnt_sysclk2(2)
    );
\cnt_sysclk2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(30),
      Q => cnt_sysclk2(30)
    );
\cnt_sysclk2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(31),
      Q => cnt_sysclk2(31)
    );
\cnt_sysclk2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(3),
      Q => cnt_sysclk2(3)
    );
\cnt_sysclk2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => cnt_sysclk2(4)
    );
\cnt_sysclk2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => cnt_sysclk2(5)
    );
\cnt_sysclk2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => cnt_sysclk2(6)
    );
\cnt_sysclk2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => cnt_sysclk2(7)
    );
\cnt_sysclk2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(8),
      Q => cnt_sysclk2(8)
    );
\cnt_sysclk2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_95,
      CLR => \^sr\(0),
      D => p_1_in(9),
      Q => cnt_sysclk2(9)
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
      I1 => csec(2),
      I2 => csec(1),
      I3 => csec(0),
      I4 => csec(3),
      O => \csec[3]_i_1_n_0\
    );
\csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(0),
      I2 => csec(1),
      I3 => csec(2),
      I4 => csec(3),
      I5 => csec(4),
      O => \csec[4]_i_1_n_0\
    );
\csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => csec(5),
      I1 => csec(4),
      I2 => \csec[5]_i_2_n_0\,
      I3 => csec(2),
      I4 => csec(3),
      I5 => \csec[6]_i_3_n_0\,
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
\csec[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => \csec[6]_i_3_n_0\,
      I1 => csec(6),
      I2 => \csec[6]_i_4_n_0\,
      O => \csec[6]_i_2_n_0\
    );
\csec[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => \sec[5]_i_3_n_0\,
      O => \csec[6]_i_3_n_0\
    );
\csec[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => csec(4),
      I1 => csec(0),
      I2 => csec(1),
      I3 => csec(2),
      I4 => csec(3),
      I5 => csec(5),
      O => \csec[6]_i_4_n_0\
    );
\csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_86,
      CLR => \^sr\(0),
      D => \csec[0]_i_1_n_0\,
      Q => csec(0)
    );
\csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_86,
      CLR => \^sr\(0),
      D => \csec[1]_i_1_n_0\,
      Q => csec(1)
    );
\csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_86,
      CLR => \^sr\(0),
      D => \csec[2]_i_1_n_0\,
      Q => csec(2)
    );
\csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_86,
      CLR => \^sr\(0),
      D => \csec[3]_i_1_n_0\,
      Q => csec(3)
    );
\csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_86,
      CLR => \^sr\(0),
      D => \csec[4]_i_1_n_0\,
      Q => csec(4)
    );
\csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_86,
      CLR => \^sr\(0),
      D => \csec[5]_i_1_n_0\,
      Q => csec(5)
    );
\csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_86,
      CLR => \^sr\(0),
      D => \csec[6]_i_2_n_0\,
      Q => csec(6)
    );
diff_csec0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => diff_csec0_carry_n_0,
      CO(2) => diff_csec0_carry_n_1,
      CO(1) => diff_csec0_carry_n_2,
      CO(0) => diff_csec0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => prev_csec(3 downto 0),
      O(3) => diff_csec0_carry_n_4,
      O(2) => diff_csec0_carry_n_5,
      O(1) => diff_csec0_carry_n_6,
      O(0) => diff_csec0_carry_n_7,
      S(3) => diff_csec0_carry_i_1_n_0,
      S(2) => diff_csec0_carry_i_2_n_0,
      S(1) => diff_csec0_carry_i_3_n_0,
      S(0) => diff_csec0_carry_i_4_n_0
    );
\diff_csec0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => diff_csec0_carry_n_0,
      CO(3) => \diff_csec0_carry__0_n_0\,
      CO(2) => \NLW_diff_csec0_carry__0_CO_UNCONNECTED\(2),
      CO(1) => \diff_csec0_carry__0_n_2\,
      CO(0) => \diff_csec0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => prev_csec(6 downto 4),
      O(3) => \NLW_diff_csec0_carry__0_O_UNCONNECTED\(3),
      O(2) => \diff_csec0_carry__0_n_5\,
      O(1) => \diff_csec0_carry__0_n_6\,
      O(0) => \diff_csec0_carry__0_n_7\,
      S(3) => '1',
      S(2) => \diff_csec0_carry__0_i_1_n_0\,
      S(1) => \diff_csec0_carry__0_i_2_n_0\,
      S(0) => \diff_csec0_carry__0_i_3_n_0\
    );
\diff_csec0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(6),
      I1 => tmp_csec(6),
      O => \diff_csec0_carry__0_i_1_n_0\
    );
\diff_csec0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(5),
      I1 => tmp_csec(5),
      O => \diff_csec0_carry__0_i_2_n_0\
    );
\diff_csec0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(4),
      I1 => tmp_csec(4),
      O => \diff_csec0_carry__0_i_3_n_0\
    );
diff_csec0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      O => diff_csec0_carry_i_1_n_0
    );
diff_csec0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(2),
      I1 => tmp_csec(2),
      O => diff_csec0_carry_i_2_n_0
    );
diff_csec0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(1),
      I1 => tmp_csec(1),
      O => diff_csec0_carry_i_3_n_0
    );
diff_csec0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      O => diff_csec0_carry_i_4_n_0
    );
\diff_csec0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec0_inferred__0/i__carry_n_0\,
      CO(2) => \diff_csec0_inferred__0/i__carry_n_1\,
      CO(1) => \diff_csec0_inferred__0/i__carry_n_2\,
      CO(0) => \diff_csec0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => tmp_csec(3 downto 0),
      O(3 downto 0) => diff_csec01_in(3 downto 0),
      S(3) => \i__carry_i_1__6_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__6_n_0\,
      S(0) => \i__carry_i_4__6_n_0\
    );
\diff_csec0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec0_inferred__0/i__carry_n_0\,
      CO(3) => \diff_csec0_inferred__0/i__carry__0_n_0\,
      CO(2) => \NLW_diff_csec0_inferred__0/i__carry__0_CO_UNCONNECTED\(2),
      CO(1) => \diff_csec0_inferred__0/i__carry__0_n_2\,
      CO(0) => \diff_csec0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_csec(6 downto 4),
      O(3) => \NLW_diff_csec0_inferred__0/i__carry__0_O_UNCONNECTED\(3),
      O(2 downto 0) => diff_csec01_in(6 downto 4),
      S(3) => '1',
      S(2) => \i__carry__0_i_1__1_n_0\,
      S(1) => \i__carry__0_i_2__1_n_0\,
      S(0) => \i__carry__0_i_3__3_n_0\
    );
\diff_csec0_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec0_inferred__1/i__carry_n_0\,
      CO(2) => \diff_csec0_inferred__1/i__carry_n_1\,
      CO(1) => \diff_csec0_inferred__1/i__carry_n_2\,
      CO(0) => \diff_csec0_inferred__1/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1__3_n_0\,
      DI(2) => tmp_csec(2),
      DI(1 downto 0) => prev_csec(1 downto 0),
      O(3) => \diff_csec0_inferred__1/i__carry_n_4\,
      O(2) => \diff_csec0_inferred__1/i__carry_n_5\,
      O(1) => \diff_csec0_inferred__1/i__carry_n_6\,
      O(0) => \NLW_diff_csec0_inferred__1/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_2__6_n_0\,
      S(2) => \i__carry_i_3__3_n_0\,
      S(1) => \i__carry_i_4__5_n_0\,
      S(0) => \i__carry_i_5__3_n_0\
    );
\diff_csec0_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec0_inferred__1/i__carry_n_0\,
      CO(3) => \NLW_diff_csec0_inferred__1/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \diff_csec0_inferred__1/i__carry__0_n_1\,
      CO(1) => \diff_csec0_inferred__1/i__carry__0_n_2\,
      CO(0) => \diff_csec0_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1_n_0\,
      DI(1) => \i__carry__0_i_2__0_n_0\,
      DI(0) => \i__carry__0_i_3__0_n_0\,
      O(3) => \diff_csec0_inferred__1/i__carry__0_n_4\,
      O(2) => \diff_csec0_inferred__1/i__carry__0_n_5\,
      O(1) => \diff_csec0_inferred__1/i__carry__0_n_6\,
      O(0) => \diff_csec0_inferred__1/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_4_n_0\,
      S(2) => \i__carry__0_i_5_n_0\,
      S(1) => \i__carry__0_i_6__0_n_0\,
      S(0) => \i__carry__0_i_7_n_0\
    );
\diff_csec0_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_csec0_inferred__2/i__carry_n_0\,
      CO(2) => \diff_csec0_inferred__2/i__carry_n_1\,
      CO(1) => \diff_csec0_inferred__2/i__carry_n_2\,
      CO(0) => \diff_csec0_inferred__2/i__carry_n_3\,
      CYINIT => '1',
      DI(3) => \i__carry_i_1_n_0\,
      DI(2) => prev_csec(2),
      DI(1 downto 0) => tmp_csec(1 downto 0),
      O(3 downto 1) => diff_csec0(3 downto 1),
      O(0) => \NLW_diff_csec0_inferred__2/i__carry_O_UNCONNECTED\(0),
      S(3) => \i__carry_i_2__3_n_0\,
      S(2) => \i__carry_i_3__2_n_0\,
      S(1) => \i__carry_i_4__2_n_0\,
      S(0) => \i__carry_i_5__2_n_0\
    );
\diff_csec0_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_csec0_inferred__2/i__carry_n_0\,
      CO(3) => \NLW_diff_csec0_inferred__2/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \diff_csec0_inferred__2/i__carry__0_n_1\,
      CO(1) => \diff_csec0_inferred__2/i__carry__0_n_2\,
      CO(0) => \diff_csec0_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \i__carry__0_i_1__0_n_0\,
      DI(1) => \i__carry__0_i_2_n_0\,
      DI(0) => \i__carry__0_i_3_n_0\,
      O(3 downto 0) => diff_csec0(7 downto 4),
      S(3) => \i__carry__0_i_4__0_n_0\,
      S(2) => \i__carry__0_i_5__0_n_0\,
      S(1) => \i__carry__0_i_6_n_0\,
      S(0) => \i__carry__0_i_7__0_n_0\
    );
\diff_csec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA8A888A888A88"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[0]_i_2_n_0\,
      I2 => \tmp_sec[7]_i_2_n_0\,
      I3 => \diff_csec[0]_i_3_n_0\,
      I4 => \diff_csec[7]_i_5_n_0\,
      I5 => \diff_csec[0]_i_4_n_0\,
      O => \diff_csec[0]_i_1_n_0\
    );
\diff_csec[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044000000440"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => prev_csec(0),
      I3 => tmp_csec(0),
      I4 => \prev_sec_reg[7]_i_4_n_0\,
      I5 => diff_csec0_carry_n_7,
      O => \diff_csec[0]_i_2_n_0\
    );
\diff_csec[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8BB8"
    )
        port map (
      I0 => diff_csec01_in(0),
      I1 => tmp_sec1_carry_n_0,
      I2 => prev_csec(0),
      I3 => tmp_csec(0),
      O => \diff_csec[0]_i_3_n_0\
    );
\diff_csec[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF1F101010"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec[0]_i_5_n_0\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => diff_csec01_in(0),
      I4 => tmp_sec1_carry_n_0,
      I5 => diff_csec0_carry_n_7,
      O => \diff_csec[0]_i_4_n_0\
    );
\diff_csec[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      O => \diff_csec[0]_i_5_n_0\
    );
\diff_csec[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[1]_i_2_n_0\,
      I2 => \diff_csec[1]_i_3_n_0\,
      I3 => \diff_csec[7]_i_5_n_0\,
      I4 => \diff_csec[1]_i_4_n_0\,
      O => \diff_csec[1]_i_1_n_0\
    );
\diff_csec[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \diff_csec0_inferred__1/i__carry_n_6\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => diff_csec0_carry_n_6,
      O => \diff_csec[1]_i_2_n_0\
    );
\diff_csec[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2E2E200E200"
    )
        port map (
      I0 => diff_csec0(1),
      I1 => tmp_sec1_carry_n_0,
      I2 => diff_csec01_in(1),
      I3 => p_3_in,
      I4 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I5 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_csec[1]_i_3_n_0\
    );
\diff_csec[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec0_inferred__1/i__carry_n_6\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => diff_csec01_in(1),
      I4 => tmp_sec1_carry_n_0,
      I5 => diff_csec0_carry_n_6,
      O => \diff_csec[1]_i_4_n_0\
    );
\diff_csec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[2]_i_2_n_0\,
      I2 => \diff_csec[2]_i_3_n_0\,
      I3 => \diff_csec[2]_i_4_n_0\,
      I4 => \diff_csec[7]_i_5_n_0\,
      I5 => \diff_csec[2]_i_5_n_0\,
      O => \diff_csec[2]_i_1_n_0\
    );
\diff_csec[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA08"
    )
        port map (
      I0 => diff_csec0(2),
      I1 => \tmp_min1_inferred__0/i__carry_n_0\,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => p_3_in,
      I4 => tmp_sec1_carry_n_0,
      O => \diff_csec[2]_i_2_n_0\
    );
\diff_csec[2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888080"
    )
        port map (
      I0 => diff_csec01_in(2),
      I1 => tmp_sec1_carry_n_0,
      I2 => p_3_in,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_csec[2]_i_3_n_0\
    );
\diff_csec[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \diff_csec0_inferred__1/i__carry_n_5\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => diff_csec0_carry_n_5,
      O => \diff_csec[2]_i_4_n_0\
    );
\diff_csec[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec0_inferred__1/i__carry_n_5\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => diff_csec01_in(2),
      I4 => tmp_sec1_carry_n_0,
      I5 => diff_csec0_carry_n_5,
      O => \diff_csec[2]_i_5_n_0\
    );
\diff_csec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[3]_i_2_n_0\,
      I2 => \diff_csec[3]_i_3_n_0\,
      I3 => \diff_csec[7]_i_5_n_0\,
      I4 => \diff_csec[3]_i_4_n_0\,
      O => \diff_csec[3]_i_1_n_0\
    );
\diff_csec[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \diff_csec0_inferred__1/i__carry_n_4\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => diff_csec0_carry_n_4,
      O => \diff_csec[3]_i_2_n_0\
    );
\diff_csec[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2E2E200E200"
    )
        port map (
      I0 => diff_csec0(3),
      I1 => tmp_sec1_carry_n_0,
      I2 => diff_csec01_in(3),
      I3 => p_3_in,
      I4 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I5 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_csec[3]_i_3_n_0\
    );
\diff_csec[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec0_inferred__1/i__carry_n_4\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => diff_csec01_in(3),
      I4 => tmp_sec1_carry_n_0,
      I5 => diff_csec0_carry_n_4,
      O => \diff_csec[3]_i_4_n_0\
    );
\diff_csec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[4]_i_2_n_0\,
      I2 => \diff_csec[4]_i_3_n_0\,
      I3 => \diff_csec[4]_i_4_n_0\,
      I4 => \diff_csec[7]_i_5_n_0\,
      I5 => \diff_csec[4]_i_5_n_0\,
      O => \diff_csec[4]_i_1_n_0\
    );
\diff_csec[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA08"
    )
        port map (
      I0 => diff_csec0(4),
      I1 => \tmp_min1_inferred__0/i__carry_n_0\,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => p_3_in,
      I4 => tmp_sec1_carry_n_0,
      O => \diff_csec[4]_i_2_n_0\
    );
\diff_csec[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888080"
    )
        port map (
      I0 => diff_csec01_in(4),
      I1 => tmp_sec1_carry_n_0,
      I2 => p_3_in,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_csec[4]_i_3_n_0\
    );
\diff_csec[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \diff_csec0_inferred__1/i__carry__0_n_7\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => \diff_csec0_carry__0_n_7\,
      O => \diff_csec[4]_i_4_n_0\
    );
\diff_csec[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec0_inferred__1/i__carry__0_n_7\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => diff_csec01_in(4),
      I4 => tmp_sec1_carry_n_0,
      I5 => \diff_csec0_carry__0_n_7\,
      O => \diff_csec[4]_i_5_n_0\
    );
\diff_csec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA8AAA8"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[5]_i_2_n_0\,
      I2 => \diff_csec[5]_i_3_n_0\,
      I3 => \diff_csec[5]_i_4_n_0\,
      I4 => \diff_csec[7]_i_5_n_0\,
      I5 => \diff_csec[5]_i_5_n_0\,
      O => \diff_csec[5]_i_1_n_0\
    );
\diff_csec[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AA08"
    )
        port map (
      I0 => diff_csec0(5),
      I1 => \tmp_min1_inferred__0/i__carry_n_0\,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => p_3_in,
      I4 => tmp_sec1_carry_n_0,
      O => \diff_csec[5]_i_2_n_0\
    );
\diff_csec[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80888080"
    )
        port map (
      I0 => diff_csec01_in(5),
      I1 => tmp_sec1_carry_n_0,
      I2 => p_3_in,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_csec[5]_i_3_n_0\
    );
\diff_csec[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \diff_csec0_inferred__1/i__carry__0_n_6\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => \diff_csec0_carry__0_n_6\,
      O => \diff_csec[5]_i_4_n_0\
    );
\diff_csec[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec0_inferred__1/i__carry__0_n_6\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => diff_csec01_in(5),
      I4 => tmp_sec1_carry_n_0,
      I5 => \diff_csec0_carry__0_n_6\,
      O => \diff_csec[5]_i_5_n_0\
    );
\diff_csec[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAA8A8A8"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[6]_i_2_n_0\,
      I2 => \diff_csec[6]_i_3_n_0\,
      I3 => \diff_csec[7]_i_5_n_0\,
      I4 => \diff_csec[6]_i_4_n_0\,
      O => \diff_csec[6]_i_1_n_0\
    );
\diff_csec[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44400040"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \diff_csec0_inferred__1/i__carry__0_n_5\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => \diff_csec0_carry__0_n_5\,
      O => \diff_csec[6]_i_2_n_0\
    );
\diff_csec[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E200E2E2E200E200"
    )
        port map (
      I0 => diff_csec0(6),
      I1 => tmp_sec1_carry_n_0,
      I2 => diff_csec01_in(6),
      I3 => p_3_in,
      I4 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I5 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_csec[6]_i_3_n_0\
    );
\diff_csec[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFE0EFEF4F404040"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec0_inferred__1/i__carry__0_n_5\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => diff_csec01_in(6),
      I4 => tmp_sec1_carry_n_0,
      I5 => \diff_csec0_carry__0_n_5\,
      O => \diff_csec[6]_i_4_n_0\
    );
\diff_csec[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAA8A8"
    )
        port map (
      I0 => ed_clear_n_3,
      I1 => \diff_csec[7]_i_2_n_0\,
      I2 => \diff_csec[7]_i_3_n_0\,
      I3 => \diff_csec[7]_i_4_n_0\,
      I4 => \diff_csec[7]_i_5_n_0\,
      O => \diff_csec[7]_i_1_n_0\
    );
\diff_csec[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00404440"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \diff_csec0_inferred__1/i__carry__0_n_4\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => \diff_csec0_carry__0_n_0\,
      O => \diff_csec[7]_i_2_n_0\
    );
\diff_csec[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7400747474007400"
    )
        port map (
      I0 => \diff_csec0_inferred__0/i__carry__0_n_0\,
      I1 => tmp_sec1_carry_n_0,
      I2 => diff_csec0(7),
      I3 => p_3_in,
      I4 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I5 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \diff_csec[7]_i_3_n_0\
    );
\diff_csec[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB0BFBF1F101010"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \diff_csec0_inferred__1/i__carry__0_n_4\,
      I2 => \prev_sec_reg[7]_i_9_n_0\,
      I3 => \diff_csec0_inferred__0/i__carry__0_n_0\,
      I4 => tmp_sec1_carry_n_0,
      I5 => \diff_csec0_carry__0_n_0\,
      O => \diff_csec[7]_i_4_n_0\
    );
\diff_csec[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_min1_inferred__0/i__carry_n_0\,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      O => \diff_csec[7]_i_5_n_0\
    );
\diff_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[0]_i_1_n_0\,
      Q => diff_csec(0)
    );
\diff_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[1]_i_1_n_0\,
      Q => diff_csec(1)
    );
\diff_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[2]_i_1_n_0\,
      Q => diff_csec(2)
    );
\diff_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[3]_i_1_n_0\,
      Q => diff_csec(3)
    );
\diff_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[4]_i_1_n_0\,
      Q => diff_csec(4)
    );
\diff_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[5]_i_1_n_0\,
      Q => diff_csec(5)
    );
\diff_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[6]_i_1_n_0\,
      Q => diff_csec(6)
    );
\diff_csec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \diff_csec[7]_i_1_n_0\,
      Q => diff_csec(7)
    );
diff_min0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => diff_min0_carry_n_0,
      CO(2) => diff_min0_carry_n_1,
      CO(1) => diff_min0_carry_n_2,
      CO(0) => diff_min0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => tmp_min(3 downto 0),
      O(3 downto 0) => data0(3 downto 0),
      S(3) => diff_min0_carry_i_1_n_0,
      S(2) => diff_min0_carry_i_2_n_0,
      S(1) => diff_min0_carry_i_3_n_0,
      S(0) => diff_min0_carry_i_4_n_0
    );
\diff_min0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => diff_min0_carry_n_0,
      CO(3) => \NLW_diff_min0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \diff_min0_carry__0_n_1\,
      CO(1) => \diff_min0_carry__0_n_2\,
      CO(0) => \diff_min0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_min(6 downto 4),
      O(3 downto 0) => data0(7 downto 4),
      S(3) => \diff_min0_carry__0_i_1_n_0\,
      S(2) => \diff_min0_carry__0_i_2_n_0\,
      S(1) => \diff_min0_carry__0_i_3_n_0\,
      S(0) => \diff_min0_carry__0_i_4_n_0\
    );
\diff_min0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(7),
      I1 => prev_min_reg(7),
      O => \diff_min0_carry__0_i_1_n_0\
    );
\diff_min0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(6),
      I1 => prev_min_reg(6),
      O => \diff_min0_carry__0_i_2_n_0\
    );
\diff_min0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(5),
      I1 => prev_min_reg(5),
      O => \diff_min0_carry__0_i_3_n_0\
    );
\diff_min0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(4),
      I1 => prev_min_reg(4),
      O => \diff_min0_carry__0_i_4_n_0\
    );
diff_min0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(3),
      I1 => prev_min_reg(3),
      O => diff_min0_carry_i_1_n_0
    );
diff_min0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(2),
      I1 => prev_min_reg(2),
      O => diff_min0_carry_i_2_n_0
    );
diff_min0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(1),
      I1 => prev_min_reg(1),
      O => diff_min0_carry_i_3_n_0
    );
diff_min0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(0),
      I1 => prev_min_reg(0),
      O => diff_min0_carry_i_4_n_0
    );
\diff_min0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_min0_inferred__0/i__carry_n_0\,
      CO(2) => \diff_min0_inferred__0/i__carry_n_1\,
      CO(1) => \diff_min0_inferred__0/i__carry_n_2\,
      CO(0) => \diff_min0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => prev_min_reg(3 downto 0),
      O(3 downto 0) => data1(3 downto 0),
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
\diff_min0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_min0_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_diff_min0_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \diff_min0_inferred__0/i__carry__0_n_1\,
      CO(1) => \diff_min0_inferred__0/i__carry__0_n_2\,
      CO(0) => \diff_min0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => prev_min_reg(6 downto 4),
      O(3 downto 0) => data1(7 downto 4),
      S(3) => \i__carry__0_i_1__2_n_0\,
      S(2) => \i__carry__0_i_2__2_n_0\,
      S(1) => \i__carry__0_i_3__1_n_0\,
      S(0) => \i__carry__0_i_4__1_n_0\
    );
\diff_min[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFF0F2"
    )
        port map (
      I0 => tmp_sec1_carry_n_0,
      I1 => \prev_sec_reg[7]_i_9_n_0\,
      I2 => p_3_in,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \^tmp_min1_inferred__0/i__carry_0\
    );
\diff_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_37,
      Q => diff_min(0)
    );
\diff_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_36,
      Q => diff_min(1)
    );
\diff_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_35,
      Q => diff_min(2)
    );
\diff_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_34,
      Q => diff_min(3)
    );
\diff_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_33,
      Q => diff_min(4)
    );
\diff_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_32,
      Q => diff_min(5)
    );
\diff_min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_31,
      Q => diff_min(6)
    );
\diff_min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_30,
      Q => diff_min(7)
    );
diff_sec_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => diff_sec_carry_n_0,
      CO(2) => diff_sec_carry_n_1,
      CO(1) => diff_sec_carry_n_2,
      CO(0) => diff_sec_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => tmp_sec(3 downto 0),
      O(3) => diff_sec_carry_n_4,
      O(2) => diff_sec_carry_n_5,
      O(1) => diff_sec_carry_n_6,
      O(0) => diff_sec_carry_n_7,
      S(3) => diff_sec_carry_i_1_n_0,
      S(2) => diff_sec_carry_i_2_n_0,
      S(1) => diff_sec_carry_i_3_n_0,
      S(0) => diff_sec_carry_i_4_n_0
    );
\diff_sec_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => diff_sec_carry_n_0,
      CO(3) => \NLW_diff_sec_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \diff_sec_carry__0_n_1\,
      CO(1) => \diff_sec_carry__0_n_2\,
      CO(0) => \diff_sec_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => tmp_sec(6 downto 4),
      O(3) => \diff_sec_carry__0_n_4\,
      O(2) => \diff_sec_carry__0_n_5\,
      O(1) => \diff_sec_carry__0_n_6\,
      O(0) => \diff_sec_carry__0_n_7\,
      S(3) => \diff_sec_carry__0_i_1_n_0\,
      S(2) => \diff_sec_carry__0_i_2_n_0\,
      S(1) => \diff_sec_carry__0_i_3_n_0\,
      S(0) => \diff_sec_carry__0_i_4_n_0\
    );
\diff_sec_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(7),
      I1 => \prev_sec__0\(7),
      O => \diff_sec_carry__0_i_1_n_0\
    );
\diff_sec_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(6),
      I1 => \prev_sec__0\(6),
      O => \diff_sec_carry__0_i_2_n_0\
    );
\diff_sec_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(5),
      I1 => \prev_sec__0\(5),
      O => \diff_sec_carry__0_i_3_n_0\
    );
\diff_sec_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(4),
      I1 => \prev_sec__0\(4),
      O => \diff_sec_carry__0_i_4_n_0\
    );
diff_sec_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(3),
      I1 => \prev_sec__0\(3),
      O => diff_sec_carry_i_1_n_0
    );
diff_sec_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(2),
      I1 => \prev_sec__0\(2),
      O => diff_sec_carry_i_2_n_0
    );
diff_sec_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(1),
      I1 => \prev_sec__0\(1),
      O => diff_sec_carry_i_3_n_0
    );
diff_sec_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(0),
      I1 => \prev_sec__0\(0),
      O => diff_sec_carry_i_4_n_0
    );
\diff_sec_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \diff_sec_inferred__0/i__carry_n_0\,
      CO(2) => \diff_sec_inferred__0/i__carry_n_1\,
      CO(1) => \diff_sec_inferred__0/i__carry_n_2\,
      CO(0) => \diff_sec_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => \prev_sec__0\(3 downto 0),
      O(3) => \diff_sec_inferred__0/i__carry_n_4\,
      O(2) => \diff_sec_inferred__0/i__carry_n_5\,
      O(1) => \diff_sec_inferred__0/i__carry_n_6\,
      O(0) => \diff_sec_inferred__0/i__carry_n_7\,
      S(3) => \i__carry_i_1__5_n_0\,
      S(2) => \i__carry_i_2__5_n_0\,
      S(1) => \i__carry_i_3__5_n_0\,
      S(0) => \i__carry_i_4__4_n_0\
    );
\diff_sec_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \diff_sec_inferred__0/i__carry_n_0\,
      CO(3) => \NLW_diff_sec_inferred__0/i__carry__0_CO_UNCONNECTED\(3),
      CO(2) => \diff_sec_inferred__0/i__carry__0_n_1\,
      CO(1) => \diff_sec_inferred__0/i__carry__0_n_2\,
      CO(0) => \diff_sec_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \prev_sec__0\(6 downto 4),
      O(3) => \diff_sec_inferred__0/i__carry__0_n_4\,
      O(2) => \diff_sec_inferred__0/i__carry__0_n_5\,
      O(1) => \diff_sec_inferred__0/i__carry__0_n_6\,
      O(0) => \diff_sec_inferred__0/i__carry__0_n_7\,
      S(3) => \i__carry__0_i_1__3_n_0\,
      S(2) => \i__carry__0_i_2__3_n_0\,
      S(1) => \i__carry__0_i_3__2_n_0\,
      S(0) => \i__carry__0_i_4__2_n_0\
    );
\diff_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_45,
      Q => diff_sec(0)
    );
\diff_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_44,
      Q => diff_sec(1)
    );
\diff_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_43,
      Q => diff_sec(2)
    );
\diff_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_42,
      Q => diff_sec(3)
    );
\diff_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_41,
      Q => diff_sec(4)
    );
\diff_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_40,
      Q => diff_sec(5)
    );
\diff_sec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_39,
      Q => diff_sec(6)
    );
\diff_sec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_38,
      Q => diff_sec(7)
    );
ed_clear: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p
     port map (
      AR(0) => \^sr\(0),
      CO(0) => \lap_min1_carry__2_n_1\,
      D(5) => ed_clear_n_5,
      D(4) => ed_clear_n_6,
      D(3) => ed_clear_n_7,
      D(2) => ed_clear_n_8,
      D(1) => ed_clear_n_9,
      D(0) => ed_clear_n_10,
      E(0) => ed_clear_n_4,
      O(3) => \diff_sec_inferred__0/i__carry__0_n_4\,
      O(2) => \diff_sec_inferred__0/i__carry__0_n_5\,
      O(1) => \diff_sec_inferred__0/i__carry__0_n_6\,
      O(0) => \diff_sec_inferred__0/i__carry__0_n_7\,
      Q(0) => Q(1),
      clear_p => clear_p,
      cnt_sysclk20(30 downto 0) => cnt_sysclk20(31 downto 1),
      \cnt_sysclk2_reg[0]\(0) => cnt_sysclk2(0),
      data0(7 downto 0) => data0(7 downto 0),
      data1(7 downto 0) => data1(7 downto 0),
      \diff_min_reg[7]\ => \^tmp_min1_inferred__0/i__carry_0\,
      \diff_sec_reg[3]\(3) => \diff_sec_inferred__0/i__carry_n_4\,
      \diff_sec_reg[3]\(2) => \diff_sec_inferred__0/i__carry_n_5\,
      \diff_sec_reg[3]\(1) => \diff_sec_inferred__0/i__carry_n_6\,
      \diff_sec_reg[3]\(0) => \diff_sec_inferred__0/i__carry_n_7\,
      \diff_sec_reg[3]_0\(3) => diff_sec_carry_n_4,
      \diff_sec_reg[3]_0\(2) => diff_sec_carry_n_5,
      \diff_sec_reg[3]_0\(1) => diff_sec_carry_n_6,
      \diff_sec_reg[3]_0\(0) => diff_sec_carry_n_7,
      \diff_sec_reg[7]\(3) => \diff_sec_carry__0_n_4\,
      \diff_sec_reg[7]\(2) => \diff_sec_carry__0_n_5\,
      \diff_sec_reg[7]\(1) => \diff_sec_carry__0_n_6\,
      \diff_sec_reg[7]\(0) => \diff_sec_carry__0_n_7\,
      ff_cur_reg_0 => ff_cur_reg,
      ff_cur_reg_1(0) => ed_clear_n_12,
      ff_cur_reg_2(0) => ed_clear_n_46,
      ff_cur_reg_3(0) => ed_clear_n_85,
      ff_old_reg_0 => ff_old_reg,
      ff_old_reg_1(0) => ed_clear_n_13,
      ff_old_reg_2(0) => ed_clear_n_55,
      ff_old_reg_3(0) => ed_clear_n_128,
      ff_old_reg_4(0) => ed_clear_n_129,
      \lap_count_reg[0]\ => \lap_count[7]_i_3_n_0\,
      \lap_count_reg[0]_0\ => \lap_count[7]_i_4_n_0\,
      \lap_count_reg[1]\ => \^run_reg_0\,
      \lap_count_reg[4]\ => \lap_count[4]_i_2_n_0\,
      \lap_count_reg[5]\ => \lap_count[5]_i_2_n_0\,
      \lap_count_reg[6]\ => \lap_count[7]_i_5_n_0\,
      \lap_count_reg[7]\(7 downto 0) => lap_count(7 downto 0),
      \lap_csec_reg[5]\ => \lap_csec[5]_i_2_n_0\,
      \lap_csec_reg[6]\(6) => ed_clear_n_56,
      \lap_csec_reg[6]\(5) => ed_clear_n_57,
      \lap_csec_reg[6]\(4) => ed_clear_n_58,
      \lap_csec_reg[6]\(3) => ed_clear_n_59,
      \lap_csec_reg[6]\(2) => ed_clear_n_60,
      \lap_csec_reg[6]\(1) => ed_clear_n_61,
      \lap_csec_reg[6]\(0) => ed_clear_n_62,
      \lap_csec_reg[6]_0\(6) => ed_clear_n_78,
      \lap_csec_reg[6]_0\(5) => ed_clear_n_79,
      \lap_csec_reg[6]_0\(4) => ed_clear_n_80,
      \lap_csec_reg[6]_0\(3) => ed_clear_n_81,
      \lap_csec_reg[6]_0\(2) => ed_clear_n_82,
      \lap_csec_reg[6]_0\(1) => ed_clear_n_83,
      \lap_csec_reg[6]_0\(0) => ed_clear_n_84,
      \lap_csec_reg[6]_1\(6 downto 0) => lap_csec(6 downto 0),
      \lap_csec_reg[6]_2\ => \lap_csec[6]_i_4_n_0\,
      \lap_min_reg[0]\ => \lap_min[5]_i_4_n_0\,
      \lap_min_reg[0]_0\ => \lap_min[5]_i_3_n_0\,
      \lap_min_reg[4]\ => \lap_min[4]_i_2_n_0\,
      \lap_min_reg[5]\ => \lap_min[5]_i_5_n_0\,
      \lap_sec_reg[3]\(5) => ed_clear_n_63,
      \lap_sec_reg[3]\(4) => ed_clear_n_64,
      \lap_sec_reg[3]\(3) => ed_clear_n_65,
      \lap_sec_reg[3]\(2) => ed_clear_n_66,
      \lap_sec_reg[3]\(1) => ed_clear_n_67,
      \lap_sec_reg[3]\(0) => ed_clear_n_68,
      \lap_sec_reg[5]\ => \lap_sec[5]_i_3_n_0\,
      \lap_sec_reg[5]_0\ => \lap_sec[5]_i_5_n_0\,
      \lap_sec_reg[5]_1\ => \lap_sec[5]_i_6_n_0\,
      \min_reg[0]\ => \min[5]_i_3_n_0\,
      p_0_in(1 downto 0) => \^p_0_in\(1 downto 0),
      \prev_min_reg[0]\(0) => p_3_in,
      \prev_min_reg[0]_0\(0) => \tmp_sec1_inferred__0/i__carry_n_0\,
      \prev_min_reg[3]\ => \prev_min[3]_i_2_n_0\,
      \prev_min_reg[4]\ => \prev_min[4]_i_2_n_0\,
      \prev_min_reg[5]\ => \prev_min[5]_i_2_n_0\,
      \prev_min_reg[7]\(7 downto 0) => prev_min_reg(7 downto 0),
      \prev_min_reg[7]_0\ => \prev_min[7]_i_3_n_0\,
      \prev_sec_reg[0]\ => \prev_sec[7]_i_3_n_0\,
      \prev_sec_reg[0]_0\(0) => \prev_sec_reg[7]_i_4_n_0\,
      \prev_sec_reg[0]_1\(0) => \prev_sec_reg[7]_i_5_n_0\,
      \prev_sec_reg[0]_2\ => \prev_sec[7]_i_6_n_0\,
      \prev_sec_reg[2]\ => \prev_sec[2]_i_2_n_0\,
      \prev_sec_reg[5]\ => \prev_sec[5]_i_2_n_0\,
      \prev_sec_reg[5]_0\ => \prev_sec[5]_i_3_n_0\,
      \prev_sec_reg[6]\(6 downto 0) => \prev_sec__0\(6 downto 0),
      \prev_sec_reg[6]_0\ => \prev_sec[6]_i_3_n_0\,
      \prev_sec_reg[6]_1\ => \prev_sec[6]_i_4_n_0\,
      \prev_sec_reg[6]_2\ => \prev_sec[6]_i_5_n_0\,
      \prev_sec_reg[7]\ => \prev_sec[7]_i_7_n_0\,
      run_reg => ed_clear_n_3,
      run_reg_0(7) => ed_clear_n_14,
      run_reg_0(6) => ed_clear_n_15,
      run_reg_0(5) => ed_clear_n_16,
      run_reg_0(4) => ed_clear_n_17,
      run_reg_0(3) => ed_clear_n_18,
      run_reg_0(2) => ed_clear_n_19,
      run_reg_0(1) => ed_clear_n_20,
      run_reg_0(0) => ed_clear_n_21,
      run_reg_1(7) => ed_clear_n_30,
      run_reg_1(6) => ed_clear_n_31,
      run_reg_1(5) => ed_clear_n_32,
      run_reg_1(4) => ed_clear_n_33,
      run_reg_1(3) => ed_clear_n_34,
      run_reg_1(2) => ed_clear_n_35,
      run_reg_1(1) => ed_clear_n_36,
      run_reg_1(0) => ed_clear_n_37,
      run_reg_2(7) => ed_clear_n_38,
      run_reg_2(6) => ed_clear_n_39,
      run_reg_2(5) => ed_clear_n_40,
      run_reg_2(4) => ed_clear_n_41,
      run_reg_2(3) => ed_clear_n_42,
      run_reg_2(2) => ed_clear_n_43,
      run_reg_2(1) => ed_clear_n_44,
      run_reg_2(0) => ed_clear_n_45,
      run_reg_3(7) => ed_clear_n_69,
      run_reg_3(6) => ed_clear_n_70,
      run_reg_3(5) => ed_clear_n_71,
      run_reg_3(4) => ed_clear_n_72,
      run_reg_3(3) => ed_clear_n_73,
      run_reg_3(2) => ed_clear_n_74,
      run_reg_3(1) => ed_clear_n_75,
      run_reg_3(0) => ed_clear_n_76,
      run_reg_4(0) => ed_clear_n_77,
      run_reg_5(0) => ed_clear_n_86,
      run_reg_6(7 downto 0) => \p_0_in__0\(7 downto 0),
      run_reg_7(31 downto 0) => p_1_in(31 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_aresetn_0(0) => ed_clear_n_95,
      \sec_reg[0]\ => \sec[5]_i_3_n_0\,
      \sec_reg[0]_0\(0) => \cnt_sysclk11_carry__2_n_1\,
      \tmp_min_reg[3]\ => \tmp_min[3]_i_2_n_0\,
      \tmp_min_reg[4]\ => \tmp_min[4]_i_2_n_0\,
      \tmp_min_reg[5]\(5 downto 0) => lap_min(5 downto 0),
      \tmp_min_reg[5]_0\ => \tmp_min[5]_i_2_n_0\,
      \tmp_min_reg[5]_1\ => \tmp_min[7]_i_3_n_0\,
      \tmp_min_reg[7]\(7) => ed_clear_n_47,
      \tmp_min_reg[7]\(6) => ed_clear_n_48,
      \tmp_min_reg[7]\(5) => ed_clear_n_49,
      \tmp_min_reg[7]\(4) => ed_clear_n_50,
      \tmp_min_reg[7]\(3) => ed_clear_n_51,
      \tmp_min_reg[7]\(2) => ed_clear_n_52,
      \tmp_min_reg[7]\(1) => ed_clear_n_53,
      \tmp_min_reg[7]\(0) => ed_clear_n_54,
      \tmp_min_reg[7]_0\(7 downto 0) => tmp_min(7 downto 0),
      \tmp_min_reg[7]_1\ => \tmp_min[7]_i_2_n_0\,
      \tmp_sec_reg[0]\ => \tmp_sec[0]_i_2_n_0\,
      \tmp_sec_reg[1]\ => \tmp_sec[1]_i_2_n_0\,
      \tmp_sec_reg[2]\ => \tmp_sec[2]_i_2_n_0\,
      \tmp_sec_reg[3]\ => \tmp_sec[5]_i_2_n_0\,
      \tmp_sec_reg[3]_0\ => \tmp_sec[3]_i_2_n_0\,
      \tmp_sec_reg[3]_1\ => \tmp_sec[3]_i_3_n_0\,
      \tmp_sec_reg[3]_2\(0) => tmp_sec1_carry_n_0,
      \tmp_sec_reg[3]_3\(0) => \tmp_min1_inferred__0/i__carry_n_0\,
      \tmp_sec_reg[4]\ => \^lap_count_reg[1]_0\,
      \tmp_sec_reg[4]_0\ => \tmp_sec[4]_i_2_n_0\,
      \tmp_sec_reg[4]_1\ => \tmp_sec[4]_i_3_n_0\,
      \tmp_sec_reg[5]\(5 downto 0) => lap_sec(5 downto 0),
      \tmp_sec_reg[5]_0\ => \tmp_sec[5]_i_3_n_0\,
      \tmp_sec_reg[5]_1\ => \tmp_sec[5]_i_4_n_0\,
      \tmp_sec_reg[6]\ => \tmp_sec[7]_i_2_n_0\,
      \tmp_sec_reg[6]_0\ => \tmp_sec[7]_i_4_n_0\,
      \tmp_sec_reg[6]_1\ => \tmp_sec[6]_i_2_n_0\,
      \tmp_sec_reg[6]_2\ => \tmp_sec[6]_i_3_n_0\,
      \tmp_sec_reg[7]\(7) => ed_clear_n_22,
      \tmp_sec_reg[7]\(6) => ed_clear_n_23,
      \tmp_sec_reg[7]\(5) => ed_clear_n_24,
      \tmp_sec_reg[7]\(4) => ed_clear_n_25,
      \tmp_sec_reg[7]\(3) => ed_clear_n_26,
      \tmp_sec_reg[7]\(2) => ed_clear_n_27,
      \tmp_sec_reg[7]\(1) => ed_clear_n_28,
      \tmp_sec_reg[7]\(0) => ed_clear_n_29,
      \tmp_sec_reg[7]_0\(7 downto 0) => tmp_sec(7 downto 0),
      \tmp_sec_reg[7]_1\ => \tmp_sec[7]_i_5_n_0\,
      \tmp_sec_reg[7]_2\ => \tmp_sec[7]_i_6_n_0\
    );
ed_start: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_p_0
     port map (
      AR(0) => \^sr\(0),
      Q(0) => Q(0),
      p_0_in(1 downto 0) => \^p_0_in\(1 downto 0),
      s00_axi_aclk => s00_axi_aclk
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => prev_csec(5),
      I1 => tmp_csec(5),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => tmp_csec(5),
      I1 => prev_csec(5),
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(6),
      I1 => prev_csec(6),
      O => \i__carry__0_i_1__1_n_0\
    );
\i__carry__0_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_min(7),
      I1 => prev_min_reg(7),
      O => \i__carry__0_i_1__2_n_0\
    );
\i__carry__0_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_sec(7),
      I1 => \prev_sec__0\(7),
      O => \i__carry__0_i_1__3_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_csec(4),
      I1 => prev_csec(4),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_csec(4),
      I1 => tmp_csec(4),
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(5),
      I1 => prev_csec(5),
      O => \i__carry__0_i_2__1_n_0\
    );
\i__carry__0_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_min_reg(6),
      I1 => tmp_min(6),
      O => \i__carry__0_i_2__2_n_0\
    );
\i__carry__0_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prev_sec__0\(6),
      I1 => tmp_sec(6),
      O => \i__carry__0_i_2__3_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_csec(3),
      I1 => prev_csec(3),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_min_reg(5),
      I1 => tmp_min(5),
      O => \i__carry__0_i_3__1_n_0\
    );
\i__carry__0_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prev_sec__0\(5),
      I1 => tmp_sec(5),
      O => \i__carry__0_i_3__2_n_0\
    );
\i__carry__0_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(4),
      I1 => prev_csec(4),
      O => \i__carry__0_i_3__3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_csec(6),
      I1 => prev_csec(6),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_csec(6),
      I1 => tmp_csec(6),
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__0_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_min_reg(4),
      I1 => tmp_min(4),
      O => \i__carry__0_i_4__1_n_0\
    );
\i__carry__0_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prev_sec__0\(4),
      I1 => tmp_sec(4),
      O => \i__carry__0_i_4__2_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => prev_csec(5),
      I1 => tmp_csec(5),
      I2 => tmp_csec(6),
      I3 => prev_csec(6),
      O => \i__carry__0_i_5_n_0\
    );
\i__carry__0_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D22D"
    )
        port map (
      I0 => prev_csec(5),
      I1 => tmp_csec(5),
      I2 => prev_csec(6),
      I3 => tmp_csec(6),
      O => \i__carry__0_i_5__0_n_0\
    );
\i__carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => prev_csec(5),
      I1 => tmp_csec(5),
      I2 => prev_csec(4),
      I3 => tmp_csec(4),
      O => \i__carry__0_i_6_n_0\
    );
\i__carry__0_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6966"
    )
        port map (
      I0 => tmp_csec(5),
      I1 => prev_csec(5),
      I2 => tmp_csec(4),
      I3 => prev_csec(4),
      O => \i__carry__0_i_6__0_n_0\
    );
\i__carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => tmp_csec(3),
      I1 => prev_csec(3),
      I2 => tmp_csec(4),
      I3 => prev_csec(4),
      O => \i__carry__0_i_7_n_0\
    );
\i__carry__0_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B44B"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      I2 => prev_csec(4),
      I3 => tmp_csec(4),
      O => \i__carry__0_i_7__0_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => prev_csec(2),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_sec(6),
      I1 => \prev_sec__0\(6),
      I2 => \prev_sec__0\(7),
      I3 => tmp_sec(7),
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_min(6),
      I1 => prev_min_reg(6),
      I2 => prev_min_reg(7),
      I3 => tmp_min(7),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_min_reg(6),
      I1 => tmp_min(6),
      I2 => tmp_min(7),
      I3 => prev_min_reg(7),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tmp_csec(2),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_min_reg(3),
      I1 => tmp_min(3),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_1__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prev_sec__0\(3),
      I1 => tmp_sec(3),
      O => \i__carry_i_1__5_n_0\
    );
\i__carry_i_1__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(3),
      I1 => prev_csec(3),
      O => \i__carry_i_1__6_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_sec(4),
      I1 => \prev_sec__0\(4),
      I2 => \prev_sec__0\(5),
      I3 => tmp_sec(5),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_min(4),
      I1 => prev_min_reg(4),
      I2 => prev_min_reg(5),
      I3 => tmp_min(5),
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_min_reg(4),
      I1 => tmp_min(4),
      I2 => tmp_min(5),
      I3 => prev_min_reg(5),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(2),
      I1 => tmp_csec(2),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => prev_csec(2),
      I1 => prev_csec(3),
      I2 => tmp_csec(3),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_min_reg(2),
      I1 => tmp_min(2),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_2__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => tmp_sec(2),
      O => \i__carry_i_2__5_n_0\
    );
\i__carry_i_2__6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => tmp_csec(2),
      I1 => tmp_csec(3),
      I2 => prev_csec(3),
      O => \i__carry_i_2__6_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_sec(2),
      I1 => \prev_sec__0\(2),
      I2 => \prev_sec__0\(3),
      I3 => tmp_sec(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_min(2),
      I1 => prev_min_reg(2),
      I2 => prev_min_reg(3),
      I3 => tmp_min(3),
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_min_reg(2),
      I1 => tmp_min(2),
      I2 => tmp_min(3),
      I3 => prev_min_reg(3),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(2),
      I1 => prev_csec(2),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => tmp_csec(2),
      I1 => prev_csec(2),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_min_reg(1),
      I1 => tmp_min(1),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_3__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prev_sec__0\(1),
      I1 => tmp_sec(1),
      O => \i__carry_i_3__5_n_0\
    );
\i__carry_i_3__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(1),
      I1 => prev_csec(1),
      O => \i__carry_i_3__6_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_sec(0),
      I1 => \prev_sec__0\(0),
      I2 => \prev_sec__0\(1),
      I3 => tmp_sec(1),
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_min(0),
      I1 => prev_min_reg(0),
      I2 => prev_min_reg(1),
      I3 => tmp_min(1),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_min_reg(0),
      I1 => tmp_min(0),
      I2 => tmp_min(1),
      I3 => prev_min_reg(1),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(1),
      I1 => prev_csec(1),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_min_reg(0),
      I1 => tmp_min(0),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_4__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \prev_sec__0\(0),
      I1 => tmp_sec(0),
      O => \i__carry_i_4__4_n_0\
    );
\i__carry_i_4__5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(1),
      I1 => tmp_csec(1),
      O => \i__carry_i_4__5_n_0\
    );
\i__carry_i_4__6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(0),
      I1 => prev_csec(0),
      O => \i__carry_i_4__6_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(6),
      I1 => tmp_min(6),
      I2 => tmp_min(7),
      I3 => prev_min_reg(7),
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(6),
      I1 => tmp_sec(6),
      I2 => tmp_sec(7),
      I3 => \prev_sec__0\(7),
      O => \i__carry_i_5__0_n_0\
    );
\i__carry_i_5__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(6),
      I1 => tmp_min(6),
      I2 => tmp_min(7),
      I3 => prev_min_reg(7),
      O => \i__carry_i_5__1_n_0\
    );
\i__carry_i_5__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(0),
      I1 => prev_csec(0),
      O => \i__carry_i_5__2_n_0\
    );
\i__carry_i_5__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      O => \i__carry_i_5__3_n_0\
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(4),
      I1 => tmp_min(4),
      I2 => tmp_min(5),
      I3 => prev_min_reg(5),
      O => \i__carry_i_6_n_0\
    );
\i__carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(4),
      I1 => tmp_sec(4),
      I2 => tmp_sec(5),
      I3 => \prev_sec__0\(5),
      O => \i__carry_i_6__0_n_0\
    );
\i__carry_i_6__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(4),
      I1 => tmp_min(4),
      I2 => tmp_min(5),
      I3 => prev_min_reg(5),
      O => \i__carry_i_6__1_n_0\
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(2),
      I1 => tmp_min(2),
      I2 => tmp_min(3),
      I3 => prev_min_reg(3),
      O => \i__carry_i_7_n_0\
    );
\i__carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => tmp_sec(2),
      I2 => tmp_sec(3),
      I3 => \prev_sec__0\(3),
      O => \i__carry_i_7__0_n_0\
    );
\i__carry_i_7__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(2),
      I1 => tmp_min(2),
      I2 => tmp_min(3),
      I3 => prev_min_reg(3),
      O => \i__carry_i_7__1_n_0\
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(0),
      I1 => tmp_min(0),
      I2 => tmp_min(1),
      I3 => prev_min_reg(1),
      O => \i__carry_i_8_n_0\
    );
\i__carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(0),
      I1 => tmp_sec(0),
      I2 => tmp_sec(1),
      I3 => \prev_sec__0\(1),
      O => \i__carry_i_8__0_n_0\
    );
\i__carry_i_8__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_min_reg(0),
      I1 => tmp_min(0),
      I2 => tmp_min(1),
      I3 => prev_min_reg(1),
      O => \i__carry_i_8__1_n_0\
    );
\lap_count[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => lap_count(0),
      I1 => lap_count(1),
      O => \lap_count[4]_i_2_n_0\
    );
\lap_count[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => lap_count(3),
      I1 => lap_count(1),
      I2 => lap_count(0),
      I3 => lap_count(2),
      I4 => lap_count(4),
      O => \lap_count[5]_i_2_n_0\
    );
\lap_count[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lap_count(4),
      I1 => lap_count(5),
      I2 => lap_count(7),
      I3 => lap_count(6),
      O => \lap_count[7]_i_3_n_0\
    );
\lap_count[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => lap_count(3),
      I1 => lap_count(2),
      I2 => lap_count(1),
      I3 => lap_count(0),
      O => \lap_count[7]_i_4_n_0\
    );
\lap_count[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => lap_count(5),
      I1 => lap_count(4),
      I2 => lap_count(2),
      I3 => lap_count(0),
      I4 => lap_count(1),
      I5 => lap_count(3),
      O => \lap_count[7]_i_5_n_0\
    );
\lap_count_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_21,
      Q => lap_count(0)
    );
\lap_count_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_20,
      Q => lap_count(1)
    );
\lap_count_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_19,
      Q => lap_count(2)
    );
\lap_count_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_18,
      Q => lap_count(3)
    );
\lap_count_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_17,
      Q => lap_count(4)
    );
\lap_count_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_16,
      Q => lap_count(5)
    );
\lap_count_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_15,
      Q => lap_count(6)
    );
\lap_count_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_13,
      CLR => \^sr\(0),
      D => ed_clear_n_14,
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
\lap_csec[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => lap_csec(4),
      I1 => lap_csec(0),
      I2 => lap_csec(1),
      I3 => lap_csec(2),
      I4 => lap_csec(3),
      I5 => lap_csec(5),
      O => \lap_csec[6]_i_4_n_0\
    );
\lap_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_128,
      CLR => \^sr\(0),
      D => ed_clear_n_62,
      Q => lap_csec(0)
    );
\lap_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_128,
      CLR => \^sr\(0),
      D => ed_clear_n_61,
      Q => lap_csec(1)
    );
\lap_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_128,
      CLR => \^sr\(0),
      D => ed_clear_n_60,
      Q => lap_csec(2)
    );
\lap_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_128,
      CLR => \^sr\(0),
      D => ed_clear_n_59,
      Q => lap_csec(3)
    );
\lap_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_128,
      CLR => \^sr\(0),
      D => ed_clear_n_58,
      Q => lap_csec(4)
    );
\lap_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_128,
      CLR => \^sr\(0),
      D => ed_clear_n_57,
      Q => lap_csec(5)
    );
\lap_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_128,
      CLR => \^sr\(0),
      D => ed_clear_n_56,
      Q => lap_csec(6)
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
      I0 => cnt_sysclk2(13),
      I1 => cnt_sysclk2(12),
      O => \lap_min1_carry__0_i_1_n_0\
    );
\lap_min1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(11),
      I1 => cnt_sysclk2(10),
      O => \lap_min1_carry__0_i_2_n_0\
    );
\lap_min1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(17),
      I1 => cnt_sysclk2(16),
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
      I0 => cnt_sysclk2(12),
      I1 => cnt_sysclk2(13),
      O => \lap_min1_carry__0_i_5_n_0\
    );
\lap_min1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(10),
      I1 => cnt_sysclk2(11),
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
      I0 => cnt_sysclk2(25),
      I1 => cnt_sysclk2(24),
      O => \lap_min1_carry__1_i_1_n_0\
    );
\lap_min1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(23),
      I1 => cnt_sysclk2(22),
      O => \lap_min1_carry__1_i_2_n_0\
    );
\lap_min1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(21),
      I1 => cnt_sysclk2(20),
      O => \lap_min1_carry__1_i_3_n_0\
    );
\lap_min1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(24),
      I1 => cnt_sysclk2(25),
      O => \lap_min1_carry__1_i_4_n_0\
    );
\lap_min1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(22),
      I1 => cnt_sysclk2(23),
      O => \lap_min1_carry__1_i_5_n_0\
    );
\lap_min1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(20),
      I1 => cnt_sysclk2(21),
      O => \lap_min1_carry__1_i_6_n_0\
    );
\lap_min1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(19),
      I1 => cnt_sysclk2(18),
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
      I0 => cnt_sysclk2(29),
      I1 => cnt_sysclk2(28),
      O => \lap_min1_carry__2_i_2_n_0\
    );
\lap_min1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(27),
      I1 => cnt_sysclk2(26),
      O => \lap_min1_carry__2_i_3_n_0\
    );
\lap_min1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(30),
      I1 => cnt_sysclk2(31),
      O => \lap_min1_carry__2_i_4_n_0\
    );
\lap_min1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(28),
      I1 => cnt_sysclk2(29),
      O => \lap_min1_carry__2_i_5_n_0\
    );
\lap_min1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk2(26),
      I1 => cnt_sysclk2(27),
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
      I0 => cnt_sysclk2(9),
      I1 => cnt_sysclk2(8),
      O => lap_min1_carry_i_2_n_0
    );
lap_min1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk2(7),
      I1 => cnt_sysclk2(6),
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
      I0 => cnt_sysclk2(6),
      I1 => cnt_sysclk2(7),
      O => lap_min1_carry_i_5_n_0
    );
lap_min1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(5),
      I1 => cnt_sysclk2(4),
      O => lap_min1_carry_i_6_n_0
    );
lap_min1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk2(3),
      I1 => cnt_sysclk2(2),
      O => lap_min1_carry_i_7_n_0
    );
\lap_min[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => lap_min(2),
      I1 => lap_min(1),
      I2 => lap_min(0),
      O => \lap_min[4]_i_2_n_0\
    );
\lap_min[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => lap_min(0),
      I1 => lap_min(1),
      I2 => lap_min(2),
      I3 => lap_min(4),
      I4 => lap_min(3),
      I5 => lap_min(5),
      O => \lap_min[5]_i_3_n_0\
    );
\lap_min[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \lap_sec[5]_i_6_n_0\,
      I1 => \^run_reg_0\,
      I2 => \lap_min1_carry__2_n_1\,
      I3 => \lap_sec[5]_i_3_n_0\,
      O => \lap_min[5]_i_4_n_0\
    );
\lap_min[5]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => lap_min(3),
      I1 => lap_min(0),
      I2 => lap_min(1),
      I3 => lap_min(2),
      O => \lap_min[5]_i_5_n_0\
    );
\lap_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_129,
      CLR => \^sr\(0),
      D => ed_clear_n_10,
      Q => lap_min(0)
    );
\lap_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_129,
      CLR => \^sr\(0),
      D => ed_clear_n_9,
      Q => lap_min(1)
    );
\lap_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_129,
      CLR => \^sr\(0),
      D => ed_clear_n_8,
      Q => lap_min(2)
    );
\lap_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_129,
      CLR => \^sr\(0),
      D => ed_clear_n_7,
      Q => lap_min(3)
    );
\lap_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_129,
      CLR => \^sr\(0),
      D => ed_clear_n_6,
      Q => lap_min(4)
    );
\lap_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_129,
      CLR => \^sr\(0),
      D => ed_clear_n_5,
      Q => lap_min(5)
    );
\lap_sec[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777F"
    )
        port map (
      I0 => lap_csec(5),
      I1 => lap_csec(6),
      I2 => lap_csec(2),
      I3 => \lap_csec[5]_i_2_n_0\,
      I4 => lap_csec(4),
      I5 => lap_csec(3),
      O => \lap_sec[5]_i_3_n_0\
    );
\lap_sec[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => lap_sec(2),
      I1 => lap_sec(1),
      I2 => lap_sec(0),
      O => \lap_sec[5]_i_5_n_0\
    );
\lap_sec[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => lap_sec(0),
      I1 => lap_sec(1),
      I2 => lap_sec(2),
      I3 => lap_sec(5),
      I4 => lap_sec(4),
      I5 => lap_sec(3),
      O => \lap_sec[5]_i_6_n_0\
    );
\lap_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_68,
      Q => lap_sec(0)
    );
\lap_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_67,
      Q => lap_sec(1)
    );
\lap_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_66,
      Q => lap_sec(2)
    );
\lap_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_65,
      Q => lap_sec(3)
    );
\lap_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_64,
      Q => lap_sec(4)
    );
\lap_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_4,
      CLR => \^sr\(0),
      D => ed_clear_n_63,
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
      INIT => X"2888"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(2),
      I2 => min(1),
      I3 => min(0),
      O => \min[2]_i_1_n_0\
    );
\min[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(2),
      I2 => min(1),
      I3 => min(0),
      I4 => min(3),
      O => \min[3]_i_1_n_0\
    );
\min[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \min[4]_i_2_n_0\,
      I1 => min(0),
      I2 => min(1),
      I3 => min(2),
      I4 => min(3),
      I5 => min(4),
      O => \min[4]_i_1_n_0\
    );
\min[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAAAAAA"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => min(3),
      I2 => min(4),
      I3 => min(5),
      I4 => \min[4]_i_3_n_0\,
      O => \min[4]_i_2_n_0\
    );
\min[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => min(2),
      I1 => min(1),
      I2 => min(0),
      O => \min[4]_i_3_n_0\
    );
\min[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A2A2AAA80000000"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => min(3),
      I2 => min(4),
      I3 => \min[5]_i_4_n_0\,
      I4 => min(2),
      I5 => min(5),
      O => \min[5]_i_2_n_0\
    );
\min[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F800000000000000"
    )
        port map (
      I0 => sec(0),
      I1 => sec(1),
      I2 => sec(2),
      I3 => sec(4),
      I4 => sec(3),
      I5 => sec(5),
      O => \min[5]_i_3_n_0\
    );
\min[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => min(0),
      I1 => min(1),
      O => \min[5]_i_4_n_0\
    );
\min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \min[0]_i_1_n_0\,
      Q => min(0)
    );
\min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \min[1]_i_1_n_0\,
      Q => min(1)
    );
\min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \min[2]_i_1_n_0\,
      Q => min(2)
    );
\min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \min[3]_i_1_n_0\,
      Q => min(3)
    );
\min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \min[4]_i_1_n_0\,
      Q => min(4)
    );
\min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_12,
      CLR => \^sr\(0),
      D => \min[5]_i_2_n_0\,
      Q => min(5)
    );
\prev_csec[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => tmp_csec(0),
      O => \prev_csec[0]_i_1_n_0\
    );
\prev_csec[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => tmp_csec(1),
      O => \prev_csec[1]_i_1_n_0\
    );
\prev_csec[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => tmp_csec(2),
      O => \prev_csec[2]_i_1_n_0\
    );
\prev_csec[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => tmp_csec(3),
      O => \prev_csec[3]_i_1_n_0\
    );
\prev_csec[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => tmp_csec(4),
      O => \prev_csec[4]_i_1_n_0\
    );
\prev_csec[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => tmp_csec(5),
      O => \prev_csec[5]_i_1_n_0\
    );
\prev_csec[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => tmp_csec(6),
      O => \prev_csec[6]_i_2_n_0\
    );
\prev_csec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => clear_p,
      CLR => \^sr\(0),
      D => \prev_csec[0]_i_1_n_0\,
      Q => prev_csec(0)
    );
\prev_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => clear_p,
      CLR => \^sr\(0),
      D => \prev_csec[1]_i_1_n_0\,
      Q => prev_csec(1)
    );
\prev_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => clear_p,
      CLR => \^sr\(0),
      D => \prev_csec[2]_i_1_n_0\,
      Q => prev_csec(2)
    );
\prev_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => clear_p,
      CLR => \^sr\(0),
      D => \prev_csec[3]_i_1_n_0\,
      Q => prev_csec(3)
    );
\prev_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => clear_p,
      CLR => \^sr\(0),
      D => \prev_csec[4]_i_1_n_0\,
      Q => prev_csec(4)
    );
\prev_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => clear_p,
      CLR => \^sr\(0),
      D => \prev_csec[5]_i_1_n_0\,
      Q => prev_csec(5)
    );
\prev_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => clear_p,
      CLR => \^sr\(0),
      D => \prev_csec[6]_i_2_n_0\,
      Q => prev_csec(6)
    );
\prev_min[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => prev_min_reg(2),
      I1 => prev_min_reg(1),
      I2 => prev_min_reg(0),
      O => \prev_min[3]_i_2_n_0\
    );
\prev_min[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => prev_min_reg(3),
      I1 => prev_min_reg(0),
      I2 => prev_min_reg(1),
      I3 => prev_min_reg(2),
      O => \prev_min[4]_i_2_n_0\
    );
\prev_min[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => prev_min_reg(4),
      I1 => prev_min_reg(2),
      I2 => prev_min_reg(1),
      I3 => prev_min_reg(0),
      I4 => prev_min_reg(3),
      O => \prev_min[5]_i_2_n_0\
    );
\prev_min[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => prev_min_reg(5),
      I1 => prev_min_reg(3),
      I2 => prev_min_reg(0),
      I3 => prev_min_reg(1),
      I4 => prev_min_reg(2),
      I5 => prev_min_reg(4),
      O => \prev_min[7]_i_3_n_0\
    );
\prev_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(0),
      Q => prev_min_reg(0)
    );
\prev_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(1),
      Q => prev_min_reg(1)
    );
\prev_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(2),
      Q => prev_min_reg(2)
    );
\prev_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(3),
      Q => prev_min_reg(3)
    );
\prev_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(4),
      Q => prev_min_reg(4)
    );
\prev_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(5),
      Q => prev_min_reg(5)
    );
\prev_min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(6),
      Q => prev_min_reg(6)
    );
\prev_min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_55,
      CLR => \^sr\(0),
      D => \p_0_in__0\(7),
      Q => prev_min_reg(7)
    );
\prev_sec[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0EEEEEE"
    )
        port map (
      I0 => \prev_sec__0\(1),
      I1 => \prev_sec__0\(0),
      I2 => \prev_sec_reg[7]_i_5_n_0\,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => \prev_sec_reg[7]_i_4_n_0\,
      O => \prev_sec[2]_i_2_n_0\
    );
\prev_sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFBFFFBFAAAA"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => \prev_sec_reg[7]_i_4_n_0\,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => \prev_sec_reg[7]_i_5_n_0\,
      I4 => \prev_sec__0\(0),
      I5 => \prev_sec__0\(1),
      O => \prev_sec[5]_i_2_n_0\
    );
\prev_sec[5]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \prev_sec__0\(3),
      I1 => \prev_sec__0\(4),
      O => \prev_sec[5]_i_3_n_0\
    );
\prev_sec[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \prev_sec__0\(4),
      I1 => \prev_sec__0\(3),
      I2 => \prev_sec__0\(5),
      I3 => \prev_sec__0\(2),
      O => \prev_sec[6]_i_3_n_0\
    );
\prev_sec[6]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_4_n_0\,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => \prev_sec_reg[7]_i_5_n_0\,
      O => \prev_sec[6]_i_4_n_0\
    );
\prev_sec[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => \prev_sec__0\(5),
      I2 => \prev_sec__0\(3),
      I3 => \prev_sec__0\(4),
      I4 => \prev_sec__0\(1),
      I5 => \prev_sec__0\(0),
      O => \prev_sec[6]_i_5_n_0\
    );
\prev_sec[7]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_csec(6),
      I1 => tmp_csec(6),
      O => \prev_sec[7]_i_10_n_0\
    );
\prev_sec[7]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_csec(4),
      I1 => tmp_csec(4),
      I2 => tmp_csec(5),
      I3 => prev_csec(5),
      O => \prev_sec[7]_i_11_n_0\
    );
\prev_sec[7]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      I2 => tmp_csec(2),
      I3 => prev_csec(2),
      O => \prev_sec[7]_i_12_n_0\
    );
\prev_sec[7]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      I2 => tmp_csec(1),
      I3 => prev_csec(1),
      O => \prev_sec[7]_i_13_n_0\
    );
\prev_sec[7]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(6),
      I1 => prev_csec(6),
      O => \prev_sec[7]_i_14_n_0\
    );
\prev_sec[7]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(4),
      I1 => tmp_csec(4),
      I2 => tmp_csec(5),
      I3 => prev_csec(5),
      O => \prev_sec[7]_i_15_n_0\
    );
\prev_sec[7]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      I2 => tmp_csec(2),
      I3 => prev_csec(2),
      O => \prev_sec[7]_i_16_n_0\
    );
\prev_sec[7]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      I2 => tmp_csec(1),
      I3 => prev_csec(1),
      O => \prev_sec[7]_i_17_n_0\
    );
\prev_sec[7]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(6),
      I1 => tmp_sec(6),
      I2 => tmp_sec(7),
      I3 => \prev_sec__0\(7),
      O => \prev_sec[7]_i_18_n_0\
    );
\prev_sec[7]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(4),
      I1 => tmp_sec(4),
      I2 => tmp_sec(5),
      I3 => \prev_sec__0\(5),
      O => \prev_sec[7]_i_19_n_0\
    );
\prev_sec[7]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => tmp_sec(2),
      I2 => tmp_sec(3),
      I3 => \prev_sec__0\(3),
      O => \prev_sec[7]_i_20_n_0\
    );
\prev_sec[7]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(0),
      I1 => tmp_sec(0),
      I2 => tmp_sec(1),
      I3 => \prev_sec__0\(1),
      O => \prev_sec[7]_i_21_n_0\
    );
\prev_sec[7]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(6),
      I1 => tmp_sec(6),
      I2 => tmp_sec(7),
      I3 => \prev_sec__0\(7),
      O => \prev_sec[7]_i_22_n_0\
    );
\prev_sec[7]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(4),
      I1 => tmp_sec(4),
      I2 => tmp_sec(5),
      I3 => \prev_sec__0\(5),
      O => \prev_sec[7]_i_23_n_0\
    );
\prev_sec[7]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => tmp_sec(2),
      I2 => tmp_sec(3),
      I3 => \prev_sec__0\(3),
      O => \prev_sec[7]_i_24_n_0\
    );
\prev_sec[7]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(0),
      I1 => tmp_sec(0),
      I2 => tmp_sec(1),
      I3 => \prev_sec__0\(1),
      O => \prev_sec[7]_i_25_n_0\
    );
\prev_sec[7]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \prev_sec__0\(0),
      I1 => \prev_sec__0\(1),
      I2 => \prev_sec[6]_i_3_n_0\,
      I3 => \prev_sec__0\(6),
      O => \prev_sec[7]_i_26_n_0\
    );
\prev_sec[7]_i_27\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => \prev_sec__0\(6),
      I1 => \prev_sec__0\(2),
      I2 => \prev_sec__0\(5),
      I3 => \prev_sec__0\(3),
      I4 => \prev_sec__0\(4),
      O => \prev_sec[7]_i_27_n_0\
    );
\prev_sec[7]_i_28\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => prev_csec(6),
      I1 => tmp_csec(6),
      O => \prev_sec[7]_i_28_n_0\
    );
\prev_sec[7]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_csec(4),
      I1 => tmp_csec(4),
      I2 => tmp_csec(5),
      I3 => prev_csec(5),
      O => \prev_sec[7]_i_29_n_0\
    );
\prev_sec[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => \prev_sec_reg[7]_i_8_n_0\,
      I1 => \prev_sec_reg[7]_i_9_n_0\,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => \tmp_min1_inferred__0/i__carry_n_0\,
      I4 => p_3_in,
      O => \prev_sec[7]_i_3_n_0\
    );
\prev_sec[7]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      I2 => tmp_csec(2),
      I3 => prev_csec(2),
      O => \prev_sec[7]_i_30_n_0\
    );
\prev_sec[7]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      I2 => tmp_csec(1),
      I3 => prev_csec(1),
      O => \prev_sec[7]_i_31_n_0\
    );
\prev_sec[7]_i_32\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => tmp_csec(6),
      I1 => prev_csec(6),
      O => \prev_sec[7]_i_32_n_0\
    );
\prev_sec[7]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(4),
      I1 => tmp_csec(4),
      I2 => tmp_csec(5),
      I3 => prev_csec(5),
      O => \prev_sec[7]_i_33_n_0\
    );
\prev_sec[7]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      I2 => tmp_csec(2),
      I3 => prev_csec(2),
      O => \prev_sec[7]_i_34_n_0\
    );
\prev_sec[7]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      I2 => tmp_csec(1),
      I3 => prev_csec(1),
      O => \prev_sec[7]_i_35_n_0\
    );
\prev_sec[7]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(6),
      I1 => tmp_sec(6),
      I2 => tmp_sec(7),
      I3 => \prev_sec__0\(7),
      O => \prev_sec[7]_i_36_n_0\
    );
\prev_sec[7]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(4),
      I1 => tmp_sec(4),
      I2 => tmp_sec(5),
      I3 => \prev_sec__0\(5),
      O => \prev_sec[7]_i_37_n_0\
    );
\prev_sec[7]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => tmp_sec(2),
      I2 => tmp_sec(3),
      I3 => \prev_sec__0\(3),
      O => \prev_sec[7]_i_38_n_0\
    );
\prev_sec[7]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => \prev_sec__0\(0),
      I1 => tmp_sec(0),
      I2 => tmp_sec(1),
      I3 => \prev_sec__0\(1),
      O => \prev_sec[7]_i_39_n_0\
    );
\prev_sec[7]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(6),
      I1 => tmp_sec(6),
      I2 => tmp_sec(7),
      I3 => \prev_sec__0\(7),
      O => \prev_sec[7]_i_40_n_0\
    );
\prev_sec[7]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(4),
      I1 => tmp_sec(4),
      I2 => tmp_sec(5),
      I3 => \prev_sec__0\(5),
      O => \prev_sec[7]_i_41_n_0\
    );
\prev_sec[7]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(2),
      I1 => tmp_sec(2),
      I2 => tmp_sec(3),
      I3 => \prev_sec__0\(3),
      O => \prev_sec[7]_i_42_n_0\
    );
\prev_sec[7]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \prev_sec__0\(0),
      I1 => tmp_sec(0),
      I2 => tmp_sec(1),
      I3 => \prev_sec__0\(1),
      O => \prev_sec[7]_i_43_n_0\
    );
\prev_sec[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I1 => p_3_in,
      O => \prev_sec[7]_i_6_n_0\
    );
\prev_sec[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4555BAAA75558AAA"
    )
        port map (
      I0 => \prev_sec[7]_i_26_n_0\,
      I1 => \prev_sec_reg[7]_i_5_n_0\,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => \prev_sec_reg[7]_i_4_n_0\,
      I4 => \prev_sec__0\(7),
      I5 => \prev_sec[7]_i_27_n_0\,
      O => \prev_sec[7]_i_7_n_0\
    );
\prev_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_76,
      Q => \prev_sec__0\(0)
    );
\prev_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_75,
      Q => \prev_sec__0\(1)
    );
\prev_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_74,
      Q => \prev_sec__0\(2)
    );
\prev_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_73,
      Q => \prev_sec__0\(3)
    );
\prev_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_72,
      Q => \prev_sec__0\(4)
    );
\prev_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_71,
      Q => \prev_sec__0\(5)
    );
\prev_sec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_70,
      Q => \prev_sec__0\(6)
    );
\prev_sec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_46,
      CLR => \^sr\(0),
      D => ed_clear_n_69,
      Q => \prev_sec__0\(7)
    );
\prev_sec_reg[7]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prev_sec_reg[7]_i_4_n_0\,
      CO(2) => \prev_sec_reg[7]_i_4_n_1\,
      CO(1) => \prev_sec_reg[7]_i_4_n_2\,
      CO(0) => \prev_sec_reg[7]_i_4_n_3\,
      CYINIT => '1',
      DI(3) => \prev_sec[7]_i_10_n_0\,
      DI(2) => \prev_sec[7]_i_11_n_0\,
      DI(1) => \prev_sec[7]_i_12_n_0\,
      DI(0) => \prev_sec[7]_i_13_n_0\,
      O(3 downto 0) => \NLW_prev_sec_reg[7]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \prev_sec[7]_i_14_n_0\,
      S(2) => \prev_sec[7]_i_15_n_0\,
      S(1) => \prev_sec[7]_i_16_n_0\,
      S(0) => \prev_sec[7]_i_17_n_0\
    );
\prev_sec_reg[7]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prev_sec_reg[7]_i_5_n_0\,
      CO(2) => \prev_sec_reg[7]_i_5_n_1\,
      CO(1) => \prev_sec_reg[7]_i_5_n_2\,
      CO(0) => \prev_sec_reg[7]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => \prev_sec[7]_i_18_n_0\,
      DI(2) => \prev_sec[7]_i_19_n_0\,
      DI(1) => \prev_sec[7]_i_20_n_0\,
      DI(0) => \prev_sec[7]_i_21_n_0\,
      O(3 downto 0) => \NLW_prev_sec_reg[7]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \prev_sec[7]_i_22_n_0\,
      S(2) => \prev_sec[7]_i_23_n_0\,
      S(1) => \prev_sec[7]_i_24_n_0\,
      S(0) => \prev_sec[7]_i_25_n_0\
    );
\prev_sec_reg[7]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prev_sec_reg[7]_i_8_n_0\,
      CO(2) => \prev_sec_reg[7]_i_8_n_1\,
      CO(1) => \prev_sec_reg[7]_i_8_n_2\,
      CO(0) => \prev_sec_reg[7]_i_8_n_3\,
      CYINIT => '1',
      DI(3) => \prev_sec[7]_i_28_n_0\,
      DI(2) => \prev_sec[7]_i_29_n_0\,
      DI(1) => \prev_sec[7]_i_30_n_0\,
      DI(0) => \prev_sec[7]_i_31_n_0\,
      O(3 downto 0) => \NLW_prev_sec_reg[7]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \prev_sec[7]_i_32_n_0\,
      S(2) => \prev_sec[7]_i_33_n_0\,
      S(1) => \prev_sec[7]_i_34_n_0\,
      S(0) => \prev_sec[7]_i_35_n_0\
    );
\prev_sec_reg[7]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \prev_sec_reg[7]_i_9_n_0\,
      CO(2) => \prev_sec_reg[7]_i_9_n_1\,
      CO(1) => \prev_sec_reg[7]_i_9_n_2\,
      CO(0) => \prev_sec_reg[7]_i_9_n_3\,
      CYINIT => '0',
      DI(3) => \prev_sec[7]_i_36_n_0\,
      DI(2) => \prev_sec[7]_i_37_n_0\,
      DI(1) => \prev_sec[7]_i_38_n_0\,
      DI(0) => \prev_sec[7]_i_39_n_0\,
      O(3 downto 0) => \NLW_prev_sec_reg[7]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \prev_sec[7]_i_40_n_0\,
      S(2) => \prev_sec[7]_i_41_n_0\,
      S(1) => \prev_sec[7]_i_42_n_0\,
      S(0) => \prev_sec[7]_i_43_n_0\
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
      I0 => \s00_axi_rdata[23]\(0),
      I1 => \s00_axi_rdata[23]_0\(0),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(0),
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
      I0 => \s00_axi_rdata[23]\(10),
      I1 => \s00_axi_rdata[23]_0\(10),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(10),
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
      I0 => \s00_axi_rdata[23]\(11),
      I1 => \s00_axi_rdata[23]_0\(11),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(11),
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
      I0 => \s00_axi_rdata[23]\(12),
      I1 => \s00_axi_rdata[23]_0\(12),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(12),
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
      I0 => \s00_axi_rdata[23]\(13),
      I1 => \s00_axi_rdata[23]_0\(13),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(13),
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
      I2 => Q(14),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(14),
      I1 => \s00_axi_rdata[23]_0\(14),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(14),
      I4 => sel0(0),
      I5 => diff_sec(6),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => Q(15),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(15),
      I1 => \s00_axi_rdata[23]_0\(15),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(15),
      I4 => sel0(0),
      I5 => diff_sec(7),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(0),
      I1 => min(0),
      I2 => sel0(1),
      I3 => Q(16),
      I4 => sel0(0),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(16),
      I1 => \s00_axi_rdata[23]_0\(16),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(16),
      I4 => sel0(0),
      I5 => diff_min(0),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(1),
      I1 => min(1),
      I2 => sel0(1),
      I3 => Q(17),
      I4 => sel0(0),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(17),
      I1 => \s00_axi_rdata[23]_0\(17),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(17),
      I4 => sel0(0),
      I5 => diff_min(1),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(2),
      I1 => min(2),
      I2 => sel0(1),
      I3 => Q(18),
      I4 => sel0(0),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(18),
      I1 => \s00_axi_rdata[23]_0\(18),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(18),
      I4 => sel0(0),
      I5 => diff_min(2),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(3),
      I1 => min(3),
      I2 => sel0(1),
      I3 => Q(19),
      I4 => sel0(0),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(19),
      I1 => \s00_axi_rdata[23]_0\(19),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(19),
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
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_csec(1),
      I1 => csec(1),
      I2 => sel0(1),
      I3 => Q(1),
      I4 => sel0(0),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(1),
      I1 => \s00_axi_rdata[23]_0\(1),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(1),
      I4 => sel0(0),
      I5 => diff_csec(1),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(4),
      I1 => min(4),
      I2 => sel0(1),
      I3 => Q(20),
      I4 => sel0(0),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(20),
      I1 => \s00_axi_rdata[23]_0\(20),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(20),
      I4 => sel0(0),
      I5 => diff_min(4),
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
      INIT => X"A0A0CFC0"
    )
        port map (
      I0 => lap_min(5),
      I1 => min(5),
      I2 => sel0(1),
      I3 => Q(21),
      I4 => sel0(0),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(21),
      I1 => \s00_axi_rdata[23]_0\(21),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(21),
      I4 => sel0(0),
      I5 => diff_min(5),
      O => \s00_axi_rdata[21]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => Q(22),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(22),
      I1 => \s00_axi_rdata[23]_0\(22),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(22),
      I4 => sel0(0),
      I5 => diff_min(6),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => Q(23),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(23),
      I1 => \s00_axi_rdata[23]_0\(23),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(23),
      I4 => sel0(0),
      I5 => diff_min(7),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
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
      I4 => Q(24),
      I5 => sel0(0),
      O => s00_axi_rdata(24)
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
      I4 => Q(25),
      I5 => sel0(0),
      O => s00_axi_rdata(25)
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
      I4 => Q(26),
      I5 => sel0(0),
      O => s00_axi_rdata(26)
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
      I4 => Q(27),
      I5 => sel0(1),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_28_sn_1,
      I1 => sel0(2),
      I2 => lap_count(4),
      I3 => sel0(1),
      I4 => Q(28),
      I5 => sel0(0),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_29_sn_1,
      I1 => sel0(2),
      I2 => lap_count(5),
      I3 => sel0(0),
      I4 => Q(29),
      I5 => sel0(1),
      O => s00_axi_rdata(29)
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
      I0 => \s00_axi_rdata[23]\(2),
      I1 => \s00_axi_rdata[23]_0\(2),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(2),
      I4 => sel0(0),
      I5 => diff_csec(2),
      O => \s00_axi_rdata[2]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_30_sn_1,
      I1 => sel0(2),
      I2 => lap_count(6),
      I3 => sel0(0),
      I4 => Q(30),
      I5 => sel0(1),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888B88888BB8888"
    )
        port map (
      I0 => s00_axi_rdata_31_sn_1,
      I1 => sel0(2),
      I2 => lap_count(7),
      I3 => sel0(0),
      I4 => Q(31),
      I5 => sel0(1),
      O => s00_axi_rdata(31)
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
      I0 => \s00_axi_rdata[23]\(3),
      I1 => \s00_axi_rdata[23]_0\(3),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(3),
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
      I0 => \s00_axi_rdata[23]\(4),
      I1 => \s00_axi_rdata[23]_0\(4),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(4),
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
      I0 => \s00_axi_rdata[23]\(5),
      I1 => \s00_axi_rdata[23]_0\(5),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(5),
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
      I0 => \s00_axi_rdata[23]\(6),
      I1 => \s00_axi_rdata[23]_0\(6),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(6),
      I4 => sel0(0),
      I5 => diff_csec(6),
      O => \s00_axi_rdata[6]_INST_0_i_2_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF100010"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(1),
      I2 => Q(7),
      I3 => sel0(2),
      I4 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \s00_axi_rdata[23]\(7),
      I1 => \s00_axi_rdata[23]_0\(7),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(7),
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
      I0 => \s00_axi_rdata[23]\(8),
      I1 => \s00_axi_rdata[23]_0\(8),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(8),
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
      I0 => \s00_axi_rdata[23]\(9),
      I1 => \s00_axi_rdata[23]_0\(9),
      I2 => sel0(1),
      I3 => \s00_axi_rdata[23]_1\(9),
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
      INIT => X"2888"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => sec(2),
      I2 => sec(1),
      I3 => sec(0),
      O => \sec[2]_i_1_n_0\
    );
\sec[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \sec[4]_i_2_n_0\,
      I1 => sec(2),
      I2 => sec(1),
      I3 => sec(0),
      I4 => sec(3),
      O => \sec[3]_i_1_n_0\
    );
\sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAA00000000"
    )
        port map (
      I0 => sec(4),
      I1 => sec(3),
      I2 => sec(2),
      I3 => sec(1),
      I4 => sec(0),
      I5 => \sec[4]_i_2_n_0\,
      O => \sec[4]_i_1_n_0\
    );
\sec[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => \min[5]_i_3_n_0\,
      O => \sec[4]_i_2_n_0\
    );
\sec[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2808088888888888"
    )
        port map (
      I0 => \^run_reg_0\,
      I1 => sec(5),
      I2 => sec(3),
      I3 => sec(2),
      I4 => \sec[5]_i_4_n_0\,
      I5 => sec(4),
      O => \sec[5]_i_2_n_0\
    );
\sec[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000000000"
    )
        port map (
      I0 => csec(2),
      I1 => \csec[5]_i_2_n_0\,
      I2 => csec(3),
      I3 => csec(4),
      I4 => csec(6),
      I5 => csec(5),
      O => \sec[5]_i_3_n_0\
    );
\sec[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sec(0),
      I1 => sec(1),
      O => \sec[5]_i_4_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_85,
      CLR => \^sr\(0),
      D => \sec[0]_i_1_n_0\,
      Q => sec(0)
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_85,
      CLR => \^sr\(0),
      D => \sec[1]_i_1_n_0\,
      Q => sec(1)
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_85,
      CLR => \^sr\(0),
      D => \sec[2]_i_1_n_0\,
      Q => sec(2)
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_85,
      CLR => \^sr\(0),
      D => \sec[3]_i_1_n_0\,
      Q => sec(3)
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_85,
      CLR => \^sr\(0),
      D => \sec[4]_i_1_n_0\,
      Q => sec(4)
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_clear_n_85,
      CLR => \^sr\(0),
      D => \sec[5]_i_2_n_0\,
      Q => sec(5)
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
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_84,
      Q => tmp_csec(0)
    );
\tmp_csec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_83,
      Q => tmp_csec(1)
    );
\tmp_csec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_82,
      Q => tmp_csec(2)
    );
\tmp_csec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_81,
      Q => tmp_csec(3)
    );
\tmp_csec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_80,
      Q => tmp_csec(4)
    );
\tmp_csec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_79,
      Q => tmp_csec(5)
    );
\tmp_csec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_78,
      Q => tmp_csec(6)
    );
\tmp_min1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_min1_inferred__0/i__carry_n_0\,
      CO(2) => \tmp_min1_inferred__0/i__carry_n_1\,
      CO(1) => \tmp_min1_inferred__0/i__carry_n_2\,
      CO(0) => \tmp_min1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__0_n_0\,
      DI(2) => \i__carry_i_2_n_0\,
      DI(1) => \i__carry_i_3_n_0\,
      DI(0) => \i__carry_i_4_n_0\,
      O(3 downto 0) => \NLW_tmp_min1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__0_n_0\,
      S(2) => \i__carry_i_6__0_n_0\,
      S(1) => \i__carry_i_7__0_n_0\,
      S(0) => \i__carry_i_8__0_n_0\
    );
\tmp_min1_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => p_3_in,
      CO(2) => \tmp_min1_inferred__1/i__carry_n_1\,
      CO(1) => \tmp_min1_inferred__1/i__carry_n_2\,
      CO(0) => \tmp_min1_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__1_n_0\,
      DI(2) => \i__carry_i_2__0_n_0\,
      DI(1) => \i__carry_i_3__0_n_0\,
      DI(0) => \i__carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_tmp_min1_inferred__1/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5__1_n_0\,
      S(2) => \i__carry_i_6__1_n_0\,
      S(1) => \i__carry_i_7__1_n_0\,
      S(0) => \i__carry_i_8__1_n_0\
    );
\tmp_min[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => tmp_min(2),
      I1 => tmp_min(1),
      I2 => tmp_min(0),
      O => \tmp_min[3]_i_2_n_0\
    );
\tmp_min[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tmp_min(3),
      I1 => tmp_min(0),
      I2 => tmp_min(1),
      I3 => tmp_min(2),
      O => \tmp_min[4]_i_2_n_0\
    );
\tmp_min[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => tmp_min(4),
      I1 => tmp_min(2),
      I2 => tmp_min(1),
      I3 => tmp_min(0),
      I4 => tmp_min(3),
      O => \tmp_min[5]_i_2_n_0\
    );
\tmp_min[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => tmp_min(5),
      I1 => tmp_min(3),
      I2 => tmp_min(0),
      I3 => tmp_min(1),
      I4 => tmp_min(2),
      I5 => tmp_min(4),
      O => \tmp_min[7]_i_2_n_0\
    );
\tmp_min[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => p_3_in,
      I2 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \tmp_min[7]_i_3_n_0\
    );
\tmp_min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_54,
      Q => tmp_min(0)
    );
\tmp_min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_53,
      Q => tmp_min(1)
    );
\tmp_min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_52,
      Q => tmp_min(2)
    );
\tmp_min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_51,
      Q => tmp_min(3)
    );
\tmp_min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_50,
      Q => tmp_min(4)
    );
\tmp_min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_49,
      Q => tmp_min(5)
    );
\tmp_min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_48,
      Q => tmp_min(6)
    );
\tmp_min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_47,
      Q => tmp_min(7)
    );
tmp_sec1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => tmp_sec1_carry_n_0,
      CO(2) => tmp_sec1_carry_n_1,
      CO(1) => tmp_sec1_carry_n_2,
      CO(0) => tmp_sec1_carry_n_3,
      CYINIT => '1',
      DI(3) => tmp_sec1_carry_i_1_n_0,
      DI(2) => tmp_sec1_carry_i_2_n_0,
      DI(1) => tmp_sec1_carry_i_3_n_0,
      DI(0) => tmp_sec1_carry_i_4_n_0,
      O(3 downto 0) => NLW_tmp_sec1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => tmp_sec1_carry_i_5_n_0,
      S(2) => tmp_sec1_carry_i_6_n_0,
      S(1) => tmp_sec1_carry_i_7_n_0,
      S(0) => tmp_sec1_carry_i_8_n_0
    );
tmp_sec1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tmp_csec(6),
      I1 => prev_csec(6),
      O => tmp_sec1_carry_i_1_n_0
    );
tmp_sec1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => tmp_csec(5),
      I1 => prev_csec(5),
      I2 => tmp_csec(4),
      I3 => prev_csec(4),
      O => tmp_sec1_carry_i_2_n_0
    );
tmp_sec1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2B22"
    )
        port map (
      I0 => tmp_csec(3),
      I1 => prev_csec(3),
      I2 => prev_csec(2),
      I3 => tmp_csec(2),
      O => tmp_sec1_carry_i_3_n_0
    );
tmp_sec1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tmp_csec(0),
      I1 => prev_csec(0),
      I2 => prev_csec(1),
      I3 => tmp_csec(1),
      O => tmp_sec1_carry_i_4_n_0
    );
tmp_sec1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => prev_csec(6),
      I1 => tmp_csec(6),
      O => tmp_sec1_carry_i_5_n_0
    );
tmp_sec1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(4),
      I1 => tmp_csec(4),
      I2 => tmp_csec(5),
      I3 => prev_csec(5),
      O => tmp_sec1_carry_i_6_n_0
    );
tmp_sec1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(3),
      I1 => tmp_csec(3),
      I2 => tmp_csec(2),
      I3 => prev_csec(2),
      O => tmp_sec1_carry_i_7_n_0
    );
tmp_sec1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => prev_csec(0),
      I1 => tmp_csec(0),
      I2 => tmp_csec(1),
      I3 => prev_csec(1),
      O => tmp_sec1_carry_i_8_n_0
    );
\tmp_sec1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_sec1_inferred__0/i__carry_n_0\,
      CO(2) => \tmp_sec1_inferred__0/i__carry_n_1\,
      CO(1) => \tmp_sec1_inferred__0/i__carry_n_2\,
      CO(0) => \tmp_sec1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \i__carry_i_1__2_n_0\,
      DI(2) => \i__carry_i_2__1_n_0\,
      DI(1) => \i__carry_i_3__1_n_0\,
      DI(0) => \i__carry_i_4__1_n_0\,
      O(3 downto 0) => \NLW_tmp_sec1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_5_n_0\,
      S(2) => \i__carry_i_6_n_0\,
      S(1) => \i__carry_i_7_n_0\,
      S(0) => \i__carry_i_8_n_0\
    );
\tmp_sec[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0044040000540400"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => p_3_in,
      I2 => \tmp_min1_inferred__0/i__carry_n_0\,
      I3 => tmp_sec1_carry_n_0,
      I4 => tmp_sec(0),
      I5 => \tmp_sec1_inferred__0/i__carry_n_0\,
      O => \tmp_sec[0]_i_2_n_0\
    );
\tmp_sec[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F3F3FFFF6666FF6F"
    )
        port map (
      I0 => tmp_sec(0),
      I1 => tmp_sec(1),
      I2 => \tmp_min1_inferred__0/i__carry_n_0\,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => p_3_in,
      I5 => tmp_sec1_carry_n_0,
      O => \tmp_sec[1]_i_2_n_0\
    );
\tmp_sec[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5FFFF9999FF9F"
    )
        port map (
      I0 => tmp_sec(2),
      I1 => \tmp_sec[2]_i_3_n_0\,
      I2 => \tmp_min1_inferred__0/i__carry_n_0\,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => p_3_in,
      I5 => tmp_sec1_carry_n_0,
      O => \tmp_sec[2]_i_2_n_0\
    );
\tmp_sec[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => tmp_sec(0),
      I1 => tmp_sec(1),
      O => \tmp_sec[2]_i_3_n_0\
    );
\tmp_sec[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => tmp_sec(3),
      I1 => tmp_sec(0),
      I2 => tmp_sec(1),
      I3 => tmp_sec(2),
      O => \tmp_sec[3]_i_2_n_0\
    );
\tmp_sec[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BABB"
    )
        port map (
      I0 => tmp_sec1_carry_n_0,
      I1 => p_3_in,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \tmp_sec[3]_i_3_n_0\
    );
\tmp_sec[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9FFF9F9F9FFF9FF"
    )
        port map (
      I0 => \tmp_sec[4]_i_5_n_0\,
      I1 => tmp_sec(4),
      I2 => tmp_sec1_carry_n_0,
      I3 => p_3_in,
      I4 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I5 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \tmp_sec[4]_i_2_n_0\
    );
\tmp_sec[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0020002000202000"
    )
        port map (
      I0 => tmp_sec1_carry_n_0,
      I1 => \tmp_min1_inferred__0/i__carry_n_0\,
      I2 => p_3_in,
      I3 => tmp_sec(4),
      I4 => tmp_sec(3),
      I5 => tmp_sec(2),
      O => \tmp_sec[4]_i_3_n_0\
    );
\tmp_sec[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \lap_count[7]_i_3_n_0\,
      I1 => lap_count(1),
      I2 => lap_count(0),
      I3 => lap_count(2),
      I4 => lap_count(3),
      O => \^lap_count_reg[1]_0\
    );
\tmp_sec[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => tmp_sec(1),
      I1 => tmp_sec(0),
      I2 => tmp_sec(3),
      I3 => tmp_sec(2),
      O => \tmp_sec[4]_i_5_n_0\
    );
\tmp_sec[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00454444"
    )
        port map (
      I0 => \^lap_count_reg[1]_0\,
      I1 => p_3_in,
      I2 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I3 => tmp_sec1_carry_n_0,
      I4 => \tmp_min1_inferred__0/i__carry_n_0\,
      O => \tmp_sec[5]_i_2_n_0\
    );
\tmp_sec[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF9999FF9F"
    )
        port map (
      I0 => \tmp_sec[6]_i_4_n_0\,
      I1 => tmp_sec(5),
      I2 => \tmp_min1_inferred__0/i__carry_n_0\,
      I3 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I4 => p_3_in,
      I5 => tmp_sec1_carry_n_0,
      O => \tmp_sec[5]_i_3_n_0\
    );
\tmp_sec[5]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00202000"
    )
        port map (
      I0 => p_3_in,
      I1 => \tmp_min1_inferred__0/i__carry_n_0\,
      I2 => tmp_sec1_carry_n_0,
      I3 => \tmp_sec[5]_i_5_n_0\,
      I4 => tmp_sec(5),
      O => \tmp_sec[5]_i_4_n_0\
    );
\tmp_sec[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => tmp_sec(4),
      I1 => tmp_sec(3),
      I2 => tmp_sec(2),
      O => \tmp_sec[5]_i_5_n_0\
    );
\tmp_sec[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => tmp_sec(2),
      I1 => tmp_sec(3),
      I2 => tmp_sec(4),
      I3 => tmp_sec(5),
      O => \tmp_sec[6]_i_2_n_0\
    );
\tmp_sec[6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEFB"
    )
        port map (
      I0 => tmp_sec1_carry_n_0,
      I1 => \tmp_sec[6]_i_4_n_0\,
      I2 => tmp_sec(5),
      I3 => tmp_sec(6),
      O => \tmp_sec[6]_i_3_n_0\
    );
\tmp_sec[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => tmp_sec(4),
      I1 => tmp_sec(2),
      I2 => tmp_sec(3),
      I3 => tmp_sec(0),
      I4 => tmp_sec(1),
      O => \tmp_sec[6]_i_4_n_0\
    );
\tmp_sec[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
        port map (
      I0 => \tmp_min1_inferred__0/i__carry_n_0\,
      I1 => \tmp_sec1_inferred__0/i__carry_n_0\,
      I2 => p_3_in,
      O => \tmp_sec[7]_i_2_n_0\
    );
\tmp_sec[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => tmp_sec1_carry_n_0,
      I1 => \tmp_min1_inferred__0/i__carry_n_0\,
      I2 => p_3_in,
      O => \tmp_sec[7]_i_4_n_0\
    );
\tmp_sec[7]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0001FFFF"
    )
        port map (
      I0 => tmp_sec(5),
      I1 => tmp_sec(4),
      I2 => tmp_sec(3),
      I3 => tmp_sec(2),
      I4 => tmp_sec(6),
      O => \tmp_sec[7]_i_5_n_0\
    );
\tmp_sec[7]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FD02"
    )
        port map (
      I0 => \tmp_sec[7]_i_7_n_0\,
      I1 => tmp_sec(1),
      I2 => tmp_sec(0),
      I3 => tmp_sec(7),
      I4 => tmp_sec1_carry_n_0,
      O => \tmp_sec[7]_i_6_n_0\
    );
\tmp_sec[7]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => tmp_sec(5),
      I1 => tmp_sec(4),
      I2 => tmp_sec(3),
      I3 => tmp_sec(2),
      I4 => tmp_sec(6),
      O => \tmp_sec[7]_i_7_n_0\
    );
\tmp_sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_29,
      Q => tmp_sec(0)
    );
\tmp_sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_28,
      Q => tmp_sec(1)
    );
\tmp_sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_27,
      Q => tmp_sec(2)
    );
\tmp_sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_26,
      Q => tmp_sec(3)
    );
\tmp_sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_25,
      Q => tmp_sec(4)
    );
\tmp_sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_24,
      Q => tmp_sec(5)
    );
\tmp_sec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_23,
      Q => tmp_sec(6)
    );
\tmp_sec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_clear_n_22,
      Q => tmp_sec(7)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI is
  port (
    p_0_in : out STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    run : out STD_LOGIC;
    sign_flag : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    axi_awready_reg_0 : out STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    \lap_count_reg[1]\ : out STD_LOGIC;
    state_write : out STD_LOGIC_VECTOR ( 1 downto 0 );
    state_read : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \axi_awready0__0\ : out STD_LOGIC;
    \tmp_min1_inferred__0/i__carry\ : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    run_reg : in STD_LOGIC;
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
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
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
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0__0\ : STD_LOGIC_VECTOR ( 31 downto 2 );
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
  signal stop_watch_inst_n_2 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair61";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \slv_reg6[31]_i_2\ : label is "soft_lutpair62";
begin
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_rvalid_reg_0 <= \^axi_rvalid_reg_0\;
  state_read(1 downto 0) <= \^state_read\(1 downto 0);
  state_write(1 downto 0) <= \^state_write\(1 downto 0);
\FSM_sequential_state_read[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0FFF8888FFFF"
    )
        port map (
      I0 => \^axi_rvalid_reg_0\,
      I1 => s00_axi_rready,
      I2 => \^axi_arready_reg_0\,
      I3 => s00_axi_arvalid,
      I4 => \^state_read\(1),
      I5 => \^state_read\(0),
      O => \FSM_sequential_state_read[0]_i_1_n_0\
    );
\FSM_sequential_state_read[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF88880FFF0000"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^axi_rvalid_reg_0\,
      I3 => s00_axi_rready,
      I4 => \^state_read\(1),
      I5 => \^state_read\(0),
      O => \FSM_sequential_state_read[1]_i_1_n_0\
    );
\FSM_sequential_state_read_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[0]_i_1_n_0\,
      Q => \^state_read\(0),
      R => stop_watch_inst_n_2
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => \^state_read\(1),
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
      R => stop_watch_inst_n_2
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => \^state_write\(1),
      R => stop_watch_inst_n_2
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^state_read\(0),
      I4 => sel0(0),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^state_read\(0),
      I4 => sel0(1),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFF8000"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr[4]_i_2_n_0\,
      I2 => s00_axi_aresetn,
      I3 => \^state_read\(0),
      I4 => sel0(2),
      O => \axi_araddr[4]_i_1_n_0\
    );
\axi_araddr[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      I2 => \^state_read\(1),
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
      R => stop_watch_inst_n_2
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
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready_reg_1,
      Q => \^axi_awready_reg_0\,
      R => stop_watch_inst_n_2
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
      R => stop_watch_inst_n_2
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_reg_1,
      Q => \^axi_rvalid_reg_0\,
      R => stop_watch_inst_n_2
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready_reg_0,
      Q => s00_axi_wready,
      R => stop_watch_inst_n_2
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
      Q => \slv_reg0__0\(10),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \slv_reg0__0\(11),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \slv_reg0__0\(12),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \slv_reg0__0\(13),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \slv_reg0__0\(14),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \slv_reg0__0\(15),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \slv_reg0__0\(16),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \slv_reg0__0\(17),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \slv_reg0__0\(18),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \slv_reg0__0\(19),
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
      Q => \slv_reg0__0\(20),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \slv_reg0__0\(21),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \slv_reg0__0\(22),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \slv_reg0__0\(23),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \slv_reg0__0\(24),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \slv_reg0__0\(25),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \slv_reg0__0\(26),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \slv_reg0__0\(27),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \slv_reg0__0\(28),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \slv_reg0__0\(29),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \slv_reg0__0\(2),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \slv_reg0__0\(30),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \slv_reg0__0\(31),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \slv_reg0__0\(3),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \slv_reg0__0\(4),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \slv_reg0__0\(5),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \slv_reg0__0\(6),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \slv_reg0__0\(7),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \slv_reg0__0\(8),
      R => stop_watch_inst_n_2
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \slv_reg0__0\(9),
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
      Q(31 downto 2) => \slv_reg0__0\(31 downto 2),
      Q(1 downto 0) => slv_reg0(1 downto 0),
      SR(0) => stop_watch_inst_n_2,
      ff_cur_reg => p_0_in_0(1),
      ff_old_reg => p_0_in_0(0),
      \lap_count_reg[1]_0\ => \lap_count_reg[1]\,
      p_0_in(1 downto 0) => p_0_in(1 downto 0),
      run_reg_0 => run,
      run_reg_1 => run_reg,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      \s00_axi_rdata[23]\(23 downto 0) => slv_reg7(23 downto 0),
      \s00_axi_rdata[23]_0\(23 downto 0) => slv_reg6(23 downto 0),
      \s00_axi_rdata[23]_1\(23 downto 0) => slv_reg5(23 downto 0),
      s00_axi_rdata_24_sp_1 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      s00_axi_rdata_25_sp_1 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      s00_axi_rdata_26_sp_1 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      s00_axi_rdata_27_sp_1 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      s00_axi_rdata_28_sp_1 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      s00_axi_rdata_29_sp_1 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      s00_axi_rdata_30_sp_1 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      s00_axi_rdata_31_sp_1 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      sel0(2 downto 0) => sel0(2 downto 0),
      sign_flag => sign_flag,
      sign_flag_reg_0 => sign_flag_reg,
      \tmp_min1_inferred__0/i__carry_0\ => \tmp_min1_inferred__0/i__carry\
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
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
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
  signal myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_11 : STD_LOGIC;
  signal myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_17 : STD_LOGIC;
  signal run : STD_LOGIC;
  signal run_i_1_n_0 : STD_LOGIC;
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sign_flag : STD_LOGIC;
  signal sign_flag_i_1_n_0 : STD_LOGIC;
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \stop_watch_inst/ed_clear/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \stop_watch_inst/ed_start/p_0_in\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  axi_arready_reg <= \^axi_arready_reg\;
  axi_awready_reg <= \^axi_awready_reg\;
  axi_rvalid_reg <= \^axi_rvalid_reg\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_wready <= \^s00_axi_wready\;
axi_arready_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2A2A2A2FFAFAFAF"
    )
        port map (
      I0 => \^axi_arready_reg\,
      I1 => s00_axi_arvalid,
      I2 => state_read(1),
      I3 => \^axi_rvalid_reg\,
      I4 => s00_axi_rready,
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
      INIT => X"F000FF00FF80FF80"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg\,
      I2 => state_read(0),
      I3 => \^axi_rvalid_reg\,
      I4 => s00_axi_rready,
      I5 => state_read(1),
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
myip_stopwatch_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_stopwatch_slave_lite_v1_0_S00_AXI
     port map (
      axi_arready_reg_0 => \^axi_arready_reg\,
      axi_arready_reg_1 => axi_arready_i_1_n_0,
      \axi_awready0__0\ => \axi_awready0__0\,
      axi_awready_reg_0 => \^axi_awready_reg\,
      axi_awready_reg_1 => axi_awready_i_2_n_0,
      axi_bvalid_reg_0 => axi_bvalid_i_1_n_0,
      axi_rvalid_reg_0 => \^axi_rvalid_reg\,
      axi_rvalid_reg_1 => axi_rvalid_i_1_n_0,
      axi_wready_reg_0 => axi_wready_i_1_n_0,
      \lap_count_reg[1]\ => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_11,
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
      state_write(1 downto 0) => state_write(1 downto 0),
      \tmp_min1_inferred__0/i__carry\ => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_17
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
sign_flag_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFCF554500005545"
    )
        port map (
      I0 => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_17,
      I1 => run,
      I2 => \stop_watch_inst/ed_clear/p_0_in\(1),
      I3 => \stop_watch_inst/ed_clear/p_0_in\(0),
      I4 => myip_stopwatch_slave_lite_v1_0_S00_AXI_inst_n_11,
      I5 => sign_flag,
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
