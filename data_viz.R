ggplot() + 
  geom_line(data= bq1_tidy, aes(x= sample_date, y = k), color='steelblue') + 
  geom_line(data= bq1_tidy, aes(x= sample_date, y = no3_n), color='') +
  geom_line(data= bq2_tidy, aes(x= sample_date, y = k), color='') +
  geom_line(data= bq2_tidy, aes(x= sample_date, y = no3_n), color='') +
  geom_line(data= bq3_tidy, aes(x= sample_date, y = k), color='') +
  geom_line(data= bq3_tidy, aes(x= sample_date, y = no3_n), color='') +
  geom_line(data= prm_tidy, aes(x= sample_date, y = k ), color='') +
  geom_line(data= prm_tidy, aes(x= sample_date, y = no3_n), color='') 