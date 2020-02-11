## About

An R package to measure Wikipedia, created by [Ludovic BOCKEN](https://www.linkedin.com/in/ludovicbocken/). Supported by 
a doctoral scholarship from [Fonds de recherche du Québec – Société et culture (FRQSC)](http://www.frqsc.gouv.qc.ca/en/) in a PhD program of [Cognitive Computing](https://en.wikipedia.org/wiki/Cognitive_computing) of [UQAM](https://uqam.ca/) - [TELUQ](https://www.teluq.ca/site/en/) and a PhD program of [Natural Language Processing](https://en.wikipedia.org/wiki/Natural_language_processing) of [UFC](http://www.univ-fcomte.fr/).

The package communicate with the [API of MediaWiki](https://www.mediawiki.org/wiki/API:Main_page) and depends on several other packages : [koRpus](https://cran.r-project.org/web/packages/koRpus/index.html), 
[quanteda](https://cran.r-project.org/web/packages/quanteda/index.html), 
[stringr](https://cran.r-project.org/web/packages/stringr/index.html),
[WikipediR](https://cran.r-project.org/web/packages/WikipediR/index.html),
...


## Keywords

Wikipedia ; metrics ; text similarity ; graph ; sentiment analysis ; readability ; lexical diversity ;  ontology ; bayesian network

## How to Install

The latest development version:

``` r
install.packages("glue")
library("glue")
install.packages("devtools", repos="http://cloud.r-project.org")
library(devtools)
install_github("lbocken/public/wikim")
library(wikim)
```
