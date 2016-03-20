---
layout: post
title: "zap and sky-lines"
categories: [log]
tags: [zap, sky-lines, combine]
---

## Commits

### ZAP and sky-lines

In my field I don't have much sky. This is the reason maybe they didn't take any SKY frames. When I compared my spectra after processing it with ZAP, it takes a lot of signal. Compare the fits of the U23 and some He lines are missing. Take spectra with both doing in the DPUSER command line in QFitsView

```bash
DPUSER> buffer1 = readfitsextension("pathtocube.fits",1)
DPUSER> buffer2 = 3dspec(buffer1,206,137, /sum)
DPUSER> buffer3 = 3dspec(buffer1,206,137, 4,  /sum)
```

Where the 4 is the radius if the selection is "circular".


### Combination first night

It wasn't done right so there are some sharp transition between different wavelength. So I have to redo changing the wavelength ranges. This doesn't appear for the second night.  


## To-Do
- [x] ~~Rerun combined with good align for first day~~
- [x] ~~Combine first and second day~~
- [x] ~~Recombine First and Second night with good first night.~~ No need to do it again. I did this with the PIXTABLE_REDUCED which are product of the scipost routine and used to combined. I think that the combination of one night or of several night depend on the combination of the other.   



