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