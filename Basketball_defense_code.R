### Code for Basketball Defense Research Paper

# Libraries
library(readr)
library(dplyr)
library(ggplot2)
library(reshape2)
library(gridExtra)

# Import Data
Season <- read_csv("Season.csv")
Season

colnames(Season)[colnames(Season) == "OP Score"] <- "OP_Score"


##### Opponent Score

# Compute correlation for Opponent Score with Deflections, Right, and Key
cor_OP_Score = cor(Season[, c("OP_Score", "Deflections", "Right", "Key")], use = "complete.obs")

# Extract only the first row 
cor_OP_Score[1, ]

# Scatterplot 1: OP_Score vs. Deflections
plot1 <- ggplot(Season, aes(x = Deflections, y = OP_Score)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", color = "yellow", se = FALSE) +
  labs(title = "Opponent Score vs. Deflections",
       x = "Deflections",
       y = "Opponent Score") +
  theme_minimal()
plot1

# Scatterplot 2: OP_Score vs. Possessions Right
plot2 <- ggplot(Season, aes(x = Right, y = OP_Score)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", color = "yellow", se = FALSE) +
  labs(title = "Opponent Score vs. Possessions Right",
       x = "Possessions Right",
       y = "Opponent Score") +
  theme_minimal()
plot2

# Scatterplot 3: OP_Score vs. Possessions in Key
plot3 <- ggplot(Season, aes(x = Key, y = OP_Score)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", color = "yellow", se = FALSE) +
  labs(title = "Opponent Score vs. Possessions in Key",
       x = "Possessions in Key",
       y = "Opponent Score") +
  theme_minimal()
plot3

# Arrange plots side by side
grid.arrange(plot1, plot2, plot3, ncol = 3)



#### Point Differential

# Compute correlation for Point Differential with Deflections, Right, and Key
cor_point_diff = cor(Season[, c("Differential", "Deflections", "Right", "Key")], use = "complete.obs")

# Extract only the first row 
cor_point_diff[1, ]

# Scatterplot 1: Point Differential vs. Deflections
plot4 <- ggplot(Season, aes(x = Deflections, y = Differential)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", color = "yellow", se = FALSE) +
  labs(title = "Point Differential vs. Deflections",
       x = "Deflections",
       y = "Point Differential") +
  theme_minimal()
plot4

# Scatterplot 2: Point Differential vs. Possessions Right
plot5 <- ggplot(Season, aes(x = Right, y = Differential)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", color = "yellow", se = FALSE) +
  labs(title = "Point Differential vs. Possessions Right",
       x = "Possessions Right",
       y = "Point Differential") +
  theme_minimal()
plot5

# Scatterplot 3: Point Differential vs. Possessions in Key
plot6 <- ggplot(Season, aes(x = Key, y = Differential)) +
  geom_point(color = "darkgreen") +
  geom_smooth(method = "lm", color = "yellow", se = FALSE) +
  labs(title = "Point Differential vs. Possessions in Key",
       x = "Possessions in Key",
       y = "Point Differential") +
  theme_minimal()
plot6

# Arrange plots side by side
grid.arrange(plot4, plot5, plot6, ncol = 3)
