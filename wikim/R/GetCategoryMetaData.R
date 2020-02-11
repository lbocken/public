


GetCategoryMetaData <- function(categoryName){
library(xml2)
library(httr)
    cmcontinue <- c()
    df <- data.frame()
  repeat{
query <- paste0("https://en.wikipedia.org/w/api.php?",
"action=query",
"&list=categorymembers",
"&cmtitle=Category:",categoryName,
"&format=xml",
"&cmlimit=500",
"&cmcontinue=",cmcontinue
)

answer <- httr::GET(query)
page.xml <- xml2::read_xml(answer)
nodes<-xml_find_all(page.xml, ".//query//categorymembers//cm")
pageid <- xml_attr(nodes, "pageid", ns = character(), default = NA_character_)
ns <- xml_attr(nodes, "ns", ns = character(), default = NA_character_)
title <- xml_attr(nodes, "title", ns = character(), default = NA_character_)
title <- as.character(title)
title <- gsub(" ", "_",title)
df <- rbind(df,data.frame(category=categoryName,pageid,ns,title))
write.csv(df,file=paste(categoryName,".csv",sep = ""))
saveRDS(df,file=paste(categoryName,".Rds",sep = ""), version = 2)

continue <- xml_find_all(page.xml, ".//continue")
cmcontinue <- xml_attr(continue, "cmcontinue", ns = character(), default = NA_character_)
if (length(cmcontinue)==0){
  break
  }
  }

        return(df)
}
