---
layout: post
title: "IRAF, Pyraf and igi"
categories: [log]
tags: [iraf, pyraf, igi, stsdas,spectra, plot, python, splot]
---


# Plotting Spectra with IRAF

I don't like IRAF, but it seems to have a lot of functionalities to plot and fit spectra. The [Space Telescope Science Institute](http://www.stsci.edu/institute/software_hardware) has a lot of good software for this. They have the **Space Telescope Science Data Analysis System (STSDAS)**. This is a software package to reduce and analyze astronomical data. This includes the Interactive Graphics Interpreter: igi [@igiiraf]. Below I describe the process that I had to do to be able to produce a figure with the STSDAS task igi with pyraf.

## The installation:

I am currently using pyraf for Python2. I installed a while ago with the [Ureka](http://ssb.stsci.edu/ureka/) also from the Space Telescope Science Institute. I don't know if Ureka dies come with the STSDAS packages but this was actually surprisingly easy to install following [these instructions](http://www.stsci.edu/institute/software_hardware/stsdas/download-stsdas). 


## wspectext

Converting to text file before I can use igi for some reason. I need to convert it without the header. In Python importing from pyraf iraf

```
iraf.onedspec.wspectext(filename, output=source+'spectra.txt', header=False)
```

## Using igi

Work on progress ... 

Manual is good here:
http://stsdas.stsci.edu/download/docs/IGIManual.pdf

I want to try something like explain in the FAQ Can I automate igi graphics using a native python script? [here](http://www.stsci.edu/institute/software_hardware/pyraf/pyraf_faq).


It is in stsdas.graphics.stplot

remember to be in xgterm as defined in my .bashrc

## splot fitting

http://iraf.noao.edu/iraf/ftp/iraf/docs/script.pdf


See the post on **Semi-Auto Fitting with IRAF**.

To save images in iraf with the `.snap eps` and `.gflush`.

In Python:

```python
from pyraf import iraf
```



# References
