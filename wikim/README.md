# wikim : An R package to measure Wikipedia
(work in progress, thanks for your patience)
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

### Acquisition functions
#### Articles
```r
pageName <- "Mammal"
article <- GetArticleFromPageName(pageName)
introduction <- GetIntroductionFromPageName(pageName)
bodyText <- GetBodyArticleFromPageName(pageName)
```

#### Categories
```r
categoryName <- "Mammals"
categoryMetaData.df <- GetCategoryMetaData(categoryName)
categoriesMembersOfCategory.df <- GetCategoriesMembersOfCategory(categoryName)
pagesMembersOfCategory.df <- GetPagesMembersOfCategory(categoryName)
portalsMembersOfCategory.df <- GetPortalsMembersOfCategory(categoryName)

View(categoryMetaData.df)
View(categoriesMembersOfCategory.df)
View(pagesMembersOfCategory.df)
View(portalsMembersOfCategory.df)
```
#### Portals
```r
portalName <- "Mammals"
portal <- GetPortal(portalName)

```
### Extraction
```r
pageName <- "Mammal"
referencesToPortals.df <- ExtractReferencesToPortals(pageName)
referencesToCategories.df <- ExtractReferencesToCategories(pageName)
referencesToArticles.df <- ExtractReferencesToArticles(pageName)
```

### Basic operations on sets
```r
categoryName1 <- "Mammals"
categoryName2 <- "Marsupials"
intersectionOfCategories(categoryName1, categoryName2)
unionOfCategories(categoryName1, categoryName2)

portalName1 <- "Mammals"
portalName2 <- "Dogs"
intersectionOfCategories(portalName1, portalName2)
unionOfCategories(portalName1, portalName2)
```

### Metrics
Metrics are from [koRpus](https://cran.r-project.org/web/packages/koRpus/index.html) and [quanteda](https://cran.r-project.org/web/packages/quanteda/index.html) packages

#### Text Length
```r
pageName <- "Mammal"
articleLength.df <- MeasureArticleLength(pageName)
introductionLength.df <- MeasureIntroductionLength(pageName)
bodyArticleLength.df <- MeasureBodyArticleLength(pageName)
complementaryLength.df <- MeasureComplementaryLength(pageName)
conditionalLength.df <- MeasureConditionalLength(pageName)
inverseConditionalLength.df <- MeasureInverseConditionalLength(pageName)

```

#### Text Lexical Diversity
```r
pageName <- "Mammal"
articleLexicalDiversity.df <- MeasureArticleLexicalDiversity(pageName)
introductionLexicalDiversity.df <- MeasureIntroductionLexicalDiversity(pageName)
bodyArticleLexicalDiversity.df <- MeasureBodyArticleLexicalDiversity(pageName)
complementaryLexicalDiversity.df <- MeasureComplementaryLexicalDiversity(pageName)
conditionalLexicalDiversity.df <- MeasureConditionalLexicalDiversity(pageName)
inverseConditionalLexicalDiversity.df <- MeasureInverseConditionalLexicalDiversity(pageName)

```
#### Text Readability
```r
pageName <- "Mammal"
articleReadability.df <- MeasureArticleReadability(pageName)
introductionReadability.df <- MeasureIntroductionReadability(pageName)
bodyArticleReadability.df <- MeasureBodyArticleReadability(pageName)
complementaryReadability.df <- MeasureComplementaryReadability(pageName)
conditionalReadability.df <- MeasureConditionalReadability(pageName)
inverseConditionalReadability.df <- MeasureInverseConditionalReadability(pageName)
```
#### Text similarity
```r
categoryName <- "Mammals"
portalName <- "Mammals"
pageName <- "Mammal"
textSimilarityBetweenArticlesMembersOfCategory.df <- MeasureTextSimilarityBetweenArticlesMembersOfCategory(categoryName)
textSimilarityBetweenArticlesMembersOfPortal.df <- MeasureTextSimilarityBetweenArticlesMembersOfPortal(portalName)
textSimilarityBetweenArticlesReferedInArticle.df <- MeasureTextSimilarityBetweenArticlesReferedInArticle(pageName)

```

#### Sentiment Analysis
These functions use the packages 
[SentimentAnalysis](https://cran.r-project.org/web/packages/SentimentAnalysis/index.html), 
[politeness](https://cran.r-project.org/web/packages/politeness/index.html),
[sentimentr](https://cran.r-project.org/web/packages/sentimentr/sentimentr.pdf),
[meanr](https://cran.r-project.org/web/packages/meanr/index.html),
[RSentiment](https://cran.r-project.org/web/packages/RSentiment/RSentiment.pdf)

```r
pageName1 <- "Yeomanry_Cavalry"
pageName2 <- "Bat"
sentimentAnalysisOfArticle1.df <- MeasureSentimentAnalysisOfArticle(pageName1)
sentimentAnalysisOfArticle2.df <- MeasureSentimentAnalysisOfArticle(pageName2)

```



## Cross References
#### WordNet
These functions use the package [wordnet](https://cran.r-project.org/web/packages/wordnet/index.html) for the Lexical database [WordNet](https://wordnet.princeton.edu/)

```r
portalName <- "Mammals"
categoryName <- "Mammal"
pageName <- "Mammal"

resourcesOfWordNetForPortal.df <- ExtractWordNet(portalName)
resourcesOfWordNetForCategory.df <- ExtractWordNet(categoryName)
resourcesOfWordNetForArticle.df <- ExtractWordNet(pageName)

```

#### Google Trends
These functions use the packages 
[gtrendsR](https://cran.r-project.org/web/packages/gtrendsR/index.html) and
[trendyy](https://cran.r-project.org/web/packages/trendyy/trendyy.pdf)
```r
categories
countries
cities
regions
topics
```

#### Microsoft Academics
These functions use the package
[microdemic](https://cran.r-project.org/web/packages/microdemic/index.html) and the [Microsoft Academic API](https://www.microsoft.com/en-us/research/project/academic-knowledge/).

```r
```

#### Google Scholar
These functions use the packages
[scholar](https://cran.r-project.org/web/packages/scholar/index.html),
[gcite](https://cran.r-project.org/web/packages/gcite/index.html)
.

```r
```

## Visualization


#### Word clouds
These functions use the packages
[wordcloud](https://cran.r-project.org/web/packages/wordcloud/index.html),
[wordcloud2](https://cran.r-project.org/web/packages/wordcloud/index.html),
[ggwordcloud](https://cran.r-project.org/web/packages/ggwordcloud/index.html)
.
```r
pageName <- "Mammal"
PrintWordCloud(pageName)

```
