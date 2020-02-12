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
Since its creation in 2001, Wikipedia became a precious encyclopedic, ontological and textual resource. Wikipedia can be measured especially from set of texts, links between these texts, historical data, cross data. To make easier the improvement of its quality, it is useful to formalize nested strategies on basic functions. Then, knowledge-based reasoning can thus be automated. In this software library, wikim, several access are privileged by names: page names, category names, portal names. In this way, a certain semantic is preserved to build compound expressions. Other software libraries are connected to evaluate Wikipedia on other cross data. Several inherited types of metrics are used and applied to cases of Wikipedia: readability metrics, lexical diversity metrics, set metrics, graphs metrics, sentiment analysis metrics, etc. Abridged functions allow you to write complex expressions in condensed form.


## Keywords

Wikipedia ; metrics ; text similarity ; graph ; sentiment analysis ; readability ; lexical diversity ;  ontology ; bayesian network

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
install_github("lbocken/public/wikim")
library(wikim)
```

### Names of portals, categories, articles as parameters of functions
```r
name <- "apongabrauabnapie"
name <- "Mammal"
name <- c("Mammal", "Mammals")
name1 <- "Mammal"
name2 <- "Mammals"

pageName <- "Mammal"
pageName <- c("Mammal", "Bird")
pageName1 <- "Mammal"
pageName2 <- "Bird"
pageName3 <- "Yeomanry_Cavalry"

categoryName <- "Mammals"
categoryName <- c("Mammals", "Birds")
categoryName1 <- "Mammals"
categoryName2 <- "Marsupials"

portalName <- "Mammals"
portalName <- c("Mammals", "Birds")
portalName1 <- "Mammals"
portalName2 <- "Birds"
```

### Names and pageids (be careful to avoid misleadings references and bugs)
```r
pageID.df <- GetPageID(pageName)
pageIDWithRedirects.df <- GetPageIDWithRedirects(pageName)
pageName.df <- GetPageName(pageid)

simplePageID.df <- GetSimplePageID(pageName)
simplePageIDWithRedirects.df <- GetSimplePageIDWithRedirects(pageName)
simplePageName.df <- GetSimplePageName(pageid)


answer <- IsValidPageID(pageID)
answer <- IsValidSimplePageID(pageID)

```

### Small talk : checking functions
```r
statusOfArticle.df <- CheckStatusOfArticle(name)
statusOfCategory.df <- CheckStatusOfCategory(name)
statusOfPortal.df <- CheckStatusOfPortal(name)

pageNameWithStatusOfPortal.df <- GetPageNameWithStatusOfPortal(name)
pageNameWithStatusOfCategory.df <- GetPageNameWithStatusOfCategory(name)
pageNameWithStatusOfArticle.df <- GetPageNameWithStatusOfArticle(name)

IsaPortalInWikipedia(portalName)
IsaCategoryInWikipedia(categoryName)
IsaArticleInWikipedia(pageName)

IsaPortalInSimpleWikipedia(portalName)
IsaCategoryInSimpleWikipedia(categoryName)
IsaArticleInSimpleWikipedia(pageName)

tokenAsPortalInWikipedia
```

### Labelling names as portal names or category names
```r
portalName.df <- LabelAsPortal(name)
categoryName.df <- LabelAsCategory(name)

wikipediaPortalName <- function(string){paste0("Portal:",string)}

```

### A focus on sciences and academic fields to categorize the world
```r
academicFields <- GetAcademicFields()
GetSectionsOfGoodAndFeaturedArticlePageWithStatusOfAcademicFieldPortalAndCategory()
GetSectionsOfGoodAndFeaturedArticlePageWithStatusOfAcademicField()
GetPortalsAndRedirectsToPortalsOfAcademicFields()
GetFeaturedArticlesAboutAcademicFields()
GetAcademicFieldsAsPortalAndCategory()
GetGoodArticlesAboutAcademicFields()
GetCategoriesAboutAcademicFields()
GetPortalsAboutAcademicFields()
academicFieldsAsPortalAndCategory.df <- GetAcademicFieldsAsPortalAndCategory()
GetPortalsAndRedirectsToPortalsOfAcademicFields()
```

### Preferred corpus : categories of articles
Several categories can be used to study chunks of Wikipedia : 
[featured articles](https://en.wikipedia.org/wiki/Wikipedia:Featured_articles),
[good articles](https://en.wikipedia.org/wiki/Wikipedia:Good_articles),
[articles needing rewrite](https://en.wikipedia.org/wiki/Category:Wikipedia_articles_needing_rewrite)
.


#### Featured articles
```r
metaDataOfFeaturedArticles.df <- GetMetaDataOfFeaturedArticles()
featuredArticles.df <- GetAllFeaturedArticles()

