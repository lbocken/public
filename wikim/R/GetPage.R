GetPage <- function(pageName){
  pageid <- GetPageID(pageName)
library(httr)
library(xml2)
query <- paste0("https://en.wikipedia.org/w/api.php?",
"format=xml",
"&action=query",
"&prop=extracts",
"&pageids=",pageid,
"&redirects")

answer <- httr::GET(query)
page.xml <- xml2::read_xml(answer)
page <- xml2::xml_find_all(page.xml, "//extract")
article <- as.character(base::trimws(xml_text(page)))
return(article)
}
