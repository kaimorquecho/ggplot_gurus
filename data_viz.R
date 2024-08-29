
k_plot <- ggplot() + 
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = k), linetype = "dotted") + 
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = k ), linetype= "solid") +
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = k), linetype = "dashed") +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = k), linetype = "dotdash") +
  scale_x_continuous(position = "top", labels = 1988:1994,
                     breaks = seq.Date(from = as.Date("1988-01-01"),
                                       to = as.Date("1994-01-01") , by = "1 year")) +
  scale_y_continuous(breaks=seq(0.4, 1.6, by = 0.3)) +
  labs(x = "Year", y = expression("K mg l"^-1)) +
  theme(plot.margin = margin(0, 0, 0, 0),
        panel.spacing = unit(0, "lines"))
  
no3_n_plot <- ggplot() +  
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = no3_n), linetype = "dashed" ) +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = no3_n), linetype = "dotdash" ) +
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = no3_n), linetype= "solid") +
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = no3_n), linetype = "dotted") +
  scale_y_continuous(breaks=c(5, 100, 300, 500)) + 
  labs(x = " ", y = (expression(NO[3]*"-N ug l"^-1))) + 
  theme(axis.title.x = element_blank(),
      axis.text.x = element_blank(),
      axis.ticks.x = element_blank(),
      plot.margin = margin(0, 0, 0, 0),
      panel.spacing = unit(0, "lines"))


combined_plot <- k_plot / no3_n +
  plot_layout(ncol = 1, heights = c(1, 1))
