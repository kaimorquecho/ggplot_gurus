
k_plot <- ggplot() + 
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = k), color='steelblue') + 
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = k ), color='green') +
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = k), color='yellow') +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = k), color='red') +
  scale_x_date(position = "top", date_breaks = ("1 year"), date_labels = "%Y")



no3_n <- ggplot() +  
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = no3_n), color='yellow') +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = no3_n), color='red') +
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = no3_n), color='green') +
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = no3_n), color='steelblue')