selectionOfFeaturedArticles.df <- GetIntersectionWithFeaturedArticles(names)
featuredCandidates.df <- GetFeaturedArticles(names)

featuredCandidatesFromPortal.df <- GetFeaturedCandidatesFromPortal(portalName)
featuredCandidatesFromCategory.df <- GetFeaturedCandidatesFromPortal(categoryName)
featuredCandidatesFromArticle.df <- GetFeaturedCandidatesFromArticle(pageName)


GetFeaturedArticlesOfGoogleTrendsCategories()
GetFeaturedArticlesOfGoogleTrendsCountries()

portalNamesOnFeaturedArticles <- ExtractPortalNameOnFeaturedArticle(pageName)
GetFeaturedArticlesWithStatusOfPortalAndCategory()
GetNamesOfFeaturedArticlesWithStatusOfPortalName()
GetNamesOfFeaturedArticlesWithStatusOfPortalAndCategory()
GetSectionsOfGoodAndFeaturedArticlePageWithStatusOfPortalAndCategory()
GetSectionsOfGoodAndFeaturedArticlePageWithStatusOfAcademicFieldPortalAndCategory()

GetFeaturedArticles(pageName)
ExtractRawFeaturedArticles()
SampleFeaturedArticlesAbout(number)
GetFeaturedCandidatesFromPortal(portalName)
GetFeaturedCandidatesFromArticle(articleName)
GetFeaturedCandidatesFromCategory(categoryName)
ExtractSectionsOfFeaturedArticles()
ExtractPortalNameOnFeaturedArticle(pageName)
ExtractSubSectionsOfFeaturedArticles()
ExtractSubSubSectionsOfFeaturedArticles()
GetNamesOfFeaturedArticlesWithStatusOfPortal()

```
#### Good articles
```r
goodArticles.df <- GetGoodArticles()
goodCandidates.df <- GetGoodArticles(names)
goodCandidatesFromPortal.df <- GetGoodCandidatesFromPortal(portalName)

portalNamesOnGoodArticles <- ExtractPortalNameOnGoodArticle(pageName)
GetNamesOfGoodArticlesWithStatusOfPortal()
GetGoodArticlesWithStatusOfPortalAndCategory()
 
```
#### Needing rewrite articles
```r
needingRewriteArticles.df
```

### Acquisition functions

#### Portals
```r
namesOfPortals.df <- GetAllNamesOfPortals()
portals.df <- GetAllPortals()
portalsMembersOfCategory.df <- GetPortalsMembersOfCategory(categoryName)
portalsInPage.df <- ExtractPortalsInPage(pageName) 
portalID.df <- GetPortalIDwithRedirects(pageName)
portalTitle.df <- GetPortalNameWithRedirects(pageName)
portalsMembersOfCategory.df <- GetPortalsMembersOfCategory(categoryName)
relatedPortalsFromPortal.df <- GetRelatedPortalsFromPortal(portalName)

portals.df <- GetPortal(portalName)
rawPortals.df <- GetRawPortal(portalName)

simplePortals.df <- GetSimplePortal(portalName)
simpleRawPortals.df <- GetSimpleRawPortal(portalName)

# portals in/of portalIndexFor

portalsInArticle.df <- GetPortalsInArticle(pageName)
portalsInCategory.df <- GetPortalsInCategory(categoryName)

namesHomonymsOfPortalInArticle.df <- ExtractNamesHomonymsOfPortalInArticle(pageName)
namesHomonymsOfPortalInBodyArticle.df <- ExtractNamesHomonymsOfPortalInBodyArticle(pageName)
namesHomonymsOfPortalInIntroduction.df <- ExtractNamesHomonymsOfPortalInIntroduction(pageName)
namesHomonymsOfPortalInCategory.df <- ExtractNamesHomonymsOfPortalInBodyArticle(categoryName)
namesHomonymsOfPortalInPortal.df <- ExtractNamesHomonymsOfPortalInIntroduction(portalName)



portalsAboutAcademicFields.df <- GetPortalsAboutAcademicFields()
portalsAboutGoogleTrendsCategories.df <- GetPortalsAboutGoogleTrendsCategories()
portalsAboutGoogleTrendsCountries.df <- GetPortalsAboutGoogleTrendsCountries()

```


#### Categories
```r
categoryMetaData.df <- GetCategoryMetaData(categoryName)
categoriesMembersOfCategory.df <- GetCategoriesMembersOfCategory(categoryName)
pagesMembersOfCategory.df <- GetPagesMembersOfCategory(categoryName)
portalsMembersOfCategory.df <- GetPortalsMembersOfCategory(categoryName)

