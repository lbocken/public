# wikim : An R package to measure Wikipedia
## About

An R package to measure Wikipedia, created by [Ludovic BOCKEN](https://www.linkedin.com/in/ludovicbocken/). Supported by 
a [doctoral scholarship](https://www.uquebec.ca/reseau/fr/medias/actualites-du-reseau/bourse-de-doctorat-pour-ludovic-bocken) from [Fonds de recherche du Québec – Société et culture (FRQSC)](http://www.frqsc.gouv.qc.ca/en/) in a PhD program of [Cognitive Computing](https://en.wikipedia.org/wiki/Cognitive_computing) of [UQAM](https://uqam.ca/) - [TELUQ](https://www.teluq.ca/site/en/) and a PhD program of [Natural Language Processing](https://en.wikipedia.org/wiki/Natural_language_processing) of [UFC](http://www.univ-fcomte.fr/).
Several researches in [Computational linguistics](https://en.wikipedia.org/wiki/Computational_linguistics) are conducted with this package.

The package communicate with the [API of MediaWiki](https://www.mediawiki.org/wiki/API:Main_page) and depends on several other packages : [koRpus](https://cran.r-project.org/web/packages/koRpus/index.html), 
[quanteda](https://cran.r-project.org/web/packages/quanteda/index.html), 
[stringr](https://cran.r-project.org/web/packages/stringr/index.html),
[WikipediR](https://cran.r-project.org/web/packages/WikipediR/index.html),
[wordnet](https://cran.r-project.org/web/packages/wordnet/index.html),
[gtrendsR](https://cran.r-project.org/web/packages/gtrendsR/index.html),
[trendyy](https://cran.r-project.org/web/packages/trendyy/index.html),
[XML](https://cran.r-project.org/web/packages/XML/index.html),
[microdemic](https://cran.r-project.org/web/packages/microdemic/index.html),
[textreuse](https://cran.r-project.org/web/packages/textreuse/index.html),
[phrasemachine](https://cran.r-project.org/web/packages/phrasemachine/index.html),
[udpipe](https://cran.r-project.org/web/packages/udpipe/index.html),
[topicmodels](https://cran.r-project.org/web/packages/topicmodels/index.html),
[tm](https://cran.r-project.org/web/packages/tm/index.html),
[openNLP](https://cran.r-project.org/web/packages/openNLP/index.html),
[tidytext](https://cran.r-project.org/web/packages/tidytext/index.html),
[RKEA](https://cran.r-project.org/web/packages/RKEA/index.html),
[tau](https://cran.r-project.org/web/packages/tau/index.html),
[languageR](https://cran.r-project.org/web/packages/languageR/index.html),
[wordcloud](https://cran.r-project.org/web/packages/wordcloud/index.html),
[hunspell](https://cran.r-project.org/web/packages/hunspell/index.html),
[tokenizers](https://cran.r-project.org/web/packages/tokenizers/index.html),
[tokenizers.bpe](https://cran.r-project.org/web/packages/tokenizers.bpe/index.html),
[crfsuite](https://cran.r-project.org/web/packages/crfsuite/index.html),
[lsa](https://cran.r-project.org/web/packages/lsa/index.html),
[politeness](https://cran.r-project.org/web/packages/politeness/index.html),
[text2vec](https://cran.r-project.org/web/packages/text2vec/index.html),
[corpora](https://cran.r-project.org/web/packages/corpora/index.html),
[gutenbergr](https://cran.r-project.org/web/packages/gutenbergr/index.html),
[qdap](https://cran.r-project.org/web/packages/qdap/index.html),
...

## Motivations
Since its creation in 2001, Wikipedia became a precious encyclopedic, ontological and textual resource. Wikipedia can be measured especially from set of texts, links between these texts, historical data, cross data. To make easier the improvement of its quality, it is useful to formalize nested strategies on basic functions. Then, knowledge-based reasoning can thus be automated. In this software library, wikim, several access are privileged by names: page names, category names, portal names. In this way, a certain semantic is preserved to build compound expressions. Other software libraries are connected to evaluate Wikipedia on other cross data. In this way, several inherited types of metrics are used and applied to cases of Wikipedia: readability metrics, lexical diversity metrics, set metrics, graphs metrics, sentiment analysis metrics, etc. Abridged functions allow you to write complex expressions in condensed form.


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

## Coding Style
Variable names are lowercase.
Function names begin with verbs and uppercase.
Compound variable names and compound function names are CamelCase.



## A quick start with a few examples

### Articles
```r

```

### Categories
```r
categoryName <- "Mammals"
categoryMetaData.df <- GetCategoryMetaData(categoryName)
View(categoryMetaData.df)
categoriesMembersOfCategory.df <- GetCategoriesMembersOfCategory(categoryName)
View(categoriesMembersOfCategory.df)
pagesMembersOfCategory.df <- GetPagesMembersOfCategory(categoryName)
View(pagesMembersOfCategory.df)
portalsMembersOfCategory.df <- GetPortalsMemberOfCategory(categoryName)
View(portalsMembersOfCategory.df)

```
### Portals
```r

```
