# text <- 'This article is about the domestic dog. For related species known as "dogs", see Canidae. For other uses, see Dog (disambiguation).'
# text <- RemoveLettersFromText(text)

RemoveLettersFromText <- function(text){
  text <- tolower(text)
  pattern <- paste0(letters, collapse = "|")
  text <- gsub(pattern, "", text)
  return(text)
}
