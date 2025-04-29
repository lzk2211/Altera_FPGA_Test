onerror {exit -code 1}
vlib work
vlog -work work bjq.vo
vlog -work work tst1_38.vwf.vt
vsim -novopt -c -t 1ps -L cycloneive_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bjq_vlg_vec_tst -voptargs="+acc"
vcd file -direction bjq.msim.vcd
vcd add -internal bjq_vlg_vec_tst/*
vcd add -internal bjq_vlg_vec_tst/i1/*
run -all
quit -f
