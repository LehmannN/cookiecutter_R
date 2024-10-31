# ---------------------------------------------------
# init_renv.R
# 30.10.2024
# ---------------------------------------------------

options(repos = c(CRAN = "https://cloud.r-project.org"))

# ---------------------------------------------------
# 0. Set custom renv cache location within the project folder
# ---------------------------------------------------
Sys.setenv(RENV_PATHS_ROOT = "renv")

# ---------------------------------------------------
# 1. Ensure renv is installed
# ---------------------------------------------------
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

# ---------------------------------------------------
# 2. Initialize or restore renv environment
# ---------------------------------------------------
if (file.exists("renv.lock")) {
  message("Restoring packages from renv.lock...")
  renv::restore()
} else {
  message("Initializing new renv environment...")
  renv::init(bare = TRUE) # Set bare = TRUE to prevent auto-snapshotting of all global packages
}

# ---------------------------------------------------
# 3. Install packages from YAML file
# ---------------------------------------------------
if (!requireNamespace("yaml", quietly = TRUE)) {
  install.packages("yaml")
}

config_file <- "_R_packages.yml"

install_missing <- function(pkg_name, version = NULL) {
  if (is.null(version)) {
    renv::install(pkg_name)   # Install the latest version if no specific version is provided
  } else {
    renv::install(paste0(pkg_name, "@", version))   # Install the specified version
  }
}

if (file.exists(config_file)) {
  config <- yaml::read_yaml(config_file)
  
  for (pkg in config$packages) {
    if (!is.null(pkg$version)) {
      install_missing(pkg$name, version = pkg$version)
    } else {
      install_missing(pkg$name)
    }
  }
} else {
  message("Configuration file '_R_packages.yml' not found")
}

# Generate the bibliography for the listed packages
#knitr::write_bib(package_names, 'renv/packages.bib') ###

# ---------------------------------------------------
# 4. Take a snapshot of the environment
# ---------------------------------------------------
message("Snapshotting environment...")
renv::snapshot(library = Sys.getenv("RENV_PATHS_LIBRARY"))
