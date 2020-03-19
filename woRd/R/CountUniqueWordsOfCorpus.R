#' Count unique words of corpus
#'
#'@param corpus vector of texts
#'@return A number
#'@examples
#' text1 <- "Dogs love cats."
#' text2 <- "Cats hate dogs."
#' text3 <- "Cats play with birds."
#' corpus <- c(text1, text2, text3)
#'number <- CountUniqueWordsOfCorpus(corpus)

CountUniqueWordsOfCorpus <- function(corpus){
  text <- paste(corpus, collapse = " ")
  uniqueWords <- ExtractUniqueWordsOfText(text)
  number <- length(uniqueWords)
  return(number)
}
