library(tidyverse)

bq1_tidy <- bq1_tidy %>%
  rename(k_bq1 = k, no3_n_bq1 = no3_n)

bq2_tidy <- bq2_tidy %>%
  rename(k_bq2 = k, no3_n_bq2 = no3_n)

bq3_tidy <- bq3_tidy %>%
  rename(k_bq3 = k, no3_n_bq3 = no3_n)

prm_tidy <- prm_tidy %>%
  rename(k_prm = k, no3_n_prm = no3_n)

bq1_bq2 <- full_join(bq1_tidy, bq2_tidy, by = join_by("sample_date"))
bq3_prm <- full_join(bq3_tidy, prm_tidy, by = join_by("sample_date"))

all_sites <- full_join(bq1_bq2, bq3_prm, by = join_by("sample_date"))

k_sites <- all_sites %>%
  select(sample_date, k_bq1, k_bq2, k_bq3, k_prm)

no3_n_sites <- all_sites %>%
  select(sample_date, no3_n_bq1, no3_n_bq2, no3_n_bq3, no3_n_prm)
