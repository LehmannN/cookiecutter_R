# -----------------------------------------------------------------
# setup.R
# -----------------------------------------------------------------

# -----------------------------------------------------------------
# Set parameters values
# -----------------------------------------------------------------
knitr::opts_chunk$set(
  fig.align = "center",
  fig.retina = 2,
  fig.fullwidth = TRUE,
  dev = c('png', 'pdf'),
  cache = FALSE,
  cache.lazy = FALSE,
  warning = FALSE,
  message = FALSE
)

# -----------------------------------------------------------------
# Set a consistent theme for ggplot2
# -----------------------------------------------------------------
ggplot2::theme_set(ggplot2::theme_classic(base_size=16))
