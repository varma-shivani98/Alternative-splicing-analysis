## Alternative Splicing events after rmats output data
install.packages("ggplot2")
install.packages("ggrepel")
library (ggplot2)
library(ggrepel)  
Control_Dox_AS <- read.table ("//ad.helsinki.fi/home/s/shiyalal/Desktop/First Project/R-Dseq2/Dseq2_analysis/rMATS_filter_only_pvalue.txt", header = TRUE, sep = "\t")
head(Control_Dox_AS)
Control_Dox_AS$Event <- factor(Control_Dox_AS$Event, levels = c("A3SS", "A5SS", "MXE","RI", "SE"))
ggplot(Control_Dox_AS, aes(x = Event, y = PSI)) +
  ylim(-0.25, 0.25) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(alpha=0.4, aes(color=Event)) +
  coord_flip() +
  theme_bw()
