### How to build an R package from scratch
library(usethis) ## or library(devtools)
use_git_config(user.name = "mrustl", user.email = "michael.rustler@kompetenz-wasser.de")

## check by running a git situation-report: 
##   - your user.name and user.email should appear under "User"
git_sitrep()

author <- list(name = "Michael Rustler",
               email = "michael.rustler@kompetenz-wasser.de",
               orcid = "0000-0003-0647-7726",
               url = "https://mrustl.de")

pkg <- list(name = "kwb.matomo",
            title = "R Package for Matomo Reporting API",
            desc  = "R Package for getting data from Matomo's Reporting API.")

usethis::create_package(path = file.path("..", pkg$name))
fs::file_delete(path = "DESCRIPTION")

kwb.pkgbuild::use_pkg(author,
                      pkg,
                      version = "0.0.0.9000",
                      stage = "experimental")


pkg_dependencies <- c('jsonlite', 'glue', 'data.table')

sapply(pkg_dependencies, usethis::use_package)

usethis::use_vignette("tutorial", "Tutorial")

kwb.pkgbuild::use_autopkgdown()


