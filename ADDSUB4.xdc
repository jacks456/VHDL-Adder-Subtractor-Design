 # Clock
set_property PACKAGE_PIN Y9 [get_ports {clk}];  # "GCLK"
create_clock -period 100.000 -name CLK -waveform {0.000 50.000} [get_ports clk]

# OLED display
set_property PACKAGE_PIN U10  [get_ports {oled_dc}];  # "OLED-DC"
set_property PACKAGE_PIN U9   [get_ports {oled_res}];  # "OLED-RES"
set_property PACKAGE_PIN AB12 [get_ports {oled_sclk}];  # "OLED-SCLK"
set_property PACKAGE_PIN AA12 [get_ports {oled_sdin}];  # "OLED-SDIN"
set_property PACKAGE_PIN U11  [get_ports {oled_vbat}];  # "OLED-VBAT"
set_property PACKAGE_PIN U12  [get_ports {oled_vdd}];  # "OLED-VDD"

# Reset
set_property PACKAGE_PIN P16 [get_ports {rst}];  # "BTNC"

 
 # "SW7"
set_property PACKAGE_PIN M15 [get_ports A3] 
set_property IOSTANDARD LVCMOS33 [get_ports A3]
# "SW6"
set_property PACKAGE_PIN H17 [get_ports A2]  
set_property IOSTANDARD LVCMOS33 [get_ports A2]
# "SW6"
set_property PACKAGE_PIN H18 [get_ports A1]  
set_property IOSTANDARD LVCMOS33 [get_ports A1]
# "SW5"
set_property PACKAGE_PIN H19 [get_ports A0] 
set_property IOSTANDARD LVCMOS33 [get_ports A0]
# "SW4"
set_property PACKAGE_PIN F21 [get_ports B3]  
set_property IOSTANDARD LVCMOS33 [get_ports B3]
# "SW3"
set_property PACKAGE_PIN H22 [get_ports B2]  
set_property IOSTANDARD LVCMOS33 [get_ports B2]
# "SW2"
set_property PACKAGE_PIN G22 [get_ports B1]  
set_property IOSTANDARD LVCMOS33 [get_ports B1]
# "SW1"
set_property PACKAGE_PIN F22 [get_ports B0]  
set_property IOSTANDARD LVCMOS33 [get_ports B0]
# "BTNU"
set_property PACKAGE_PIN T18 [get_ports Sel]  
set_property IOSTANDARD LVCMOS33 [get_ports Sel]

# Voltage settings
set_property IOSTANDARD LVCMOS18 [get_ports -of_objects [get_iobanks 34]];
set_property IOSTANDARD LVCMOS33 [get_ports -of_objects [get_iobanks 13]];