# XEM7310 - Xilinx constraints file
#
# Pin mappings for the XEM7310.  Use this as a template and comment out
# the pins that are not used in your design.  (By default, map will fail
# if this file contains constraints for signals not in your design).
#
# Copyright (c) 2004-2016 Opal Kelly Incorporated
############################################################################

set_property CFGBVS GND[current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS True [current_design]

############################################################################
## FrontPanel Host Interface
############################################################################
set_property PACKAGE_PIN Y19[get_ports {okHU[0]}]
set_property PACKAGE_PIN R18[get_ports {okHU[1]}]
set_property PACKAGE_PIN R16[get_ports {okHU[2]}]
set_property SLEW FAST[get_ports {okHU[*]}]
set_property IOSTANDARD LVCMOS18[get_ports {okHU[*]}]

set_property PACKAGE_PIN W19[get_ports {okUH[0]}]
set_property PACKAGE_PIN V18[get_ports {okUH[1]}]
set_property PACKAGE_PIN U17[get_ports {okUH[2]}]
set_property PACKAGE_PIN W17[get_ports {okUH[3]}]
set_property PACKAGE_PIN T19[get_ports {okUH[4]}]
set_property IOSTANDARD LVCMOS18[get_ports {okUH[*]}]

set_property PACKAGE_PIN AB22[get_ports {okUHU[0]}]
set_property PACKAGE_PIN AB21[get_ports {okUHU[1]}]
set_property PACKAGE_PIN Y22[get_ports {okUHU[2]}]
set_property PACKAGE_PIN AA21[get_ports {okUHU[3]}]
set_property PACKAGE_PIN AA20[get_ports {okUHU[4]}]
set_property PACKAGE_PIN W22[get_ports {okUHU[5]}]
set_property PACKAGE_PIN W21[get_ports {okUHU[6]}]
set_property PACKAGE_PIN T20[get_ports {okUHU[7]}]
set_property PACKAGE_PIN R19[get_ports {okUHU[8]}]
set_property PACKAGE_PIN P19[get_ports {okUHU[9]}]
set_property PACKAGE_PIN U21[get_ports {okUHU[10]}]
set_property PACKAGE_PIN T21[get_ports {okUHU[11]}]
set_property PACKAGE_PIN R21[get_ports {okUHU[12]}]
set_property PACKAGE_PIN P21[get_ports {okUHU[13]}]
set_property PACKAGE_PIN R22[get_ports {okUHU[14]}]
set_property PACKAGE_PIN P22[get_ports {okUHU[15]}]
set_property PACKAGE_PIN R14[get_ports {okUHU[16]}]
set_property PACKAGE_PIN W20[get_ports {okUHU[17]}]
set_property PACKAGE_PIN Y21[get_ports {okUHU[18]}]
set_property PACKAGE_PIN P17[get_ports {okUHU[19]}]
set_property PACKAGE_PIN U20[get_ports {okUHU[20]}]
set_property PACKAGE_PIN N17[get_ports {okUHU[21]}]
set_property PACKAGE_PIN N14[get_ports {okUHU[22]}]
set_property PACKAGE_PIN V20[get_ports {okUHU[23]}]
set_property PACKAGE_PIN P16[get_ports {okUHU[24]}]
set_property PACKAGE_PIN T18[get_ports {okUHU[25]}]
set_property PACKAGE_PIN V19[get_ports {okUHU[26]}]
set_property PACKAGE_PIN AB20[get_ports {okUHU[27]}]
set_property PACKAGE_PIN P15[get_ports {okUHU[28]}]
set_property PACKAGE_PIN V22[get_ports {okUHU[29]}]
set_property PACKAGE_PIN U18[get_ports {okUHU[30]}]
set_property PACKAGE_PIN AB18[get_ports {okUHU[31]}]
set_property SLEW FAST[get_ports {okUHU[*]}]
set_property IOSTANDARD LVCMOS18[get_ports {okUHU[*]}]

set_property PACKAGE_PIN N13[get_ports {okAA}]
set_property IOSTANDARD LVCMOS18[get_ports {okAA}]


create_clock - name okUH0 - period 9.920 [get_ports {okUH[0]}]

set_input_delay - add_delay - max - clock[get_clocks {okUH0}]  8.000 [get_ports {okUH[*]}]
set_input_delay - add_delay - min - clock[get_clocks {okUH0}] 10.000 [get_ports {okUH[*]}]
set_multicycle_path - setup - from [get_ports {okUH[*]}] 2

set_input_delay - add_delay - max - clock[get_clocks {okUH0}]  8.000 [get_ports {okUHU[*]}]
set_input_delay - add_delay - min - clock[get_clocks {okUH0}]  2.000 [get_ports {okUHU[*]}]
set_multicycle_path - setup - from [get_ports {okUHU[*]}] 2

set_output_delay - add_delay - max - clock[get_clocks {okUH0}]  2.000 [get_ports {okHU[*]}]
set_output_delay - add_delay - min - clock[get_clocks {okUH0}] - 0.500 [get_ports {okHU[*]}]

set_output_delay - add_delay - max - clock[get_clocks {okUH0}]  2.000 [get_ports {okUHU[*]}]
set_output_delay - add_delay - min - clock[get_clocks {okUH0}] - 0.500 [get_ports {okUHU[*]}]


############################################################################
## System Clock
############################################################################
set_property IOSTANDARD LVDS_25[get_ports {sys_clkp}]
set_property PACKAGE_PIN W11[get_ports {sys_clkp}]

set_property IOSTANDARD LVDS_25[get_ports {sys_clkn}]
set_property PACKAGE_PIN W12[get_ports {sys_clkn}]

set_property DIFF_TERM FALSE[get_ports {sys_clkp}]

create_clock - name sys_clk - period 5 [get_ports sys_clkp]
set_clock_groups - asynchronous - group[get_clocks {sys_clk}] - group[get_clocks {mmcm0_clk0 okUH0}]

############################################################################
## User Reset
############################################################################
set_property PACKAGE_PIN Y18[get_ports {pushreset}]
set_property IOSTANDARD LVCMOS18[get_ports {pushreset}]
set_property SLEW FAST[get_ports {pushreset}]

## MC1-1
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-2
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-3
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-4
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-5
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-6
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-7
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-8
#set_property PACKAGE_PIN AB11 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC1-9
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-10
#set_property PACKAGE_PIN M9 [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-11
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-12
#set_property PACKAGE_PIN L10 [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-13
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-14
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-15
set_property PACKAGE_PIN W9 [get_ports {a_cnv_p[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_p[3]}]
## MC1-16
set_property PACKAGE_PIN V9 [get_ports {gp_lvds_p[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_p[3]}]
## MC1-17
set_property PACKAGE_PIN Y9 [get_ports {a_cnv_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_n[3]}]
## MC1-18
set_property PACKAGE_PIN V8 [get_ports {gp_lvds_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_n[3]}]
## MC1-19
set_property PACKAGE_PIN R6 [get_ports {a_d_p[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_p[3]}]
## MC1-20
set_property PACKAGE_PIN V7 [get_ports {gp_lvds_p[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_p[2]}]
## MC1-21
set_property PACKAGE_PIN T6 [get_ports {a_d_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_n[3]}]
## MC1-22
set_property PACKAGE_PIN W7 [get_ports {gp_lvds_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_n[2]}]
## MC1-23
set_property PACKAGE_PIN U6 [get_ports {a_clk_p[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_p[3]}]
## MC1-24
set_property PACKAGE_PIN Y8 [get_ports {gp_lvds_p[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_p[1]}]
## MC1-25
set_property PACKAGE_PIN V5 [get_ports {a_clk_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_n[3]}]
## MC1-26
set_property PACKAGE_PIN Y7 [get_ports {gp_lvds_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_n[1]}]
## MC1-27
set_property PACKAGE_PIN T5 [get_ports {a_dco_p[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_p[3]}]
## MC1-28
set_property PACKAGE_PIN W6 [get_ports {a_cnv_p[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_p[2]}]
## MC1-29
set_property PACKAGE_PIN U5 [get_ports {a_dco_n[3]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_n[3]}]
## MC1-30
set_property PACKAGE_PIN W5 [get_ports {a_cnv_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_n[2]}]
## MC1-31
set_property PACKAGE_PIN AA5 [get_ports {a_d_p[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_p[2]}]
## MC1-32
set_property PACKAGE_PIN R4 [get_ports {a_dco_p[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_p[2]}]
## MC1-33
set_property PACKAGE_PIN AB5 [get_ports {a_d_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_n[2]}]
## MC1-34
set_property PACKAGE_PIN T4 [get_ports {a_dco_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_n[2]}]
## MC1-35
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-36
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-37
set_property PACKAGE_PIN AB7 [get_ports {a_clk_p[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_p[2]}]
## MC1-38
set_property PACKAGE_PIN Y4 [get_ports {a_dco_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_p[0]}]
## MC1-39
set_property PACKAGE_PIN AB6 [get_ports {a_clk_n[2]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_n[2]}]
## MC1-40
set_property PACKAGE_PIN AA4 [get_ports {a_dco_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_n[0]}]
## MC1-41
set_property PACKAGE_PIN R3 [get_ports {a_cnv_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_p[0]}]
## MC1-42
set_property PACKAGE_PIN Y6 [get_ports {gp_lvds_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_p[0]}]
## MC1-43
set_property PACKAGE_PIN R2 [get_ports {a_cnv_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_n[0]}]
## MC1-44
set_property PACKAGE_PIN AA6 [get_ports {gp_lvds_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {gp_lvds_n[0]}]
## MC1-45
set_property PACKAGE_PIN Y3 [get_ports {a_d_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_p[0]}]
## MC1-46
set_property PACKAGE_PIN AA8 [get_ports {a_en0_hv[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_en0_hv[0]}]
## MC1-47
set_property PACKAGE_PIN AA3 [get_ports {a_d_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_n[0]}]
## MC1-48
set_property PACKAGE_PIN AB8 [get_ports {a_en0_hv[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_en0_hv[1]}]
## MC1-49
set_property PACKAGE_PIN U2 [get_ports {a_clk_p[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_p[0]}]
## MC1-50
set_property PACKAGE_PIN U3 [get_ports {a_en0_hv[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_en0_hv[2]}]
## MC1-51
set_property PACKAGE_PIN V2 [get_ports {a_clk_n[0]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_n[0]}]
## MC1-52
set_property PACKAGE_PIN V3 [get_ports {a_en0_hv[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_en0_hv[3]}]
## MC1-53
set_property PACKAGE_PIN W2 [get_ports {a_cnv_p[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_p[1]}]
## MC1-54
set_property PACKAGE_PIN W1 [get_ports {a_en_hv[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_en_hv[0]}]
## MC1-55
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-56
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-57
set_property PACKAGE_PIN Y2 [get_ports {a_cnv_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_cnv_n[1]}]
## MC1-58
set_property PACKAGE_PIN Y1 [get_ports {a_en_hv[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_en_hv[1]}]
## MC1-59
set_property PACKAGE_PIN T1 [get_ports {a_d_p[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_p[1]}]
## MC1-60
set_property PACKAGE_PIN AB3 [get_ports {a_en_hv[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {a_en_hv[2]}]
## MC1-61
set_property PACKAGE_PIN U1 [get_ports {a_d_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_d_n[1]}]
## MC1-62
#set_property PACKAGE_PIN AB2 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC1-63
set_property PACKAGE_PIN AA1 [get_ports {a_clk_p[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_p[1]}]
## MC1-64
#set_property PACKAGE_PIN Y13 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC1-65
set_property PACKAGE_PIN AB1 [get_ports {a_clk_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_clk_n[1]}]
## MC1-66
set_property PACKAGE_PIN AA14 [get_ports {up[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {up[0]}]
## MC1-67
set_property PACKAGE_PIN AB16 [get_ports {dn[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dn[4]}]
## MC1-68
set_property PACKAGE_PIN AA13 [get_ports {up[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {up[1]}]
## MC1-69
set_property PACKAGE_PIN AB17 [get_ports {dn[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dn[3]}]
## MC1-70
set_property PACKAGE_PIN AB13 [get_ports {up[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {up[2]}]
## MC1-71
set_property PACKAGE_PIN AA15 [get_ports {dn[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dn[2]}]
## MC1-72
set_property PACKAGE_PIN W15 [get_ports {up[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {up[3]}]
## MC1-73
set_property PACKAGE_PIN AB15 [get_ports {dn[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dn[1]}]
## MC1-74
set_property PACKAGE_PIN W16 [get_ports {up[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {up[4]}]
## MC1-75
set_property PACKAGE_PIN Y16 [get_ports {dn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dn[0]}]
## MC1-76
set_property PACKAGE_PIN AA16 [get_ports {up[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {up[5]}]
## MC1-77
set_property PACKAGE_PIN V4 [get_ports {a_dco_p[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_p[1]}]
## MC1-78
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC1-79
set_property PACKAGE_PIN W4 [get_ports {a_dco_n[1]}]
set_property IOSTANDARD LVDS_25 [get_ports {a_dco_n[1]}]
## MC1-80
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-1
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-2
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-3
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-4
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-5
#set_property PACKAGE_PIN V12 [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-6
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-7
#set_property PACKAGE_PIN T13 [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-8
#set_property PACKAGE_PIN U13 [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-9
#set_property PACKAGE_PIN R13 [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-10
#set_property PACKAGE_PIN F4 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC2-11
#set_property PACKAGE_PIN AB12 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC2-12
set_property PACKAGE_PIN L6 [get_ports {ads_resetb}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_resetb}]
## MC2-13
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-14
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-15
set_property PACKAGE_PIN P5 [get_ports {d_csb[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_csb[5]}]
## MC2-16
set_property PACKAGE_PIN P6 [get_ports {ads_sclk}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_sclk}]
## MC2-17
set_property PACKAGE_PIN P4 [get_ports {d_sdi[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sdi[5]}]
## MC2-18
set_property PACKAGE_PIN N5 [get_ports {ads_sdoa}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_sdoa}]
## MC2-19
set_property PACKAGE_PIN N4 [get_ports {d_sclk[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sclk[5]}]
## MC2-20
set_property PACKAGE_PIN P2 [get_ports {ads_sdi}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_sdi}]
## MC2-21
set_property PACKAGE_PIN N3 [get_ports {d_csb[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_csb[4]}]
## MC2-22
set_property PACKAGE_PIN N2 [get_ports {ads_sdob}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_sdob}]
## MC2-23
set_property PACKAGE_PIN L5 [get_ports {d_sdi[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sdi[4]}]
## MC2-24
set_property PACKAGE_PIN R1 [get_ports {ads_csb}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_csb}]
## MC2-25
set_property PACKAGE_PIN L4 [get_ports {d_sclk[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sclk[4]}]
## MC2-26
set_property PACKAGE_PIN P1 [get_ports {ads_convst}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_convst}]
## MC2-27
set_property PACKAGE_PIN M6 [get_ports {d_csb[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_csb[3]}]
## MC2-28
set_property PACKAGE_PIN M3 [get_ports {ads_busy}]
set_property IOSTANDARD LVCMOS33 [get_ports {ads_busy}]
## MC2-29
set_property PACKAGE_PIN M5 [get_ports {d_sdi[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sdi[3]}]
## MC2-30
set_property PACKAGE_PIN M2 [get_ports {ds_sdo[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_sdo[0]}]
## MC2-31
set_property PACKAGE_PIN M1 [get_ports {d_sclk[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sclk[3]}]
## MC2-32
set_property PACKAGE_PIN K6 [get_ports {ds_sclk[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_sclk[0]}]
## MC2-33
set_property PACKAGE_PIN L1 [get_ports {d_csb[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_csb[2]}]
## MC2-34
set_property PACKAGE_PIN J6 [get_ports {ds_csb[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_csb[0]}]
## MC2-35
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-36
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-37
set_property PACKAGE_PIN K2 [get_ports {d_sdi[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sdi[2]}]
## MC2-38
set_property PACKAGE_PIN L3 [get_ports {ds_sdi[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_sdi[0]}]
## MC2-39
set_property PACKAGE_PIN J2 [get_ports {d_sclk[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sclk[2]}]
## MC2-40
set_property PACKAGE_PIN K3 [get_ports {ds_sdo[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_sdo[1]}]
## MC2-41
set_property PACKAGE_PIN K1 [get_ports {d_csb[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_csb[0]}]
## MC2-42
set_property PACKAGE_PIN J5 [get_ports {ds_sclk[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_sclk[1]}]
## MC2-43
set_property PACKAGE_PIN J1 [get_ports {d_sdi[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sdi[0]}]
## MC2-44
set_property PACKAGE_PIN H5 [get_ports {ds_csb[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_csb[1]}]
## MC2-45
set_property PACKAGE_PIN H3 [get_ports {d_sclk[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sclk[0]}]
## MC2-46
set_property PACKAGE_PIN H2 [get_ports {ds_sdi[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {ds_sdi[1]}]
## MC2-47
set_property PACKAGE_PIN G3 [get_ports {d_csb[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_csb[1]}]
## MC2-48
set_property PACKAGE_PIN G2 [get_ports {en_5v}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_5v}]
## MC2-49
set_property PACKAGE_PIN E2 [get_ports {d_sdi[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sdi[1]}]
## MC2-50
set_property PACKAGE_PIN G1 [get_ports {en_3v3}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_3v3}]
## MC2-51
set_property PACKAGE_PIN D2 [get_ports {d_sclk[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {d_sclk[1]}]
## MC2-52
set_property PACKAGE_PIN F1 [get_ports {en_1v8}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_1v8}]
## MC2-53
set_property PACKAGE_PIN F3 [get_ports {gpio[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[2]}]
## MC2-54
set_property PACKAGE_PIN E1 [get_ports {en_15v}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_15v}]
## MC2-55
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-56
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-57
set_property PACKAGE_PIN E3 [get_ports {gpio[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[1]}]
## MC2-58
set_property PACKAGE_PIN D1 [get_ports {en_n15v}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_n15v}]
## MC2-59
set_property PACKAGE_PIN B1 [get_ports {gpio[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[3]}]
## MC2-60
#set_property PACKAGE_PIN C2 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC2-61
set_property PACKAGE_PIN A1 [get_ports {dn[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dn[5]}]
## MC2-62
set_property PACKAGE_PIN B2 [get_ports {ls_sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {ls_sda}]
## MC2-63
set_property PACKAGE_PIN K4 [get_ports {ls_scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {ls_scl}]
## MC2-64
set_property PACKAGE_PIN U15 [get_ports {qw_sda}]
set_property IOSTANDARD LVCMOS33 [get_ports {qw_sda}]
## MC2-65
set_property PACKAGE_PIN J4 [get_ports {qw_scl}]
set_property IOSTANDARD LVCMOS33 [get_ports {qw_scl}]
## MC2-66
set_property PACKAGE_PIN V15 [get_ports {dc_sda[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_sda[0]}]
## MC2-67
set_property PACKAGE_PIN T16 [get_ports {dc_scl[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_scl[0]}]
## MC2-68
set_property PACKAGE_PIN T14 [get_ports {dc_sda[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_sda[1]}]
## MC2-69
set_property PACKAGE_PIN U16 [get_ports {dc_scl[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_scl[1]}]
## MC2-70
set_property PACKAGE_PIN T15 [get_ports {dc_sda[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_sda[2]}]
## MC2-71
set_property PACKAGE_PIN V13 [get_ports {dc_scl[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_scl[2]}]
## MC2-72
set_property PACKAGE_PIN W14 [get_ports {dc_sda[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_sda[3]}]
## MC2-73
set_property PACKAGE_PIN V14 [get_ports {dc_scl[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {dc_scl[3]}]
## MC2-74
set_property PACKAGE_PIN Y14 [get_ports {en_ipump[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_ipump[0]}]
## MC2-75
set_property PACKAGE_PIN Y11 [get_ports {gpio[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {gpio[0]}]
## MC2-76
set_property PACKAGE_PIN Y12 [get_ports {en_ipump[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {en_ipump[1]}]
## MC2-77
#set_property PACKAGE_PIN H4 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC2-78
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
## MC2-79
#set_property PACKAGE_PIN G4 [get_ports {}]
#set_property IOSTANDARD LVCMOS33 [get_ports {}]
## MC2-80
#set_property PACKAGE_PIN nan [get_ports {}]
#set_property IOSTANDARD  [get_ports {}]
