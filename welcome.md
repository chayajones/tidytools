Hi everyone,

Some important information the upcoming Tidy Tools class at rstudio::conf. Please let me know (cwickham@gmail.com) if you have any questions. Looking forward to meeting you all!

Regards,

Charlotte

# Information for Building Tidy Tools Workshop 2019

# Schedule

The course will run from 9am to 5:30pm each day with the following breaks:

10:30 – 11am Morning Break  
12:30 – 2pm Lunch  
3:30 – 4pm Afternoon Break  

Breakfast will be available each day starting at 8am.

# Instructors

This workshop is co-taught by Charlotte Wickham and Hadley Wickham.  Charlotte will be your primary instructor but you can expect Hadley to lead one 1.5 hour section each day and be around to answer questions.  

We'll also have three teaching assistants in the room to help out if you get stuck or have questions.

# Recommended reading

We'll start day one with some review of foundations, but I'd recommend you at least skim the following chapters of "Advanced R" and "R for Data Science" before you come:

* Functions, <http://r4ds.had.co.nz/functions.html>
* Vectors, <https://adv-r.hadley.nz/vectors-chap.html>
* Subsetting, <https://adv-r.hadley.nz/subsetting.html>

If you're not already familiar with the basics of markdown, please do the 10 minute tutorial at <https://www.markdowntutorial.com>.

On the day of the course, I'll share all the slides, code and data with you via dropbox.

# R setup

The course is hands on, so you'll need a **laptop with a recent version of R**. 

In addition, run the following to get the required packages:

```r
install.packages(c(
  "devtools", "testthat", "covr", 
  "roxygen2", "lobstr", "vctrs", "sloop",
  "purrr", "stringr", "ggplot2", "dplyr", 
  "tidyverse", "repurrrsive", "rmarkdown", "nycflights13"
))
```

If you use RStudio, please make sure you have at least RStudio 1.1, which you can download from https://www.rstudio.com/products/rstudio/download/#download
  
If you often work on a network drive, it is worth verifying you can load the above packages when you are not connected to the internet, just in case there are wifi problems on the day.

If you have any problems with the setup, please come a little early, and we'll help you get configured. The TAs and I will be around from 8am.  As a backup, we'll also have an [RStudio Cloud](rstudio.cloud) project set up with all the materials and required packages, so even if something goes wrong, as long as you have internet access you'll be able to follow along.

**Don't forget your power cable!**



