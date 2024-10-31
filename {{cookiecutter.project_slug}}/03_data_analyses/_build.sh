#!/bin/sh

set -ev
Rscript -e "renv::activate(); bookdown::render_book('notebook', 'bookdown::gitbook')"
