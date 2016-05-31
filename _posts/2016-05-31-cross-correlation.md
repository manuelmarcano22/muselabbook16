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

Where h is the peak height of the normalized cross-correlation function c(n), $\sigma_a$ is the rms of its antisymmetric component and l a proportionailty. k empirically was found to be $k = 0.5 w$. In Iraf I think it is 0.7. Where $w$ is the FWHM of the cross-correlation peak. $\epsilion$ is given in pixels. This is then multuply by the Velocity Dispersion given in Km/sec/pixel. I think this factor can be calibrated as mentioned here https://arxiv.org/pdf/0912.4755.pdf

Finally, the FWHM values are related to the velocity dispersion by the creation of a calibration curve. This
is detailed in Appendix A. Briefly, this is constructed by correlating the original template spectrum with itself,
but convolved with a Gaussian of set width. By doing this several times, a calibration curve can be made, and a
calibration function interpolated with it.


TO see the antisymmetric part press a in iraf. The FWHM is given as a sigma^2 in the correalation fit or in the velocity information. This can be seen pressing v in iraf. 

This is also mentioned here:

The galaxy spectra were Fourier cross-correlated in fxcor against each standard star in turn. The observed FWHM of the cross-correlation peak was transformed into a value for $\sigma $by direct calibration with broadened template spectra, using the preocedure outlined by Baggley (1996). 


Some pacgakes use 3./8. like the SAO packae and I have seen to use 0.75 like I think iraf do. FOr example this paper Gaskell and Peterson 1987 he accuracy of cross-correlation estimates of quasar emission-line region sizes

## How to calculate the Velocity per pixel dispersion?




from (http://iraf.net/forum/viewtopic.php?showtopic=102972)
i Joe,
The FXCOR task uses a relativistic redshift equation so the velocity
computation is still valid at high z values, namely	vel = C * (10 ** (wpc * shift) - 1)
= 299792.5 * (10 ** (8.3926e-5 * 1) - 1)
= 299792.5 * (1.00019324 - 1)
= 299792.5 * 0.00019324
~= 57.93 km/sThis can also be calculated as dV = wpc * C * ln(10) but I don't have the
derivation handy. If you like I can dig up some mail discussing how this
should all be done or I'd be happy to discuss it further, unfortunately I
don't remember many of the details at the moment. Does this answer your
question?Regards,
Mike Fitzpatrick


The wpc is done from the rebinning with by default is a 5th order polynomial


According to http://aas.aanda.org/articles/aas/full/1999/21/ds8990/node4.html
Astron. Astrophys. Suppl. Ser. 140, 327-344
K.R. Müller et al 1999

All spectra were rebinned, using onedspec.dispcor,


