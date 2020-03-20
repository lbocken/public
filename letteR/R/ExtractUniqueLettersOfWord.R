#' Extract letters of a word
#'
#' @param word A word
#' @param return letters
#' @examples
word <- "coronavirus"
ExtractUniqueLettersOfWord(word)

ExtractUniqueLettersOfWord <- function(word){
  split <- unlist(strsplit(word, ""))
  intersection <- sort(intersect(split, letters))
  return(intersection)

}
