library(tidyverse)
library(janitor)
library(dplyr)

# data_read ---------------------------------------------------------------


ggg_path <- "/courses/EDS214/group_project/2024/ggplot-gurus/raw_data"

bq1 <- read_csv(file.path(ggg_path, "QuebradaCuenca1-Bisley.csv"))

bq2 <- read_csv(file.path(ggg_path, "QuebradaCuenca2-Bisley.csv"))

bq3 <- read_csv(file.path(ggg_path, "QuebradaCuenca3-Bisley.csv"))

prm <- read_csv(file.path(ggg_path, "RioMameyesPuenteRoto.csv"))


# data_clean --------------------------------------------------------------

bq1_tidy_maria <- bq1 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()

bq1_tidy_maria <- bq1_tidy_maria %>%
  filter(between(sample_date, as.Date('2016-01-01'), as.Date('2021-12-31')))

bq2_tidy_maria <- bq2 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()

bq2_tidy_maria <- bq2_tidy_maria %>%
  filter(between(sample_date, as.Date('2016-01-01'), as.Date('2021-12-31')))


bq3_tidy_maria <- bq3 %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()


bq3_tidy_maria <- bq3_tidy_maria %>%
  filter(between(sample_date, as.Date('2016-01-01'), as.Date('2021-12-31')))

prm_tidy_maria <- prm %>%
  select(Sample_Date, K, `NO3-N`) %>%
  clean_names()

prm_tidy_maria <- prm_tidy_maria %>%
  filter(between(sample_date, as.Date('2016-01-01'), as.Date('2021-12-31')))


# data_viz ----------------------------------------------------------------

k_plot_maria <- ggplot() + 
  geom_line(data= bq1_tidy_maria, aes(x= sample_date, y = k), color='#E4572E') + 
  geom_line(data= prm_tidy_maria, aes(x= sample_date, y = k ), color='#FFC914') +
  geom_line(data= bq2_tidy_maria, aes(x= sample_date, y = k), color='#2E282A') +
  geom_line(data= bq3_tidy_maria, aes(x= sample_date, y = k), color='#17BEBB')

no3_n_maria <- ggplot() +  
  geom_line(data= bq2_tidy_maria, aes(x= sample_date, y = no3_n), color='#2E282A') +
  geom_line(data= bq3_tidy_maria, aes(x= sample_date, y = no3_n), color='#17BEBB') +
  geom_line(data= prm_tidy_maria, aes(x= sample_date, y = no3_n), color='#FFC914') +
  geom_line(data= bq1_tidy_maria, aes(x= sample_date, y = no3_n), color='#E4572E')

k_plot_maria
no3_n_maria
