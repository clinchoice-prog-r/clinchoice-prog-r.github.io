###Render all RMD###
library(rmarkdown)
library(tidyverse)

#Get all rmd file names in respiratory
rmd_files<-dir(pattern = ".Rmd")

#Output slidy html file names
html_names<-gsub(pattern = ".Rmd",replacement=".html",x=rmd_files)

#Loop to render all RMD
for(i in 1:length(rmd_files)){
  render(input=rmd_files[i],output_file=html_names[i])
}
