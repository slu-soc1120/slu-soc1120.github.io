# dependencies
library(blogdown)
library(fs)

# build site
build_site()

# move site to docs/
dir_copy(path = "public/", new_path = "docs/", overwrite = TRUE) 

# clean-up directories
dir_delete(path = "public/")