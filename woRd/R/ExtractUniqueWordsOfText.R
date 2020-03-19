#' Extract unique words of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats.,;:?!"
#'number <- ExtractUniqueWordsOfText(text)

ExtractUniqueWordsOfText <- function(text){
  cleanText <- RemovePunctuationOfText(text)
  words <- strsplit(cleanText, " ")
  uniqueWords <- unique(words)
  return(uniqueWords)
}

