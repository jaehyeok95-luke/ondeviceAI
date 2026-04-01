-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Fri Jan 30 14:23:46 2026
-- Host        : user14-B80KV-AP35BKE running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ soc_watch_myip_koreawatch_0_0_sim_netlist.vhdl
-- Design      : soc_watch_myip_koreawatch_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcpg236-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  port (
    p_0_in_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_step_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_step_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ff_cur_reg_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sync_step_reg[0]\ : out STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    sync_step : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \hour_reg[0]\ : in STD_LOGIC;
    active_en_reg : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \min_reg[0]\ : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n is
  signal \^ar\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^p_0_in_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_done : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of active_en_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt_sysclk[31]_i_1\ : label is "soft_lutpair0";
begin
  AR(0) <= \^ar\(0);
  p_0_in_0(1 downto 0) <= \^p_0_in_0\(1 downto 0);
active_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0400"
    )
        port map (
      I0 => sync_step(0),
      I1 => \^p_0_in_0\(1),
      I2 => \^p_0_in_0\(0),
      I3 => sync_step(1),
      I4 => active_en_reg,
      O => \sync_step_reg[0]\
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => \^ar\(0)
    );
\cnt_sysclk[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0020"
    )
        port map (
      I0 => sync_step(1),
      I1 => \^p_0_in_0\(0),
      I2 => \^p_0_in_0\(1),
      I3 => sync_step(0),
      I4 => active_en_reg,
      O => \sync_step_reg[1]\(0)
    );
ff_cur_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => s00_axi_wready,
      I2 => p_0_in(1),
      I3 => p_0_in(0),
      I4 => p_0_in(2),
      O => rx_done
    );
ff_cur_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => rx_done,
      Q => \^p_0_in_0\(1)
    );
ff_old_reg: unisim.vcomponents.FDCE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^ar\(0),
      D => \^p_0_in_0\(1),
      Q => \^p_0_in_0\(0)
    );
\hour[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0010FFFF"
    )
        port map (
      I0 => sync_step(1),
      I1 => \^p_0_in_0\(0),
      I2 => \^p_0_in_0\(1),
      I3 => sync_step(0),
      I4 => \hour_reg[0]\,
      O => E(0)
    );
\min[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0020FFFF"
    )
        port map (
      I0 => \^p_0_in_0\(1),
      I1 => \^p_0_in_0\(0),
      I2 => sync_step(0),
      I3 => sync_step(1),
      I4 => \min_reg[0]\,
      O => ff_cur_reg_0(0)
    );
