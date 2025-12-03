# Ensure pacman is installed
if (!requireNamespace("pacman", quietly = TRUE)) {
  install.packages("pacman")
}

# Load required packages
pacman::p_load(
  dplyr,
  ggplot2,
  readr     # required for read_csv()
)

# Load data from ../data subfolder
data <- readr::read_csv(file.path("..", "data", "example_data.csv"))
