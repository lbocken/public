#' Count unique words of texts
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats.,;:?!"
#'number <- CountUniqueWordsOfText(text)

CountUniqueWordsOfText <- function(text){
  cleanText <- RemovePunctuationOfText(text)
  words <- strsplit(cleanText, " ")
  number <- length(unlist(unique(words)))
  return(number)
}

