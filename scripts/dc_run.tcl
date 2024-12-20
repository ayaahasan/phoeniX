read_verilog phoeniX.v
link
source phoeniX_constraints.tcl
compile
write -f ddc -hierarchy -out phoeniX.ddc
write -f Verilog -hierarchy -out phoeniX_dc.v
write_sdc phoeniX.sdc
redirect -file phoeniX_area.rpt {report_area}
redirect -file phoeniX_timing.rpt {report_timing}
redirect -file phoeniX_clock.rpt {report_clock}
redirect -file -append phoeniX_clock.rpt {report_clock -skew}
exit
