---
layout: post
title: "A closer look at the CVs"
categories: [log]
tags: [CVS, spectra, AMCVn]
---


##

From [@cohn_identification_2010] we get some estimate of mass and with the function from @[casares_mass_2016]



## The inner bright CVs

According to [@cohn_identification_2010]:

> The fairly high R-band flux indicates that the secondaries are relatively massive, $\approx 0.5-0.7 \, M_{\odot}$._

>  The inferred mass range for the bright CVs ($1.5 \pm 0.2 M_{\odot})$ is consistent with a system made up of a heavy WD  ($\approx 0.9 M_{\odot})i$ with a MS secondary of mass $\approx 0.6 M_{\odot}$. 

From table 2 the inferered mass for these CVs is:  $1.46 \pm 0.22 M_{\odot}.$


### The CVs:


<div class="container">
<table class="table table-bordered">
<thead>
  <tr>
    <th>CV</th>
    <th>FWHM Single Gaussian ($\mathring{A}$)</th>		
    <th>Double Peaked between Gaussians ($\mathring{A}$)</th>
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>U21</td>
    <td>20.93</td>		
    <td>11.821</td>
  </tr>
  <tr>
    <td>U23</td>
    <td>24.97</td>		
    <td>14.188</td>
  </tr>
  <tr>
    <td>U10</td>
    <td>37.27</td>		
    <td>20.93</td>
  </tr>
  </tbody>
</table>
</div>

q is the mass ratio of the companion star to the compact object. 

#### U21

```python
cv21 = {"name":"U21", "fwhm":"20.93", "dp":str(6568.749-6556.928), "flux":getflux('U21')}`
```

#### U23

```python
cv23 = {"name":"U23", "fwhm":"24.97", "dp":str(6569.895-6555.707), "flux":getflux('U23')}
```

#### U10

```python
cv10 = {"name":"U10", "fwhm":"37.27", "dp":str(abs(6551.823-6572.753)), "flux":getflux('U10')}
```

#### The plot:

With the formula from [@casares_mass_2016]  and the estimation of the mass from [@cohn_identification_2010]:

```
def f(q):
    return (0.49*(1+q)**(-1))/(0.6+q**(2/3.)*np.log(1+q**(-1/3.)))


def ratiodp(q,alpha,beta):
    return 3**(1/3.)*(1+q)**(2/3.)*beta*np.sqrt(alpha*f(q))

xdata = np.arange(0.001,0.8, 0.01)
ydata = ratiodp(xdata,0.42, 0.83)
plt.plot(xdata, ydata)
plt.ylim(0.5,0.7)


maxrat = .7/(1.5-.7)
minrat = .5/(1.5-.5)
ypoints = [ (float(cv21['eqw'])/float(cv21['fwhm'])),(float(cv23['eqw'])/float(cv23['fwhm'])), (float(cv10['eqw'])/float(cv10['fwhm']))   ]
xpoints=[.6/.9 for i in range(3)]
plt.errorbar(xpoints, ypoints, xerr=(maxrat-minrat)/2., fmt='o')
```

![]({{site.baseurl}}/images/casares.svg)


## Second try. Getting mass from relation:


```python
def find_nearest(array,value):                                                 
        idx = (np.abs(array-value)).argmin()
        return idx
def f(q):
    return (0.49*(1+q)**(-1))/(0.6+q**(2/3.)*np.log(1+q**(-1/3.)))


def ratiodp(q,alpha,beta):
    return 3**(1/3.)*(1+q)**(2/3.)*beta*np.sqrt(alpha*f(q))

xdata = np.arange(0.001,0.8, 0.01)
ydata = ratiodp(xdata,0.42, 0.83)
xpoints=[xdata[find_nearest(ydata,i)] for i in ypoints] 

```
![]({{site.baseurl}}/images/casares.svg)




## Flux

To compare to [@cohn_identification_2010] they say:

> Photometric calibration to the VEGAMAG system from [@strickler_helium-core_2009]

And in [@strickler_helium-core_2009] they say as explain in [@sirianni_photometric_2005]

## VEGAMAG system

VEGAMAG system makes use of Vega (a Lyr) as the standard star.

There is a very cool package for python called: [pysynphot 0.9.7](https://pypi.python.org/pypi/pysynphot/)

Examples can be found  [here](http://stsdas.stsci.edu/astropy_synphot/synphot/index.html).

Something worth mentioning is this two new units for me. The FLAM and FNU

- flam is ergs $s^{-1} cm^{-2} \mathring{A}^{-1}$
- fnu is ergs $s^{-1} cm^{-2} Hz^{-1}$

To import the spectra with the units:

```python
from astropy.io import ascii
import matplotlib.pyplot as plt
import pysynphot
tab = ascii.read('U23spectra.txt', names=['wave', 'flux']) 
wave = tab['wave']  # First column
flux = tab['flux']*10**(-20)  # Second column
sp = pysynphot.ArraySpectrum(wave=wave, flux=flux, waveunits='angstrom', fluxunits='flam')
#To see Vega spectrum
pysynphot.Vega.flux
pysynphot.Vega.fluxunits
pysynphot.Vega.wave
```


Had to sownload the filters fro Hubble from http://www.stsci.edu/hst/observatory/crds/throughput.html

Then do this http://ssb.stsci.edu/pysynphot/docs/

Now it is in my bashrc


For the filter 
`bp_acs = S.ObsBandpass('acs,wfc1,f625w')`

There is wfc 1 and 2

TO get observation do:

```python
import numpy as np
def find_nearest(array,value):
    idx = (np.abs(array-value)).argmin()
    return idx
import pysynphot as S
bp_acs = S.ObsBandpass('acs,wfc1,f625w')
obstar=S.Observation(sp, bp_acs, force='taper')
obvega=S.Observation(S.Vega, bp_acs, force='taper')
#Taper the spectrum by adding zeros to each end.
plt.plot(obstar.wave, obstar.flux, color='blue')
plt.plot(obvega.wave, obvega.flux, color='red')
plt.show()
```

![]({{site.baseurl}}/images/vega.svg)


## 6 outer and faiter


No H$\alpha$ only He 1. 



# References

