
k_plot <- ggplot() + 
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = k), color='steelblue') + 
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = k ), color='green') +
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = k), color='yellow') +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = k), color='red') +
  scale_x_date(position = "top", date_breaks = ("1 year"), date_labels = "%Y")



no3_n <- ggplot() +  
<<<<<<< HEAD
  geom_line(data= bq2_tidy, aes(x= sample_date, y = no3_n), color='yellow') +
  geom_line(data= bq3_tidy, aes(x= sample_date, y = no3_n), color='red') +
  geom_line(data= prm_tidy, aes(x= sample_date, y = no3_n), color='green') +
  geom_line(data= bq1_tidy, aes(x= sample_date, y = no3_n), color='steelblue')
=======
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = no3_n), color='yellow') +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = no3_n), color='red') +
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = no3_n), color='green') +
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = no3_n), color='steelblue')
>>>>>>> fcf5e7c4eb1383a323506b347befc5676f3c3a70

