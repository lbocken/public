#' Count vowels in a word
#'
#' @param word A word
#' @return Vector of letters and frequency
#' @examples
#'
#' words <- c("virus", "coronavirus")
#' MeasureVowelsFrequencyInVocabulary(word)

MeasureVowelsFrequencyInVocabulary <- function(words){
  table <- as.data.frame(do.call(rbind, lapply(words, MeasureVowelsFrequencyInWord)))
  frequencyTable.df <- cbind(words, table)
  return(frequencyTable.df)
}
