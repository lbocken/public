#' Extract unique words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- ExtractUniqueWordsOfPairWithoutStopWords(text1, text2)

ExtractUniqueWordsOfPairWithoutStopWords <- function(text1, text2){
  text <- paste(text1, text2, " ")
  words <- ExtractUniqueWordsOfText(cleanText)
  uniqueWordsWithoutStopwordsOfPair <- RemoveStopWords(words)
  return(uniqueWordsWithoutStopwordsOfPair)
}


