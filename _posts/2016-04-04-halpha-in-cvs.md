---
layout: post
title: "Halpha in CVs"
categories: [log]
tags: [Halpha, iraf, Questions,CVs,pyraf, spectra]
---

# H$\alpha$ lines in CVs in NGC 6397


[Casares16] finds a correlation between the mass ratio q and the ratio of double peak separation to the full-width-half maximum of the H$\alpha$ emission. This is find for Black holes but his data also includes CVs. 

Fig 2 in  [Casares16] shows the correlation for the sampled CVs.


![Fig 2 from Casares 16]({{site.baseurl}}/images/CVsCasares.png)

## The case for NGC 6397

#### Known spectra

<figure>
<img src="{{site.baseurl}}/images/grindlay95fig1.png" alt="Mountain View" style="width:304px;height:428px;">
 <figcaption>Figure 1 from [Grindlay95].</figcaption>
</figure>

### The Method

Using Pyraf to analyze the spectra and QFitsView to extract the spectra from the processed MUSE data cube. 

They can be extracted from QFitsView typing in the DPUSER consle:

```bash
DPUSER> 3dspec(<Cube buffer>,<pixel x>, <pixel y>, <dimension of cross selector>, <operator>)
```

For example:

```bash
DPUSER> 3dspec(buffer2,229, 258,1, /sum)
```

The location of the CVs are the following:

ID  RA (J2000)      DEC (J2000)     Xpixel Ypixel

U21 17:40:42.006    -53:40:22.07    219 247

U23 17:40:41.781    -53:40:19.87    229 258

U17 17:40:42.839    -53:40:20.27    182 256

U19 17:40:42.456    -53:40:29.87    196 211

U22 17:40:41.871    -53:40:29.67    225 209

U25 17:40:41.398    -53:40:26.67    246 224

U13 17:40:44.235    -53:40:40.07    120 157 

U61 17:40:45.360    -53:40:29.07    70  212

U10 17:40:49.171    -53:39:49.43    134 247


The IDs are from [Cohn10]

