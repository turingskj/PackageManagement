# check R version
version
sessionInfo()

#getting help
help(package = "ggplot2")

help(detach)

# Extended help
browseVignettes("ggplot2")

# from CRAN
install.packages("devtools")
install.packages(c("devtools", "dplyr", "xlsx"))

# from GitHub
install.packages("devtools")
library(devtools)
install_github("author/package")


# check installed packages
installed.packages()
# or 
library()

# updating packages
old.packages()  # check the packages with update avaiable
update.packages() # update all pacakages
# if you want to update only one or two packages, 
install.pacakges(c("abind", "devtools"))



# unload a package

detach("package:ggplot2", unload=TRUE)

# uninstalling a package

remove.packages("devtools")


# as in the following example
# attach and detach are used to add a data (dataframe)
# to a serachable namespace
# e.g., attach(women) -- this will add the data frame "women" 
# in the searchable workspace so that women$height is the same 
# as just "height"
# detach("women") will make "height" invalid

attach_and_detach <- function(db, pos = 2)
{
  name <- deparse(substitute(db))
  attach(db, pos = pos, name = name)
  print(search()[pos])
  detach(name, character.only = TRUE)
}
attach_and_detach(women, pos = 3)

# sutstitute() will return the expression as it is with any values sutstituted.
# ex.) substitute (x +y, list(x= 1)) will give 1 + y

