#' Remove stop words of text
#'
#' @param text A text
#' @return Words without stop words
#' @examples
#' words <- RemoveStopWords(words)

RemoveStopWords <- function(words){
  library(RCurl)
  # url <- "https://www.textfixer.com/tutorials/common-english-words.txt"
  url <- "http://xpo6.com/wp-content/uploads/2015/01/stop-word-list.txt"
  stopwords <- getURL(url)
  stopwords <- unlist(strsplit(stopwords, "\r\n"))
  # wordsWithoutStopWords <- setdiff(words, stopwords)

  wordsWithoutStopWords <- words[! words %in% stopwords]

  return(wordsWithoutStopWords)
}
