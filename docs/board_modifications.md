
### Fast DACs 

- The Fast DACs (AD5453) have the incorrect pinout for the footprint used. A workaround is to flip the chip "upside down" over the long axis; do not also rotate 180 degrees. The pinout matches the MSOP but the footprint is sized for the TSOT. 
- Fast DAC final stage output filter cap is DNI (C122, C131, C140, etc.). Populate at 3300 pF. Series R is 33 Ohms.

### HDMI connections 

- Utility connections at the HDMI connectors default to GP_ADC. This is OK to keep; the clamp board only has this pin as a test point (TP1). 

### Power regulators 
- The -15 V regulator oscillated at roughly 40 kHz. (2021/1/4)


### ADS8686 - General Purpose ADC 
- The input filter capacitances for each of the 16 channels: C49, C50, C51, etc. are too large and create a 1 uF time-constant with the 1 kOhm resistors. DNP these resistors. 


### Howland Current Pump
- Should increase the full-scale range in a future revision by BOM adjustments. 

### Unique ID chip 
- U21, a unique ID chip, was not available at the time of assembly. Would be useful to populate this (upper right corner). 