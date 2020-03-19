#' Count intersection of unique words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- CountIntersectionOfUniqueWordsOfPair(text1, text2)

CountIntersectionOfUniqueWordsOfPair <- function(text1, text2){
  intersection <- ExtractIntersectionOfUniqueWordsOfPair(text1, text2)
  number <- length(intersection)
  return(number)
}


