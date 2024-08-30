library(tidyverse)
library(janitor)
library(dplyr)


bq1_tidy <- bq1 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()

bq1_tidy <- bq1_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1994-12-31')))

bq2_tidy <- bq2 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()
  
bq2_tidy <- bq2_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1994-12-31')))


bq3_tidy <- bq3 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()


bq3_tidy <- bq3_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1994-12-31')))

prm_tidy <- prm %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()

prm_tidy <- prm_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1994-12-31')))

bq1_92 <- bq1_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1992-04-01')))

bq2_92 <- bq2_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1992-04-01')))

bq3_92 <- bq3_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1992-04-01')))

prm_92 <- prm_tidy %>%
  filter(between(sample_date, as.Date('1988-01-01'), as.Date('1992-04-01')))

