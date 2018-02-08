library(dplyr)
library(ggplot2)
library(ggthemes)
library(tidyr)



read.csv("class_enroll.csv", header = T) 


dept.width <- enroll %>%
  select(Course.Department) %>%
  group_by(Course.Department) %>% 
  summarize( n = n() )

ggplot(data = enroll %>% select(Course.Department) , 
        aes(x = Course.Department ) )+ 
        
        geom_bar()
        