simpleCategoryMetaData.df <- GetSimpleCategoryMetaData(SimpleCategoryName)
categoriesMembersOfSimpleCategory.df <- GetCategoriesMembersOfSimpleCategory(SimpleCategoryName)
pagesMembersOfSimpleCategory.df <- GetPagesMembersOfSimpleCategory(SimpleCategoryName)
portalsMembersOfSimpleCategory.df <- GetPortalsMembersOfSimpleCategory(SimpleCategoryName)

View(categoryMetaData.df)
View(categoriesMembersOfCategory.df)
View(pagesMembersOfCategory.df)
View(portalsMembersOfCategory.df)

View(simpleCategoryMetaData.df)
View(categoriesMembersOfSimpleCategory.df)
View(pagesMembersOfSimpleCategory.df)
View(portalsMembersOfSimpleCategory.df)
```


#### Articles (Values : dataframes with 4 attributes (subdomain,pageName,textType,text)
```r
articles.df <- GetArticleFromPageName(pageName)
introductions.df <- GetIntroductionFromPageName(pageName)
bodyArticles.df <- GetBodyArticleFromPageName(pageName)

simpleArticles.df <- GetSimpleArticleFromPageName(pageName)
simpleIntroductions.df <- GetSimpleIntroductionFromPageName(pageName)
simpleBodyArticles.df <- GetSimpleBodyArticleFromPageName(pageName)


articlesMembersOfPortalAndCategory.df <- GetArticlesMembersOfPortalAndCategory(portalName, categoryName)

View(articles.df)
View(introductions.df)
View(bodyArticles.df)

View(simpleArticles.df)
View(simpleIntroductions.df)
View(simpleBodyArticles.df)
```

### Tokenization 
These functions use the packages
[](),
[]().

```r
wordTokensFromPortal.df <- ExtractWordTokensFromPortal(portalName)
wordTokensFromCategory.df <- ExtractWordTokensFromCategory(categoryName)
wordTokensFromArticle.df <- ExtractWordTokensFromArticle(pageName)
wordTokensFromBodyArticle.df <- ExtractWordTokensFromBodyArticle(pageName)
wordTokensFromIntroduction.df <- ExtractWordTokensFromIntroduction(pageName)
```

### Document term matrices
```r
documentTermMatrixForPortals.df <- GetDocumentTermMatrixForPortal(portalName)
documentTermMatrixForCategories.df <- GetDocumentTermMatrixForCategory(categoryName)
documentTermMatrixForArticles.df <- GetDocumentTermMatrixForArticle(pageName)
documentTermMatrixForBodyArticles.df <- GetDocumentTermMatrixForPortal(pageName)
documentTermMatrixForIntroduction.df <- GetDocumentTermMatrixForPortal(pageName)
```

### Extraction functions
```r
relatedCategoriesFromPortal.df <- GetRelatedCategoriesFromPortal(portalName)

ExtractWikiReferencesToArticlesFromPortal(portalName)

referencesToPortals.df <- ExtractReferencesToPortals(pageName)
referencesToPortals.df <- ExtractWikiReferencesToPortals(pageName)
wikiReferencesToPortalsFromPortal.df <- ExtractWikiReferencesToPortalsFromPortal(portalName)
wikiReferencesToPortalsFromCategory.df <- ExtractWikiReferencesToPortalsFromCategory(categoryName)
wikiReferencesToPortalsFromArticle.df <- ExtractWikiReferencesToPortalsFromArticle(articleName)

wikiReferencesToCategoriesFromPortal.df <- ExtractWikiReferencesToCategoriesFromPortal(portalName)
wikiReferencesToCategoriesFromCategory.df <- ExtractWikiReferencesToCategoriesFromCategory(categoryName)
wikiReferencesToCategoriesFromArticle.df <- ExtractWikiReferencesToCategoriesFromArticle(articleName)

wikiReferencesToArticlesFromPortal.df <- ExtractWikiReferencesToArticlesFromPortal(portalName)
wikiReferencesToArticlesFromCategory.df <- ExtractWikiReferencesToArticlesFromCategory(categoryName)
wikiReferencesToArticlesFromArticle.df <- ExtractWikiReferencesToArticlesFromArticle(articleName)


ExtractWikiReferencesToPortals(pageName)
wikipediaPortalsExtraction(pageName)

portalNamesOnFeaturedArticle.df <- ExtractPortalNameOnFeaturedArticle(pageName)
portalNamesOnGoodArticle.df <- ExtractPortalNameOnGoodArticle(pageName)

featuredArticleName <- GetArticlesMembersOfCategory("Featured_articles")