\sec[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF002000200020"
    )
        port map (
      I0 => sync_step(1),
      I1 => \^p_0_in_0\(0),
      I2 => \^p_0_in_0\(1),
      I3 => sync_step(0),
      I4 => active_en_reg,
      I5 => CO(0),
      O => \sync_step_reg[1]_0\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_korea_watch is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s00_axi_awaddr[4]\ : out STD_LOGIC;
    \s00_axi_awaddr[3]\ : out STD_LOGIC;
    s00_axi_awaddr_2_sp_1 : out STD_LOGIC;
    \s00_axi_araddr[4]\ : out STD_LOGIC;
    \s00_axi_araddr[3]\ : out STD_LOGIC;
    s00_axi_araddr_2_sp_1 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    state_write : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    \axi_awaddr_reg[4]\ : in STD_LOGIC;
    p_0_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \axi_araddr_reg[4]\ : in STD_LOGIC;
    sel0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s00_axi_rdata_0_sp_1 : in STD_LOGIC;
    \s00_axi_rdata[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_korea_watch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_korea_watch is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal active_en_reg_n_0 : STD_LOGIC;
  signal cnt_sysclk : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal cnt_sysclk0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \cnt_sysclk0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_0\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_1\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__5_n_3\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__6_n_2\ : STD_LOGIC;
  signal \cnt_sysclk0_carry__6_n_3\ : STD_LOGIC;
  signal cnt_sysclk0_carry_n_0 : STD_LOGIC;
  signal cnt_sysclk0_carry_n_1 : STD_LOGIC;
  signal cnt_sysclk0_carry_n_2 : STD_LOGIC;
  signal cnt_sysclk0_carry_n_3 : STD_LOGIC;
  signal ed_rxdone_n_3 : STD_LOGIC;
  signal ed_rxdone_n_4 : STD_LOGIC;
  signal ed_rxdone_n_5 : STD_LOGIC;
  signal ed_rxdone_n_6 : STD_LOGIC;
  signal ed_rxdone_n_7 : STD_LOGIC;
  signal hour : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal hour1 : STD_LOGIC;
  signal \hour1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \hour1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \hour1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \hour1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \hour1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \hour1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \hour1_carry__0_n_0\ : STD_LOGIC;
  signal \hour1_carry__0_n_1\ : STD_LOGIC;
  signal \hour1_carry__0_n_2\ : STD_LOGIC;
  signal \hour1_carry__0_n_3\ : STD_LOGIC;
  signal \hour1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \hour1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \hour1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \hour1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \hour1_carry__1_n_0\ : STD_LOGIC;
  signal \hour1_carry__1_n_1\ : STD_LOGIC;
  signal \hour1_carry__1_n_2\ : STD_LOGIC;
  signal \hour1_carry__1_n_3\ : STD_LOGIC;
  signal \hour1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \hour1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \hour1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \hour1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \hour1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \hour1_carry__2_n_1\ : STD_LOGIC;
  signal \hour1_carry__2_n_2\ : STD_LOGIC;
  signal \hour1_carry__2_n_3\ : STD_LOGIC;
  signal hour1_carry_i_1_n_0 : STD_LOGIC;
  signal hour1_carry_i_2_n_0 : STD_LOGIC;
  signal hour1_carry_i_3_n_0 : STD_LOGIC;
  signal hour1_carry_i_4_n_0 : STD_LOGIC;
  signal hour1_carry_i_5_n_0 : STD_LOGIC;
  signal hour1_carry_i_6_n_0 : STD_LOGIC;
  signal hour1_carry_n_0 : STD_LOGIC;
  signal hour1_carry_n_1 : STD_LOGIC;
  signal hour1_carry_n_2 : STD_LOGIC;
  signal hour1_carry_n_3 : STD_LOGIC;
  signal \hour[0]_i_1_n_0\ : STD_LOGIC;
  signal \hour[1]_i_1_n_0\ : STD_LOGIC;
  signal \hour[2]_i_1_n_0\ : STD_LOGIC;
  signal \hour[3]_i_1_n_0\ : STD_LOGIC;
  signal \hour[3]_i_2_n_0\ : STD_LOGIC;
  signal \hour[4]_i_1_n_0\ : STD_LOGIC;
  signal \hour[4]_i_2_n_0\ : STD_LOGIC;
  signal \hour[4]_i_3_n_0\ : STD_LOGIC;
  signal \hour[4]_i_5_n_0\ : STD_LOGIC;
  signal \hour[5]_i_1_n_0\ : STD_LOGIC;
  signal \hour[6]_i_1_n_0\ : STD_LOGIC;
  signal \hour[7]_i_2_n_0\ : STD_LOGIC;
  signal \hour[7]_i_3_n_0\ : STD_LOGIC;
  signal min : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \min[0]_i_1_n_0\ : STD_LOGIC;
  signal \min[1]_i_1_n_0\ : STD_LOGIC;
  signal \min[2]_i_1_n_0\ : STD_LOGIC;
  signal \min[3]_i_1_n_0\ : STD_LOGIC;
  signal \min[3]_i_2_n_0\ : STD_LOGIC;
  signal \min[4]_i_1_n_0\ : STD_LOGIC;
  signal \min[5]_i_1_n_0\ : STD_LOGIC;
  signal \min[5]_i_2_n_0\ : STD_LOGIC;
  signal \min[5]_i_3_n_0\ : STD_LOGIC;
  signal \min[5]_i_4_n_0\ : STD_LOGIC;
  signal \min[5]_i_5_n_0\ : STD_LOGIC;
  signal \min[6]_i_1_n_0\ : STD_LOGIC;
  signal \min[7]_i_2_n_0\ : STD_LOGIC;
  signal \min[7]_i_3_n_0\ : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal s00_axi_araddr_2_sn_1 : STD_LOGIC;
  signal s00_axi_awaddr_2_sn_1 : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s00_axi_rdata_0_sn_1 : STD_LOGIC;
  signal sec : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \sec[0]_i_1_n_0\ : STD_LOGIC;
  signal \sec[1]_i_1_n_0\ : STD_LOGIC;
  signal \sec[2]_i_1_n_0\ : STD_LOGIC;
  signal \sec[3]_i_1_n_0\ : STD_LOGIC;
  signal \sec[3]_i_2_n_0\ : STD_LOGIC;
  signal \sec[4]_i_1_n_0\ : STD_LOGIC;
  signal \sec[5]_i_1_n_0\ : STD_LOGIC;
  signal \sec[5]_i_2_n_0\ : STD_LOGIC;
  signal \sec[5]_i_3_n_0\ : STD_LOGIC;
  signal \sec[5]_i_4_n_0\ : STD_LOGIC;
  signal \sec[5]_i_5_n_0\ : STD_LOGIC;
  signal \sec[5]_i_6_n_0\ : STD_LOGIC;
  signal \sec[6]_i_1_n_0\ : STD_LOGIC;
  signal \sec[7]_i_2_n_0\ : STD_LOGIC;
  signal sync_step : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \sync_step[0]_i_1_n_0\ : STD_LOGIC;
  signal \sync_step[1]_i_1_n_0\ : STD_LOGIC;
  signal \NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_sysclk0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_hour1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hour1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hour1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_hour1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_hour1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_araddr[4]_i_1\ : label is "soft_lutpair10";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt_sysclk0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_sysclk0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \cnt_sysclk[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_sysclk[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_sysclk[11]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_sysclk[12]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_sysclk[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_sysclk[14]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_sysclk[15]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_sysclk[16]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_sysclk[17]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt_sysclk[18]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \cnt_sysclk[19]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt_sysclk[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_sysclk[20]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \cnt_sysclk[21]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_sysclk[22]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \cnt_sysclk[23]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_sysclk[24]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \cnt_sysclk[25]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_sysclk[26]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \cnt_sysclk[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cnt_sysclk[28]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \cnt_sysclk[29]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt_sysclk[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_sysclk[30]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \cnt_sysclk[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_sysclk[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_sysclk[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_sysclk[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_sysclk[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_sysclk[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_sysclk[9]_i_1\ : label is "soft_lutpair17";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of hour1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \hour1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \hour1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \hour1_carry__2\ : label is 11;
  attribute SOFT_HLUTNM of \hour[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hour[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hour[3]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \hour[4]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \hour[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \hour[6]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \hour[7]_i_2\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \hour[7]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \min[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \min[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \min[3]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \min[5]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \min[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \min[7]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sec[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sec[3]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sec[5]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \sec[5]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sec[5]_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \sec[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sec[7]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \sync_step[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \sync_step[1]_i_1\ : label is "soft_lutpair9";
begin
  SR(0) <= \^sr\(0);
  s00_axi_araddr_2_sp_1 <= s00_axi_araddr_2_sn_1;
  s00_axi_awaddr_2_sp_1 <= s00_axi_awaddr_2_sn_1;
  s00_axi_rdata_0_sn_1 <= s00_axi_rdata_0_sp_1;
active_en_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => ed_rxdone_n_7,
      Q => active_en_reg_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => \axi_araddr_reg[4]\,
      I2 => sel0(0),
      O => s00_axi_araddr_2_sn_1
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => \axi_araddr_reg[4]\,
      I2 => sel0(1),
      O => \s00_axi_araddr[3]\
    );
\axi_araddr[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s00_axi_araddr(2),
      I1 => \axi_araddr_reg[4]\,
      I2 => sel0(2),
      O => \s00_axi_araddr[4]\
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
      I4 => \axi_awaddr_reg[4]\,
      I5 => p_0_in(0),
      O => s00_axi_awaddr_2_sn_1
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
      I4 => \axi_awaddr_reg[4]\,
      I5 => p_0_in(1),
      O => \s00_axi_awaddr[3]\
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
      I4 => \axi_awaddr_reg[4]\,
      I5 => p_0_in(2),
      O => \s00_axi_awaddr[4]\
    );
cnt_sysclk0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_sysclk0_carry_n_0,
      CO(2) => cnt_sysclk0_carry_n_1,
      CO(1) => cnt_sysclk0_carry_n_2,
      CO(0) => cnt_sysclk0_carry_n_3,
      CYINIT => cnt_sysclk(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(4 downto 1),
      S(3 downto 0) => cnt_sysclk(4 downto 1)
    );
\cnt_sysclk0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_sysclk0_carry_n_0,
      CO(3) => \cnt_sysclk0_carry__0_n_0\,
      CO(2) => \cnt_sysclk0_carry__0_n_1\,
      CO(1) => \cnt_sysclk0_carry__0_n_2\,
      CO(0) => \cnt_sysclk0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(8 downto 5),
      S(3 downto 0) => cnt_sysclk(8 downto 5)
    );
\cnt_sysclk0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__0_n_0\,
      CO(3) => \cnt_sysclk0_carry__1_n_0\,
      CO(2) => \cnt_sysclk0_carry__1_n_1\,
      CO(1) => \cnt_sysclk0_carry__1_n_2\,
      CO(0) => \cnt_sysclk0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(12 downto 9),
      S(3 downto 0) => cnt_sysclk(12 downto 9)
    );
\cnt_sysclk0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__1_n_0\,
      CO(3) => \cnt_sysclk0_carry__2_n_0\,
      CO(2) => \cnt_sysclk0_carry__2_n_1\,
      CO(1) => \cnt_sysclk0_carry__2_n_2\,
      CO(0) => \cnt_sysclk0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(16 downto 13),
      S(3 downto 0) => cnt_sysclk(16 downto 13)
    );
\cnt_sysclk0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__2_n_0\,
      CO(3) => \cnt_sysclk0_carry__3_n_0\,
      CO(2) => \cnt_sysclk0_carry__3_n_1\,
      CO(1) => \cnt_sysclk0_carry__3_n_2\,
      CO(0) => \cnt_sysclk0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(20 downto 17),
      S(3 downto 0) => cnt_sysclk(20 downto 17)
    );
\cnt_sysclk0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__3_n_0\,
      CO(3) => \cnt_sysclk0_carry__4_n_0\,
      CO(2) => \cnt_sysclk0_carry__4_n_1\,
      CO(1) => \cnt_sysclk0_carry__4_n_2\,
      CO(0) => \cnt_sysclk0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(24 downto 21),
      S(3 downto 0) => cnt_sysclk(24 downto 21)
    );
\cnt_sysclk0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__4_n_0\,
      CO(3) => \cnt_sysclk0_carry__5_n_0\,
      CO(2) => \cnt_sysclk0_carry__5_n_1\,
      CO(1) => \cnt_sysclk0_carry__5_n_2\,
      CO(0) => \cnt_sysclk0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => cnt_sysclk0(28 downto 25),
      S(3 downto 0) => cnt_sysclk(28 downto 25)
    );
\cnt_sysclk0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_sysclk0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cnt_sysclk0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_sysclk0_carry__6_n_2\,
      CO(0) => \cnt_sysclk0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_sysclk0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => cnt_sysclk0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => cnt_sysclk(31 downto 29)
    );
\cnt_sysclk[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk(0),
      O => p_1_in(0)
    );
\cnt_sysclk[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(10),
      O => p_1_in(10)
    );
\cnt_sysclk[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(11),
      O => p_1_in(11)
    );
\cnt_sysclk[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(12),
      O => p_1_in(12)
    );
\cnt_sysclk[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(13),
      O => p_1_in(13)
    );
\cnt_sysclk[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(14),
      O => p_1_in(14)
    );
\cnt_sysclk[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(15),
      O => p_1_in(15)
    );
\cnt_sysclk[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(16),
      O => p_1_in(16)
    );
\cnt_sysclk[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(17),
      O => p_1_in(17)
    );
\cnt_sysclk[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(18),
      O => p_1_in(18)
    );
\cnt_sysclk[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(19),
      O => p_1_in(19)
    );
\cnt_sysclk[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(1),
      O => p_1_in(1)
    );
\cnt_sysclk[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(20),
      O => p_1_in(20)
    );
\cnt_sysclk[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(21),
      O => p_1_in(21)
    );
\cnt_sysclk[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(22),
      O => p_1_in(22)
    );
\cnt_sysclk[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(23),
      O => p_1_in(23)
    );
\cnt_sysclk[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(24),
      O => p_1_in(24)
    );
\cnt_sysclk[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(25),
      O => p_1_in(25)
    );
\cnt_sysclk[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(26),
      O => p_1_in(26)
    );
\cnt_sysclk[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(27),
      O => p_1_in(27)
    );
\cnt_sysclk[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(28),
      O => p_1_in(28)
    );
\cnt_sysclk[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(29),
      O => p_1_in(29)
    );
\cnt_sysclk[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(2),
      O => p_1_in(2)
    );
\cnt_sysclk[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(30),
      O => p_1_in(30)
    );
\cnt_sysclk[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(31),
      O => p_1_in(31)
    );
\cnt_sysclk[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(3),
      O => p_1_in(3)
    );
\cnt_sysclk[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(4),
      O => p_1_in(4)
    );
\cnt_sysclk[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(5),
      O => p_1_in(5)
    );
\cnt_sysclk[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(6),
      O => p_1_in(6)
    );
\cnt_sysclk[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(7),
      O => p_1_in(7)
    );
\cnt_sysclk[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(8),
      O => p_1_in(8)
    );
\cnt_sysclk[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      I2 => cnt_sysclk0(9),
      O => p_1_in(9)
    );
\cnt_sysclk_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(0),
      Q => cnt_sysclk(0)
    );
\cnt_sysclk_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(10),
      Q => cnt_sysclk(10)
    );
\cnt_sysclk_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(11),
      Q => cnt_sysclk(11)
    );
\cnt_sysclk_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(12),
      Q => cnt_sysclk(12)
    );
\cnt_sysclk_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(13),
      Q => cnt_sysclk(13)
    );
\cnt_sysclk_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(14),
      Q => cnt_sysclk(14)
    );
\cnt_sysclk_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(15),
      Q => cnt_sysclk(15)
    );
\cnt_sysclk_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(16),
      Q => cnt_sysclk(16)
    );
\cnt_sysclk_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(17),
      Q => cnt_sysclk(17)
    );
\cnt_sysclk_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(18),
      Q => cnt_sysclk(18)
    );
\cnt_sysclk_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(19),
      Q => cnt_sysclk(19)
    );
\cnt_sysclk_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(1),
      Q => cnt_sysclk(1)
    );
\cnt_sysclk_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(20),
      Q => cnt_sysclk(20)
    );
\cnt_sysclk_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(21),
      Q => cnt_sysclk(21)
    );
\cnt_sysclk_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(22),
      Q => cnt_sysclk(22)
    );
