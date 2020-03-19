#' Extract intersection of unique words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- ExtractIntersectionOfUniqueWordsOfPair(text1, text2)

ExtractIntersectionOfUniqueWordsOfPair <- function(text1, text2){
  uniqueWords1 <- ExtractUniqueWordsOfText(text1)
  uniqueWords2 <- ExtractUniqueWordsOfText(text2)
  intersection <- intersect(uniqueWords1, uniqueWords2)
  return(intersection)
}


