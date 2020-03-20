#' Count letters in a word
#'
#' @param word A word
#' @return Vector of letters and frequency
#' @examples
#'
#' word <- "coronavirus"
#' MeasureLettersFrequencyInWord(word)


MeasureLettersFrequencyInWord <- function(word){
  vector <- sapply(letters, function(x) x<-sum(x==unlist(strsplit(word,""))))
  return(vector)
}
