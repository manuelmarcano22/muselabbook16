---
layout: post
title: "muse_scibasic"
categories: [log]
tags: [scibasic,datacube,conferences, talks]
---

### Feb-15-2016 Paul Sabatier

## Journee Scientific

### MUSE carfantan Galpack3D

### Feb-16-2016 Paul Sabatier

## Journee Scientific

### Relevant talk for MUSE

MUSE Carfantan and Nicholas Bouche talikng about Galpack3D 


## Commits

### Results of muse_scibasic


Apparently I have 19 exposures. Produced also 19 OBJECT_RED. Each with Data, DQ and STAT. Data, Data quality and statistics. Need to search for the middle one. 

#### Questions
- [x] ~~Take a look at Object Reds. Good or Bad?~~ I guess bad.~~ Have the same ugly feature that the final CUBE obtained.~~ It was ds9 displaying it. Works with QFitsViewer


### Creating the DataCube

I tried to created it but got a really bad ones with a lot of empty black spaces with 'nan'. It might be due to the bad_pixel table. It will try to do it again without the bad pixel table from the calibration files. This was done only for the first exposure "0001".  

In the article they say:

> To combine the pixtables from the individual exposures of each pointing into a single datacube, we had to account for the small offsets that occur during position angle changes, because the rotation centre is not perfectly aligned with the optical axis of the instrument (“derotator wobble”). We did so by creating a broadband image from each pixtable, measuring the coordinates of the brighter stars in the field of view, and feeding the measured average offsets to the pipeline when creating the final datacube for each pointing

#### Questions
- [x] ~~What does this mean?~~ Look at the Header "HIERARCH ESO INS DROT POSANG". It changes from exposure to exposure. It seems to "wobble". [Derotator](https://www.eso.org/sci/facilities/paranal/instruments/muse/inst.html). The derotator compensates for the field rotation happening at the VLT Nasmyth focus. It is a classical derotator based on two prisms: when rotated by an angle α, the image plane rotates by the angle 2α.
- [x] ~~Can see that in OBJECT_RED or where?~~  Can see it in IMAGEFOV for sure. 



## To-Do
- [x] ~~Make a CUBE from the object using the astrometry_wcs solution and std given in the calibration file.~~ ~~Very bad quality one.~~ It was ds9. Display with QFits Viewer. 
- [x] ~~Downloaded the data for another day.~~ This time 2014-July-27

