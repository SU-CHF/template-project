# Ensure pacman is installed
if (!requireNamespace("pacman", quietly = TRUE)) {
  install.packages("pacman")
}

# Load required packages (and install them if needed)
pacman::p_load(
  dotenv,    # Load environment variables
  readr      # read_csv()
)

# Load environment variables from .env file
dotenv::load_dot_env("../.env")

# Get data path from environment variable
data_path <- Sys.getenv("DATA_PATH")

# Check if data path is set
if (identical(data_path, "")) {
  stop("DATA_PATH not found in environment (check your .env file)")
}

# Load data
data <- readr::read_csv(file.path(data_path, "your_data_file.csv"))
