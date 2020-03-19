#' Extract intersection of unique words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- ExtractIntersectionOfUniqueWordsOfPairWithoutStopWords(text1, text2)

ExtractIntersectionOfUniqueWordsOfPairWithoutStopWords <- function(text1, text2){
  uniqueWords1 <- ExtractUniqueWordsOfTextWithoutStopWords(text1)
  uniqueWords2 <- ExtractUniqueWordsOfTextWithoutStopWords(text2)
  intersection <- intersect(uniqueWords1, uniqueWords2)
  return(intersection)
}


