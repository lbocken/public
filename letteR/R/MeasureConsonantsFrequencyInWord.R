#' Count letters in a word
#'
#' @param word A word
#' @return Vector of letters and frequency
#' @examples
#'
#' word <- "coronavirus"
#' word <- "yes"
#' MeasureConsonantsFrequencyInWord(word)


MeasureConsonantsFrequencyInWord <- function(word){
  vowels <- c("a", "e", "i", "o", "u")
  consonants <- setdiff(letters, vowels)
  vector <- sapply(consonants, function(x) x<-sum(x==unlist(strsplit(word,""))))
  return(vector)
}
