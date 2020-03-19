#' Extract words of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats."
#'number <- ExtractWordsOfText(text)

ExtractWordsOfText <- function(text){
  cleanText <- RemovePunctuationOfText(text)
  words <- strsplit(cleanText, " ")
  return(words)
}