\cnt_sysclk_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(23),
      Q => cnt_sysclk(23)
    );
\cnt_sysclk_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(24),
      Q => cnt_sysclk(24)
    );
\cnt_sysclk_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(25),
      Q => cnt_sysclk(25)
    );
\cnt_sysclk_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(26),
      Q => cnt_sysclk(26)
    );
\cnt_sysclk_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(27),
      Q => cnt_sysclk(27)
    );
\cnt_sysclk_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(28),
      Q => cnt_sysclk(28)
    );
\cnt_sysclk_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(29),
      Q => cnt_sysclk(29)
    );
\cnt_sysclk_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(2),
      Q => cnt_sysclk(2)
    );
\cnt_sysclk_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(30),
      Q => cnt_sysclk(30)
    );
\cnt_sysclk_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(31),
      Q => cnt_sysclk(31)
    );
\cnt_sysclk_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(3),
      Q => cnt_sysclk(3)
    );
\cnt_sysclk_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(4),
      Q => cnt_sysclk(4)
    );
\cnt_sysclk_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(5),
      Q => cnt_sysclk(5)
    );
\cnt_sysclk_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(6),
      Q => cnt_sysclk(6)
    );
\cnt_sysclk_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(7),
      Q => cnt_sysclk(7)
    );
\cnt_sysclk_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(8),
      Q => cnt_sysclk(8)
    );
\cnt_sysclk_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_4,
      CLR => \^sr\(0),
      D => p_1_in(9),
      Q => cnt_sysclk(9)
    );
ed_rxdone: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_edge_detector_n
     port map (
      AR(0) => \^sr\(0),
      CO(0) => \hour1_carry__2_n_1\,
      E(0) => ed_rxdone_n_3,
      active_en_reg => active_en_reg_n_0,
      ff_cur_reg_0(0) => ed_rxdone_n_6,
      \hour_reg[0]\ => \hour[7]_i_3_n_0\,
      \min_reg[0]\ => \min[7]_i_3_n_0\,
      p_0_in(2 downto 0) => p_0_in(2 downto 0),
      p_0_in_0(1 downto 0) => p_0_in_0(1 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_wready => s00_axi_wready,
      s00_axi_wvalid => s00_axi_wvalid,
      sync_step(1 downto 0) => sync_step(1 downto 0),
      \sync_step_reg[0]\ => ed_rxdone_n_7,
      \sync_step_reg[1]\(0) => ed_rxdone_n_4,
      \sync_step_reg[1]_0\(0) => ed_rxdone_n_5
    );
hour1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => hour1_carry_n_0,
      CO(2) => hour1_carry_n_1,
      CO(1) => hour1_carry_n_2,
      CO(0) => hour1_carry_n_3,
      CYINIT => hour1_carry_i_1_n_0,
      DI(3) => hour1_carry_i_2_n_0,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => NLW_hour1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => hour1_carry_i_3_n_0,
      S(2) => hour1_carry_i_4_n_0,
      S(1) => hour1_carry_i_5_n_0,
      S(0) => hour1_carry_i_6_n_0
    );
\hour1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => hour1_carry_n_0,
      CO(3) => \hour1_carry__0_n_0\,
      CO(2) => \hour1_carry__0_n_1\,
      CO(1) => \hour1_carry__0_n_2\,
      CO(0) => \hour1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => cnt_sysclk(17),
      DI(2) => '0',
      DI(1) => \hour1_carry__0_i_1_n_0\,
      DI(0) => \hour1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_hour1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \hour1_carry__0_i_3_n_0\,
      S(2) => \hour1_carry__0_i_4_n_0\,
      S(1) => \hour1_carry__0_i_5_n_0\,
      S(0) => \hour1_carry__0_i_6_n_0\
    );
\hour1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(12),
      I1 => cnt_sysclk(13),
      O => \hour1_carry__0_i_1_n_0\
    );
\hour1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(10),
      I1 => cnt_sysclk(11),
      O => \hour1_carry__0_i_2_n_0\
    );
\hour1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(16),
      I1 => cnt_sysclk(17),
      O => \hour1_carry__0_i_3_n_0\
    );
\hour1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(14),
      I1 => cnt_sysclk(15),
      O => \hour1_carry__0_i_4_n_0\
    );
\hour1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(13),
      I1 => cnt_sysclk(12),
      O => \hour1_carry__0_i_5_n_0\
    );
\hour1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(11),
      I1 => cnt_sysclk(10),
      O => \hour1_carry__0_i_6_n_0\
    );
