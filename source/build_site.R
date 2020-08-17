# dependencies
library(blogdown)
library(fs)

# clean-up current site
if (dir_exists(path = "docs/") == TRUE){
  dir_delete(path = "docs/") 
}

# build site
if (length(servr::daemon_list()) > 0){
  servr::daemon_stop(1) 
}
serve_site()
servr::daemon_stop(1)

# move site to docs/
dir_copy(path = "public/", new_path = "docs/", overwrite = TRUE) 

# clean-up directories
dir_delete(path = "public/")
