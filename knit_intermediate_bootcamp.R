#!/usr/bin/Rscript

# Knits all the files for the SWC intermediate R bootcamp

# Should be executed from within the directory: bc/intermediate/r

library(markdown)
library(knitr)

cwd <- normalizePath(getwd())

# Knit Rmd files to html, remove intermediate md files
files <- list.files(pattern = "Rmd$", recursive = TRUE, full.name = TRUE)
files <- normalizePath(files)
for (fname in files) {
  setwd(dirname(fname))
  knit2html(input = basename(fname), envir = new.env())
  unlink(sub(".Rmd$", ".md", basename(fname)))
}

# Convert md files to html
setwd(cwd)
files <- list.files(pattern = "\\.md$", recursive = TRUE, full.name = TRUE)
files <- normalizePath(files)
for (fname in files) {
  if (basename(fname) == "README.md") {
    next
  }
  renderMarkdown(file = fname, output = sub("md$", "html", fname))
}