```

### Basic operations and measures on sets
```r
portalCardinalityOInCategory <- MeasurePortalCardinalityInCategory(categoryName)
categoryCardinalityOInCategory <- MeasureCategoryCardinalityInCategory(categoryName)
articleCardinalityOInCategory <- MeasureArticleCardinalityInCategory(categoryName)

portalCardinalityOInPortal <- MeasurePortalCardinalityInPortal(categoryName)
categoryCardinalityOInPortal <- MeasureCategoryCardinalityInPortal(categoryName)
articleCardinalityOInPortal <- MeasureArticleCardinalityInPortal(categoryName)

intersectionOfCategories(categoryName1, categoryName2)
unionOfCategories(categoryName1, categoryName2)

portalName1 <- "Mammals"
portalName2 <- "Dogs"
intersectionOfCategories(portalName1, portalName2)
unionOfCategories(portalName1, portalName2)
```



### Stemming
These functions use the packages
[](),
[]().

```r
stemsInArticle <- ExtractStemsInArticle(pageName)
stemsInPortal <- ExtractStemsInPortal(portalName)
stemsInCategory <- ExtractStemsInCategory(categoryName)

```

### Parts-Of-Speech Tagging
```r
partOfSpeechOfArticle <- ExtractPartsOfSpeechOfArticle(pageName)
partOfSpeechOfPortal <- ExtractPartsOfSpeechOfArticle(portalName)
partOfSpeechOfCategory <- ExtractPartsOfSpeechOfArticle(categoryName)


```

### Key Phrase Extraction
These functions use the package
[RKEA](https://cran.r-project.org/web/packages/RKEA/index.html).

```r
keyPhrasesFromArticles <- ExtractKeyPhrasesFromArticle(pageName)
```


### Topic modeling
These functions use the package
[topicmodels](https://cran.r-project.org/web/packages/topicmodels/index.html),
[maptpx](https://cran.r-project.org/web/packages/maptpx/index.html).

```r
topicModelFromArticle <- GetTopicModelsFromArticle(pageName)
topicModelFromCategory <- GetTopicModelsFromArticle(categoryName)
topicModelFromPortal <- GetTopicModelsFromArticle(portalName)
```

### Entity and noun phrase recognition
These functions use the packages 
[phrasemachine](https://cran.r-project.org/web/packages/phrasemachine/index.html),
[spacyr](https://cran.r-project.org/web/packages/spacyr/index.html).
```r
nounPhrasesInArticle.df <- ExtractNounPhrasesInArticle(pageName)
nounPhrasesInArticle.df <- ExtractNounPhrasesInCategory(categoryName)
nounPhrasesInArticle.df <- ExtractNounPhrasesInPortal(portalName)
```


### Metrics functions
Metrics are from [koRpus](https://cran.r-project.org/web/packages/koRpus/index.html) and [quanteda](https://cran.r-project.org/web/packages/quanteda/index.html) packages

```r
measuresOfArticles.df <- MeasureArticle(pageName)
measuresOfBodyArticles.df <- MeasureBodyArticle(pageName)
measuresOfIntroductions.df <- MeasureIntroduction(pageName)
measuresOfCategories.df <- MeasureCategory(categoryName)
measuresOfPortals.df <- MeasurePortal(portalName)
```

#### Cardinalities
```r
numberOfWikiReferencesToPortals.df <- MeasureNumberOfWikiReferencesToPortals(pageName)
numberOfWikiReferencesToCategories.df <- MeasureNumberOfWikiReferencesToCategories(pageName)
numberOfWikiReferencesToArticles.df <- MeasureNumberOfWikiReferencesToArticles(pageName)

additivityOfWikipediaPortals

```

#### Density
```r
densityOfPortals.df <- MeasureDensityOfPortal(portalName)
densityOfCategories.df <- MeasureDensityOfCategory(categoryName)
densityOfArticles.df <- MeasureDensityOfArticle(pageName)

```

#### Frequency Analysis
```r
frequencyOfTokensInArticle <- MeasureFrequencyOfTokensInArticle(pageName)
frequencyOfTokensInCategory <- MeasureFrequencyOfTokensInCategory(categoryName)
frequencyOfTokensInPortal <- MeasureFrequencyOfTokensInPortal(portalName)

frequencyOfNounPhrasesInArticle <- MeasureFrequencyOfNounPhrasesInArticle(pageName)
frequencyOfNounPhrasesInCategory <- MeasureFrequencyOfNounPhrasesInCategory(categoryName)
frequencyOfNounPhrasesInPortal <- MeasureFrequencyOfNounPhrasesInPortal(portalName)

