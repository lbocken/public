# woRd : An R package to study words (work in progress, thanks for your patience)
## About

An R package, created by [Ludovic BOCKEN](https://www.linkedin.com/in/ludovicbocken/). Supported by 
a [doctoral scholarship](https://www.uquebec.ca/reseau/fr/medias/actualites-du-reseau/bourse-de-doctorat-pour-ludovic-bocken) from [Fonds de recherche du Québec – Société et culture (FRQSC)](http://www.frqsc.gouv.qc.ca/en/) in a PhD program of [Cognitive Computing](https://en.wikipedia.org/wiki/Cognitive_computing) of [UQAM](https://uqam.ca/) - [TELUQ](https://www.teluq.ca/site/en/) and a PhD program of [Natural Language Processing](https://en.wikipedia.org/wiki/Natural_language_processing) of [UFC](http://www.univ-fcomte.fr/).
Several researches in [Computational linguistics](https://en.wikipedia.org/wiki/Computational_linguistics) are conducted with this package.


## Keywords

words ; R 

## Coding Style
Variable names are lowercase.
Function names begin with verbs and uppercase.
Compound variable names and compound function names are CamelCase.

## A quick start with a few examples

### How to Install

The latest development version (not on CRAN, not yet :) !)

``` r
install.packages("glue")
library("glue")
install.packages("devtools", repos="http://cloud.r-project.org")
library(devtools)
install_github("lbocken/public/woRd")
library(woRd)

```

### Corpus

```r

library(woRd)
text <- "Coronaviruses are a group of viruses that cause diseases in mammals and birds. In humans, coronaviruses cause respiratory tract infections that are typically mild, such as some cases of the common cold (among other possible causes, predominantly rhinoviruses), though rarer forms such as SARS, MERS, and SARS-CoV-2 can be lethal. Human to human transmission of coronaviruses is primarily thought to occur among close contacts via respiratory droplets generated by sneezing and coughing. There are yet to be vaccines or antiviral drugs to prevent or treat human coronavirus infections."
text1 <- "A virus is a microscopic parasite which can infect living organisms and cause disease. It can make copies of itself inside another organisms cells. Viruses consist of nucleic acid + a protein coat. Usually the nucleic acid is RNA; sometimes it is DNA. Viruses are able to cause many types of diseases such as polio, ebola and hepatitis. Virology is the study on viruses."
text2 <- "The Coronavirus is a virus in the family Coronaviridae.[1][2] They are enveloped viruses with a positive-sense RNA genome.[3] They have a nucleocapsid of helical symmetry. The genome size of coronaviruses is about 26 to 32 kilobases,[4] which is extraordinarily large for an RNA virus."
text3 <- "Animals are eukaryotic organisms with many cells. They do not use light to get energy as plants do. Animals use different ways to get energy from other living things. They may eat other living things, though some are parasites or have photosynthetic protists as symbionts."
text4 <- "Dogs (Canis lupus familiaris) are domesticated mammals, not natural wild animals. They were originally bred from wolves. They have been bred by humans for a long time, and were the first animals ever to be domesticated. There are different studies that suggest that this happened between 15.000 and 100.000 years before our time. The dingo is also a dog, but many dingos have become wild animals again and live independently of humans in the range where they occur (parts of Australia)."


```

### Extraction
```r
ExtractUniqueWordsOfText(text1)
ExtractUniqueWordsOfText(text2)
ExtractUniqueWordsOfText(text3)
ExtractUniqueWordsOfText(text4)


```

### Pairs
```r
CountUniqueWordsOfPair(text1, text2)

```

### Count unique words
```r
CountUniqueWordsOfText(text1)
CountUniqueWordsOfText(text2)
CountUniqueWordsOfText(text3)
CountUniqueWordsOfText(text4)
```

```r
ExtractUniqueWordsWithoutStopwordsOfText(text1)
ExtractUniqueWordsWithoutStopwordsOfText(text2)
ExtractUniqueWordsWithoutStopwordsOfText(text3)
ExtractUniqueWordsWithoutStopwordsOfText(text4)

CountUniqueWordsOfTextWithoutStopWords(text1)
CountUniqueWordsOfTextWithoutStopWords(text2)
CountUniqueWordsOfTextWithoutStopWords(text3)
CountUniqueWordsOfTextWithoutStopWords(text4)
```

```r
ExtractUniqueWordsOfPair(text1, text2)
ExtractUniqueWordsOfPair(text1, text3)
ExtractUniqueWordsOfPair(text1, text4)
ExtractUniqueWordsOfPair(text2, text3)
ExtractUniqueWordsOfPair(text2, text4)
ExtractUniqueWordsOfPair(text3, text4)
```

### Intersection


```r
CountIntersectionOfUniqueWordsOfPair(text1, text2)

````


```r
ExtractIntersectionOfUniqueWordsOfPair(text1, text2)
ExtractIntersectionOfUniqueWordsOfPair(text1, text3)
ExtractIntersectionOfUniqueWordsOfPair(text1, text4)
ExtractIntersectionOfUniqueWordsOfPair(text2, text3)
ExtractIntersectionOfUniqueWordsOfPair(text2, text4)
ExtractIntersectionOfUniqueWordsOfPair(text3, text4)
```



```r
CountIntersectionOfUniqueWordsOfPairWithoutStopWords(text1, text2)
CountIntersectionOfUniqueWordsOfPairWithoutStopWords(text1, text3)
CountIntersectionOfUniqueWordsOfPairWithoutStopWords(text1, text4)
CountIntersectionOfUniqueWordsOfPairWithoutStopWords(text2, text3)
CountIntersectionOfUniqueWordsOfPairWithoutStopWords(text2, text4)
CountIntersectionOfUniqueWordsOfPairWithoutStopWords(text3, text4)
```



### Conditional intersection


```r
CountConditionalIntersectionOfUniqueWordsOfPair(text1, text2)
CountConditionalIntersectionOfUniqueWordsOfPair(text2, text1)
CountConditionalIntersectionOfUniqueWordsOfPair(text1, text3)
CountConditionalIntersectionOfUniqueWordsOfPair(text1, text4)
CountConditionalIntersectionOfUniqueWordsOfPair(text3, text4)
CountConditionalIntersectionOfUniqueWordsOfPair(text4, text3)
```

```r
CountConditionalIntersectionOfUniqueWordsOfPairWithoutStopWords(text1, text2)
CountConditionalIntersectionOfUniqueWordsOfPairWithoutStopWords(text2, text1)
CountConditionalIntersectionOfUniqueWordsOfPairWithoutStopWords(text1, text3)
CountConditionalIntersectionOfUniqueWordsOfPairWithoutStopWords(text1, text4)
CountConditionalIntersectionOfUniqueWordsOfPairWithoutStopWords(text3, text4)
CountConditionalIntersectionOfUniqueWordsOfPairWithoutStopWords(text4, text3)
```
