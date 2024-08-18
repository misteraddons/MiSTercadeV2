# MiSTercade
 MiSTer FPGA JAMMA adapter

## Installation
* Choose a MiSTer.ini (15 kHz or 31 kHz) and rename it to MiSTer.ini
* Download the files from Github (https://github.com/misteraddons/mister_ini/tree/main/MiSTercade%20V2)
* Unzip one of the button mappings from /config/inputs folder - Note only difference in menu button combination (down + start vs B1 + B6)
* Copy input mapping files to Micro SD card
* Copy these files to your MiSTer's micro SD card, overwriting existing files
* Toggle SW0 on DE10-nano (one of the 4 large switches near the GPIO header) towards the center of the board. SW1-3 should remain off (towards edge of board)
* Plug MiSTercade PCB into top of DE10-nano, mating all pin headers
* Install USB bridge to both the DE10-nano and MiSTercade PCB
* Plug JAMMA Connector onto MiSTercade edge, ensuring correct orientation and pin alignment (ensure GND, and Voltage pins are correct)

## Controls
### Button mapping:
``` 
1 2 3    A B R
4 5 6    Y X L
Coin = Select
Start = Start
Menu/OSD = Down + Start OR B1 + B6 (depending on which zip file you extract)
```
* NOTE: If you choose B1 + B6 menu button combo, you will not be able to activate autofire on B1 or B6
* NOTE: If you choose Down + Start menu button combo, you will not be able to use freeplay 
* 6 button mapping not currently supported by default so 6 button games will have their own per-game input mappings
* Smash TV and Total Carnage sometimes activate autofire instead of OSD
* Feel free to remap as needed

### Twin Stick Games
* There are several twin stick games on MiSTer. There are 2 general configuration styles: mapping and OSD setting. The included map files are set for twin stick play, and the cfg files enable twin stick on their corresponding games.
* Tank sticks aren't easily supported as they require twin sticks with triggers
* Twin stick games are mapped for both button and second stick shooting direction as follows:
```
B1    B2    B3       UP    LEFT  RIGHT
B4    B5    B6       DOWN   -      - 
```

| Game | Twin Stick Mode |
| --- | --- |
| Black Widow | input mapping (1p only) |
| Crazy Climber | input mapping (1p only) |
| Crazy Climber 2 | input mapping (1p only) |
| Inferno | input mapping (1p only) + [OSD option] "Aim+fire: On" |
| Lost Tomb | [OSD option] Fire Mode: Second Joystick |
| Mars | [OSD option] Fire Mode: Second Joystick |
| Minefield | [OSD option] Fire Mode: Second Joystick |
| Rescue | [OSD option] Fire Mode: Second Joystick |
| Robotron 2084 | [OSD option] Fire Mode: Second Joystick |
| Smash TV | input mapping (1p only) |
| Star Guards | input mapping (1p only) |
| Total Carnage | input mapping (1p only) |
| Water Match | input mapping (1p only) |

### Customizing Input Firmware
* Hold Start button on the Player # you want to customize (i.e. P1 Start) while applying power to the MiSTercade. (You can apply 5V DC C+ wall power to the DE10-nano if you want to do this outside of the cabinet)
* Remove USB bridge and connect Micro USB cable to the MiSTercade PCB's micro USB port. Connect the other end to a conputer.
* Open a web browser to "192.168.7.1"
* Modify settings and save
* Power off the MiSTercade
* Restore USB bridge, or repeat for other player

### Updating controller firmware:
Should the controller firmware need updating do as follows:
* Put "_MiSTercade_V2_" folder in MiSTer's Micro SD card's "Script" folder
* Hold "JOY1 PROG", "JOY2 PROG" or both button(s) on the MiSTercade PCB while powering on the MiSTercade
* Plug in USB keyboard
* Navigate to the Scripts submenu of the main menu
* Run the "MiSTercade_V2_Program" script
* Wait for script to finish
* Restart MiSTercade
* If you experience issues, run the "MiSTercade_V2_Erase" script

## Sound
Sound varies wildly across cores. The best thing to do is to set the blue potentiometer low enough so most cores don't clip, and amplifier is still loud enough.
Volume can be adjusted using the protruding potentiometer, or in the menu as follows:
* Bring up the OSD Menu by pressing down + start (or whatever you mapped it to)
* Press left
* Adjust core volume or main volume
* (Core volume settings are saved to the SD card for future use)

* Alternatively, use the Audio Normalization Scripts https://github.com/misteraddons/normalize_audio_scripts

## Video
RGB Video levels are ~3V

## SNAC
Built-in SNAC is intended for light guns, but works with controllers as well. The usual caveats with SNAC apply - can't control OSD menu, 1 player, no native arcade controls, etc.

## Built-in Switches
| DIP Switch | Left Position | Right Position |
| --- | --- | --- |
| C1=C2 | Coin signals separate | Coin signals merged (candy cabinets) |

| Toggle Switch | Left Position | Right Position |
| --- | --- | --- |
| Audio Route | Remote Volume Adjustment | Onboard Volume Adjustment |
| Vsync source | IO DAC Vsync | HDMI DAC Vsync |
| CHAMMA | Buttons 5 and 6 on JAMMA Pins 26 and 27 | Buttons 5 and 6 not on JAMMA edge |
