---
layout: post
title: "Trying to Understand CVs and spectra"
categories: [log]
tags: [CVs, CV, spectra, WD, accretion disks, Halpha, He, He lines, Questions, pyraf, stsdas]
---

# Pertinent Interacting binaries:


From a slide from Paula Szody from the event [The Eventful Universe](https://www.noao.edu/meetings/eventful-universe/).

![]({{site.baseurl}}/images/typesbinaries.png)


# More on type of stars from 


# Some spectra and lines:

From [@carter_am_2014]:


1RXS J062518.2+733433: A new intermediate polar with He lines


#  Space Telescope Science Data Analysis System (STSDAS)

I installed the Space Telescope Science Data Analysis System as part of iraf to try to plot the spectra. Also a reminder to use IRAF in python or ipython do:

```python
from pyraf import iraf
iraf.<routine>
```


# IRAF label pictures

It can be done with the option l with the specplot in noao.onedspec.

To save use implot:

```bash
implot <fits> dev=eps ; gflush
```









# References
