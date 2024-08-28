library(tidyverse)
library(janitor)

bq1_tidy <- bq1 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()

bq2_tidy <- bq2 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()
  
bq3_tidy <- bq3 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()

prm_tidy <- prm %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()
