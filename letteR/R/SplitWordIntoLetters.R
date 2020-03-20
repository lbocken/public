#' Split word into letters
#'
#' @param word
#' @return letters
#' @examples
#' word <- "coronavirus"
#' SplitWordIntoLetters(word)

SplitWordIntoLetters <- function(word){
  split <- unlist(strsplit(word, ""))
  return(split)
}
