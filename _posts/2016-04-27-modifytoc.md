---
layout: post
title: "ModifyTOC"
categories: [log]
tags: [toc, report, thesis]
---

Proposed TOC for the Report

- Intro:
    - Compact Objects:
        - White Dwarfs:
            - CVs
                - Types:
                    - Magnetic
                    - Intermediate
                    - Double Degenerates
                    - Other relevant types
        - Neutron Stars:
            - qLMXB
        - The Secondaries
            - M type
            - K type
    - Globular Clusters:
        - NGC6397
            - Compact Object Population (15 CVs candidates, 3 neutron stars (1 qLMXB))
    - Spectroscopy:
        - Integral field spectrograph
            - MUSE
- Observation and Methods:
    - MUSE Science Verification and Commissioning Data:
        - Public release data and [@husser_muse_2016]  work and available processed data
    - Data Reduction:
        - MUSE Data Reduction Software:
            - CPL
            - EsoRex
            - MUSE "dynamical libraries" or recipes
        - Public GitHub Repo with all code:
               - Include README ? and wiki if I ever finish it
    - Spectra Extraction and analysis ?
        - QFitsView (extraction, sum 5 pixel area)
        - IRAF/PYRAF (fitting, smoothing, hopefully cross correlation)
        - Python (Clustering Exposures, Plotting)
- Results:
    - Spectra:
        - "Brights"
        - "Faint"
        - 'Intermediate"
        - Neutron Star
    - Variability:
        - Magnitude now, in [@cohn_identification_2010] and [@kaluzny_photometric_2006] range
    - Mass estimation:
        - DP/FWHM vs. q according to [casares_mass_2016]
    - Secondary Star:
        - M star spectra from [@husser_muse_2016]
        - Lack or presence
- Discussion:
    - Two population:
        - Dynamically vs. primordial?
    - Magnetism ?
    - X-Ray ?
- Future Work
    - Dr. Guillot MUSE proposal for the qLMXB
    - Optimal spectra extraction [@horne_optimal_1986]
    - Create a Docker container for the data reduction with necessary software. 
    - Create an Amazon Machine Image to be able to run analysis with the Amazon Elastic Compute Cloud. An example of something like this done in academia is the work of [@ragan-kelley_collaborative_2013]

# References
