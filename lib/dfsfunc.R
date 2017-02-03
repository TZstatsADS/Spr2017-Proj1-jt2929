dfsfunc<- function(cat) { 
  listofdfs<-list()
  for (i in 1:length(cat)){
    colno<-which(colnames(words)==cat[i])
    dat<- filter(words, words[, colno]==cat[i])
    datword<-tolower(dat[,1])
    dat<-filter(year_term_counts, term %in% datword)
    finaldat<- dat %>% group_by(index) %>% summarize(count=sum(count))
    finaldat$year_total<- year_total
    listofdfs[[i]]<-finaldat}
  return(listofdfs)}