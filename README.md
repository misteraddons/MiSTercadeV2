# MiSTercade
 MiSTer FPGA JAMMA adapter

## Installation
* Choose a MiSTer.ini (15 kHz or 31 kHz) and rename it to MiSTer.ini
* Download the files from Github
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
4 5 6    X Y L
Coin = Select
Start = Start
Menu/OSD = Down + Start OR B1 + B6 (depending on which zip file you extract)
```
* NOTE: If you choose B1 + B6 menu button combo, you will not be able to activate autofire on B1 or B6
* NOTE: If you choose Down + Start menu button combo, you will not be able to use freeplay 
* 6 button mapping not currently supported by default so 6 button games will have their own per-game input mappings
* Feel free to remap as needed

## Twin Stick Games
* There are several twin stick games on MiSTer. There are 2 general configuration styles: mapping and OSD setting. The included map files are set for twin stick play, and the cfg files enable twin stick on their corresponding games.
* Tank sticks aren't easily supported as they require twin sticks with triggers
* Twin stick games are mapped for both button and second stick shooting direction as follows:
```
B1    B2    B3       UP    LEFT  RIGHT
B4    B5    B6       DOWN   -      - 
```

| Game | Twin Stick Mode |
| --- | --- |
| Black Widow | input mapping |
| Crazy Climber | input mapping |
| Crazy Climber 2 | input mapping |
| Lost Tomb | [OSD option] Fire Mode: Second Joystick |
| Mars | osd config |
| Minefield | osd config |
| Rescue | osd config |
| Robotron 2084 | [OSD option] Fire Mode: Second Joystick |
| Star Guards | input mapping (1p only) |
| Water Match | input mapping |
| Smash TV | input mapping |
| Total Carnage | input mapping |


### Updating controller firmware:
Should the controller firmware need updating do as follows:
* Copy `GP2040-CE_latest_MiSTercadeV2.uf2` to `Scripts/_MiSTercadeV2` folder on your MiSTer SD card
* Run `MiSTercade_V2_Program.sh` on your MiSTer
* While turning on your MiSTercade, hold `JOY1_PROG` and/or `JOY2_PROG` buttons for each desired player to the right of the OLED screen
* Wait for confirmation for USB0 (Player 1) and USB1 (Player 2) successfully being flashed.

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

| Toggle Switch | Left Position | Right Position |
| --- | --- | --- |
| Audio | Remote Audio (MiSTercade Remote) | Local Audio (No MiSTercade Remote) |
| COIN1 = COIN2 | Coin 1 mech triggers Coin for both players.
| JAMMA+ | Buttons 5 and 6 on JAMMA Pins 26 and 27 | Buttons 5 and 6 not on JAMMA edge |
| VSYNC | VSYNC IO (Sources VGA's Vsync from DAC Module) | VSYNC DV (Sources VGA's Vsync from Direct Video)
