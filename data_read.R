library(tidyverse)

ggg_path <- "/courses/EDS214/group_project/2024/ggplot-gurus/raw_data"

bq1 <- read_csv(file.path(ggg_path, "QuebradaCuenca1-Bisley.csv"), is.na(TRUE))
  
bq2 <- read_csv(file.path(ggg_path, "QuebradaCuenca2-Bisley.csv"), is.na(TRUE))
  
bq3 <- read_csv(file.path(ggg_path, "QuebradaCuenca3-Bisley.csv"), is.na(TRUE))

prm <- read_csv(file.path(ggg_path, "RioMameyesPuenteRoto.csv"), is.na(TRUE))
                

