#!/bin/sh

Rscript -e "renv::activate(); \
	bookdown::render_book('notebook', \
	'bookdown::gitbook', \
	output_dir = 'report')"
