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

03 Understanding Basic Data types
---

 Show review of R data types
 
 - 6 atomic types: "character", "numeric" (decimal), "integer", "logical", "complex", "raw" (bytes)
    - Give some examples of each
 - Basic data structures: "atomic vector", "list", "matrix" (2d atomic vector), "data.frame", "factor"
    - Scroll down to bottom of the page for review
    - build a few examples
 - Special types: NA, Inf, NaN
 - Break for some challenges. 
  - Get learners to create some vectors, (name, number of siblings, favourite number)
  - combine into list, data frame, and matrix (hint use: as.matrix)
  - What is the difference between the three? Did what you expect happen in each case?

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
  - Searching stackoverflow
    - emphasise searching, minimal effort, and minimal reprocible examples.
 CRAN task views
 
05 Subsetting 
---
  Demonstrate for vectors:
    - Integer subsetting
    - Named subsetting
    - Negative slices
    - logical operators
    - based on condition
    - which
    - Subsetting a location which doesn't exist
  Demonstrate for two-dimensional objects:
    - Rows vs. Columns
    - as above
    - explain "$" as shortcut for "column"
  Lists:
    - explain difference between `[`, `[[`, and `$`
      - Technically, `[` can only ever return an object of the same class, e.g. on a list, it must return a list!
  Break for challenge in "Exercises.html"
  
---

Morning Tea!

---

First thing back, get students to upload:
  `data_manipulation/data/messy_data.txt`
  `data_manipulation/data/climate.csv`
  

06 Best Practices
---
 - Talk about best practices for scientific computing
 - Walk through creating a new project in RStudio
   - it makes sense to keep all the scripts and related files together for a single analysis or project
   - makes it easier to switch between unrelated tasks
   - we will treat this as a lab-notebook.

07 Messy Data
---

 - Most data we work with isn't nicely formatted
 - Even when it is, some functions expect it in a different format.
 - Most of what you do in analysis will probably be getting data from format A to format B.
 
SWITCH lessons to 01-Input_Output!

 - scan: numbers only
 - readline: any freeform text
 - read.csv, read.table (Show help file, note: stringsAsFactors!)
 
Local file operations
 - list.files, file.info, dir, file.exists, getwd, setwd

Saving files:
 - write.table (Show helpfile, note: quote)
 - saveRDS (if you only want to use R to work with the file)
 - can also save compressed, see `bzfile`.
 

Capstone: back to Messy Data lesson
---

 - Long vs. Wide data
 - First example: melt long to wide
 -  `dcast` back to long: formula: status ~ variable.


For the next section, I will get you to follow along with me. So if im going too
fast, put a pink sticker on the back of your laptop, and I can slow down. Also 
don't hesitate to ask any questions about code you don't understand here, there's
been a big jump in the difficulty of the material!

We're going to be creating a script that takes some raw data thats been sent to 
us, into a regular format we can work with.
 - Non-standard input (well that escalated quickly!) (Bird Migratory Data)
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
 
 
 