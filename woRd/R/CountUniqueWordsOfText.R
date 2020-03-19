#' Count unique words of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats."
#'number <- CountUniqueWordsOfText(text)

CountUniqueWordsOfText <- function(text){
  uniqueWords <- ExtractUniqueWordsOfText(text)
  number <- length(uniqueWords)
  return(number)
}

