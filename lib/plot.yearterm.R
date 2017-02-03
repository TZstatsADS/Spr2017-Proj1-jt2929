plot.yearterm<- function(wordvec) {
  year_term_counts %>%
    filter(term %in% wordvec) %>%
    ggplot(aes(index, count / year_total)) +
    geom_point() +
    geom_smooth() +
    facet_wrap(~ term, scales = "free_y") +
    scale_y_continuous(labels = scales::percent_format()) +
    ylab("% frequency of word in inaugural address")
}