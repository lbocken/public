#' Count letters in a word
#'
#' @param word A word
#' @return Vector of letters and frequency
#' @examples
#'
#' text <- "Coronaviruses are a group of related viruses that cause diseases in mammals and birds. In humans, coronaviruses cause respiratory tract infections that can be mild, such as some cases of the common cold (among other possible causes, predominantly rhinoviruses), and others that can be lethal, such as SARS, MERS, and COVID-19. Symptoms in other species vary: in chickens, they cause an upper respiratory tract disease, while in cows and pigs they cause diarrhea. There are yet to be vaccines or antiviral drugs to prevent or treat human coronavirus infections."
#' frequencyTable.df <- MeasureLettersFrequencyInText(text)

MeasureLettersFrequencyInText <- function(text){
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
  cleanText <- gsub("\\+", " ", cleanText)

  words <- unlist(strsplit(cleanText, " "))
  table <- as.data.frame(do.call(rbind, lapply(words, MeasureLettersFrequencyInWord)))
  frequencyTable.df <- cbind(words, table)
  return(frequencyTable.df)
}
