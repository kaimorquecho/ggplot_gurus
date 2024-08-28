
k_plot <- ggplot() + 
  geom_line(data= bq1_tidy, aes(x= sample_date, y = k), color='steelblue') + 
  geom_line(data= prm_tidy, aes(x= sample_date, y = k ), color='green') +
  geom_line(data= bq2_tidy, aes(x= sample_date, y = k), color='yellow') +
  geom_line(data= bq3_tidy, aes(x= sample_date, y = k), color='red') 

no3_n <- ggplot() +  
  geom_line(data= bq2_tidy, aes(x= sample_date, y = no3_n), color='yellow') +
  geom_line(data= bq3_tidy, aes(x= sample_date, y = no3_n), color='red') +
  geom_line(data= prm_tidy, aes(x= sample_date, y = no3_n), color='green') +
  geom_line(data= bq1_tidy, aes(x= sample_date, y = no3_n), color='steelblue')