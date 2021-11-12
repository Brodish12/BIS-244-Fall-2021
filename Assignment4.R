library(gapminder)
library(tidyverse)
library(socviz)
library(ggrepel)

p <- ggplot(data = Top_10000_Popular_Movies,
            mapping = aes(x = release_date, y = popularity))
p + geom_point() + 
  geom_text(data = subset(Top_10000_Popular_Movies, popularity > 1.7e+03), 
                  mapping = aes(label = original_title)) +
scale_x_date(limits = as.Date(c("2020-01-01", "2022-01-01"))) + 
  labs(title="Top 10,000 Most Popular Movies",
          x ="Release Date", y = "Popularity Score")


