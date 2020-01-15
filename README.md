# Create package
```{r}
usethis::create_package("bml")
```

# Create vignette
```{r}
usethis::use_vignette("report")
```

```{r}
library(devtools)
library(usethis)
library(desc)
```

# Remove default DESC
```{r}
unlink("DESCRIPTION")
```
# Create and clean desc
```{r}
my_desc <- description$new("!new")
```

# Set your package name
```{r}
my_desc$set("Package", "yourpackage")
```

#Set your name
```{r}
my_desc$set("Authors@R", "person('Colin', 'Fay', email = 'contact@colinfay.me', role = c('cre', 'aut'))")
```

# Remove some author fields
```{r}
my_desc$del("Maintainer")
```

# Set the version
```{r}
my_desc$set_version("0.0.0.9000")
```
# The title of your package
```{r}
my_desc$set(Title = "My Supper API Wrapper")
```

# The description of your package
```{r}
my_desc$set(Description = "A long description of this super package I'm working on.")
```

# The urls
```{r}
my_desc$set("URL", "http://this")
my_desc$set("BugReports", "http://that")
```

# Save everything
```{r}
my_desc$write(file = "DESCRIPTION")
```

# If you want to use the MIT licence, code of conduct, and lifecycle badge
```{r}
use_mit_license(name = "Colin FAY")
use_code_of_conduct()
use_lifecycle_badge("Experimental")
use_news_md()
```

# Get the dependencies
```{r}
use_package("httr")
use_package("jsonlite")
use_package("curl")
use_package("attempt")
use_package("purrr")
```

# Clean your description
```{r}
use_tidy_description()
```