\hour1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \hour1_carry__0_n_0\,
      CO(3) => \hour1_carry__1_n_0\,
      CO(2) => \hour1_carry__1_n_1\,
      CO(1) => \hour1_carry__1_n_2\,
      CO(0) => \hour1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => cnt_sysclk(25),
      DI(2 downto 1) => B"00",
      DI(0) => cnt_sysclk(19),
      O(3 downto 0) => \NLW_hour1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \hour1_carry__1_i_1_n_0\,
      S(2) => \hour1_carry__1_i_2_n_0\,
      S(1) => \hour1_carry__1_i_3_n_0\,
      S(0) => \hour1_carry__1_i_4_n_0\
    );
\hour1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(24),
      I1 => cnt_sysclk(25),
      O => \hour1_carry__1_i_1_n_0\
    );
\hour1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(22),
      I1 => cnt_sysclk(23),
      O => \hour1_carry__1_i_2_n_0\
    );
\hour1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(20),
      I1 => cnt_sysclk(21),
      O => \hour1_carry__1_i_3_n_0\
    );
\hour1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(18),
      I1 => cnt_sysclk(19),
      O => \hour1_carry__1_i_4_n_0\
    );
\hour1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \hour1_carry__1_n_0\,
      CO(3) => \NLW_hour1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \hour1_carry__2_n_1\,
      CO(1) => \hour1_carry__2_n_2\,
      CO(0) => \hour1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \hour1_carry__2_i_1_n_0\,
      DI(1) => \hour1_carry__2_i_2_n_0\,
      DI(0) => cnt_sysclk(27),
      O(3 downto 0) => \NLW_hour1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \hour1_carry__2_i_3_n_0\,
      S(1) => \hour1_carry__2_i_4_n_0\,
      S(0) => \hour1_carry__2_i_5_n_0\
    );
\hour1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(30),
      I1 => cnt_sysclk(31),
      O => \hour1_carry__2_i_1_n_0\
    );
\hour1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(28),
      I1 => cnt_sysclk(29),
      O => \hour1_carry__2_i_2_n_0\
    );
\hour1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(31),
      I1 => cnt_sysclk(30),
      O => \hour1_carry__2_i_3_n_0\
    );
\hour1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(29),
      I1 => cnt_sysclk(28),
      O => \hour1_carry__2_i_4_n_0\
    );
\hour1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_sysclk(26),
      I1 => cnt_sysclk(27),
      O => \hour1_carry__2_i_5_n_0\
    );
hour1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(0),
      I1 => cnt_sysclk(1),
      O => hour1_carry_i_1_n_0
    );
hour1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_sysclk(8),
      I1 => cnt_sysclk(9),
      O => hour1_carry_i_2_n_0
    );
hour1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_sysclk(9),
      I1 => cnt_sysclk(8),
      O => hour1_carry_i_3_n_0
    );
hour1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(6),
      I1 => cnt_sysclk(7),
      O => hour1_carry_i_4_n_0
    );
hour1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(4),
      I1 => cnt_sysclk(5),
      O => hour1_carry_i_5_n_0
    );
hour1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_sysclk(2),
      I1 => cnt_sysclk(3),
      O => hour1_carry_i_6_n_0
    );
\hour[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => hour(0),
      I1 => \hour[4]_i_2_n_0\,
      I2 => Q(0),
      I3 => \hour[7]_i_3_n_0\,
      O => \hour[0]_i_1_n_0\
    );
\hour[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8F888"
    )
        port map (
      I0 => \hour[7]_i_3_n_0\,
      I1 => Q(1),
      I2 => \hour[4]_i_2_n_0\,
      I3 => hour(1),
      I4 => hour(0),
      O => \hour[1]_i_1_n_0\
    );
\hour[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F8F8888888"
    )
        port map (
      I0 => \hour[7]_i_3_n_0\,
      I1 => Q(2),
      I2 => \hour[4]_i_2_n_0\,
      I3 => hour(0),
      I4 => hour(1),
      I5 => hour(2),
      O => \hour[2]_i_1_n_0\
    );
\hour[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88888F8F888F888"
    )
        port map (
      I0 => \hour[7]_i_3_n_0\,
      I1 => Q(3),
      I2 => \hour[4]_i_2_n_0\,
      I3 => hour(3),
      I4 => \hour[3]_i_2_n_0\,
      I5 => hour(2),
      O => \hour[3]_i_1_n_0\
    );
\hour[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => hour(1),
      I1 => hour(0),
      O => \hour[3]_i_2_n_0\
    );
\hour[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F8F8888888"
    )
        port map (
      I0 => \hour[7]_i_3_n_0\,
      I1 => Q(4),
      I2 => \hour[4]_i_2_n_0\,
      I3 => hour(3),
      I4 => \hour[4]_i_3_n_0\,
      I5 => hour(4),
      O => \hour[4]_i_1_n_0\
    );
\hour[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \min[5]_i_4_n_0\,
      I1 => active_en_reg_n_0,
      I2 => \hour1_carry__2_n_1\,
      I3 => \sec[5]_i_5_n_0\,
      I4 => hour1,
      O => \hour[4]_i_2_n_0\
    );
\hour[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => hour(2),
      I1 => hour(0),
      I2 => hour(1),
      O => \hour[4]_i_3_n_0\
    );
\hour[4]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => \hour[4]_i_5_n_0\,
      I1 => hour(7),
      I2 => hour(4),
      I3 => hour(3),
      O => hour1
    );
\hour[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEEEEEEEEEEEEEEE"
    )
        port map (
      I0 => hour(6),
      I1 => hour(5),
      I2 => hour(1),
      I3 => hour(0),
      I4 => hour(4),
      I5 => hour(2),
      O => \hour[4]_i_5_n_0\
    );
\hour[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hour[7]_i_3_n_0\,
      I1 => Q(5),
      O => \hour[5]_i_1_n_0\
    );
\hour[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hour[7]_i_3_n_0\,
      I1 => Q(6),
      O => \hour[6]_i_1_n_0\
    );
\hour[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \hour[7]_i_3_n_0\,
      I1 => Q(7),
      O => \hour[7]_i_2_n_0\
    );
\hour[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \sec[5]_i_5_n_0\,
      I1 => \hour1_carry__2_n_1\,
      I2 => active_en_reg_n_0,
      I3 => \min[5]_i_4_n_0\,
      O => \hour[7]_i_3_n_0\
    );
\hour_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[0]_i_1_n_0\,
      Q => hour(0)
    );
\hour_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[1]_i_1_n_0\,
      Q => hour(1)
    );
\hour_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[2]_i_1_n_0\,
      Q => hour(2)
    );
\hour_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[3]_i_1_n_0\,
      Q => hour(3)
    );
\hour_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[4]_i_1_n_0\,
      Q => hour(4)
    );
\hour_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[5]_i_1_n_0\,
      Q => hour(5)
    );
\hour_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[6]_i_1_n_0\,
      Q => hour(6)
    );
\hour_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_3,
      CLR => \^sr\(0),
      D => \hour[7]_i_2_n_0\,
      Q => hour(7)
    );
\min[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F444"
    )
        port map (
      I0 => min(0),
      I1 => \min[5]_i_2_n_0\,
      I2 => Q(0),
      I3 => \min[7]_i_3_n_0\,
      O => \min[0]_i_1_n_0\
    );
\min[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8F888"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => Q(1),
      I2 => \min[5]_i_2_n_0\,
      I3 => min(1),
      I4 => min(0),
      O => \min[1]_i_1_n_0\
    );
\min[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F888F888F888"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => Q(2),
      I2 => \min[5]_i_2_n_0\,
      I3 => min(2),
      I4 => min(0),
      I5 => min(1),
      O => \min[2]_i_1_n_0\
    );
\min[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F8F8888888"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => Q(3),
      I2 => \min[5]_i_2_n_0\,
      I3 => \min[3]_i_2_n_0\,
      I4 => min(2),
      I5 => min(3),
      O => \min[3]_i_1_n_0\
    );
\min[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => min(1),
      I1 => min(0),
      O => \min[3]_i_2_n_0\
    );
