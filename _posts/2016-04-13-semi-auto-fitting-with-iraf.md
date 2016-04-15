---
layout: post
title: "Semi-Auto Fitting with IRAF"
categories: [log]
tags: [iraf, spectra, gaussin, fit, pyraf, halpha, he]
---



## The Method

First, we normalize with the [Continuum](http://stsdas.stsci.edu/cgi-bin/gethelp.cgi?continuum) task from the stsdas package. 

Then we select the points where to fit the gaussian. 

```
continuum ../*_* @norm.txt
```

Then I call a Python script and do the fit using pyraf. The script can be found in the GitHub Repo [MUSE Data Reduction 2016](https://github.com/manuelmarcano22/muse2016). In the folder [misc/Spectra/fitting](https://github.com/manuelmarcano22/muse2016/tree/master/scripts/misc/Spectra/fitting).



## The Spectra and H$\alpha$ line


## All of them:

```bash
specplot U*.fits xmin=6000 xmax=7000  label=imname graphics='eps'
```

This is converted to svg with:

```bash
epstopdf <file.eps>
pdf2svg <file.pdf> <out.svg>
```
From (http://superuser.com/questions/198460/converting-from-eps-to-svg-format)

![]({{site.baseurl}}/images/stackspectra.svg)


# Individual Spectra

ID  RA (J2000)      DEC (J2000)     Xpixel Ypixel Mag in R

~~U21 17:40:42.006    -53:40:22.07    219 247     19.82~~

~~U23 17:40:41.781    -53:40:19.87    229 258     17.88~~

~~U17 17:40:42.839    -53:40:20.27    182 256     18.52~~

~~U19 17:40:42.456    -53:40:29.87    196 211     18.87~~

~~U22 17:40:41.871    -53:40:29.67    225 209     20.15~~

~~U25 17:40:41.398    -53:40:26.67    246 224     23.48~~

U13 17:40:44.235    -53:40:40.07    120 157     24.0

U61 17:40:45.360    -53:40:29.07    70  212     22.08

~~U10 17:40:49.171    -53:39:49.43    134 247     19.14~~



## U21 (CV4)

### MUSE White Image


![]({{site.baseurl}}/images/u21fov.png)


#### Single Fit

- `./llamar.py U21_nozap_normalized.fits 6563.7 --log U21single --name single`

![]({{site.baseurl}}/images/single_U21_2.svg)


#### Double Fit



- `./llamar.py U21_nozap_normalized.fits 6558.34 6568.731 --log u21double --name double`


![]({{site.baseurl}}/images/double_U21_2.svg)


# U23

### MUSE white image

![]({{site.baseurl}}/images/u23fov.png)


### Single Gaussian


- `./llamar.py U23_nozap_normalized.fits 6563.4 --log U23single --name single`

![]({{site.baseurl}}/images/single_U23_2.svg)


### Double Gaussian

- `./llamar.py U23_nozap_normalized.fits 6556.2 6569.683  --log U23double --name doub
le`

![]({{site.baseurl}}/images/double_U23_2.svg)



# U17

## MUSE White Image

![]({{site.baseurl}}/images/u17fov.png)


### Single Gaussian

- `./llamar.py U17_nozap_normalized.fits 6562.7 --log U17single --name single`

![]({{site.baseurl}}/images/single_U17_2.svg)



### Double Gaussian

![]({{site.baseurl}}/images/double_U17_2.svg)

- `/llamar.py U17_nozap_normalized.fits 6560.4 6567.1  --log U17double --name double`


# U19


## MUSE White Image

![]({{site.baseurl}}/images/u19fov.png)


### Single Gaussian

- `./llamar.py U19_nozap_normalized.fits 6563.5 --log U19single --name single`

![]({{site.baseurl}}/images/single_U19_2.svg)



# U22

## MUSE White Image


![]({{site.baseurl}}/images/u22fov.png)


### Double


- `./llamar.py U22_nozap_normalized.fits 6553.8 6570  --log U22double --name double`

problem fitting fixed there

![]({{site.baseurl}}/images/double_U22_2.svg)

# U25


![]({{site.baseurl}}/images/u25fov.png)


### Single Absoption

`./llamar.py U25_nozap_normalized.fits 6562.6 --log U25single --name single`


![]({{site.baseurl}}/images/single_U25_2.svg)




# U10

## MUSE White Image

![]({{site.baseurl}}/images/u10fov.png)


### Single
    
- `./llamar.py U10_nozap_normalized.fits 6563.45  --log U10single --name single`
    
![]({{site.baseurl}}/images/single_U10_2.svg)

### Double

- `./llamar.py U10_nozap_normalized.fits 6554.6 6573.186  --log U10double --name double`


![]({{site.baseurl}}/images/double_U10_2.svg)



