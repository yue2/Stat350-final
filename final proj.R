library(readxl)
library(tidyverse)
Data <- read_excel("Real estate valuation data set.xlsx")
colnames(Data) <- c("No", "X1", "X2", "X3", "X4", "X5", "X6", "Y")
Data["X7"] <- Data$X5 * Data$X6

Data %>%
  ggplot(mapping = aes (x = X7, y = Y, size = X4, color = X2)) + 
  geom_point(alpha = 2/5)

Data %>%
  ggplot(mapping = aes(x = X2, y = X7)) +
  geom_smooth(color = "black")