\min[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88F8F888"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => Q(4),
      I2 => \min[5]_i_2_n_0\,
      I3 => min(4),
      I4 => \min[5]_i_3_n_0\,
      O => \min[4]_i_1_n_0\
    );
\min[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F8F8F8888888"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => Q(5),
      I2 => \min[5]_i_2_n_0\,
      I3 => min(4),
      I4 => \min[5]_i_3_n_0\,
      I5 => min(5),
      O => \min[5]_i_1_n_0\
    );
\min[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \sec[5]_i_5_n_0\,
      I1 => \hour1_carry__2_n_1\,
      I2 => active_en_reg_n_0,
      I3 => \min[5]_i_4_n_0\,
      O => \min[5]_i_2_n_0\
    );
\min[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => min(3),
      I1 => min(1),
      I2 => min(0),
      I3 => min(2),
      O => \min[5]_i_3_n_0\
    );
\min[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => min(7),
      I1 => min(6),
      I2 => \min[5]_i_5_n_0\,
      O => \min[5]_i_4_n_0\
    );
\min[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080000000"
    )
        port map (
      I0 => min(3),
      I1 => min(4),
      I2 => min(5),
      I3 => min(1),
      I4 => min(0),
      I5 => min(2),
      O => \min[5]_i_5_n_0\
    );
\min[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => Q(6),
      O => \min[6]_i_1_n_0\
    );
\min[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \min[7]_i_3_n_0\,
      I1 => Q(7),
      O => \min[7]_i_2_n_0\
    );
\min[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => active_en_reg_n_0,
      I1 => \hour1_carry__2_n_1\,
      I2 => \sec[5]_i_5_n_0\,
      O => \min[7]_i_3_n_0\
    );
\min_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[0]_i_1_n_0\,
      Q => min(0)
    );
\min_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[1]_i_1_n_0\,
      Q => min(1)
    );
\min_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[2]_i_1_n_0\,
      Q => min(2)
    );
\min_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[3]_i_1_n_0\,
      Q => min(3)
    );
\min_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[4]_i_1_n_0\,
      Q => min(4)
    );
\min_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[5]_i_1_n_0\,
      Q => min(5)
    );
\min_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[6]_i_1_n_0\,
      Q => min(6)
    );
\min_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_6,
      CLR => \^sr\(0),
      D => \min[7]_i_2_n_0\,
      Q => min(7)
    );
\s00_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEAAAAAAA"
    )
        port map (
      I0 => s00_axi_rdata_0_sn_1,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => \s00_axi_rdata[0]_0\(0),
      I5 => \s00_axi_rdata[0]_INST_0_i_2_n_0\,
      O => s00_axi_rdata(0)
    );
\s00_axi_rdata[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CFC0A0A0"
    )
        port map (
      I0 => hour(0),
      I1 => sec(0),
      I2 => sel0(0),
      I3 => min(0),
      I4 => sel0(1),
      I5 => sel0(2),
      O => \s00_axi_rdata[0]_INST_0_i_2_n_0\
    );
\sec[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44F4F4F4"
    )
        port map (
      I0 => sec(0),
      I1 => \sec[5]_i_4_n_0\,
      I2 => Q(0),
      I3 => \hour1_carry__2_n_1\,
      I4 => active_en_reg_n_0,
      O => \sec[0]_i_1_n_0\
    );
\sec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070FF70FF707070"
    )
        port map (
      I0 => active_en_reg_n_0,
      I1 => \hour1_carry__2_n_1\,
      I2 => Q(1),
      I3 => \sec[5]_i_4_n_0\,
      I4 => sec(1),
      I5 => sec(0),
      O => \sec[1]_i_1_n_0\
    );
\sec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88F8F888F888F888"
    )
        port map (
      I0 => \sec[5]_i_2_n_0\,
      I1 => Q(2),
      I2 => \sec[5]_i_4_n_0\,
      I3 => sec(2),
      I4 => sec(0),
      I5 => sec(1),
      O => \sec[2]_i_1_n_0\
    );
\sec[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7070707070FF70"
    )
        port map (
      I0 => active_en_reg_n_0,
      I1 => \hour1_carry__2_n_1\,
      I2 => Q(3),
      I3 => \sec[5]_i_4_n_0\,
      I4 => \sec[3]_i_2_n_0\,
      I5 => sec(3),
      O => \sec[3]_i_1_n_0\
    );
\sec[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => sec(2),
      I1 => sec(0),
      I2 => sec(1),
      O => \sec[3]_i_2_n_0\
    );
\sec[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7070FF70FF707070"
    )
        port map (
      I0 => active_en_reg_n_0,
      I1 => \hour1_carry__2_n_1\,
      I2 => Q(4),
      I3 => \sec[5]_i_4_n_0\,
      I4 => sec(4),
      I5 => \sec[5]_i_3_n_0\,
      O => \sec[4]_i_1_n_0\
    );
\sec[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF8888F8888888"
    )
        port map (
      I0 => \sec[5]_i_2_n_0\,
      I1 => Q(5),
      I2 => \sec[5]_i_3_n_0\,
      I3 => sec(4),
      I4 => \sec[5]_i_4_n_0\,
      I5 => sec(5),
      O => \sec[5]_i_1_n_0\
    );
\sec[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \hour1_carry__2_n_1\,
      I1 => active_en_reg_n_0,
      O => \sec[5]_i_2_n_0\
    );
\sec[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => sec(3),
      I1 => sec(1),
      I2 => sec(0),
      I3 => sec(2),
      O => \sec[5]_i_3_n_0\
    );
\sec[5]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => active_en_reg_n_0,
      I1 => \hour1_carry__2_n_1\,
      I2 => \sec[5]_i_5_n_0\,
      O => \sec[5]_i_4_n_0\
    );
\sec[5]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => sec(7),
      I1 => sec(6),
      I2 => \sec[5]_i_6_n_0\,
      O => \sec[5]_i_5_n_0\
    );
\sec[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080000000"
    )
        port map (
      I0 => sec(3),
      I1 => sec(4),
      I2 => sec(5),
      I3 => sec(1),
      I4 => sec(0),
      I5 => sec(2),
      O => \sec[5]_i_6_n_0\
    );
\sec[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => active_en_reg_n_0,
      I1 => \hour1_carry__2_n_1\,
      I2 => Q(6),
      O => \sec[6]_i_1_n_0\
    );
\sec[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => active_en_reg_n_0,
      I1 => \hour1_carry__2_n_1\,
      I2 => Q(7),
      O => \sec[7]_i_2_n_0\
    );
\sec_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[0]_i_1_n_0\,
      Q => sec(0)
    );
\sec_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[1]_i_1_n_0\,
      Q => sec(1)
    );
\sec_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[2]_i_1_n_0\,
      Q => sec(2)
    );
\sec_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[3]_i_1_n_0\,
      Q => sec(3)
    );
\sec_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[4]_i_1_n_0\,
      Q => sec(4)
    );
\sec_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[5]_i_1_n_0\,
      Q => sec(5)
    );
\sec_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[6]_i_1_n_0\,
      Q => sec(6)
    );
\sec_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => ed_rxdone_n_5,
      CLR => \^sr\(0),
      D => \sec[7]_i_2_n_0\,
      Q => sec(7)
    );
\sync_step[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F304"
    )
        port map (
      I0 => sync_step(1),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => sync_step(0),
      O => \sync_step[0]_i_1_n_0\
    );
\sync_step[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F308"
    )
        port map (
      I0 => sync_step(0),
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => sync_step(1),
      O => \sync_step[1]_i_1_n_0\
    );
\sync_step_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \sync_step[0]_i_1_n_0\,
      Q => sync_step(0)
    );
