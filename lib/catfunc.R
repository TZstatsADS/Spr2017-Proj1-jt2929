catfunc<- function(cat) {
  for(i in 1:length(cat)) {
    name<-cat[i]
    print(ggplot(data=as.data.frame(dfsfunc(cat)[[i]]),
                 aes(x=index, y=count / year_total)) +
            geom_point() +
            geom_smooth()+
            ggtitle(paste("Word category:", name, sep="")) +
            scale_y_continuous(labels = scales::percent_format()) +
            xlab("Chronological index of Presidents")+
            ylab("% frequency of word in inaugural address"))
  }}