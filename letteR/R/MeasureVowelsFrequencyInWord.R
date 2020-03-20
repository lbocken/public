#' Count letters in a word
#'
#' @param word A word
#' @return Vector of letters and frequency
#' @examples
#'
#' word <- "coronavirus"
#' MeasureVowelsFrequencyInWord(word)


MeasureVowelsFrequencyInWord <- function(word){
  vowels <- c("a", "e", "i", "o", "u", "y")
  vector <- sapply(vowels, function(x) x<-sum(x==unlist(strsplit(word,""))))
  return(vector)
}
