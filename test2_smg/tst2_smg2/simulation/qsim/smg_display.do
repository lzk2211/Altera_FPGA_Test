onerror {exit -code 1}
vlib work
vlog -work work smg_display.vo
vlog -work work smg_display1.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.smg_display3_vlg_vec_tst -voptargs="+acc"
vcd file -direction smg_display.msim.vcd
vcd add -internal smg_display3_vlg_vec_tst/*
vcd add -internal smg_display3_vlg_vec_tst/i1/*
run -all
quit -f
