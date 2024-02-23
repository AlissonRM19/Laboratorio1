transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Sumador4bits.vho}

vcom -93 -work work {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/Problema2/sumador4bits_tb.vhd}

vsim -t 1ps -L altera -L altera_lnsim -L cyclonev -L gate_work -L work -voptargs="+acc"  sumador4bits_tb

add wave *
view structure
view signals
run -all
