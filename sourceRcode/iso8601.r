pdate <- function(indt) {
  y <- strsplit(indt,split='/')
  
  year <- sapply(y,'[',1)
  mon <- sapply(y,'[',2)
  day <- sapply(y,'[',3)
  
  year[is.na(year) | year=='']<-'-'
  mon[is.na(mon) | mon=='']<-'-'
  day[is.na(day) | day=='']<-'-'
  
  results <- vector(mode="character",length=length(indt))
  
  for (i in 1:length(indt)) {
    if (day[i]!= '-') results[i] <- paste(year[i],mon[i],day[i],sep='-')
    else if (mon[i]!= '-') results[i] <- paste(year[i],mon[i],sep='-')
    else if (year[i]!= '-') results[i] <- year[i]
    else results[i] <- ''
  }
  
  return(results)
  
}

#aestdt <- c("2022/08/08", "2008/08", "2022//02", "/08/08", "/02/", "//02", "2022//",'///')
#aeendt <- c("2022/08/08", "2008/08", "2022//02", "/08/08", "/02/", "//02", "2022//",'///')

#ae <- data.frame(aestdt,aeendt)

#ae$aestdtc <- pdate(indt=ae$aestdt)

#ae$aeendtc <- pdate(indt=ae$aeendt)