To extrac the spectra was using the deblending as explain [here](http://iraf.noao.edu/docs/splot/deblend.html)

###  The CVs

#### U21 (CV4)

**The Spectra**

`splot spectra/U21_nozap.fits xmin=6500 xmax=6600`


![The spectra]({{site.baseurl}}/images/u21nosmooth.png)

![The spectra smooth 3]({{site.baseurl}}/images/u213smooth.png)


![Fit smooth]({{site.baseurl}}/images/u21fitsmooth.png)


We get:

- For the Double Peak: Center at 6563.111  and eqw of 0.3598 Ångström. 
- For the Gaussian fit:

center       cont       flux       eqw      core     gfwhm     lfwhm

  6329.256  2790.931   3663.67    -1.313   20.3319     169.3        0.

  6559.511   2736.99   17460.5    -6.379   1313.62     12.49        0.

  6563.003  2736.172  -14544.2     5.316  -1135.08     12.04        0.

  6567.947  2735.014   11320.1    -4.139     1148.     9.263        0.

  6437.187  2765.647   14898.5    -5.387    36.845     379.9        0.


#### U23 (CV1)

**The Spectra**

splot spectra/U23_nozap.fits xmin=6500 xmax=6600


![The spectra]({{site.baseurl}}/images/u23nosmooth.png)

![The spectra smooth 3]({{site.baseurl}}/images/u233smooth.png)


![Fit smooth]({{site.baseurl}}/images/u23fitsmooth.png)


We get:

- For the Double Peak: Center at 6562.937  and eqw of 0.7193 Ångström. 
- For the Gaussian fit:

center      cont      flux       eqw      core     gfwhm     lfwhm 

  6544.739  5139.907   3869.93   -0.7529   341.835     10.64        0.

  6556.504   5137.27   27326.5    -5.319   2359.52     10.88        0.

  6564.063  5135.576  -8712.99     1.697  -782.512     10.46        0.

  6568.366  5134.612   22993.6    -4.478   2039.45     10.59        0.

    6579.5  5132.117   3467.04   -0.6756    202.82     16.06        0.




#### U17 (CV3)

**The Spectra**

splot spectra/U17_nozap.fits xmin=6500 xmax=6600


![The spectra]({{site.baseurl}}/images/u17nosmooth.png)

![The spectra smooth 3]({{site.baseurl}}/images/u173smooth.png)


![Fit smooth]({{site.baseurl}}/images/u17fitsmooth.png)


We get:

- For the Double Peak: Center at 6562.247  and eqw of 0.1472 Ångström. 
- For the Gaussian fit:

center      cont      flux       eqw      core     gfwhm     lfwhm 
  6535.249  2047.437  -662.289    0.3235  -104.728     5.941        0.

  6558.919  2046.865   31516.3     -15.4   1687.63     17.54        0.

  **6561.349  2046.807  -34373.4     16.79  -1870.53     17.26        0.**

  6565.278  2046.712   31053.8    -15.17   1715.47     17.01        0.

  6606.885  2045.707  -1590.03    0.7772  -115.055     12.98        0.



#### U19 (CV2)

Check if it is CV. Is th line at 5895 He I line in absorption ?

![U19]({{site.baseurl}}/images/u19nosmooth.png)


### U22 (CV5)

Is this emission and absorption?

<figure>
<img src={{site.baseurl}}/images/u22nosmooth.png" alt="Mountain View" style="width:504px;height:428px;">
 <figcaption>U22</figcaption>
</figure>

![Fit U22]({{site.baseurl}}/images/u22fitsmooth.png)

We get:

- For the Double Peak: Center at 6563.422  and eqw of 1.4861 Ångström. 
- For the Gaussian fit:

center      cont      flux       eqw      core     gfwhm     lfwhm
  
  7732.821  9581.964 -2.0404E7     2129.  -2208.76     8678.        0.
  
  **6553.814  10867.99   8110.25   -0.7463   702.896     10.84        0.**
  
  6563.689  10857.22  -11461.1     1.056  -2222.29     4.845        0.
  
 **6570.003  10850.33   10478.3   -0.9657   870.674     11.31        0.**
  
  6592.22   10826.1  -1136.66     0.105  -254.768     4.191        0.



#### U25 (CV13)


#### U13 (CV8)

Before Smooth

![No Smooth]({{site.baseurl}}/images/u13nosmooth.png)


After Smooth



![Smooth]({{site.baseurl}}/images/u133smooth.png)


#### U61 (CV12)

I don't really see much. Also see line at 5892 A. 



#### U10 (CV6)

![Smooth]({{site.baseurl}}/images/u10nosmooth.png)

![Smooth]({{site.baseurl}}/images/u103smooth.png)

![Fit smooth]({{site.baseurl}}/images/u10fitsmooth.png)

# Questions
- [ ] Smooth or not?
- [ ] Their model is a 2-Gaussian of identical width and height. How? 
- [ ] How to mask the He I line?
- [ ] U22 and U19, and U25, U61



# References


[Casares16]: http://adsabs.harvard.edu/abs/2016arXiv160308920C 'Casares J. Mass ratio determination from Halpha lines in Black-Hole X-ray transients. ArXiv e-prints [Internet]. 2016 Mar 1 [cited 2016 Apr 1];1603:arXiv:1603.08920. Available from: http://adsabs.harvard.edu/abs/2016arXiv160308920C'


Casares J. Mass ratio determination from Halpha lines in Black-Hole X-ray transients. ArXiv e-prints [Internet]. 2016 Mar 1 [cited 2016 Apr 1];1603:arXiv:1603.08920. Available from: http://adsabs.harvard.edu/abs/2016arXiv160308920C



[Cohn10]: http://adsabs.harvard.edu/abs/2010ApJ...722...20C "Cohn HN, Lugger PM, Couch SM, Anderson J, Cool AM, van den Berg M, et al. Identification of Faint Chandra X-ray Sources in the Core-collapsed Globular Cluster NGC 6397: Evidence for a Bimodal Cataclysmic Variable Population. The Astrophysical Journal [Internet]. 2010 Oct 1 [cited 2016 Mar 4];722:20–32. Available from: http://adsabs.harvard.edu/abs/2010ApJ...722...20C"

Cohn HN, Lugger PM, Couch SM, Anderson J, Cool AM, van den Berg M, et al. Identification of Faint Chandra X-ray Sources in the Core-collapsed Globular Cluster NGC 6397: Evidence for a Bimodal Cataclysmic Variable Population. The Astrophysical Journal [Internet]. 2010 Oct 1 [cited 2016 Mar 4];722:20–32. Available from: http://adsabs.harvard.edu/abs/2010ApJ...722...20C

[Grindlay95]: http://adsabs.harvard.edu/abs/1995ApJ...455L..47G "Grindlay JE, Cool AM, Callanan PJ, Bailyn CD, Cohn HN, Lugger PM. Spectroscopic Identification of Probable Cataclysmic Variables in the Globular Cluster NGC 6397. The Astrophysical Journal Letters [Internet]. 1995 Dec 1 [cited 2016 Mar 10];455:L47. Available from: http://adsabs.harvard.edu/abs/1995ApJ...455L..47G"

Grindlay JE, Cool AM, Callanan PJ, Bailyn CD, Cohn HN, Lugger PM. Spectroscopic Identification of Probable Cataclysmic Variables in the Globular Cluster NGC 6397. The Astrophysical Journal Letters [Internet]. 1995 Dec 1 [cited 2016 Mar 10];455:L47. Available from: http://adsabs.harvard.edu/abs/1995ApJ...455L..47G

[Grindlay]: http://adsabs.harvard.edu/abs/1996IAUS..174..171G  "Grindlay JE. High Resolution Studies of Compact Binaries in Globular Clusters with HST and ROSAT. In 1996 [cited 2016 Apr 3]. p. 171. Available from: http://adsabs.harvard.edu/abs/1996IAUS..174..171G"

Grindlay JE. High Resolution Studies of Compact Binaries in Globular Clusters with HST and ROSAT. In 1996 [cited 2016 Apr 3]. p. 171. Available from: http://adsabs.harvard.edu/abs/1996IAUS..174..171G

[Cool02]: http://adsabs.harvard.edu/abs/2002ASPC..263..163C 'Cool AM, Bolton AS. Blue Stars and Binary Stars in NGC 6397: Case Study of a Collapsed-Core Globular Cluster. In eprint: arXiv:astro-ph/0201166; 2002 [cited 2016 Apr 3]. p. 163. Available from: http://adsabs.harvard.edu/abs/2002ASPC..263..163C'

Cool AM, Bolton AS. Blue Stars and Binary Stars in NGC 6397: Case Study of a Collapsed-Core Globular Cluster. In eprint: arXiv:astro-ph/0201166; 2002 [cited 2016 Apr 3]. p. 163. Available from: http://adsabs.harvard.edu/abs/2002ASPC..263..163C

