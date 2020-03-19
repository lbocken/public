#' Count unique words of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats."
#'number <- CountUniqueWordsOfTextWithoutStopWords(text)

CountUniqueWordsOfTextWithoutStopWords <- function(text){
  words <- ExtractUniqueWordsOfText(text)
  words <- RemoveStopWords(words)
  number <- length(words)
  return(number)
}