```

#### Text Length
```r
articleLength.df <- MeasureArticleLength(pageName)
introductionLength.df <- MeasureIntroductionLength(pageName)
bodyArticleLength.df <- MeasureBodyArticleLength(pageName)
complementaryLength.df <- MeasureComplementaryLength(pageName)
conditionalLength.df <- MeasureConditionalLength(pageName)
inverseConditionalLength.df <- MeasureInverseConditionalLength(pageName)

```

#### Text Lexical Diversity
```r
articleLexicalDiversity.df <- MeasureArticleLexicalDiversity(pageName)
introductionLexicalDiversity.df <- MeasureIntroductionLexicalDiversity(pageName)
bodyArticleLexicalDiversity.df <- MeasureBodyArticleLexicalDiversity(pageName)
complementaryLexicalDiversity.df <- MeasureComplementaryLexicalDiversity(pageName)
conditionalLexicalDiversity.df <- MeasureConditionalLexicalDiversity(pageName)
inverseConditionalLexicalDiversity.df <- MeasureInverseConditionalLexicalDiversity(pageName)

```
#### Text Readability
```r
articleReadability.df <- MeasureArticleReadability(pageName)
introductionReadability.df <- MeasureIntroductionReadability(pageName)
bodyArticleReadability.df <- MeasureBodyArticleReadability(pageName)
complementaryReadability.df <- MeasureComplementaryReadability(pageName)
conditionalReadability.df <- MeasureConditionalReadability(pageName)
inverseConditionalReadability.df <- MeasureInverseConditionalReadability(pageName)
```
#### Text similarity
These functions use the packages 
[textreuse](https://cran.r-project.org/web/packages/textreuse/index.html),
[lsa](https://cran.r-project.org/web/packages/lsa/index.html)
.
```r
textSimilarityBetweenArticlesMembersOfCategory.df <- MeasureTextSimilarityBetweenArticlesMembersOfCategory(categoryName)
textSimilarityBetweenArticlesMembersOfPortal.df <- MeasureTextSimilarityBetweenArticlesMembersOfPortal(portalName)
textSimilarityBetweenArticlesReferedInArticle.df <- MeasureTextSimilarityBetweenArticlesReferedInArticle(pageName)


jaccardIndexOfWikiReferencesToPortals.df <- MeasureJaccardIndexOfWikiReferencesToPortals(pageName1, pageName2)
jaccardIndexOfWikiReferencesToCategories.df <- MeasureJaccardIndexOfWikiReferencesToCategories(pageName1, pageName2)
jaccardIndexOfWikiReferencesToArticles.df <- MeasureJaccardIndexOfWikiReferencesToArticles(pageName1, pageName2)


```

### Similarity
```r
portalSimilarity <- MeasurePortalSimilarity(portalName1, portalName2)
categorySimilarity <- MeasureCategorySimilarity(categoryName1, categoryName2)
articleSimilarity <- MeasureArticleSimilarity(pageName1, pageName2)
bpdyArticleSimilarity <- MeasureBodyArticleSimilarity(pageName1, pageName2)
introductionSimilarity <- MeasureIntroductionSimilarity(pageName1, pageName2)

MeasureJaccardIndexBetweenPageNamedAndMembersOfPortal(portalName)

```
### Conditional complexity
```r
MeasureConditionalIndexOfWikiReferencesToPortals(pageName1, pageName2)

```

### Text categorization
These functions use the package 
[textcat](https://cran.r-project.org/web/packages/textcat/index.html).

```r
categoriesOfArticles <- CategorizeArticlesMembersOfCategory(categoryName)
categoriesOfArticles <- CategorizeArticlesMembersOfPortal(portalName)
```




### Clustering
These functions use the package
[fastcluster](https://cran.r-project.org/web/packages/fastcluster/index.html).

```r
readabilityClustersOfArticlesMembersOfCategory <- GetReadabilityClustersOfArticlesMembersOfCategory(categoryName)
readabilityClustersOfArticlesMembersOfportalName <- GetReadabilityClustersOfArticlesMembersOfCategory(portalName)

PrintHiearchicalClustersOfArticlesMembersOfCategory(categoryName)
PrintHiearchicalClustersOfArticlesMembersOfPortal(portalName)

```

### Text classification
These functions use the package
[fastTextR](https://cran.r-project.org/web/packages/fastTextR/index.html)
```r



```

### Text recommendation
```r
candidates.df <- GetCandidatesFromPortal(portalName)

recommendationsFromPortal.df <- RecommendFromPortal(portalName)
recommendationsFromCategory.df <- RecommendFromPortal(categoryName)
recommendationsFromArticle.df <- RecommendFromPortal(pageName)

RecommendFromPortalWithLabels(portalName)

