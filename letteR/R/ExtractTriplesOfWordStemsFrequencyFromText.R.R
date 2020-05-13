text <- 'This article is about the domestic dog. For related species known as "dogs", see Canidae. For other uses, see Dog (disambiguation).'
triples.df <- ExtractTriplesOfWordStemsFrequencyFromText(text)

ExtractTriplesOfWordStemsFrequencyFromText <- function(text){
  text <- tolower(text)
  wordStems <- sort(unlist(ExtractWordStemsFromText(text)))
  frequency.df <- as.data.frame(table(wordStems))
  
  return.df <- data.frame(S = paste0('wordStems:', frequency.df$wordStems), 
                          P = paste0('hasFrequency:', frequency.df$Freq), 
                          O = text)
  return(return.df)
}