\sync_step_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => \^sr\(0),
      D => \sync_step[1]_i_1_n_0\,
      Q => sync_step(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch_slave_lite_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    axi_rvalid_reg_0 : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch_slave_lite_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch_slave_lite_v1_0_S00_AXI is
  signal \FSM_sequential_state_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_read[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[4]_i_2_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_awready_i_2_n_0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^axi_rvalid_reg_0\ : STD_LOGIC;
  signal axi_wready_i_1_n_0 : STD_LOGIC;
  signal inst_n_0 : STD_LOGIC;
  signal inst_n_1 : STD_LOGIC;
  signal inst_n_2 : STD_LOGIC;
  signal inst_n_3 : STD_LOGIC;
  signal inst_n_4 : STD_LOGIC;
  signal inst_n_5 : STD_LOGIC;
  signal inst_n_6 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[0]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[10]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[11]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[12]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[13]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s00_axi_rdata[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^s00_axi_wready\ : STD_LOGIC;
  signal sel0 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg4[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg4[7]_i_1_n_0\ : STD_LOGIC;
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
  signal state_read : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal state_write : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[0]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_read_reg[1]\ : label is "Idle:00,Rdata:10,Raddr:01";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_sequential_state_write[1]_i_1\ : label is "soft_lutpair29";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[0]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_write_reg[1]\ : label is "Idle:00,Wdata:10,Waddr:01";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of axi_bvalid_i_2 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \slv_reg6[31]_i_2\ : label is "soft_lutpair30";
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
      R => inst_n_0
    );
\FSM_sequential_state_read_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_read[1]_i_1_n_0\,
      Q => state_read(1),
      R => inst_n_0
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
      R => inst_n_0
    );
\FSM_sequential_state_write_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \FSM_sequential_state_write[1]_i_1_n_0\,
      Q => state_write(1),
      R => inst_n_0
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
      D => inst_n_6,
      Q => sel0(0),
      R => '0'
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => inst_n_5,
      Q => sel0(1),
      R => '0'
    );
\axi_araddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => inst_n_4,
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
      R => inst_n_0
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => inst_n_3,
      Q => p_0_in(0),
      R => inst_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => inst_n_2,
      Q => p_0_in(1),
      R => inst_n_0
    );
\axi_awaddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => inst_n_1,
      Q => p_0_in(2),
      R => inst_n_0
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
      R => inst_n_0
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
      R => inst_n_0
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
      R => inst_n_0
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
      R => inst_n_0
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_korea_watch
     port map (
      Q(7 downto 0) => slv_reg0(7 downto 0),
      SR(0) => inst_n_0,
      \axi_araddr_reg[4]\ => \axi_araddr[4]_i_2_n_0\,
      \axi_awaddr_reg[4]\ => \^axi_awready_reg_0\,
      p_0_in(2 downto 0) => p_0_in(2 downto 0),
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(2 downto 0) => s00_axi_araddr(2 downto 0),
      \s00_axi_araddr[3]\ => inst_n_5,
      \s00_axi_araddr[4]\ => inst_n_4,
      s00_axi_araddr_2_sp_1 => inst_n_6,
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_awaddr(2 downto 0) => s00_axi_awaddr(2 downto 0),
      \s00_axi_awaddr[3]\ => inst_n_2,
      \s00_axi_awaddr[4]\ => inst_n_1,
      s00_axi_awaddr_2_sp_1 => inst_n_3,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_rdata(0) => s00_axi_rdata(0),
      \s00_axi_rdata[0]_0\(0) => slv_reg7(0),
      s00_axi_rdata_0_sp_1 => \s00_axi_rdata[0]_INST_0_i_1_n_0\,
      s00_axi_wready => \^s00_axi_wready\,
      s00_axi_wvalid => s00_axi_wvalid,
      sel0(2 downto 0) => sel0(2 downto 0),
      state_write(1 downto 0) => state_write(1 downto 0)
    );
\s00_axi_rdata[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF48084000"
    )
        port map (
      I0 => sel0(0),
      I1 => sel0(2),
      I2 => sel0(1),
      I3 => slv_reg6(0),
      I4 => slv_reg5(0),
      I5 => \s00_axi_rdata[0]_INST_0_i_3_n_0\,
      O => \s00_axi_rdata[0]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[0]_INST_0_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000A0C"
    )
        port map (
      I0 => slv_reg4(0),
      I1 => slv_reg0(0),
      I2 => sel0(1),
      I3 => sel0(2),
      I4 => sel0(0),
      O => \s00_axi_rdata[0]_INST_0_i_3_n_0\
    );
\s00_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[10]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(10),
      I5 => slv_reg5(10),
      O => s00_axi_rdata(10)
    );
\s00_axi_rdata[10]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(10),
      I1 => slv_reg4(10),
      I2 => slv_reg7(10),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[10]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[11]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(11),
      I5 => slv_reg5(11),
      O => s00_axi_rdata(11)
    );
\s00_axi_rdata[11]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(11),
      I1 => slv_reg4(11),
      I2 => slv_reg7(11),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[11]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[12]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(12),
      I5 => slv_reg5(12),
      O => s00_axi_rdata(12)
    );
\s00_axi_rdata[12]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(12),
      I1 => slv_reg4(12),
      I2 => slv_reg7(12),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[12]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[13]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(13),
      I5 => slv_reg5(13),
      O => s00_axi_rdata(13)
    );
\s00_axi_rdata[13]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(13),
      I1 => slv_reg4(13),
      I2 => slv_reg7(13),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[13]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[14]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(14),
      I5 => slv_reg5(14),
      O => s00_axi_rdata(14)
    );
\s00_axi_rdata[14]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(14),
      I1 => slv_reg4(14),
      I2 => slv_reg7(14),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[14]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[15]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(15),
      I5 => slv_reg5(15),
      O => s00_axi_rdata(15)
    );
\s00_axi_rdata[15]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(15),
      I1 => slv_reg4(15),
      I2 => slv_reg7(15),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[15]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[16]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(16),
      I5 => slv_reg5(16),
      O => s00_axi_rdata(16)
    );
\s00_axi_rdata[16]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(16),
      I1 => slv_reg4(16),
      I2 => slv_reg7(16),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[16]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[17]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(17),
      I5 => slv_reg5(17),
      O => s00_axi_rdata(17)
    );
\s00_axi_rdata[17]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(17),
      I1 => slv_reg4(17),
      I2 => slv_reg7(17),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[17]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[18]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(18),
      I5 => slv_reg5(18),
      O => s00_axi_rdata(18)
    );
\s00_axi_rdata[18]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(18),
      I1 => slv_reg4(18),
      I2 => slv_reg7(18),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[18]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[19]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(19),
      I5 => slv_reg5(19),
      O => s00_axi_rdata(19)
    );
\s00_axi_rdata[19]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(19),
      I1 => slv_reg4(19),
      I2 => slv_reg7(19),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[19]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[1]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(1),
      I5 => slv_reg5(1),
      O => s00_axi_rdata(1)
    );
\s00_axi_rdata[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg4(1),
      I2 => slv_reg7(1),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[1]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[20]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(20),
      I5 => slv_reg5(20),
      O => s00_axi_rdata(20)
    );
\s00_axi_rdata[20]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(20),
      I1 => slv_reg4(20),
      I2 => slv_reg7(20),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[20]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[21]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(21),
      I5 => slv_reg5(21),
      O => s00_axi_rdata(21)
    );
\s00_axi_rdata[21]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(21),
      I1 => slv_reg4(21),
      I2 => slv_reg7(21),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[21]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[22]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(22),
      I5 => slv_reg5(22),
      O => s00_axi_rdata(22)
    );
\s00_axi_rdata[22]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(22),
      I1 => slv_reg4(22),
      I2 => slv_reg7(22),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[22]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[23]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(23),
      I5 => slv_reg5(23),
      O => s00_axi_rdata(23)
    );
\s00_axi_rdata[23]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(23),
      I1 => slv_reg4(23),
      I2 => slv_reg7(23),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[23]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[24]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(24),
      I5 => slv_reg5(24),
      O => s00_axi_rdata(24)
    );
