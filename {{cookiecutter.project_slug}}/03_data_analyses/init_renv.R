options(repos = c(CRAN = "https://cloud.r-project.org"))

# Check if renv is installed, install if necessary
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

# Initialize or restore renv environment
if (file.exists("renv.lock")) {
  # Restore packages from the existing lockfile if it exists
  message("Restoring packages from renv.lock...")
  renv::restore()
} else {
  # Initialize a new renv environment if no lockfile is present
  message("Initializing new renv environment...")
  renv::init(bare = TRUE) # Set bare = TRUE to prevent auto-snapshotting of all global packages
}

# Install basic packages
packages <- c("dplyr", "ggplot2", "readr", "bookdown", "knitr", "rmarkdown") # Customize this list as needed

# Take a snapshot of the environment
message("Snapshotting environment...")
renv::install(packages)
renv::snapshot()