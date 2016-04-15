---
layout: post
title: "A Poster, a report and meeting"
categories: [log]
tags: [poster, meeting, report, to-do, latex]
---


## The Report

Information about the requirements is in the website for the master (http://ezomp2.omp.obs-mip.fr/asep/index.php/stages). Some important points to have in mind:


- No more than 30 pages including the references. This is a must. 
- **Need to be done by the beginning of June** and **Start Now**.
- Presentation is on the 16 of June. 


Dr. Webb suggested the following tentative skeleton:

- Abstract: Max of 20 lines.
- Intro: $\approx 10$ pages.
- Observation and Methods: 
    - This includes tables, code and reduction of the data
    - Approx 4-5 pages
- Results: Approx 5-8 pages
- Discussion: 
    - Why it matters
- Conclusion: 1/2 - 1 page
- Future Work:
    - Include for example Neutron Star 


## The Poster

**Start Now**

I will probably do it in PowerPoint but a col option would be LaTeX. I found this template that looks good: [Jacobs Landscape Poster](http://www.latextemplates.com/template/jacobs-landscape-poster).


#### [@casares_mass_2016] Mass Ration and H$\alpha$.

```python
def f(q):
    return (0.49*(1+q)**(-1))/(0.6+q**(2/3.)*np.log(1+q**(-1/3.)))


def ratiodp(q,alpha,beta):
    return 3**(1/3.)*(1+q)**(2/3.)*beta*np.sqrt(alpha*f(q))

xdata = np.arange(0.001,0.8, 0.01)
ydata = ratiodp(xdata,0.42, 0.83)
plt.plot(xdata, ydata)
plt.ylim(0.5,0.7)
plt.show()
```

![]({{site.baseurl}}/images/pythonmassratio.svg)


# References