\s00_axi_rdata[24]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(24),
      I1 => slv_reg4(24),
      I2 => slv_reg7(24),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[24]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[25]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(25),
      I5 => slv_reg5(25),
      O => s00_axi_rdata(25)
    );
\s00_axi_rdata[25]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(25),
      I1 => slv_reg4(25),
      I2 => slv_reg7(25),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[25]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[26]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(26),
      I5 => slv_reg5(26),
      O => s00_axi_rdata(26)
    );
\s00_axi_rdata[26]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(26),
      I1 => slv_reg4(26),
      I2 => slv_reg7(26),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[26]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[27]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(27),
      I5 => slv_reg5(27),
      O => s00_axi_rdata(27)
    );
\s00_axi_rdata[27]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(27),
      I1 => slv_reg4(27),
      I2 => slv_reg7(27),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[27]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[28]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(28),
      I5 => slv_reg5(28),
      O => s00_axi_rdata(28)
    );
\s00_axi_rdata[28]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(28),
      I1 => slv_reg4(28),
      I2 => slv_reg7(28),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[28]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[29]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(29),
      I5 => slv_reg5(29),
      O => s00_axi_rdata(29)
    );
\s00_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(29),
      I1 => slv_reg4(29),
      I2 => slv_reg7(29),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[2]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(2),
      I5 => slv_reg5(2),
      O => s00_axi_rdata(2)
    );
\s00_axi_rdata[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(2),
      I1 => slv_reg4(2),
      I2 => slv_reg7(2),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[2]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[30]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(30),
      I5 => slv_reg5(30),
      O => s00_axi_rdata(30)
    );
\s00_axi_rdata[30]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(30),
      I1 => slv_reg4(30),
      I2 => slv_reg7(30),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[30]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[31]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(31),
      I5 => slv_reg5(31),
      O => s00_axi_rdata(31)
    );
\s00_axi_rdata[31]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(31),
      I1 => slv_reg4(31),
      I2 => slv_reg7(31),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[31]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[3]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(3),
      I5 => slv_reg5(3),
      O => s00_axi_rdata(3)
    );
\s00_axi_rdata[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(3),
      I1 => slv_reg4(3),
      I2 => slv_reg7(3),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[3]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[4]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(4),
      I5 => slv_reg5(4),
      O => s00_axi_rdata(4)
    );
\s00_axi_rdata[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(4),
      I1 => slv_reg4(4),
      I2 => slv_reg7(4),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[4]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[5]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(5),
      I5 => slv_reg5(5),
      O => s00_axi_rdata(5)
    );
\s00_axi_rdata[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(5),
      I1 => slv_reg4(5),
      I2 => slv_reg7(5),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[5]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[6]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(6),
      I5 => slv_reg5(6),
      O => s00_axi_rdata(6)
    );
\s00_axi_rdata[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(6),
      I1 => slv_reg4(6),
      I2 => slv_reg7(6),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[6]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[7]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(7),
      I5 => slv_reg5(7),
      O => s00_axi_rdata(7)
    );
\s00_axi_rdata[7]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(7),
      I1 => slv_reg4(7),
      I2 => slv_reg7(7),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[7]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[8]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(8),
      I5 => slv_reg5(8),
      O => s00_axi_rdata(8)
    );
\s00_axi_rdata[8]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(8),
      I1 => slv_reg4(8),
      I2 => slv_reg7(8),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[8]_INST_0_i_1_n_0\
    );
\s00_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAEAAAEABAAAAAAA"
    )
        port map (
      I0 => \s00_axi_rdata[9]_INST_0_i_1_n_0\,
      I1 => sel0(0),
      I2 => sel0(2),
      I3 => sel0(1),
      I4 => slv_reg6(9),
      I5 => slv_reg5(9),
      O => s00_axi_rdata(9)
    );
\s00_axi_rdata[9]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F000000000CC00AA"
    )
        port map (
      I0 => slv_reg0(9),
      I1 => slv_reg4(9),
      I2 => slv_reg7(9),
      I3 => sel0(1),
      I4 => sel0(2),
      I5 => sel0(0),
      O => \s00_axi_rdata[9]_INST_0_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002220200000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(2),
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
      I2 => p_0_in(2),
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
      I2 => p_0_in(2),
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
      I0 => p_0_in(1),
      I1 => s00_axi_awaddr(1),
      I2 => p_0_in(0),
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
      I2 => p_0_in(2),
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
      Q => slv_reg0(0),
      R => inst_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => inst_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => inst_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => inst_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => inst_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => inst_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => inst_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => inst_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => inst_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => inst_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => inst_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => inst_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => inst_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => inst_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => inst_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => inst_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => inst_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => inst_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => inst_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => inst_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => inst_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => inst_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => inst_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => inst_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => inst_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => inst_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => inst_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => inst_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => inst_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => inst_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => inst_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => inst_n_0
    );
\slv_reg4[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(2),
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(1),
      O => \slv_reg4[15]_i_1_n_0\
    );
\slv_reg4[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(2),
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(2),
      O => \slv_reg4[23]_i_1_n_0\
    );
\slv_reg4[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(2),
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(3),
      O => \slv_reg4[31]_i_1_n_0\
    );
\slv_reg4[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg0[31]_i_2_n_0\,
      I2 => p_0_in(2),
      I3 => s00_axi_awvalid,
      I4 => s00_axi_awaddr(2),
      I5 => s00_axi_wstrb(0),
      O => \slv_reg4[7]_i_1_n_0\
    );
\slv_reg4_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg4(0),
      R => inst_n_0
    );
\slv_reg4_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg4(10),
      R => inst_n_0
    );
\slv_reg4_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg4(11),
      R => inst_n_0
    );
\slv_reg4_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg4(12),
      R => inst_n_0
    );
\slv_reg4_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg4(13),
      R => inst_n_0
    );
\slv_reg4_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg4(14),
      R => inst_n_0
    );
\slv_reg4_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg4(15),
      R => inst_n_0
    );
\slv_reg4_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg4(16),
      R => inst_n_0
    );
\slv_reg4_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg4(17),
      R => inst_n_0
    );
\slv_reg4_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg4(18),
      R => inst_n_0
    );
\slv_reg4_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg4(19),
      R => inst_n_0
    );
\slv_reg4_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg4(1),
      R => inst_n_0
    );
\slv_reg4_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg4(20),
      R => inst_n_0
    );
\slv_reg4_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg4(21),
      R => inst_n_0
    );
\slv_reg4_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg4(22),
      R => inst_n_0
    );
\slv_reg4_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg4(23),
      R => inst_n_0
    );
\slv_reg4_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg4(24),
      R => inst_n_0
    );
\slv_reg4_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg4(25),
      R => inst_n_0
    );
\slv_reg4_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg4(26),
      R => inst_n_0
    );
\slv_reg4_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg4(27),
      R => inst_n_0
    );
\slv_reg4_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg4(28),
      R => inst_n_0
    );
\slv_reg4_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg4(29),
      R => inst_n_0
    );
\slv_reg4_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg4(2),
      R => inst_n_0
    );
\slv_reg4_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg4(30),
      R => inst_n_0
    );
\slv_reg4_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg4(31),
      R => inst_n_0
    );
\slv_reg4_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg4(3),
      R => inst_n_0
    );
\slv_reg4_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg4(4),
      R => inst_n_0
    );
\slv_reg4_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg4(5),
      R => inst_n_0
    );
\slv_reg4_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg4(6),
      R => inst_n_0
    );
\slv_reg4_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg4(7),
      R => inst_n_0
    );
\slv_reg4_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg4(8),
      R => inst_n_0
    );
\slv_reg4_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg4[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg4(9),
      R => inst_n_0
    );
\slv_reg5[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A20000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => p_0_in(1),
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
      I1 => p_0_in(1),
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
      I1 => p_0_in(1),
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
      I0 => p_0_in(0),
      I1 => s00_axi_awaddr(0),
      I2 => p_0_in(2),
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
      I1 => p_0_in(1),
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
      R => inst_n_0
    );
