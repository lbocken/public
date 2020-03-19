#' Extract unique words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- ExtractUniqueWordsOfPair(text1, text2)

ExtractUniqueWordsOfPair <- function(text1, text2){
  text <- paste(text1, text2, " ")
  cleanText <- RemovePunctuationOfText(text)
  words <- ExtractUniqueWordsOfText(cleanText)
  return(words)
}


