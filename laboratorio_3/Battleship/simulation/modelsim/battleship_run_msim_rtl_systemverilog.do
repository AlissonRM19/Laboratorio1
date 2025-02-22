transcript on
if ![file isdirectory battleship_iputf_libs] {
	file mkdir battleship_iputf_libs
}

if ![file isdirectory verilog_libs] {
	file mkdir verilog_libs
}

if ![file isdirectory vhdl_libs] {
	file mkdir vhdl_libs
}

vlib verilog_libs/altera_ver
vmap altera_ver ./verilog_libs/altera_ver
vlog -vlog01compat -work altera_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_primitives.v}

vlib verilog_libs/lpm_ver
vmap lpm_ver ./verilog_libs/lpm_ver
vlog -vlog01compat -work lpm_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/220model.v}

vlib verilog_libs/sgate_ver
vmap sgate_ver ./verilog_libs/sgate_ver
vlog -vlog01compat -work sgate_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/sgate.v}

vlib verilog_libs/altera_mf_ver
vmap altera_mf_ver ./verilog_libs/altera_mf_ver
vlog -vlog01compat -work altera_mf_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_mf.v}

vlib verilog_libs/altera_lnsim_ver
vmap altera_lnsim_ver ./verilog_libs/altera_lnsim_ver
vlog -sv -work altera_lnsim_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/altera_lnsim.sv}

vlib verilog_libs/cyclonev_ver
vmap cyclonev_ver ./verilog_libs/cyclonev_ver
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_atoms.v}

vlib verilog_libs/cyclonev_hssi_ver
vmap cyclonev_hssi_ver ./verilog_libs/cyclonev_hssi_ver
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_hssi_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_hssi_atoms.v}

vlib verilog_libs/cyclonev_pcie_hip_ver
vmap cyclonev_pcie_hip_ver ./verilog_libs/cyclonev_pcie_hip_ver
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v}
vlog -vlog01compat -work cyclonev_pcie_hip_ver {c:/intelfpga_lite/22.1std/quartus/eda/sim_lib/cyclonev_pcie_hip_atoms.v}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/pll_sim/pll.vo"

vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/manage_life.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/conexion_vga.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/barcos_move_pc.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/ataque_pc.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/LFSR.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/battleship.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/fsm.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/contador_seg.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/comparador.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/clk_divider.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/barcos_move.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/ataque.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/vga.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/vgaController.sv}
vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/videoGen.sv}

vlog -sv -work work +incdir+C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship {C:/Users/mende/Desktop/TEC/QuartusProyects/Laboratorio1/laboratorio_3/Battleship/battleship_tb.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  battleship_tb

add wave *
view structure
view signals
run -all
