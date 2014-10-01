Notes:
===

Intro.html contains all the useful information. These are just some rough notes
so I can keep track of where I am, and whats next at the bootcamp,

00 Introduction
---

 - Welcome, SWC intro for those unfamiliar
 - Explain goals of this particular bootcamp: e.g. test R material
 - Teaching format: 
   - lectures vs. challenges
   - sticky notes
   - etherpad 
 - Cover ground rules briefly
 - Learning objectives for the day

00 Cloud Learning Environment
---

 - AAF login
 - Claim access to compute node
 - Create new active container (access key on etherpad)
    - Note that some people might miss the active part
 - For the first part we'll use R from command line
 - Once past the basics, we'll use RStudio

01 Basics of R:
---

 - What is R
 - Interactive vs. Inline vs. Batch mode

06 Best Practices
---
 - Talk about best practices for scientific computing
 - Walk through creating a new project in RStudio
   - it makes sense to keep all the scripts and related files together for a single 
     analysis or project
   - makes it easier to switch between unrelated tasks
   - we will treat this as a lab-notebook.

03 Understanding Basic Data types
---

 Show review of R data types
 
 - 6 atomic types: 
    - "character", "numeric" (decimal), "integer", "logical", "complex", "raw" (bytes)
    - Give some examples of each
 - Basic data structures: 
    - "atomic vector", "list", "matrix" (2d atomic vector), "data.frame", "factor"
    - Scroll down to bottom of the page for review
    - build a few examples
 - Special types: NA, Inf, NaN
 - Break for some challenges. 
  - Get learners to create some vectors, (name, number of siblings, favourite number)
  - combine into list, data frame, and matrix (hint use: as.matrix)
  - What is the difference between the three? Did what you expect happen in each case?

Feedback:
 - Have real data of each type.
 - What kind of data frame do we want?
 - Australian data for each data type.
 - lubridate for date and time?
 - Ecology database for australia.
 

0.35 RStudio
---

Now seems like a good time to switch to RStudio:
 - show 4 panes
 
04 Seeking Help
---
 Inspecting objects
  - str, class, length, dim, sessionInfo, options
 Help files:
  - ? vs. ??.  Explain backticks for special operations!
  - Walk through parts of a help file.
 Seeking help from peers:
  - dput for dumping your structure
 CRAN task views
 
 save, saveRDS
 
Feedback:
---
New challenge, promote collaboration!:
Share what you've just done in the previous challenge in th

Challenge 1:
 - save objects using saveRDS
 - save multiple objects using save
 - share

Seeking Feedback elsewhere:
---
Searching stackoverflow
 - emphasise searching, minimal effort, and minimal reprocible examples.

---

Morning Tea

---



05 Subsetting 
---
use real data!

  Demonstrate for vectors:
    - Integer subsetting
    - Named subsetting
    - Negative slices
    - logical operators: need to introduce the different operators
    - based on condition
    - which
    - Subsetting a location which doesn't exist
  Demonstrate for two-dimensional objects:
    - Rows vs. Columns
    - as above
    - explain "$" as shortcut for "column"
    
Need to find compelling example on where
  Lists:
    - explain difference between `[`, `[[`, and `$`
      - Technically, `[` can only ever return an object of the same class, e.g. 
        on a list, it must return a list!
  
  Break for challenge in "Exercises.html"
---
Problems:
 - Haven't introduced boolean operators yet
 - Exercises lack variety in challenge 2, and are too advanced.
 - Why are we loading ggplot2::diamonds?
 - Haven't talked about linear models yet.  



06 Vectorisation
---
 - Most operations in R are vectorised. This means you can apply a function to 
   all elements in a vector without having to loop over them. e.g.:
    - adding two vectors
    - vector subtraction
    - shorter vectors are recycle
    - evaluating truth statements (boolean operations)
 - Matrix operations are also vectorised:
   - Importantly, most operations are elementwise
   - True matrix multiplication through `%*%`
   - Matrices organised by column, so vectorised operations are performed by column.
   
07 Apply functions
---
   - The apply family of functions
    - lapply, apply to each element of a vector (or list)
    - sapply, same as lapply, but simplify the output
    - apply to a dimension of a matrix: 
       - Note: will not work for data.frames
       - Always combines output to columns

Switch to the split-apply 
    - by: split a matrix or data.frame into groups (second argument must be a factor)
    - tapply, like by, but for single vectors instead of multiple columns
    - replicate: do the same thing over and over
    - mapply: apply a function to the same element of multiple lists/vectors/objects

Feedback:
 = Too many functions, only need a few
 = What is the task we're trying to acheive?
 = Uber challenge, mapply

---

Break for exercises!

---

Need a plotting lesson next!
---


08 Control structures
---
 - go through
  - if, else
  - for
  - while
  - repeat
  - break
  - next

09 Writing functions
---

 - Go through syntax
  - either use return, or last object returned
  - scoping rules
 - All operations are functions: explain specials.
 
---

Lunch break here?

---

Get students to download from:
`https://github.com/sritchie73/r-alpha-bootcamp-unimelb-notes/tree/master/data-manipulation/data/`

`mammals.csv`
`messy_data.csv`

10 Input_Output.html
---
 - scan: numbers only
 - readline: any freeform text
 - read.csv, read.table (Show help file, note: stringsAsFactors!)
 - read file from web (go back to github and copy link address):
 
`https://github.com/sritchie73/r-alpha-bootcamp-unimelb-notes/tree/master/data-manipulation/data/climate.csv`

Local file operations
 - list.files, file.info, dir, file.exists, getwd, setwd

Saving files:
 - write.table (Show helpfile, note: quote)
 - saveRDS (if you only want to use R to work with the file)
 - can also save compressed, see `bzfile`.

--- 

Lunch Break here?

---

07 Messy Data
---
 - Most data we work with isn't nicely formatted
 - Even when it is, some functions expect it in a different format.
 - Most of what you do in analysis will probably be getting data from format A to format B.

 - Long vs. Wide data
 - First example: melt long to wide
 -  `dcast` back to long: formula: status ~ variable.


For the next section, we're going to be creating a script that takes some 
raw data thats been sent to us, into a regular format we can work wi
No exercise has been written for this section, so I will get you to follow along
with me. So if im going too fast, put a pink sticker on the back of your laptop, 
and I can slow down. Also don't hesitate to ask any questions about code you 
don't understand here.

 - Non-standard input (well that escalated quickly!) (migratory bird data)
   - First we look for regular patterns in the non-standard input
   - So we know from the person who sent us the file that there should be 11
     entries:
     - Observer
     - First date observed
     - Date last observed
     - id
     - distance
     - direction
     - speed
     - measure x
     - measure y
     - migratory status
     - number of times observed
   - start and finish are first and second elements of `dashes`
   - write function to clean each line.
   
Exercise: process my description file?


--- 

Lunch Break here?

---

Testing 
---

`test_file` run all tests in a file.

Knitr for reproducible research:
---
Create new knitr file to document your data cleaning script!






 