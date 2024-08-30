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

#048A81
#06D6A0
#54C6EB
#8A89C0

k_plot_maria <- ggplot() + 
  geom_line(data= bq1_tidy_maria, aes(x= sample_date, y = k, color="BQ1"), size=1.5) + 
  geom_line(data= bq2_tidy_maria, aes(x= sample_date, y = k, color="BQ2"), size=1.5) +
  geom_line(data= bq3_tidy_maria, aes(x= sample_date, y = k, color="BQ3"), size=1.5) +
  geom_line(data= prm_tidy_maria, aes(x= sample_date, y = k, color="PRM"), size=1.5) +
  scale_color_manual(values = c("BQ1" = "#048A81", "BQ2" = "#06D6A0", "BQ3" = "#54C6EB", "PRM" = "#8A89C0")) +
  geom_vline(xintercept = as.Date("2017-09-16"), linetype = "dashed", color="navy") +
  annotate("text", x=as.Date("2017-11-05"), y=1.9, label= "Hurricane Maria\n09-16-2017") +
  labs(color = "Sites") +
  theme(legend.position = c(0.25, 0.8),
        legend.background = element_blank(),
        legend.key.size = unit(10, 'cm'),
        legend.key.height  = unit(1, 'cm'),
        legend.key.width = unit(4, 'cm'),
        plot.title = element_text(hjust = 0.5, size= 25)) +
  labs(x="Sample Date", y="Nitrate Content", title = "Effects of Hurricane Maria on Potassium Content in Luquillo Creeks")
 
#####

no3_n_maria <- ggplot() +  
  geom_line(data = bq1_tidy_maria, aes(x = sample_date, y = no3_n, color = "BQ1"), size = 1.5) +
  geom_line(data = bq2_tidy_maria, aes(x = sample_date, y = no3_n, color = "BQ2"), size = 1.5) +
  geom_line(data = bq3_tidy_maria, aes(x = sample_date, y = no3_n, color = "BQ3"), size = 1.5) +
  geom_line(data = prm_tidy_maria, aes(x = sample_date, y = no3_n, color = "PRM"), size = 1.5) +
  scale_color_manual(values = c("BQ1" = "#048A81", "BQ2" = "#06D6A0", "BQ3" = "#54C6EB", "PRM" = "#8A89C0")) +
  geom_vline(xintercept = as.Date("2017-09-16"), linetype = "dashed", color="navy") +
  annotate("text", x=as.Date("2017-07-26"), y=700, label= "Hurricane Maria\n09-16-2017") +
  labs(color = "Sites") +
  theme(legend.position = c(0.2, 0.8),
        legend.background = element_blank(),
        legend.key.size = unit(10, 'cm'),
        legend.key.height  = unit(1, 'cm'),
        legend.key.width = unit(4, 'cm'),
        plot.title = element_text(hjust = 0.5, size= 25)) +
  labs(x="Sample Date", y="Nitrate Content", title = "Effects of Hurricane Maria on Nitrate Content in Luquillo Creeks")


######

k_plot_maria
no3_n_maria




#######





