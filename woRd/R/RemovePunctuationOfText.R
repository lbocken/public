#' Remove punctuation of text
#'
#' @param text A text
#' @return A clean text without punctuation marks
#' @examples
#' text <- ""Is it a true-text?" That's not !"
#' cleanText <- RemovePunctuationOfText(text)

RemovePunctuationOfText <- function(text){
  cleanText <- gsub("\\.", " ", text)
  cleanText <- gsub("\\?", " ", cleanText)
  cleanText <- gsub("\\!", " ", cleanText)
  cleanText <- gsub(",", " ", cleanText)
  cleanText <- gsub(";", " ", cleanText)
  cleanText <- gsub(":", " ", cleanText)
  cleanText <- gsub('"', " ", cleanText)
  cleanText <- gsub("\\'", " ", cleanText)
  cleanText <- gsub("-", " ", cleanText)
  cleanText <- gsub("  ", " ", cleanText)
  cleanText <- gsub("\\(", " ", cleanText)
  cleanText <- gsub("\\)", " ", cleanText)
  cleanText <- gsub("\\[", " ", cleanText)
  cleanText <- gsub("\\]", " ", cleanText)
  return(cleanText)
}
