---
layout: post
title: "QFitsView"
categories: [log]
tags: [qfitsview, illum, header,literature,questions]
---

## Commits

### QFitsView

I wasn't able to display the datacube in ds9. In QFitsView  the problem was how I was loading the fits. You have to make sure to click the checkbox "All extensions" when opening a datacube. This translate to the command `readfitsall` in **DPUSER**. Also check the scale, how much % is showing. 

### "white light" image. 

This can be done in QFitsView by clicking on *Options*, then *Cube Display* then instead of Single select *Average*.


### New Data ILLUM

The new data does not include an ILLUM Flat. Apperently. Is this normal? Maybe because the temperature didnt change much that day. *It is a proceddure of ESO at VLT according to De. Finley so there should be one and I should use it.* Just pay attention on which one to use for the scibasic STD and scibasic OBJECT. 

### Header information

To see with what routine and with what files a certain fits file  was created using an ESORex recipe look in the header the information with Python with the tag:  `fitsfile[0].header['*PRO REC*']`


### Literature Review

 Dr. Webb mentioned a study about the two population of CV for the particular cluster. Also look for the Hubble optical study after the Chandra paper done. Also search information for the distinction between CV and double degenerated. This can't be distinguished in X-Rays. 


### DATA_CUBE

Using a standard STD nearby (only one exposure) and all the optional input like "badpixel tables", but without any darks or ILLUM. 


#### Questions
- [x]  ~~Process without ILLUM?~~ I dont have any for that night apparently. 

## Other Questions
- [x] ~~Why doesn't work to include TWILIGHT_CUBE as input in the sof for muse_scibasic for objects.~~ Apparently it did work. I checked looking the header of a PIXOBJECT ['*PRO REC*'] and it has the TWILIGHT CUBE as input.  

