---
layout: post
title: "Looking for the M Star"
categories: [log]
tags: [M, spectra, data, pyraf, python, M-type]
---

## M type stars


According to [@cohn_identification_2010]:

> The fairly high R-band flux indicates that the secondaries are relatively massive, $\approx 0.5-0.7 \, M_{\odot}$._



This would mean that the companion star is either an M or K type star. If it is an M type star we should be able to see some Titanium lines. To see what magnitude they have I searched in the public MUSE data release of the Globular Cluster (http://muse-vlt.eu/science/globular-cluster-ngc-6397/). The stars have the id from the ACS Survey if Globular Clusters [@anderson_acs_2008]. I searched in this catalog for the right V-I in the VEGA System magnitude. I found some values in the website [Intrinsic Johnson-Cousins UBVI Colors of M Dwarf Standard Stars](http://www.pas.rochester.edu/~emamajek/memo_M.html). 

In there data I was able to find 8 M stars in the data. The code to find the M stars is the folder [scripts/misc/Spectra/Mstars](https://github.com/manuelmarcano22/muse2016/tree/master/scripts/misc/Spectra/Mstars). 

The 8 found M stars are:

```python
['./pointing32_2014-07-27/ngc6397id000005965jd2456866p5198f002.fits',
 './pointing24_2014-07-26/ngc6397id000013685jd2456865p6268f000.fits',
 './pointing23_2014-07-27/ngc6397id000009200jd2456866p5029f002.fits',
 './pointing22_2014-07-26/ngc6397id000003913jd2456865p6209f002.fits',
 './pointing12_2014-07-29/ngc6397id000008220jd2456868p6022f002.fits',
 './pointing34_2014-07-26/ngc6397id000014834jd2456865p6115f000.fits',
 './pointing51_2014-08-01/ngc6397id000000308jd2456871p6149f000.fits',
 './pointing31_2014-08-01/ngc6397id000000963jd2456871p6333f002.fits']
 ```

 The third one is a bit weird so we get the fluxes for the other 7 in the same filters R and H$\alpha$ for Hubble. 

## Variability and Magnitudes in the CVs

The basecode is called flux.py and it is in the [/scripts/misc/Spectra/fitting](https://github.com/manuelmarcano22/muse2016/tree/master/scripts/misc/Spectra/fitting) folder. 

These are the results along in the numbers from [@cohn_identification_2010] and [@kaluzny_photometric_2006].


<div class="container">
  <h2>R Magnitudes</h2>
<div class="table-responsive">
<table class="table table-bordered">
<thead>
  <tr>
    <th>CV</th>
    <th>R Magnitude</th>		
    <th>[@cohn_identification_2010] R</th>
  <!--  <th>[@kaluzny_photometric_2006] V Range</th> -->
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>U17</td>
    <td>20.12</td>		
     <td>18.52</td>
  </tr>
  <tr>
    <td>U23</td>
    <td>19.15</td>		
     <td>17.88</td>
  </tr>
  <tr>
    <td>U10</td>
    <td>20.7</td>		
     <td>19.14</td>
  </tr>
  <tr>
    <td>U21</td>
    <td>19.79</td>		
     <td>19.82</td>
  </tr>
  <tr>
    <td>U22</td>
    <td>18.54</td>		
     <td>20.15</td>
  </tr>
  </tbody>
</table>
</div>
</div>


<div class="container">
  <h2>Equivalent Width of H$\beta$ line</h2>
<div class="table-responsive">
<table class="table table-bordered">
<thead>
  <tr>
    <th>CV</th>
    <th>EW H$\beta$ ($\mathring{A}$)</th>		
  <!--  <th>[@kaluzny_photometric_2006] V Range</th> -->
  </tr>
  </thead>
  <tbody>
  <tr>
    <td>U17</td>
    <td>$11.65 \pm 0.17$</td>		
  </tr>
  <tr>
    <td>U23</td>
     <td>$15.13 \pm 0.7$ </td>
  </tr>
  <tr>
    <td>U10</td>
     <td>$15.44 \pm 0.2$</td>
  </tr>
  </tbody>
</table>
</div>
</div>















## The data

### M stars

```python
for i in a:
iraf.wspectext(i, 'M'+i.split('d')[1].replace('0','')+'spectra.txt', header=False)`
```
```python
import flux
Again the ID is from the [@anderson_acs_2008]
cvU17={'name':'U17','R':flux.getflux('U17','f625w'), 'Halpha':flux.getflux('U17','f658n')}
cvU23={'name':'U23','R':flux.getflux('U23','f625w'), 'Halpha':flux.getflux('U23','f658n')}
cvU19={'name':'U19','R':flux.getflux('U19','f625w'), 'Halpha':flux.getflux('U19','f658n')}
cvU10={'name':'U10','R':flux.getflux('U10','f625w'), 'Halpha':flux.getflux('U10','f658n')}
cvU21={'name':'U21','R':flux.getflux('U21','f625w'), 'Halpha':flux.getflux('U21','f658n')}
cvU25={'name':'U25','R':flux.getflux('U25','f625w'), 'Halpha':flux.getflux('U25','f658n')}
M13685j={'name':'M13685j','R':flux.getflux('M13685j','f625w'), 'Halpha':flux.getflux('M13685j','f658n')}
M14834j={'name':'M14834j','R':flux.getflux('M14834j','f625w'), 'Halpha':flux.getflux('M14834j','f658n')}
M38j={'name':'M38j','R':flux.getflux('M38j','f625w'), 'Halpha':flux.getflux('M38j','f658n')}
M3913j={'name':'M3913j','R':flux.getflux('M3913j','f625w'), 'Halpha':flux.getflux('M3913j','f658n')}
M5965j={'name':'M5965j','R':flux.getflux('M5965j','f625w'), 'Halpha':flux.getflux('M5965j','f658n')}
M822j={'name':'M822j','R':flux.getflux('M822j','f625w'), 'Halpha':flux.getflux('M822j','f658n')}
M963j={'name':'M963j','R':flux.getflux('M963j','f625w'), 'Halpha':flux.getflux('M963j','f658n')}
```


# Problems

Maybe I need to cut VEGa to fit my observation. I dont know. I am getting a Halpha flux bigger than the R flux and it should be like that. Ti is a narrow vs wide field 


# References
