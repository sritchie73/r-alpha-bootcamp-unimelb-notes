---
layout: lesson
root: ../..
title: Alpha R bootcamp
level: intermediate
---

# Welcome

Welcome to the alpha R bootcamp.

The goal of this bootcamp is to test out the intermediate R material in advance of a full two-day bootcamp
that will be held in November.
 
The target audience for this material is intended to be researchers who have encountered programming before,
ideally those who are already using R for their research, but struggling with it, and want to learn more to
make their lives easier. However, the material should also be suitable for those who have not encountered R
yet, but have encountered programming before (e.g. have previously attended a Software Carpentry Python bootcamp)

For a full bootcamp, we will also be covering unix shell commands, and version control using git. We won't be
covering either today.

# Format and Ground Rules

First some ground rules:

Code of Conduct: http://software-carpentry.org/conduct.html

The bootcamp will be an interactive experience. I will be going through material
on my machine up on the project. I encourage you to follow along as well, and we'll break
every 10-15 minutes or so to go through a challenge: short exercises on the material where
you'll work together in groups of 2 or 3.

## Sticky notes

During challenges
 
  - Green: you don't need help with the challenge
  - Red: you're a bit lost and would like some pointers

Outside of challenges:

  - Red: I'm going through the material too quickly

We'd also be grateful if you could use them to give us feedback at each break: write one thing that's gone well, or one thing you've learned that you think is useful, on the green sticky, and one thing that confused you or didn't work on the red one, and hand them in when you go out for coffee or lunch.

## Etherpad

We'll be using an etherpad for the bootcamp for me to share code, and for you to
ask questions to each other or share notes.

https://etherpad.mozilla.org/r-alpha-bootcamp-unimelb

## Learning Environment

We'll be using a cloud learning environment for this bootcamp:

https://dit4c.metadata.net/

# Learning Goals / Materials

1. Accessing the cloud learning environment
2. Introduction to RStudio



This `master` set is based on material from a [2-day bootcamp](https://github.com/swcarpentry/2013-10-09-canberra) ([@karthik](https://github.com/karthik)) ran in Canberra, Australia in October 2013. The material is meant to cover the full range of topics typically covered in a regular Python bootcamp. 

Shell and Git are intentionally missing from this set. 

| Topic | Materials |
| ------ | -------- |
| The Cloud | Accessing the cloud learning enviroment |
| Basics | Introduction to R, data types, best practices, seeking help, Using the RStudio IDE |
| Functions | Basics of control flow, scoping rules and functions in R |
| Data Manipulation | A full introduction to the apply family, dealing with IO in R, and a full hands on example of cleaning messy data in R |
| Data Visualization | A complete introduction to `ggplot2` |
| Testing | Documentation with `roxygen2`, Unit testing with `testthat`|
| Reproducible Research | knitr, make |

## Complete list of lessons
| Topic | Material |
| ----  | ------  |
| __The Cloud__ | [cloud learning environment](dit4c.metadata.net) |
| __R Basics__ | [01-basics-of-R.Rmd](R-basics/01-basics-of-R.Rmd) <br> [02-data-structures.Rmd](R-basics/02-data-structures.Rmd) <br> [03-best-practices.Rmd](R-basics/03-best-practices.Rmd) <br> [04-seeking-help.Rmd](R-basics/04-seeking-help.Rmd) <br> [05-subsetting.Rmd](R-basics/05-subsetting.Rmd) <br> [06-vectorization.Rmd](R-basics/06-vectorization.Rmd) <br> [best-practices.Rmd](R-basics/best-practices.Rmd) <br> [rstudio-basics.Rmd](R-basics/rstudio-basics.Rmd) |
| __Data Manipulation__ | [00-messy_data.Rmd](data-manipulation/00-messy_data.Rmd) <br> [01-input-output.Rmd](data-manipulation/01-input-output.Rmd) <br> [02-apply-family.Rmd](data-manipulation/02-apply-family.Rmd) <br> [03-split-apply.Rmd](data-manipulation/03-split-apply.Rmd) <br>  |
| __Functions and Control Structures__ |  [01-functions.Rmd](functions/01-functions.Rmd) <br> [02-control_structures.Rmd](functions/02-control_structures.Rmd) <br> [03-scoping_rules.Rmd](functions/03-scoping_rules.Rmd) <br>  |
| __Data Visualization__ <br> _If you make changes, only edit the `.Rnw` file. <br>Then knit and tagle to generate other two files_ |  [ggplot.R](data-visualization/ggplot.R) (tangled code from source)  <br> [ggplot.Rnw](data-visualization/ggplot.Rnw) (source) <br> [ggplot.pdf](data-visualization/ggplot.pdf) (rendered) <br>  |
| __Reproducible Research__ |  [knitr.Rmd](reproducible-research/knitr.md) <br> [make.md](reproducible-research/make.md) <br> [markdown.md](reproducible-research/markdown.md) <br>  |
| __Testing and Documentation__ | [documentation.md](testing-documentation/documentation.md) <br> [testing.Rmd](testing-documentation/testing.Rmd) <br>   |

__Note:__ _You will not be able to teach all topics in 2 days, especially since the above table does not include Git or Shell. So you will have to drop Reproducible research or Testing/documentation (or both) depending on audience skill level and interest._


## Package installation

Participants will require the following packages. Please transfer these instructions to your installation instructions page.

```coffee
install.packages("devtools")
# You'll need other non-R dependencies before you can install devtools. Please see the additional_software.md page for more instructions.
install.packages(c("reshape2", "plyr", "ggplot2", "knitr", "testthat", "assertthat", "stringr", "pander"))
```

## Notes for instructor teaching with this material.

* Please pull from the `bc` repo and decide what topics within R you would like to cover. Then retain the necessary folders and delete the rest. It might also help to number section folders in the order in which you might cover the material.

* Next, knit all of the `Rmd` files in each folder to make sure they parse correctly. Please avoid doing this the night before you teach in case any material needs to be updated to keep up with package changes.

* Commit the rendered files to your repo (NOT `bc`) so you have material to show on the projector while you teach. You might also consider doing a sed replacement for **```r** to  **coffee** for better syntax highlighting. 

* If you decide to teach Make in the context of `knitr`, please ensure that Make is correctly installed on all computers (see additional software under R-basics) section. Also keep in mind that the material here is intentionally sparse. There will be material in other lesson folders with more details that you might want to pull in.

