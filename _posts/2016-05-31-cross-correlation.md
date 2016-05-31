---
layout: post
title: "Cross Correlation"
categories: [log]
tags: [Tonry, fxcor, iraf, cross correlation]
---

The paper to read is (Tonry and Davis, 1979) and of course the fxcor help page: http://stsdas.stsci.edu/cgi-bin/gethelp.cgi?fxcor

The help page is not useful for the error estimation. It is just saying that it follows the paper. It would be useful to remember the following. 

# The R statistic

It is using the porperties of the cross-correlation funtion:

$$\epsilion = \frac{k}{1+r}$$

$$r = \frac{h}{\sqrt{2}\sigma_a}$$

Where h is the peak height of the normalized cross-correlation function c(n), $\sigma_a$ is the rms of its antisymmetric component and l a proportionailty. k empirically was found to be $k = 0.5 w$. In Iraf I think it is 0.7 Where $w$ is the FWHM of the cross-correlation peak. $\epsilion$ is given in pixels. This is then multuply by the Velocity Dispersion given in Km/sec/pixel  

TO see the antisymmetric part press a in iraf. The FWHM is given as a sigma^2 in the correalation fit or in the velocity information. This can be seen pressing v in iraf. 


## How to calculate the Velocity per pixel dispersion?

