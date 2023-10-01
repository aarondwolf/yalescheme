# yalescheme

---

## Quick Start Guide

The Yale Stata scheme provides a quick set of options for modern-looking graphs from Stata using Yale colors. The scheme is intended for use by the Yale Economic Growth Center's Research Team when designing visualization for presentations and social media.

## Stata Installation

### Installing via *ssc*

The Yale scheme is available for download via ssc:

```
ssc install yalescheme
```

### Usage

To use, simply specify the scheme at the start of a .do file:

```
set scheme yale
```

Or in the process of making a graph:

```stata
sysuse auto
twoway  (scatter price mpg if foreign == 0) ///
		(scatter price mpg if foreign == 1), scheme(yale) 
```

### Fonts

The *Yale* scheme is intended to be used with Yale official fonts. If you are Yale EGC staff, please contact Vestal McIntyre for access to the proprietary *Mallory* font. Fonts are specified independently of schemes; to set the fonts for the graph window, add the following to the top of any .do file using the Yale scheme:

```stata
graph set window fontface "Mallory Thin"
graph set window fontfacemono default
graph set window fontfacesans "Mallory Thin"
graph set window fontfaceserif YaleNew
graph set window fontfacesymbol "Mallory Thin"
```


## Attribution

The Yale scheme was written by Aaron Wolf. Bugs can be reported via the repository at Github (https://github.com/aarondwolf/scheme-yale). Questions can be directed to aaron [dot] wolf [at] u [dot] northwestern [dot] edu. 

This scheme used the user-written scheme *cleanplots* as a base, with alterations made to reflect Yale's colors and stylistic preferences. *cleanplots* was created by Trenton Mize, and documentation can be found at https://www.trentonmize.com/software/cleanplots. *cleanplots* was itself influenced by Daniel Bischof's very excellent *plotplain* scheme, documentation for which can be found at https://www.stata-journal.com/article.html?article=gr0070. 