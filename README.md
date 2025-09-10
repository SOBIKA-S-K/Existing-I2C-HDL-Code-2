# Existing-I2C-HDL-Code-2
I²C (Inter-Integrated Circuit) was developed by Philips Semiconductor (now NXP Semiconductors) in 1982.  It is a synchronous, multi-master, multi-slave serial communication protocol designed for low-speed communication between integrated circuits.  Only 2 wires (SCL and SDA) are required for communication, which makes design simpler.  
__________________________________________________________________________________________________________________________________________________________________________________________________________________

✅  Applications of I²C Protocol

Communication between microcontroller and:

-> Real-Time Clocks (RTC) → DS1307.

-> EEPROM memories → 24Cxx.

 -> Sensors → Temperature, Pressure sensors.

-> Digital-to-Analog and Analog-to-Digital Converters.

-> Display Controllers.

==================================================================================================================================================================================================================

✅ Why I²C Is Important for My Project?

Typical I²C communication is handled in a blocking way (polling) → CPU is busy until the transaction completes.

To improve system performance:

Implement Independent FSMs (for Master and Slave) to automate protocol steps.

Use Interrupt System to notify the CPU only when action is needed.

✅ Aim → Achieve high I²C CPU performance, minimize CPU load, allow parallel processing.


