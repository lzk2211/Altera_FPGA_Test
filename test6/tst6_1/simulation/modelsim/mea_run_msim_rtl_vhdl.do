transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/Field_Programable_Gate_Array/FPGA_text_final/tst6_/Clock_Division.vhd}
vcom -93 -work work {E:/Field_Programable_Gate_Array/FPGA_text_final/tst6_/switch_scoure.vhd}
vcom -93 -work work {E:/Field_Programable_Gate_Array/FPGA_text_final/tst6_/count_add.vhd}
vcom -93 -work work {E:/Field_Programable_Gate_Array/FPGA_text_final/tst6_/smg_display.vhd}

