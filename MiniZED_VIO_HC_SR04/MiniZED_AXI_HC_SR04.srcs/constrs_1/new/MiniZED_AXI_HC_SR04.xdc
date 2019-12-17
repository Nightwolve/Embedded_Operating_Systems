set_property PACKAGE_PIN R8  [get_ports {matrix_out}];  # "R8.ARDUINO_IO0"
set_property PACKAGE_PIN P8  [get_ports {btns[0]}];  # "P8.ARDUINO_IO1"
set_property PACKAGE_PIN P9  [get_ports {btns[1]}];  # "P9.ARDUINO_IO2"
#set_property PACKAGE_PIN R7  [get_ports {btns[2]}];  # "R7.ARDUINO_IO3"
#set_property PACKAGE_PIN N7  [get_ports {btns[3]}];  # "N7.ARDUINO_IO4"
#set_property PACKAGE_PIN R10 [get_ports {leds[0]}];  # "R10.ARDUINO_IO5"
#set_property PACKAGE_PIN P10 [get_ports {leds[1]}];  # "P10.ARDUINO_IO6"
#set_property PACKAGE_PIN N8  [get_ports {leds[2]}];  # "N8.ARDUINO_IO7"
#set_property PACKAGE_PIN M9  [get_ports {leds[3]}];  # "M9.ARDUINO_IO8"
set_property PACKAGE_PIN N9  [get_ports {sonar_echo}];  # "N9.ARDUINO_IO9"
set_property PACKAGE_PIN M10 [get_ports {sonar_trig}];  # "M10.ARDUINO_IO10"

set_property IOSTANDARD LVCMOS33 [get_ports matrix_out];
set_property IOSTANDARD LVCMOS33 [get_ports {btns[0]}];
set_property IOSTANDARD LVCMOS33 [get_ports {btns[1]}];
#set_property IOSTANDARD LVCMOS33 [get_ports {btns[2]}];
#set_property IOSTANDARD LVCMOS33 [get_ports {btns[3]}];
#set_property IOSTANDARD LVCMOS33 [get_ports {leds[0]}];
#set_property IOSTANDARD LVCMOS33 [get_ports {leds[1]}];
#set_property IOSTANDARD LVCMOS33 [get_ports {leds[2]}];
#set_property IOSTANDARD LVCMOS33 [get_ports {leds[3]}];
set_property IOSTANDARD LVCMOS33 [get_ports sonar_echo];
set_property IOSTANDARD LVCMOS33 [get_ports sonar_trig];