---
layout: lesson
root: ../..
title: Introduction
level: intermediate
---

## What is Software Carpentry?

[Software Carpentry](http://software-carpentry.org/) is a volunteer organization whose members teach basic software 
skills to researchers in science, engineering, and medicine. It was founded in 1998, but came to prominence in the 
early 2010s when it shifted to a teaching model centred around intensive two-day 
[bootcamps](http://software-carpentry.org/bootcamps/index.html) (see [this paper](http://f1000research.com/articles/3-62/v1) for a detailed history of the 
organisation). 

In the last year over [190 Software Carpentry bootcamps were run worldwide](http://software-carpentry.org/bootcamps/previous.html) 

### What gets taught at a bootcamp?

Our goal is to teach a handful of [best practices in scientific computing](http://www.plosbiology.org/article/info%3Adoi%2F10.1371%2Fjournal.pbio.1001745), so that 
researchers can get more done in less time. Our goal is 
not to produce professional programmers: scientific programming is fundamentally different to software development. Our aim is to teach best
practices for making researchers more efficient, and teach best practices for reproducibility.

A typical bootcamp covers three major domains:

1. The command line
2. Programming fundamentals (readability, defensive programming, testing, etc) 
3. Version control 

For this bootcamp, we will only be covering R, to test out the materials in anticipation for a full two-day
bootcamp that will be held in November.

The target audience for this material is intended to be researchers who have encountered programming before,
ideally those who are already using R for their research, but struggling with it, and want to learn more to
make their lives easier. However, the material should also be suitable for those who have not encountered R
yet, but have encountered programming before (e.g. have previously attended a Software Carpentry Python bootcamp)

This material from a [2-day bootcamp](https://github.com/swcarpentry/2013-10-09-canberra) ([@karthik](https://github.com/karthik)) ran in Canberra, Australia in October 2013. 

## What is the teaching format?

The syllabus is delivered via lecture/demonstration (via live coding most of the time) interspersed with regular challenges to be 
worked on in pairs. During the live coding participants usually sit back and watch, and then during the challenges they have an 
opportunty to try things out and ask questions (i.e. it is not expected that participants will follow along with the live coding 
on their own machine). There's no need to take notes, as copies of all the teaching materials are available on the Software
Carpentry website (see [here](http://www.software-carpentry.org/lessons.html)).

If you're having trouble at any point, put up a red post-it note and a helper will come to your aid. If things are
going well, put a green one up. In fact, at any point during the bootcamp it's inevitable that some people will be finding
the material too easy, while others will be struggling to keep up. In this case the former
should help the latter - Software Carpentry is as much about fostering supportive 
computing communities as it is about actually teaching the nuts and bolts of programming. 

We'd also be grateful if you could use them to give us feedback at each break: write one thing that's gone well, or one thing you've learned that you think is useful, on the green sticky, and one thing that confused you or didn't work on the red one, and hand them in when you go out for coffee or lunch.

We'll be using an etherpad for the bootcamp. I'll be sharing code and links there, and feel free to discuss the material with others in the bootcamp as well.

https://etherpad.mozilla.org/r-alpha-bootcamp-unimelb

### Ground Rules

First some ground rules:

Code of Conduct: http://software-carpentry.org/conduct.html

## Learning Goals / Materials

| Topic | Materials |
| ------ | -------- |
| The Cloud | Accessing the cloud learning enviroment |
| Basics | Introduction to R, data types, best practices, seeking help, Using the RStudio IDE |
| Functions | Basics of control flow, scoping rules and functions in R |
| Data Manipulation | A full introduction to the apply family, dealing with IO in R, and a full hands on example of cleaning messy data in R |
| Reproducible Research | knitr, make |
| Data Visualization | A complete introduction to `ggplot2` | 


### Complete list of lessons

| Topic | Material |
| ----  | ------  |
| __The Cloud__ | [00-Intro-to-the-cloud.html](00-Intro-to-the-cloud.html) <br> [cloud learning environment](http://dit4c.metadata.net) |
| __R Basics__ | [01-basics-of-R.html](R-basics/01-basics-of-R.html) <br> [02-rstudio-basics.html](R-basics/rstudio-basics.html) <br> [03-data-structures.html](R-basics/02-data-structures.html) <br> [04-best-practices.html](R-basics/03-best-practices.html) <br> [05-seeking-help.html](R-basics/04-seeking-help.html) <br> [06-subsetting.html](R-basics/05-subsetting.html) <br> [exercises.html](R-basics/exercise.html) <br> [07-vectorization.html](R-basics/06-vectorization.html) |
| __Data Manipulation__ | [08-apply-family.html](data-manipulation/02-apply-family.html) <br> [03-split-apply.html](data-manipulation/03-split-apply.html) <br> [Apply-exercises.html](apply-exercises.html) <br> [00-messy_data.html](data-manipulation/00-messy_data.html) 
