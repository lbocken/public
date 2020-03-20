#' Count letters in a word
#'
#' @param word A word
#' @return Vector of letters and frequency
#' @examples
#'
# words <- c("virus", "coronavirus")
# MeasureLettersFrequencyInWords(word)

MeasureLettersFrequencyInWords <- function(words){
  table <- as.data.frame(do.call(rbind, lapply(words, MeasureLettersFrequencyInWord)))
  frequencyTable.df <- cbind(words, table)
  return(frequencyTable.df)
}
