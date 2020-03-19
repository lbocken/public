#' Extract words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- ExtractWordsOfPairWithoutStopWords(text1, text2)

ExtractWordsOfPairWithoutStopWords <- function(text1, text2){
  text <- paste(text1, text2, " ")
  cleanText <- RemovePunctuationOfText(text)
  words <- ExtractWordsOfTextWithoutStopWords(cleanText)
  return(words)
}


