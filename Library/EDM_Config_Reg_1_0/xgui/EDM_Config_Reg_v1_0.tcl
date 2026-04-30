# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  #Adding Page
  set Parameter_Default_Config [ipgui::add_page $IPINST -name "Parameter Default Config"]
  ipgui::add_param $IPINST -name "breakdown_threshold_default" -parent ${Parameter_Default_Config}
  ipgui::add_param $IPINST -name "energy_threshold_default" -parent ${Parameter_Default_Config}
  ipgui::add_param $IPINST -name "cfg_update_toggle_default" -parent ${Parameter_Default_Config}

  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0" -display_name {AXI Config}]
  ipgui::add_param $IPINST -name "C_S00_AXI_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_S00_AXI_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_S00_AXI_HIGHADDR" -parent ${Page_0}


}

proc update_PARAM_VALUE.breakdown_threshold_default { PARAM_VALUE.breakdown_threshold_default } {
	# Procedure called to update breakdown_threshold_default when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.breakdown_threshold_default { PARAM_VALUE.breakdown_threshold_default } {
	# Procedure called to validate breakdown_threshold_default
	return true
}

proc update_PARAM_VALUE.cfg_update_toggle_default { PARAM_VALUE.cfg_update_toggle_default } {
	# Procedure called to update cfg_update_toggle_default when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.cfg_update_toggle_default { PARAM_VALUE.cfg_update_toggle_default } {
	# Procedure called to validate cfg_update_toggle_default
	return true
}

proc update_PARAM_VALUE.energy_threshold_default { PARAM_VALUE.energy_threshold_default } {
	# Procedure called to update energy_threshold_default when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.energy_threshold_default { PARAM_VALUE.energy_threshold_default } {
	# Procedure called to validate energy_threshold_default
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to update C_S00_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_DATA_WIDTH { PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S00_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to update C_S00_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_ADDR_WIDTH { PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S00_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH PARAM_VALUE.C_S00_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH PARAM_VALUE.C_S00_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S00_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S00_AXI_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.breakdown_threshold_default { MODELPARAM_VALUE.breakdown_threshold_default PARAM_VALUE.breakdown_threshold_default } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.breakdown_threshold_default}] ${MODELPARAM_VALUE.breakdown_threshold_default}
}

proc update_MODELPARAM_VALUE.energy_threshold_default { MODELPARAM_VALUE.energy_threshold_default PARAM_VALUE.energy_threshold_default } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.energy_threshold_default}] ${MODELPARAM_VALUE.energy_threshold_default}
}

proc update_MODELPARAM_VALUE.cfg_update_toggle_default { MODELPARAM_VALUE.cfg_update_toggle_default PARAM_VALUE.cfg_update_toggle_default } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.cfg_update_toggle_default}] ${MODELPARAM_VALUE.cfg_update_toggle_default}
}

