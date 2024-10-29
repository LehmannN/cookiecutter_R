R data analysis template
========================

This is a template for setting up an R analysis project. This template uses
[cookiecutter](https://github.com/audreyr/cookiecutter), a Python templating
tool, to setup a directory structure.

Requirements
------------

Install `cookiecutter` using `pip`:

```
pip install cookiecutter
```

OR `brew` :

```
brew install cookiecutter
```

OR `conda` :

```
conda install -c conda-forge cookiecutter
```

Usage
-----

Generate a new analysis directory using:

```
cookiecutter gh:lehmannn/cookiecutter_R
```

If this doesn't work try using SSH with the full path:

```
cookiecutter git+ssh://git@github.com/lehmannn/cookiecutter_R.git
```

You will then be asked some questions to set up your project. Leaving answers
blank will select the default (shown in [brackets]).

Structure
----------

The resulting analysis project will have the following structure.

* **scripts** - Reusable code (functions etc.)
* **notebooks** - R Markdown analysis files
* **reports** - Rendered analysis reports
* **data** - Data used for analysis (raw, intermediate and final)
* **outputs** - Output files (images, plots, tables)
* **reports** - Reports of the analyses

License
-------

This project is licensed under the terms of the [MIT License](/LICENSE)

Acknowledgements
----------------

Much of this template is based on bdcaf's
[cookiecutter-r-data-analysis](https://github.com/bdcaf/cookiecutter-r-data-analysis)
template and on lazappi's template [cookiecutter-r-analysis](https://github.com/lazappi/cookiecutter-r-analysis).

