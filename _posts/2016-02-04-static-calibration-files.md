---
layout: post
title: "Static Calibration Files"
categories: [log]
tags: [Flats, Calibration, ds9]
---
## Commits

### Flats

I downloaded all the flats produced the night 2014-08-01. All FLAT,LAMPS.

### Static Calibration

The Static Calibration data seems to be in `/opt/reflex/install/calib/muse-1.0.1/cal` but for this particular first data set since it was taken before December 2014 I need to use the ones mentioned in Appendix D. Downloaded it from (ftp://ftp.eso.org/pub/dfs/pipelines/muse/muse-calib-legacy-2015-10-06.tar.gz).


### flatsatur.py

This program takes the average around 10 pixesl for each pixel. If in any is higher than 55000 then don't use that flat. All the flats passed the test.

### ds9

To load an specific extension do:

```bash
ds9 <file>[#ofextension]
```
Open all of them in the same window:

```bash
ds9 -multiframe <file> opens all the 24 
```

Open then and can see them individually:

```bash
ds9 -mecube <file> 
```

## To-Dos
- [x] ~~Python and see max value of flats to see if oversaturated.~~ Function called flatsatruthreads using getlist.py
- [x] ~~Find static calibration data.~~  Used the ones mentioned in Appendix D. See commit above.
