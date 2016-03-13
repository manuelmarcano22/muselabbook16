---
layout: post
title:  "Cataclysmic Variables in NGC 6397"
tags: [CVS,dada, fdafa]
categories: log
---

# Known Cataclysmic Variables in NGC 6397


## The CVS


## The Spectra

From the CUBEEXP#to#ZAPFINAL.fits

They can be extracted from QFitsView typing in the DPUSER consle:

```bash
DPUSER> 3dspec(<Cube buffer>,<pixel x>, <pixel y>, <dimension of cross selector>, <operator>)
```

For example:

```bash
DPUSER> 3dspec(buffer2,229, 258,1, /sum)
```


## U23 (aka CV1)

### Location

According to [Cohn10][@Cohn10]:

**R.A., Decl (J2000):** 17:40:41.597 , 53:40:19.30


### Spectra

For Spectra see Fig. below with CV1-3 from [Grindlay95][@Grindlay95]. 


```bash
DPUSER> 3dspec(buffer2,229, 258,1, /sum)
```

and "empty" are with:

```bash
DPUSER> 3dspec(buffer2,236, 264,1, /sum)
```



## U21 (aka CV4)


```bash
DPUSER> 3dspec(buffer2,220, 247,1, /sum)
```

and "empty" are with:

```bash
DPUSER> 3dspec(buffer2,224, 245,1, /sum)
```



## U17 (aka CV3)


```bash
DPUSER> 3dspec(buffer2,183, 256,1, /sum)
```

and "empty" are with:

```bash
DPUSER> 3dspec(buffer2,181, 252,1, /sum)
```

## U22 (aka CV3)

Not so bright

```bash
DPUSER> 3dspec(buffer2,225, 209,1, /sum)
```

and "empty" are with:

```bash
DPUSER> 3dspec(buffer2,230, 193,1, /sum)
```


## U19 (aka CV2)

Insie a lot of stars so a lot of absoption but maybe I see an emission insise absoprtion


```bash
DPUSER> 3dspec(buffer2,194, 205,1, /sum)
```

and "empty" are with:

```bash
DPUSER> 3dspec(buffer2,207, 201,1, /sum)
```



## U13 (aka CV8)

Alone so negative flux in ZAP and very low in FINAL. Not even Hubble could see it. 

```bash
DPUSER> 3dspec(buffer1,117, 159,1, /sum)
```

and "empty" are with:

```bash
DPUSER> 3dspec(buffer2,109, 160,1, /sum)
```


## U61 (aka CV12)



```bash
DPUSER> 3dspec(buffer1,117, 159,1, /sum)
```

and "empty" are with:

```bash
DPUSER> 3dspec(buffer2,109, 160,1, /sum)
```






<figure>
<img src="{{ "/images/edmondscvsfig4.png" | prepend: site.baseurl }}" alt="Mountain View" style="width:404px;height:428px;">
 <figcaption>Figure 4 from [Cohn10][@Cohn10].</figcaption>
</figure>






<figure>
<img src="{{ "/images/grindlay95fig1.png" | prepend: site.baseurl }}" alt="Mountain View" style="width:304px;height:428px;">
 <figcaption>Figure 1 from [Grindlay95][@Grindlay95].</figcaption>
</figure>




# References

1.
Grindlay JE, Cool AM, Callanan PJ, Bailyn CD, Cohn HN, Lugger PM. Spectroscopic Identification of Probable Cataclysmic Variables in the Globular Cluster NGC 6397. The Astrophysical Journal Letters [Internet]. 1995 Dec 1 [cited 2016 Mar 10];455:L47. Available from: http://adsabs.harvard.edu/abs/1995ApJ...455L..47G

2.
Cohn HN, Lugger PM, Couch SM, Anderson J, Cool AM, van den Berg M, et al. Identification of Faint Chandra X-ray Sources in the Core-collapsed Globular Cluster NGC 6397: Evidence for a Bimodal Cataclysmic Variable Population. The Astrophysical Journal [Internet]. 2010 Oct 1 [cited 2016 Mar 4];722:20–32. Available from: http://adsabs.harvard.edu/abs/2010ApJ...722...20C

3.
Edmonds PD, Grindlay JE, Cool A, Cohn H, Lugger P, Bailyn C. Cataclysmic Variables and a Candidate Helium White Dwarf in the Globular Cluster NGC 6397. ApJ [Internet]. 1999 [cited 2016 Feb 23];516(1):250. Available from: http://stacks.iop.org/0004-637X/516/i=1/a=250

[@Grindlay95]: http://adsabs.harvard.edu/abs/1995ApJ...455L..47G  "Grindlay JE, Cool AM, Callanan PJ, Bailyn CD, Cohn HN, Lugger PM. Spectroscopic Identification of Probable Cataclysmic Variables in the Globular Cluster NGC 6397. The Astrophysical Journal Letters [Internet]. 1995 Dec 1 [cited 2016 Mar 10];455:L47. Available from: http://adsabs.harvard.edu/abs/1995ApJ...455L..47G"


[@Cohn10]: http://adsabs.harvard.edu/abs/2010ApJ...722...20C "Cohn HN, Lugger PM, Couch SM, Anderson J, Cool AM, van den Berg M, et al. Identification of Faint Chandra X-ray Sources in the Core-collapsed Globular Cluster NGC 6397: Evidence for a Bimodal Cataclysmic Variable Population. The Astrophysical Journal [Internet]. 2010 Oct 1 [cited 2016 Mar 4];722:20–32. Available from: http://adsabs.harvard.edu/abs/2010ApJ...722...20C"


[@Edmonds99]: http://stacks.iop.org/0004-637X/516/i=1/a=250 "Edmonds PD, Grindlay JE, Cool A, Cohn H, Lugger P, Bailyn C. Cataclysmic Variables and a Candidate Helium White Dwarf in the Globular Cluster NGC 6397. ApJ [Internet]. 1999 [cited 2016 Feb 23];516(1):250. Available from: http://stacks.iop.org/0004-637X/516/i=1/a=250"
