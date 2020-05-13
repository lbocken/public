# URL <- 'https://en.wikipedia.org/wiki/Dog'
# triples.df <- ExtractTriplesOfWordStemsFrequencyFromURL(URL)

ExtractTriplesOfWordStemsFrequencyFromURL <- function(URL){
  text <- ExtractTextFromURL(URL)
  text <- tolower(text)
  wordStems <- sort(unlist(ExtractWordStemsFromText(text)))
  frequency.df <- as.data.frame(table(wordStems))
  
  return.df <- data.frame(S = paste0('wordStems:', frequency.df$wordStems), 
                          P = paste0('hasFrequency:', frequency.df$Freq), 
                          O = text)
  return(return.df)
}  
