# Configuration file for the Sphinx documentation builder.
#
# For the full list of built-in configuration values, see the documentation:
# https://www.sphinx-doc.org/en/master/usage/configuration.html

# -- Project information -----------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#project-information

project = 'MultiLangDocTest'
copyright = '2025, Will Foran'
author = 'Will Foran'

import sys,os
sys.path.insert(0, os.path.abspath("../src_sphinix"))  # Source code dir relative to this file


# -- General configuration ---------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#general-configuration

extensions = ["sphinx.ext.autodoc", "sphinx.ext.autosummary", "sphinxcontrib.matlab"]
autodoc_default_options = {"members": True}
autodoc_typehints = "description"
autosummary_generate = True
primary_domain = ''

templates_path = ["_templates"]
# only run for "src_sphinix"
exclude_patterns = ["_build", "Thumbs.db", ".DS_Store",
                    "doc", "docs", "docs-sphinx",
                    "doxydown", "doxygen", "doxygen-out",
                    "src", "matlabdomain", "sphinxcontrib-golangdomain",
                    "venv"] 

matlab_auto_link = "all"
matlab_src_dir  = "../"

# -- Options for HTML output -------------------------------------------------
# https://www.sphinx-doc.org/en/master/usage/configuration.html#options-for-html-output

html_theme = 'alabaster'
html_static_path = ['_static']
