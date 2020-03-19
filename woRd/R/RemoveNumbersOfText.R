#' Remove numbers of text
#'
#' @param text A text
#' @return A clean text without numbers.
#' @examples
#' text <- "3 times!"
#' cleanText <- RemoveNumbersOfText(text)

RemoveNumbersOfText <- function(text){
  cleanText <- gsub("[[:digit:]]", " ", text)
  return(cleanText)
}
