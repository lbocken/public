#' Extract words of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats."
#'number <- ExtractWordsOfText(text)

ExtractWordsOfText <- function(text){
  text <- tolower(text)
  cleanText <- RemovePunctuationOfText(text)
  cleanText <- RemoveNumbersOfText(cleanText)
  words <- sort(unlist(strsplit(cleanText, " ")))
  words <- words[words != ""]
  return(words)
}

