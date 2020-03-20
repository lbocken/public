
@param string
@return barplot
@examples
string <- "Coronavirus"
string2 <- "Coronaviruses are a group of related viruses that cause diseases in mammals and birds. In humans, coronaviruses cause respiratory tract infections that can be mild, such as some cases of the common cold (among other possible causes, predominantly rhinoviruses), and others that can be lethal, such as SARS, MERS, and COVID-19. Symptoms in other species vary: in chickens, they cause an upper respiratory tract disease, while in cows and pigs they cause diarrhea. There are yet to be vaccines or antiviral drugs to prevent or treat human coronavirus infections."
PrintBarPlotOfLettersFrequencyOfString(string)
PrintBarPlotOfLettersFrequencyOfString(string2)

getwd()

PrintBarPlotOfLettersFrequencyOfString <- function(string){
  cleanString <- gsub("\\.", " ", string)
  cleanString <- gsub("\\?", " ", cleanString)
  cleanString <- gsub("\\!", " ", cleanString)
  cleanString <- gsub(",", " ", cleanString)
  cleanString <- gsub(";", " ", cleanString)
  cleanString <- gsub(":", " ", cleanString)
  cleanString <- gsub('"', " ", cleanString)
  cleanString <- gsub("\\'", " ", cleanString)
  cleanString <- gsub("-", " ", cleanString)
  cleanString <- gsub("  ", " ", cleanString)
  cleanString <- gsub("\\(", " ", cleanString)
  cleanString <- gsub("\\)", " ", cleanString)
  cleanString <- gsub("\\[", " ", cleanString)
  cleanString <- gsub("\\]", " ", cleanString)
  cleanString <- gsub("\\+", " ", cleanString)

  cleanString <- tolower(cleanString)

  frequency <- sapply(letters, function(x) x<-sum(x==unlist(strsplit(cleanString,""))))
  relativeFrequency <- frequency/sum(frequency)

  frequencyTable.df <- data.frame(letters, frequency, relativeFrequency)

  ylim <- max(frequency)

  png('letterFrequency.png')
  barplot(frequency,
          names = letters,
          las=2,
          main = 'Frequency of letters',
          xlab='Letters',
          ylab = 'Frequency',
          ylim,
          cex.names = 1,
          srt=90
          )
  dev.off()



  ylim <- max(relativeFrequency)
  png('letterRelativeFrequency.png')
  barplot(relativeFrequency,
          names = letters,
          las=2,
          main = 'Relative frequency of letters',
          xlab='Letters',
          ylab = 'Relative frequency',
          ylim,
          cex.names = 1,
          srt=90
  )
  dev.off()

  return(frequencyTable.df)
}
