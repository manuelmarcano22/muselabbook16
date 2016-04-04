---
layout: post
title: "Better late than never"
categories: [log]
tags: [python, NGC6397, ccmap, iraf, proposal, scipy, scikit, pip, align]
---


I have been slacking a bit writing here, but hopefully I will continue to write more often. 

# Core Radius

When trying to get a value for the core radius of NGC 6397 I found two values. One from [Harris]. He gives a value of 3 arcsec, but in the section "previous analysis of NGC 6397" they cite work done with the Hubble Space Telescope they get a core collapse of around 5.5 arcsec. 


# Proposal

For the proposal to ask for observation time to observe the neutron star, U24. It is a LMXB. Dr. Sebastien ask me to get some pictures for the proposal. 

![MUSE FOV and the LMXB. The Green represents the core radio according to **Martinazzi**.]({{ site.baseurl }}/images/fov.png)

![MUSE view of the LMXB.]({{ site.baseurl }}/images/sii.png)



# Aligning X-ray and MUSE data

The astrometry of the chandra image and MUSE data are not perfect, so they don't match exactly. With a manually created catalog of the brightest X-ray sources in the image, I try to find it in the MUSE datacube and then iterate over them to try to get the optimal rotation and the best reference star. So far I only have the CVs in the center exposure and one U10 that is in Region 5 as defined by this image:

![My number regions](https://raw.githubusercontent.com/manuelmarcano22/muse2016/master/scripts/autocombine/products/musemosaic.pn://raw.githubusercontent.com/manuelmarcano22/muse2016/master/scripts/autocombine/products/musemosaic.png).


The code is really slow and I should optimize it and try with ccmap to see if I get similar answers. The code and catalog is in the GitHub repo in the directory `scripts/misc/Xray`. There I include the manually done catalog for MUSE and Chandra and how to call the script from bash to iterate. 

# All regions combine

Using the RA and DEC in the header of the white images and with the scikit learn [K-means clusterin](http://scikit-learn.org/stable/modules/generated/sklearn.cluster.KMeans.html) I was able to cluster all the different expsures into regions. The result is the picure above. The code is in the autocombine folder of the scripts directory of the [GitHub repo](https://github.com/manuelmarcano22/muse2016/tree/master/scripts/autocombine/executables).

For some reason the k-mean of scipy was giving me the wrong answer. I should have play more with the initial guess and number of iteration, but the scikit learn worked great. 

# Python

To ignore the error messages just called the script with `-W"ignore"`.


# References

Martinazzi E, Pieres A, Kepler SO, Costa JES, Bonatto C, Bica E. Probing mass segregation in the globular cluster NGC 6397. Monthly Notices of the Royal Astronomical Society [Internet]. 2014 Aug 1 [cited 2016 Mar 29];442:3105–11. Available from: http://adsabs.harvard.edu/abs/2014MNRAS.442.3105M

Harris WE. A Catalog of Parameters for Globular Clusters in the Milky Way. The Astronomical Journal [Internet]. 1996 Oct 1 [cited 2016 Mar 31];112:1487. Available from: http://adsabs.harvard.edu/abs/1996AJ....112.1487H


[Martinazzi]: http://adsabs.harvard.edu/abs/2014MNRAS.442.3105M "Martinazzi E, Pieres A, Kepler SO, Costa JES, Bonatto C, Bica E. Probing mass segregation in the globular cluster NGC 6397. Monthly Notices of the Royal Astronomical Society [Internet]. 2014 Aug 1 [cited 2016 Mar 29];442:3105–11. Available from: http://adsabs.harvard.edu/abs/2014MNRAS.442.3105M"

[Harris]: http://adsabs.harvard.edu/abs/1996AJ....112.1487H "Harris WE. A Catalog of Parameters for Globular Clusters in the Milky Way. The Astronomical Journal [Internet]. 1996 Oct 1 [cited 2016 Mar 31];112:1487. Available from: http://adsabs.harvard.edu/abs/1996AJ....112.1487H"
