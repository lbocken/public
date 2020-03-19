#' Count conditional intersection of unique words of pair
#'
#'@param text1 A first text
#'@param text1 A second text
#'@return
#'@examples
# text1 <- "Dogs love cats."
# text2 <- "Cats hate dogs."
#'number <- CountConditionalIntersectionOfUniqueWordsOfPair(text1, text2)

CountConditionalIntersectionOfUniqueWordsOfPair <- function(text1, text2){
  number1 <- CountUniqueWordsOfText(text1)
  number2 <- CountUniqueWordsOfText(text2)
  norm <- number1 + number2

  normalizedNumber2 <- number2/norm

  intersection <- ExtractIntersectionOfUniqueWordsOfPair(text1, text2)
  normalizedIntersection <- length(intersection)/norm

  conditionalIntersection <- normalizedIntersection / normalizedNumber2

  return(conditionalIntersection)
}


