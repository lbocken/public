#' Extract  words of corpus
#'
#'@param corpus vector of texts
#'@return A number
#'@examples
#' text1 <- "Dogs love cats."
#' text2 <- "Cats hate dogs."
#' text3 <- "Cats play with birds."
#' corpus <- c(text1, text2, text3)
#'number <- ExtractWordsOfCorpusWithoutStopWordsAndHapax(corpus)

ExtractWordsOfCorpusWithoutStopWordsAndHapax <- function(corpus){
  text <- paste(corpus, collapse = " ")
  cleanText <- RemovePunctuationOfText(text)
  words <- ExtractWordsOfTextWithoutStopWordsAndHapax(cleanText)
  return(words)
}
