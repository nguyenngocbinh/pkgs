# Before creation
#install.packages(c("devtools", "roxygen2", "usethis", "available"))
library(devtools)
library(roxygen2)
library(usethis)

# Check available cran package
library(available)
available("git.manual")

# Creating minimal functional package
usethis::create_package("~/Desktop/git.manual")
use_git()
use_github()

# Create license
# Firstly we will go into the DESCRIPTION file and make sure that the Authors@R is populated correctly and modify the Title and Description fields.
# Next we will license the package. This can be done using one of the following functions (we will use MIT for this example)
# options(usethis.full_name = "Nguyen Ngoc Binh")
use_mit_license("Nguyen Ngoc Binh")
## use_gpl3_license()
## use_apl2_license()
## use_cc0_license()

# Add readme file
use_readme_rmd()


use_travis()
use_appveyor()
use_coverage(type = c("codecov"))

# Add data
use_data_raw()

# Add the functions
use_r("sfa")

# testthat
use_testthat()
use_test("function_name")

#
use_spell_check()

#
use_package("dplyr")

# Use news to keep track on what is happening in your package.
use_news_md()

use_roxygen_md()

# Add a vignette
use_vignette("git.manual", "Simulate git")

# Add version
use_version()