SuggestPortal(wikipediaPageName)
RecommendWithCategoriesOfTextDifficultyFromPortal(portalName)
RecommendWithCategoriesOfTextReadabilityFromPortal(portalName)
recommendationOfEntriesWithStatusOfPortal
```

#### Grammars
These functions use the package [gramEvol](https://cran.r-project.org/web/packages/gramEvol/index.html).
```r
grammarFromArticle <- BuildGrammarFromArticle(pageName)
grammarFromCategory <- BuildGrammarFromCategory(categoryName)
grammarFromPortal <- BuildGrammarFromPortal(portalName)

```

#### Strings
These functions use the packages 
[stringr](https://cran.r-project.org/web/packages/stringr/index.html),
[stringi](https://cran.r-project.org/web/packages/stringi/index.html),
[GrpString](https://cran.r-project.org/web/packages/GrpString/index.html).

#### Sentiment Analysis
These functions use the packages 
[SentimentAnalysis](https://cran.r-project.org/web/packages/SentimentAnalysis/index.html), 
[politeness](https://cran.r-project.org/web/packages/politeness/index.html),
[sentimentr](https://cran.r-project.org/web/packages/sentimentr/sentimentr.pdf),
[meanr](https://cran.r-project.org/web/packages/meanr/index.html),
[RSentiment](https://cran.r-project.org/web/packages/RSentiment/RSentiment.pdf)

```r
sentimentAnalysisOfArticle1.df <- MeasureSentimentAnalysisOfArticle(pageName1)
sentimentAnalysisOfArticle2.df <- MeasureSentimentAnalysisOfArticle(pageName2)

```



## Cross References
#### WordNet
These functions use the package 
[wordnet](https://cran.r-project.org/web/packages/wordnet/index.html) for the Lexical database [WordNet](https://wordnet.princeton.edu/). [Documentation](https://wordnet.princeton.edu/documentation) should be consulted, in particular on [pointers](https://wordnet.princeton.edu/documentation/wnsearch3wn).

```r
entriesInWordNet.df <- CheckIfInWordNet(name)
entriesInWikipediaAndWordNet.df <- CheckIfInWikipediaAndWordNet(name)

wordNetDictionaryForPortal.df <- GetWordNetDictionaryForPortal(portalName)
wordNetDictionaryForCategory.df <- GetWordNetDictionaryForCategory(categoryName)
wordNetDictionaryForArticle.df <- GetWordNetDictionaryForArticle(pageName)
wordNetDictionaryForIntroduction.df <- GetWordNetDictionaryForIntroduction(pageName)
wordNetDictionaryForBodyArticle.df <- GetWordNetDictionaryForBodyArticle(pageName)

nounsSynonymsOfRelatedPagesInArticle.df <- GetNounsSynonymsOfRelatedPagesInArticle(pageName)
nounsSynonymsOfMembersOfCategory.df <- GetNounsSynonymsOfMembersOfCategory(categoryName)
nounsSynonymsOfMembersOfPortals.df <- GetNounsSynonymsOfMembersOfPortal(portalName)

nounsHypernymsOfRelatedPagesInArticle.df <- GetNounsHypernymsOfRelatedPagesInArticle(pageName)
nounsHypernymsOfMembersOfCategory.df <- GetNounsHypernymsOfMembersOfCategory(categoryName)
nounsHypernymsOfMembersOfPortals.df <- GetNounsHypernymsOfMembersOfPortal(portalName)

wordNetOntologyFromPortal <- BuildWordNetOntologyFromPortal(portalName)
wordNetOntologyFromCategory <- BuildWordNetOntologyFromCategory(categoryName)
wordNetOntologyFromArticle <- BuildWordNetOntologyFromArticle(pageName)
wordNetOntologyFromIntroduction <- BuildWordNetOntologyFromIntroduction(pageName)
wordNetOntologyFromBodyArticle <- BuildWordNetOntologyFromBodyArticle(pageName)

measuresOfWordNetResourcesInArticle.df <- MeasureWordNetResourcesInArticle(pageName)
measuresOfWordNetResourcesInBodyArticle.df <- MeasureWordNetResourcesInBodyArticle(pageName)
measuresOfWordNetResourcesInIntroduction.df <- MeasureWordNetResourcesInIntroduction(pageName)
measuresOfWordNetResourcesInCategory.df <- MeasureWordNetResourcesInCategory(categoryName)
measuresOfWordNetResourcesInPortal.df <- MeasureWordNetResourcesInPortal(portalName)

