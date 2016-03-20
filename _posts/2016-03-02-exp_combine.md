---
layout: post
title: "exp_combine"
categories: [log]
tags: [questions, combine, datacube]
---


## Commits

### MUSE_exp_Combine and MUSE_cube_combine

The problem was that the IMAGEFOV that I was using as OUTOUT_WCS didn't have the right information about the third axis (wavelenght). I had to modify the header of the image including the following information about the third axis:

NAXIS   =                    3
NAXIS3  =                 3681
CTYPE3  = 'AWAV    '
CUNIT3  = 'Angstrom'
CD3_3   =                 1.25
CRPIX3  =                   1.
CRVAL3  =     4749.75341796875
CD1_3   =                   0.
CD2_3   =                   0.
CD3_1   =                   0.
CD3_2   =                   0.

To get the OUTPUT_WCS working I did the following process:

1. Open a Datacube with all the wavelength and save as image in QFitView. 
2. Then modify the header of the previously exported image to add or modify the keywords mentioned above. I did with some trouble in vim. There must be a better way. 

This process is to be able to get the resulting wavelength limited DATACUBE from the recipe muse_exp_combine with the full wavelength range. It will have NaN for the wavelengths that are outside the specified wavelength range in the muse_exp_combine.rc. After the three datacubes (red,green and blue) are created they can be combine with `muse_cube_combine`.


### RAM Memory

The server now has more ram memory. I think 64 GB, so now I can run the recipes in parallel with the options in some of the recipes `nifu=-1`.


### White Dwarfs

Look for info on White Dwarfs population and type of CVs. Most should be magnetic.  



##  Questions
- [x] ~~Can run without checksum?~~ Will do this. At least for scibasic and scipost



## To-Do
- [x] ~~Combine the four exposures of the center of the cluster taken the first night.~~ 
- [x]  ~~Update params of other days with correct recipe directory and maybe that it doesnt do the checksum.~~ Still dont know why didnt work the checksum after changed to new CPL. 
- [x] ~~Re-run everything with new recipe version.~~ For first and second night. 
- [x] ~~Create cleanmastersof with new data from second day of observation.~~ And ran all the recipes. 
- [x] ~~Get all the offsets to combine the datasets.~~ 
- [x] ~~Figure out how to use [ZAP][@zap].~~ Easy way in the command line `python -m zap INPUT_CUBE.fits`

