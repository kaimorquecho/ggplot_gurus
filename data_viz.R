library(patchwork)

k_plot <- ggplot() + 
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = k),
              linetype = "dotted", color = "black", linewidth = .5, se = FALSE, span = 0.06 ) + 
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = k ),
              linetype= "solid", color = "black", linewidth = .5, se = FALSE, span = 0.06) +
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = k),
              linetype = "dashed", color = "black", linewidth = .5, se = FALSE, span = 0.06) +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = k),
              linetype = "dotdash", color = "black", linewidth = .5, se = FALSE, span = 0.06) +
  scale_x_continuous(position = "top", labels = 1988:1994,
                     breaks = seq.Date(from = as.Date("1988-01-01"),
                                       to = as.Date("1994-01-01") , by = "1 year")) +
  scale_y_continuous(breaks=seq(0.4, 1.6, by = 0.3), limits = c(0.4, 1.6)) +
  labs(x = "Years", y = expression("K mg l"^-1)) +
  theme(plot.margin = margin(0, 0, 0, 0),
        panel.spacing = unit(0, "lines"),
        panel.background = element_blank(),
        axis.line.x.bottom = element_blank(), # making bottom of graph blank
        axis.line.x.top = element_line(colour = "black",linewidth=0.5), # adding top border
        axis.line.y.right =  element_line(colour = "black",linewidth=0.5), # adding right border but didn't re
        axis.line.y.left =  element_line(colour = "black",linewidth=0.5)) +
  geom_vline(xintercept = as.numeric(as.Date("1989-09-10")), 
             color = "black", linetype = "dashed") +
  annotate("text", x = as.numeric(as.Date("1988-04-10")),
           y = 1.5, label = "(a)", color = "black") +
  annotate(geom = 'segment', x = Inf, xend = Inf, color = 'black', y = -Inf, yend = Inf, size = 1) +
  geom_rect(aes(xmin = as.Date("1992-08-10"),
                xmax = as.Date("1995-01-01"),
                ymin = 0.5,
                ymax = 1.5,),
            fill = "white") +
  geom_rect(aes(xmin = as.Date("1988-01-01"),
                xmax = as.Date("1988-11-01"),
                ymin = 0.5,
                ymax = 1.3,),
            fill = "white") +
  annotate("text", x = (as.Date("1993-08-15", "%Y-%m-%d")),
           y = 1.45, label = "_____", color = "black") +
  annotate("text", x = (as.Date("1993-09-01", "%Y-%m-%d")),
           y = 1.23, label = ". . . . .", color = "black") +
  annotate("text", x = (as.Date("1993-09-01", "%Y-%m-%d")),
           y = 1.0, label = "- - - - -", color = "black") +
  annotate("text", x = (as.Date("1993-09-01", "%Y-%m-%d")),
           y = 0.85, label = "_ __ _", color = "black") +
  annotate("text", x = (as.Date("1994-04-10", "%Y-%m-%d")),
           y = 1.4, label = "PRM", color = "black") +
  annotate("text", x = (as.Date("1994-04-10", "%Y-%m-%d")),
           y = 1.2, label = "BQ1", color = "black") +
  annotate("text", x = (as.Date("1994-04-10", "%Y-%m-%d")),
           y = 1.0, label = "BQ2", color = "black") +
  annotate("text", x = (as.Date("1994-04-10", "%Y-%m-%d")),
           y = 0.8, label = "BQ3", color = "black")


no3_n_plot <- ggplot() +  
  geom_smooth(data= bq2_tidy, aes(x= sample_date, y = no3_n), linetype = "dotted"
              , color = "black", linewidth = .5, se = FALSE, span = 0.07) +
  geom_smooth(data= bq3_tidy, aes(x= sample_date, y = no3_n), linetype = "solid"
              , color = "black", linewidth = .5, se = FALSE, span = 0.07) +
  geom_smooth(data= prm_tidy, aes(x= sample_date, y = no3_n), linetype= "dashed"
              , color = "black", linewidth = .5, se = FALSE, span = 0.07) +
  geom_smooth(data= bq1_tidy, aes(x= sample_date, y = no3_n), linetype = "dotdash"
              , color = "black", linewidth = .5, se = FALSE, span = 0.07) +
  scale_y_continuous(breaks = c(100, 300, 500))  +
  scale_x_continuous(position = "bottom", labels = 1988:1994,
                     breaks = seq.Date(from = as.Date("1988-01-01"),
                                       to = as.Date("1994-01-01") , by = "1 year")) +
  labs(x = " ", y = (expression(NO[3]*"-N ug l"^-1))) + 
  theme(axis.title.x = element_blank(),
        axis.text.x = element_blank(),
        plot.margin = margin(0, 0, 0, 0),
        panel.spacing = unit(0, "lines"),
        panel.background = element_blank(),
        panel.border = element_rect(colour = "black", fill=NA, size=1)) # added border +
  geom_vline(xintercept = as.numeric(as.Date("1989-09-10")), 
             color = "black", linetype = "dashed") +
  annotate("text", x = (as.Date("1988-04-10", "%Y-%m-%d")),
           y = 440, label = "(b)", color = "black")  +
  geom_rect(aes(xmin = as.Date("1988-01-01"),
                xmax = as.Date("1988-11-01"),
                ymin = 10,
                ymax = 300),
            fill = "white") 

combined_plot <- k_plot / no3_n_plot +
  plot_layout(ncol = 1, heights = c(1, 1))
