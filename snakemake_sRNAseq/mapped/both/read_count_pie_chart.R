
library(ggplot2)

inDir <- "/home/ajt200/analysis/wheat/sRNAseq_meiocyte_Martin_Moore/snakemake_sRNAseq/mapped/both/"

sizes <- c(20, 21, 22, 23, 24, 33, 34)
read_counts <- lapply(seq_along(sizes), function(x) {
  read.table(paste0(inDir, "CS+_2_LIB18613_LDI16228_MappedOn_wheat_v1.0_both_",
                    sizes[x], "nt_sort_reads.txt"))[[1]]
})
read_counts <- unlist(read_counts)


# Create a blank theme (taken from http://www.sthda.com/english/wiki/ggplot2-pie-chart-quick-start-guide-r-software-and-data-visualization) 
blank_theme <- theme_minimal() +
  theme(
  axis.title.x = element_blank(),
  axis.title.y = element_blank(),
  panel.border = element_blank(),
  panel.grid = element_blank(),
  axis.ticks = element_blank(),
  plot.title = element_text(size=14, face="bold")
  )

barChart <- ggplot(read_counts, aes(x = "", y = read_counts, fill = 


