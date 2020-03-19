#' Extract unique words of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats.,;:?!"
#'number <- ExtractUniqueWordsOfText(text)

ExtractUniqueWordsOfText <- function(text){
  cleanText <- RemovePunctuationOfText(text)
  cleanText <- RemoveNumbersOfText(cleanText)
  words <- unlist(strsplit(cleanText, " "))
  words <- tolower(words)
  uniqueWords <- sort(unique(words))
  return(uniqueWords)
}

