---
layout: post
title: "Combine Datacubes"
categories: [log]
tags: [combine, exp_combine, pipeline, questions]
---

## Commits

### Combining the data from 2014-07-27

The data from the first night of observation (2014-07-27) consist of 5 60 seconds exposures of 9 different central regions (except for the very central one. Only 4 exposures and an extra one of the NE region). This gives a total of 45 different exposures. 

The distribution goes like this:

- Central region exposures 1-4 (only 4 of this region)
- North of Central Region 20-24
- Sourh  of Central Region 15-19
- East of Central Region 10-14
- West of Central Region 5-9
- NE of Central Region 40-45  (notice there are 6 of this region) 
- NW of Central Region 30-34
- SE of Central Region 35-39
- SW of Central REgion 25-29

To combine them Dr. Webb suggested, as a first try, to manually find the offsets (using ds9, for example) for a given group of 5. Then the combination can be done by setting the environment variables `MUSE_XCOMBINE_RA_OFFSETS` and `MUSE_XCOMBINE_DEC_OFFSETS` and using the recipe *muse_scipost* and the PIXTABLE_OBJECT or combining the *PIXTABLE_REDUCED* with the *muse_exp_combine* recipe. This is described in section 6.6 of the MUSE Pipeline User Manual Issue 9 Date 2015-04-28. 

From the manual about the offsets:

>The coordinate offsets are given by setting the environment variables MUSE_XCOMBINE_RA_OFFSETS
>and MUSE_XCOMBINE_DEC_OFFSETS. Each of these variables has to contain as many floating-point
>numbers, separated by commas, as exposures to combine are involved.
>Each number is the direct difference of the measured position to the reference position (no cosδ!), the
>values are interpreted in units of degrees:
>RA_OFFSET = RAmeasured − RAreference
>DEC_OFFSET = DECmeasured − DECreference
>It is important that the offsets are given in the order of increasing DATE-OBS of the exposures involved.
>If one of the exposures has been chosen as the reference the offsets of 0 for this exposure have to be
>explicitly given when setting the environment variables


### Second night of observation (2014-07-28)

On the second night of observation (2014-07-28) they also observed the central region of the cluster (from the header "HIERARCH ESO OBS NAME = 'NGC6397-center-cross_obs2' / OB name"). There are 21 different Objects, and also no STD or ILLUM. 


### MUSE Pipeline Version 1.2.1

There is a new version of the Pipeline. This new version is will be installed locally in `detoeuf/musepipeline1.2.1`. The problem installing it was having to upgrade to a version of 6.6.1 for the [CPL](https://www.eso.org/sci/software/cpl/). The things to remember are the following:

- configure cpl with the flags `--with-wcs` and `with-fftw`. For this computer there were in `/usr/local` not in `/usr/include`. Only normal precision and not single. 

- CPL was installed in `/usr/local/lib`. This is were the configure of muse-1.2.1 was looking first. We couldn't configure the installation without installing the new version there, I don't know why it was so picky. 

- Need to rebuild [EsoRex](http://www.eso.org/sci/software/cpl/esorex.html) after installing CPL. This is still a problem. For now I am using the one installed at *$HOME/musepipeline1.2.1*

### Meeting with Hayley Finley OMP B144

Things to remember from the meeting:

- Use STD of the night when possible. There should be one every night and I should favor the use of it instead of the calibration one. This is not true for the SKY and Astrometry. At least for this data set were is a globular cluster. 

- Use the ILLUM closest in temperature and time for the scipost OBJECT and scipost STD. There should be several per night taking as a protocol for the instrument. Maybe not necessary in the science verification run. For example the tag for the ILLUM is FLAT,LAMP but should be different according to the Manual (VLT-MAN-ESO-14670-6186). 

- Based on her previous experience reducing the data the use of the optional fits from the calibration file "vignetting_mask" is very important. It is noticeable specially in the borders. 

- Include filter list from the calibration.

### How to do the combination:

First, use the *align* recipe with all the images "IMAGE_FOV" from the same region you want to combine together. You can work with just the white one if that was one of the filters that was used as input for the recipe. The recipe *align* will produced a fits table called "OFFSET_LIST". Then there are two ways to combine the data. One way is using the PIXTABLE_REDUCED produced by scipost and then with the recipe "muse_exp_combine" using the produced "OFFSET_LIST". This approach is explain in more detail in section 7.3.3 "Working with Data Cubes" of the MUSE Pipeline Manual version 1.2.1 (ftp://ftp.eso.org/pub/dfs/pipelines/muse/muse-pipeline-manual-1.2.1.pdf)". The basic idea is to create with *muse_exp_combine* different datacubes with different lambdamin and lambdamax and then merging them together using the too *muse_cube_combine*. It has to be done this way due to limited RAM memory. 

The first step after obtaining the offset list is to create with *exp_combine* an image with **all** the different exposures you want to combine and the offsetlist. This can be created by limiting the wavelength range. It is necessary to choose a small enough range using the options --lambdamax and --lambdamin to be able to process in memory all of them. The recipe will produce a DATACUBE and IMAGE_FOV. The datacube won't be used for anything but the IMAGE_FOV created will be use as the "OUTPUT_WCS" input frame in subsequent calls to the recipe *exp_combine* to create all the datacubes in different wavelength that later will be combined. This is a recommendation from Dr. Hayley Finley to avoid getting a weird distorted incomplete final merged datacube. 

With our "OUTPUT_WCS" the next step is to create different datacubes with different range of wavelength (for example a BLUE and a RED one). It is important to remember that **they need to overlap in at least about 2 wavelength**. This is again done with the options --lambdamin and --lambdamax for the recipe "exp_combine". The input files in the sof for each call of *exp_combine* will be:

1. All the PIXTABLE_REDUCED from the different exposures to merge.
2. The OFFSET_LIST created by the *align* recipe.
3. The filter list from the calibrations file
4. The first IMAGE_FOV that was also created with *exp_combine*. This will be our shape and will have the tag "OUTPUT_WCS". This seems a bit redundant but if this image with the tag  "OUTPUT_WCS" is not provided in the sof, the default for the function *muse_cube_combine* is to use the first file of the list as our "shape".

The function will be called to created as many datacubes as needed in different wavelength overlapping in about 2 wavelenght. Then the combination is done calling the tool *muse_cube_combine*.

```
muse_cube_combine CUBE_COMBINED.fits CUBE_blue.fits CUBE_green.fits CUBE_red.fits 
```


##  Questions
- [x] ~~4 different channels of IMAGEFOV?~~ This are the 4 different filters I specified. This change depending on the filters I chose when running the recipe. 


## To-Do
- [x] ~~Download data from the second observation of the center.~~ Downloaded all data from 2014-07-28 observation. Now have to create cleanmaster.txt 