articleWithWordNetAnnotations <- AnnotateArticleWithWordNetResources(pageName)
bodyArticleWithWordNetAnnotations <- AnnotateBodyArticleWithWordNetResources(pageName)
introductionWithWordNetAnnotations <- AnnotateIntroductionWithWordNetResources(pageName)
```

#### Google Trends
These functions use the packages 
[gtrendsR](https://cran.r-project.org/web/packages/gtrendsR/index.html) and
[trendyy](https://cran.r-project.org/web/packages/trendyy/trendyy.pdf).

##### Countries
```r
googleCountriesInArticle.df <- GetGoogleCountriesInArticle(pageName)
googleCountriesInBodyArticle.df <- GetGoogleCountriesInBodyArticle(pageName)
googleCountriesInIntroduction.df <- GetGoogleCountriesInIntroduction(pageName)
googleCountriesInPortal.df <- GetGoogleCountriesInPortal(pageName)
googleCountriesInCategory.df <- GetGoogleCountriesInCategory(pageName)

articlesHomonymsOfGoogleCountries.df <- GetArticlesHomonymsOfGoogleCountries()
bodyArticlesHomonymsOfGoogleCountries.df <- GetBodyArticlesHomonymsOfGoogleCountries()
introductionsHomonymsOfGoogleCountries.df <- GetIntroductionsHomonymsOfGoogleCountries()
portalsHomonymsOfGoogleCountries.df <- GetPortalsHomonymsOfGoogleCountries()
categoriesHomonymsOfGoogleCountries.df <- GetCategoriesHomonymsOfGoogleCountries()

cities
regions
```



##### Categories
```r
CheckIfRelatedPagesInGoogleTrendsCategories(pageName)
CheckIfArticlesMembersOfPortalInGoogleTrendsCategories(portalName)
CheckIfArticlesMembersOfCategoryInGoogleTrendsCategories(categoryName)

# Categories
googleTrendsCategoriesInArticle.df <- GetGoogleTrendsCategoriesInArticle(pageName)
googleTrendsCategoriesInBodyArticle.df <- GetGoogleTrendsCategoriesInBodyArticle(pageName)
googleTrendsCategoriesInIntroduction.df <- GetGoogleTrendsCategoriesInIntroduction(pageName)
googleTrendsCategoriesInPortal.df <- GetGoogleTrendsCategoriesInPortal(pageName)
googleTrendsCategoriesInCategory.df <- GetGoogleTrendsCategoriesInCategory(pageName)

articleAnnotatedWithGoogleTrendsCategories <- AnnotateArticleWithGoogleTrendsCategories(pageName)
bodyArticleAnnotatedWithGoogleTrendsCategories <- AnnotateBodyArticleWithGoogleTrendsCategories(pageName)
introductionAnnotatedWithGoogleTrendsCategories <- AnnotateIntroductionWithGoogleTrendsCategories(pageName)
categoryAnnotatedWithGoogleTrendsCategories <- AnnotateArticleWithGoogleTrendsCategories(categoryName)
portalAnnotatedWithGoogleTrendsCategories <- AnnotateArticleWithGoogleTrendsCategories(portalName)

articlesHomonymsOfGoogleTrendsCategories.df <- GetArticlesHomonymsOfGoogleTrendsCategories()
bodyArticlesHomonymsOfGoogleTrendsCategories.df <- GetBodyArticlesHomonymsOfGoogleTrendsCategories()
introductionsHomonymsOfGoogleTrendsCategories.df <- GetIntroductionsHomonymsOfGoogleTrendsCategories()
portalsHomonymsOfGoogleTrendsCategories.df <- GetPortalsHomonymsOfGoogleTrendsCategories()
categoriesHomonymsOfGoogleTrendsCategories.df <- GetCategoriesHomonymsOfGoogleTrendsCategories()


wordNetDictionaryOfGoogleTrendsCategories.df <- GetWordNetDictionaryOfGoogleTrendsCategories()
wordNetOntologyOfGoogleTrendsCategories <- BuildWordNetOntologyOfGoogleTrendsCategories()
categoryGraphForGoogleTrendsCategories <- GetCategoryGraphForGoogleTrendsCategories()


googleTrendsCategoriesInWikipedia <- CheckGoogleTrendsCategoriesInWikipedia()

semanticRelatednessWithGoogleTrendsCategories <- MeasureSemanticRelatedenessWithGoogleTrendsCategories(pageName)

googleTrendsAndWikipediaCategories <- GetWikipediaCategoriesFromGoogleTrendsCategories()

wikipediaArticlesOfGoogleTrendsCategories <- GetArticlesOfGoogleTrendsCategories()

