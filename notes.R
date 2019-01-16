x <- runif(1e6)
lobstr::obj_size(x)
# 8,000,048 B

y <- list(x, x, x)
lobstr::obj_size(y)
# 8,000,128 B

y[[1]][[1]] <- NA
lobstr::obj_size(y)
# 16,000,176 B


insert_into() # works like cbind but you can specify where you want the columns to be inserted

insert_into <- function(x, y, where = 1) {
  if (where == 1) { # first col
    cbind(y, x)
  } else if (where > ncol(x)) { # last col
    cbind(x, y)
  } else {
    lhs <- 1:(where - 1)
    cbind(x[lhs], y, x[-lhs])
  }
}

# best practice in API/package design: group similar functions together 
# by giving them a common prefix so that RStudio can help you search quickly

# use suffixes for variations on a theme

# data arguments should always come first

# library(conflicted) -> helps with package function name conflicts

# type stability: what type of thing does this function return and is it adequate for most purposes
# the easier it is to predict the output type of a function, the easier it is to understand that function


map_dbl(mtcars, mean)

means <- list(-10, 0, 10, 100)
map(means, ~ rnorm(10, mean = .x))
map(means, rnorm, n = 10)

map(iris, ~ length(unique(.x)))


library(ggplot2)
# a list of data frames
by_color <- split(diamonds, diamonds$color)
# a vector of paths
paths <- paste0(names(by_color), ".csv")

map2(by_color, paths, ~ write.csv(.x, .y)) # displays output to the console that isn't useful
walk2(by_color, paths, ~ write.csv(.x, .y)) # we just want the side effect of writing the files

# compose value functions with map, compose effect functions with walk


# automatically load packages:
usethis::use_package("purrr", "depends")

# see the setup.R file for a polite package installer

# for error handling: better not to add it to your function directly, 
# this means your function is doing too many things
# better to have a function responsible for this! -> decide what should happen, write a function to check it

# see tidyverse style guide on writing good error messages

# be explicit about where the problem was, then tell user what the expected value is
# "where can't be mssing. where must be a positive integer." or something like this 




urls <- c(
  "https://google.com",
  "https://en.wikipedia.org",
  "asdfasdasdkfjlda"
)

# Fails
contents <- urls %>%
  map(readLines, warn = FALSE)

# Always succeeds
contents <- urls %>%
  map(safely(readLines), warn = FALSE) %>%
  transpose()

success <- map_lgl(contents$error, is.null)

# contents$result[success]
# contents$error[success]
# see charlotte's example for a better solution


memoise::memoise() # adds a memory


# S3 / oo programming

mod <- lm(mpg ~ wt, data = mtcars)
summary(mod)

class(mod)
str(mod)

sloop::s3_class(mod)
sloop::s3_dispatch(summary(mod))

sloop::s3_get_method(summary.lm)

sloop::s3_get_method(summary.default)











