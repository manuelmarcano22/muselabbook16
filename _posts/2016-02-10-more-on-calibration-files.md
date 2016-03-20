---
layout: post
title: "More on Calibration files"
categories: [log]
tags: [wavelenght,calibration, flats, questions, arc, illum]
---

## Commits

### Wavelength calibration

I wasn't able to get it done. The problem might have been two things, either that I didn't have an ARC for each lamp or that I was using two different instrument modes.

### Instruments Mode and OBS Name

In the data I downloaded for the day I had two different instrument mode as can be seen in the header. I had WFM-NOAA-E and WFM-NOAA-N. It stands for  Wide Field Mode with no AO (NOAO) correction in Nominal or Extended. The object is in WFM-NOAA-N. Only keep calibration files with this mode.


### FLATS

I have two types of flats according to the OBS NAME tag in the header "Calibration" and "muocal_nightcalib". I have 22 of one and 5 of the second. The "muocal_nightcalib" are the so called **ILLUM** in the manual and are the optional input flat for the muse_twilight recipe. According to Hayley use the one closes in temp and time to the SKYFLAT use for the twilight recipe.  

### More on FLATS and BIAS from Hayley

 Pay attention to time stamp. ESO takes 11 at a time. Use those eleven for the master bias and also for the flats. Also look at the temperature difference is no more than 0.5 C for the skyflat and the optional ILLUM to use. 

### ILLUM for recipe muse twilight. 

See FLATS commit above. 

### ARC (WAVE)

They seem to be taken in groups of 15. So three exposures per lamp. I have one with 14 probably because it was taken at 11:59 so the next one is at a later day. 

### vim

I installed vim in the home directory. It is in the folder vimlocal. The .vimrc is also in the home directory. But still haven't been able to get vim with xterm_clipboard support. 

### BASH

The .bashrc now have a line to include the path of the vim executable and to use xterm to be able to display colors. Also included the pythonstartup as was mentioned before.  

## Questions
- [x] ~~Do MASTER Flat with all flats of the night and BADPIXEL Table.~~ ~~but only with the "muocal_nightcalib" 5~. Wrong redo this. 
- [x] ~~Do the wavelength calibration~~ It worked with three Arc one for each lamp.
- [x] ~~Python and see max value of flats to see if oversaturated.~~ All of them passed the tested. Weird?
- [x] ~~Do MASTER Flat with all flats of the night~~ Still don't know if need all. 
