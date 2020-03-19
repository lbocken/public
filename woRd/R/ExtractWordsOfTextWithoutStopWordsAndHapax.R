#' Extract words of text
#'
#'@param text
#'@return A number
#'@examples
#'text <- "Dogs love cats."
#'number <- ExtractWordsOfTextWithoutStopWordsAndHapax(text)

ExtractWordsOfTextWithoutStopWordsAndHapax <- function(text){
  text <- tolower(text)
  cleanText <- RemovePunctuationOfText(text)
  cleanText <- RemoveNumbersOfText(cleanText)
  words <- sort(unlist(strsplit(cleanText, " ")))
  words <- words[words != ""]
  words <- RemoveStopWords(words)

  wordFrequency.df <- MeasureWordFrequencyInTextWithoutStopWordsAndHapax(text)
  wordsWithoutHapax <- wordFrequency.df$words

  words <- words[words %in% wordsWithoutHapax]
  return(words)
}