\slv_reg5_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg5(10),
      R => inst_n_0
    );
\slv_reg5_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg5(11),
      R => inst_n_0
    );
\slv_reg5_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg5(12),
      R => inst_n_0
    );
\slv_reg5_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg5(13),
      R => inst_n_0
    );
\slv_reg5_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg5(14),
      R => inst_n_0
    );
\slv_reg5_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg5(15),
      R => inst_n_0
    );
\slv_reg5_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg5(16),
      R => inst_n_0
    );
\slv_reg5_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg5(17),
      R => inst_n_0
    );
\slv_reg5_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg5(18),
      R => inst_n_0
    );
\slv_reg5_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg5(19),
      R => inst_n_0
    );
\slv_reg5_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg5(1),
      R => inst_n_0
    );
\slv_reg5_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg5(20),
      R => inst_n_0
    );
\slv_reg5_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg5(21),
      R => inst_n_0
    );
\slv_reg5_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg5(22),
      R => inst_n_0
    );
\slv_reg5_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg5(23),
      R => inst_n_0
    );
\slv_reg5_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg5(24),
      R => inst_n_0
    );
\slv_reg5_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg5(25),
      R => inst_n_0
    );
\slv_reg5_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg5(26),
      R => inst_n_0
    );
\slv_reg5_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg5(27),
      R => inst_n_0
    );
\slv_reg5_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg5(28),
      R => inst_n_0
    );
\slv_reg5_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg5(29),
      R => inst_n_0
    );
\slv_reg5_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg5(2),
      R => inst_n_0
    );
\slv_reg5_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg5(30),
      R => inst_n_0
    );
\slv_reg5_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg5(31),
      R => inst_n_0
    );
\slv_reg5_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg5(3),
      R => inst_n_0
    );
\slv_reg5_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg5(4),
      R => inst_n_0
    );
\slv_reg5_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg5(5),
      R => inst_n_0
    );
\slv_reg5_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg5(6),
      R => inst_n_0
    );
\slv_reg5_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg5(7),
      R => inst_n_0
    );
\slv_reg5_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg5(8),
      R => inst_n_0
    );
\slv_reg5_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg5[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg5(9),
      R => inst_n_0
    );
\slv_reg6[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020200000002000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg6[31]_i_2_n_0\,
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(2),
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
      I3 => p_0_in(2),
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
      I3 => p_0_in(2),
      I4 => s00_axi_awvalid,
      I5 => s00_axi_awaddr(2),
      O => \slv_reg6[31]_i_1_n_0\
    );
\slv_reg6[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCAFFFAF"
    )
        port map (
      I0 => p_0_in(0),
      I1 => s00_axi_awaddr(0),
      I2 => p_0_in(1),
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
      I3 => p_0_in(2),
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
      R => inst_n_0
    );
\slv_reg6_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg6(10),
      R => inst_n_0
    );
\slv_reg6_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg6(11),
      R => inst_n_0
    );
\slv_reg6_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg6(12),
      R => inst_n_0
    );
\slv_reg6_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg6(13),
      R => inst_n_0
    );
\slv_reg6_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg6(14),
      R => inst_n_0
    );
\slv_reg6_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg6(15),
      R => inst_n_0
    );
\slv_reg6_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg6(16),
      R => inst_n_0
    );
\slv_reg6_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg6(17),
      R => inst_n_0
    );
\slv_reg6_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg6(18),
      R => inst_n_0
    );
\slv_reg6_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg6(19),
      R => inst_n_0
    );
\slv_reg6_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg6(1),
      R => inst_n_0
    );
\slv_reg6_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg6(20),
      R => inst_n_0
    );
\slv_reg6_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg6(21),
      R => inst_n_0
    );
\slv_reg6_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg6(22),
      R => inst_n_0
    );
\slv_reg6_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg6(23),
      R => inst_n_0
    );
\slv_reg6_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg6(24),
      R => inst_n_0
    );
\slv_reg6_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg6(25),
      R => inst_n_0
    );
\slv_reg6_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg6(26),
      R => inst_n_0
    );
\slv_reg6_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg6(27),
      R => inst_n_0
    );
\slv_reg6_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg6(28),
      R => inst_n_0
    );
\slv_reg6_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg6(29),
      R => inst_n_0
    );
\slv_reg6_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg6(2),
      R => inst_n_0
    );
\slv_reg6_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg6(30),
      R => inst_n_0
    );
\slv_reg6_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg6(31),
      R => inst_n_0
    );
\slv_reg6_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg6(3),
      R => inst_n_0
    );
\slv_reg6_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg6(4),
      R => inst_n_0
    );
\slv_reg6_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg6(5),
      R => inst_n_0
    );
\slv_reg6_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg6(6),
      R => inst_n_0
    );
\slv_reg6_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg6(7),
      R => inst_n_0
    );
\slv_reg6_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg6(8),
      R => inst_n_0
    );
\slv_reg6_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg6[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg6(9),
      R => inst_n_0
    );
\slv_reg7[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2220002000000000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \slv_reg7[31]_i_2_n_0\,
      I2 => p_0_in(2),
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
      I2 => p_0_in(2),
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
      I2 => p_0_in(2),
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
      I0 => p_0_in(1),
      I1 => s00_axi_awaddr(1),
      I2 => p_0_in(0),
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
      I2 => p_0_in(2),
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
      R => inst_n_0
    );
\slv_reg7_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg7(10),
      R => inst_n_0
    );
\slv_reg7_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg7(11),
      R => inst_n_0
    );
\slv_reg7_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg7(12),
      R => inst_n_0
    );
\slv_reg7_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg7(13),
      R => inst_n_0
    );
\slv_reg7_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg7(14),
      R => inst_n_0
    );
\slv_reg7_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg7(15),
      R => inst_n_0
    );
\slv_reg7_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg7(16),
      R => inst_n_0
    );
\slv_reg7_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg7(17),
      R => inst_n_0
    );
\slv_reg7_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg7(18),
      R => inst_n_0
    );
\slv_reg7_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg7(19),
      R => inst_n_0
    );
\slv_reg7_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg7(1),
      R => inst_n_0
    );
\slv_reg7_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg7(20),
      R => inst_n_0
    );
\slv_reg7_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg7(21),
      R => inst_n_0
    );
\slv_reg7_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg7(22),
      R => inst_n_0
    );
\slv_reg7_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg7(23),
      R => inst_n_0
    );
\slv_reg7_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg7(24),
      R => inst_n_0
    );
\slv_reg7_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg7(25),
      R => inst_n_0
    );
\slv_reg7_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg7(26),
      R => inst_n_0
    );
\slv_reg7_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg7(27),
      R => inst_n_0
    );
\slv_reg7_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg7(28),
      R => inst_n_0
    );
\slv_reg7_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg7(29),
      R => inst_n_0
    );
\slv_reg7_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg7(2),
      R => inst_n_0
    );
\slv_reg7_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg7(30),
      R => inst_n_0
    );
\slv_reg7_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg7(31),
      R => inst_n_0
    );
\slv_reg7_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg7(3),
      R => inst_n_0
    );
\slv_reg7_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg7(4),
      R => inst_n_0
    );
\slv_reg7_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg7(5),
      R => inst_n_0
    );
\slv_reg7_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg7(6),
      R => inst_n_0
    );
\slv_reg7_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg7(7),
      R => inst_n_0
    );
\slv_reg7_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg7(8),
      R => inst_n_0
    );
\slv_reg7_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg7[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg7(9),
      R => inst_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch is
  port (
    axi_awready_reg : out STD_LOGIC;
    axi_arready_reg : out STD_LOGIC;
    axi_rvalid_reg : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
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
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch is
begin
myip_koreawatch_slave_lite_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch_slave_lite_v1_0_S00_AXI
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
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "soc_watch_myip_koreawatch_0_0,myip_koreawatch,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "myip_koreawatch,Vivado 2024.2";
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
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_myip_koreawatch
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
