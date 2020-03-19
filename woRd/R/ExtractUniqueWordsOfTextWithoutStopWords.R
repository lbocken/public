#' Extract unique words without stopwords of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats."
#'number <- ExtractUniqueWordsOfTextWithoutStopWords(text)

ExtractUniqueWordsOfTextWithoutStopWords <- function(text){
  cleanText <- RemovePunctuationOfText(text)
  cleanText <- RemoveNumbersOfText(cleanText)

  words <- unlist(strsplit(cleanText, " "))
  words <- tolower(words)
  uniqueWords <- sort(unique(words))
  uniqueWordsWithoutStopwords <- RemoveStopWords(uniqueWords)
  return(uniqueWordsWithoutStopwords)
}

