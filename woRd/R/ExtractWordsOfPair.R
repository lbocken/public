#' Extract words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- ExtractWordsOfPair(text1, text2)

ExtractWordsOfPair <- function(text1, text2){
  text <- paste(text1, text2, " ")
  cleanText <- RemovePunctuationOfText(text)
  words <- ExtractWordsOfText(cleanText)
  return(words)
}


