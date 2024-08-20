# MiSTercade
 MiSTer FPGA JAMMA adapter

## Installation
* Download a [MiSTer.ini file](https://github.com/misteraddons/mister_ini/tree/main/MiSTercade%20V2) that matches your cabinet's resolution and orientation, and place it in the main folder of your MiSTer SD card.
* Modify or create the "downloader.ini" file on your MiSTer SD card, by including this section of code. This will ensure the correct mappings for all arcade games are downloaded and updated automatically!
```
[misteraddons/mistercade_v2_mappings]
db_url = https://raw.githubusercontent.com/misteraddons/mistercade_v2_mappings/db/db.json.zip
allow_delete = 0
verbose = true
```
* Toggle SW3 on DE10-nano (the switch nearest the HDMI port) towards the center of the board. SW0, SW1, and SW2 should remain off (towards edge of board).
* Plug MiSTercade PCB into top of DE10-nano, mating all pin headers
* Install USB bridge to both the DE10-nano and MiSTercade PCB
* Install HDMI bridge to both the DE10-nano and MiSTercade PCB
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
* Smash TV and Total Carnage sometimes activate autofire instead of OSD
* Feel free to remap as needed, but the mapping updater may overwrite your changes. After the initial mapping downloader, remove the MiSTercade_V2 entry from downloader.ini to disable future updates.

### Twin Stick Games
* There are several twin stick games on MiSTer. There are 2 general configuration styles: input mapping and OSD option. The included map files are set for twin stick play, and the cfg files enable twin stick on their corresponding games.
* Tank sticks aren't easily supported as they require twin sticks with triggers

| Game | Twin Stick Mode |
| --- | --- |
| Black Widow | input mapping (1P only) |
| Crazy Climber | input mapping (1P only) |
| Crazy Climber 2 | input mapping (1P only) |
| Inferno | input mapping (1P only) + [OSD option] "Aim+fire: On" |
| Lost Tomb | [OSD option] Fire Mode: Second Joystick |
| Mars | [OSD option] Fire Mode: Second Joystick |
| Minefield | [OSD option] Fire Mode: Second Joystick |
| Rescue | [OSD option] Fire Mode: Second Joystick |
| Robotron 2084 | [OSD option] Fire Mode: Second Joystick |
| Smash TV | input mapping (1P only) |
| Star Guards | input mapping (1P only) |
| Total Carnage | input mapping (1P only) |
| Water Match | input mapping (1P only) |

### Customizing Input Firmware using the GP2040-CE Web Configurator
* Hold Start button on the Player # you want to customize (i.e. P1 Start) while applying power to the MiSTercade. (You can apply 5V DC C+ wall power to the DE10-nano if you want to do this outside of the cabinet)
* Remove USB bridge and connect Micro USB cable to the MiSTercade PCB's micro USB port. Connect the other end to a conputer.
* Open a web browser to "192.168.7.1"
* Modify [GP2040-CE Web Configurator settings](https://gp2040-ce.info/web-configurator/) and save
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

## Video
RGB Video levels are ~3V

## SNAC
Built-in SNAC is intended for light guns, but works with controllers as well. The usual caveats with SNAC apply - can't control OSD menu, 1 player for Sega cores, no native arcade controls, etc.

## MiSTercade Versus
MiSTercade VS uses the MiSTercade V1 controller firmware. For best results, add the MiSTercade V1 mapping repository to your MiSTer SD card's downloader.ini file:
```
[misteraddons/mistercade_mappings]
db_url = https://raw.githubusercontent.com/misteraddons/mistercade_mappings/db/db.json.zip
allow_delete = 0
```

## Built-in Switches
| DIP Switch | Left Position | Right Position |
| --- | --- | --- |
| C1=C2 | Coin signals separate | Coin signals merged (candy cabinets) |

| Toggle Switch | Left Position | Right Position |
| --- | --- | --- |
| Audio Route | Remote Volume Adjustment | Onboard Volume Adjustment |
| Vsync source | IO DAC Vsync | HDMI DAC Vsync |
| CHAMMA | Buttons 5 and 6 on JAMMA Pins 26 and 27 | Buttons 5 and 6 not on JAMMA edge |