measuresOfGoogleTrendsCategoriesInWikipedia <- MeasureGoogleTrendsCategoriesInWikipedia()

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
#### Public Library Of Science
These functions use the package 
[rplos](https://cran.r-project.org/web/packages/rplos/index.html).

```r
```

#### Scholarly Articles
These functions use the package
[fulltext](https://cran.r-project.org/web/packages/fulltext/index.html).

## Visualization

#### Histograms
```r
pageName <- "Mammal"
PrintHistogramOfTheMostFrequentTokens(pageName)
PrintHistogramOfTheMostFrequentNounPhrases(pageName)
PrintHistogramOfTheMostFrequentWikipediaReferences(pageName)

```

#### Word clouds
These functions use the packages
[wordcloud](https://cran.r-project.org/web/packages/wordcloud/index.html),
[wordcloud2](https://cran.r-project.org/web/packages/wordcloud/index.html),
[ggwordcloud](https://cran.r-project.org/web/packages/ggwordcloud/index.html)
.
```r
PrintNounPhraseWordCloudOfIntroduction(pageName)
PrintNounPhraseWordCloudOfArticle(pageName)
PrintNounPhraseWordCloudOfBodyArticle(pageName)
PrintNounPhraseWordCloudOfCategory(categoryName)
PrintNounPhraseWordCloudOfPortal(portalName)

PrintWordCloudOfIntroduction(pageName)
PrintWordCloudOfArticle(pageName)
PrintWordCloudOfBodyArticle(pageName)
PrintWordCloudOfCategory(categoryName)
PrintWordCloudOfPortal(portalName)



```
#### Ontologies
These functions use the packages
[ontologyIndex](https://cran.r-project.org/web/packages/ontologyIndex/index.html),
[ontologyPlot](https://cran.r-project.org/web/packages/ontologyPlot/index.html),
[ontologySimilarity](https://cran.r-project.org/web/packages/ontologySimilarity/index.html).
```r
ontologyFromArticle <- BuildOntologyFromArticle(pageName)
ontologyFromPortal <- BuildOntologyFromPortal(portalName)
ontologyFromCategory <- BuildOntologyFromCategory(categoryName)

PlotOntologyFromArticle(pageName)
PlotOntologyFromPortal(portalName)
PlotOntologyFromCategory(categoryName)

ontologySimilarity <- MeasureSimilarityBetweenOntologies(ontologyFromPortal,ontologyFromCategory)

similarityBetweenOntologiesFromTwoArticles <- MeasureSimilarityBetweenOntologiesFromTwoArticles(pageName1, pageName2)
similarityBetweenOntologiesFromTwoCategories <- MeasureSimilarityBetweenOntologiesFromTwoCategories(categoryName1, categoryName2)
similarityBetweenOntologiesFromTwoPortals <- MeasureSimilarityBetweenOntologiesFromTwoPortals(portalName1, portalName2)

```

#### Bayesian networks
These functions use the packages
[bnlearn](https://cran.r-project.org/web/packages/bnlearn/index.html),
[networkD3](https://cran.r-project.org/web/packages/networkD3/index.html),
[bnclassify](https://cran.r-project.org/web/packages/bnclassify/index.html),
[bnstuct](https://cran.r-project.org/web/packages/bnstruct/index.html).


```r
bayesianNetworksFromArticles <- ExtractBayesianNetworksFromArticle(pageName)
bayesianNetworksFromCategory <- ExtractBayesianNetworksFromArticle(categoryName)
bayesianNetworksFromPortal <- ExtractBayesianNetworksFromArticle(portalName)


```

#### Conditional Random Fields
These functions use the packages 
[CRF](https://cran.r-project.org/web/packages/CRF/index.html),
[crfsuite](https://cran.r-project.org/web/packages/crfsuite/index.html).

```r
crfFromArticle <- ExtractCRFfromArticle(pageName)
crfFromCategory <- ExtractCRFfromPortal(pageName)
crfFromPortal <- ExtractCRFfromCategory(pageName)

```

### Time Series Analysis

```r
evolutionOfArticle <- MeasureEvolutionOfArticle(pageName)
```


### Correspondence Analysis
```r

```




# Abridged functions and comparisons
```r
# Length of introduction 
loi(pageName1) < loi(pageName2)

# Length of article 
loa(pageName1) < loa(pageName2)

#  Length of body article 
lob(pageName1) < lob(pageName2)


# Readability of introduction
roi(pageName1) < roi(pageName2)

# Readability of article 
roa(pageName1) < roa(pageName2)

# Readability of body article 
rob(pageName1) < rob(pageName2)


# Lexical Diversity of introduction
voi(pageName1) < voi(pageName2)

# Lexical Diversity of article
voa(pageName1) < voa(pageName2)

# Lexical Diversity of body article
vob(pageName1) < vob(pageName2)

```



