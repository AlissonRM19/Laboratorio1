transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/battleship.sv}
vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/fsm.sv}
vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/contador_seg.sv}
vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/comparador.sv}
vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/clk_divider.sv}
vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/barcos_move.sv}
vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/ataque.sv}

vlog -sv -work work +incdir+C:/Users/Alisson\ RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship {C:/Users/Alisson RM/Documents/GitHub/Laboratorio1/laboratorio_3/Battleship/battleship_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  battleship_tb

add wave *
view structure
view signals
run -all
