[![Appveyor build Status](https://ci.appveyor.com/api/projects/status/github/KWB-R/kwb.matomo?branch=master&svg=true)](https://ci.appveyor.com/project/KWB-R/kwb-matomo/branch/master)
[![Travis build Status](https://travis-ci.com/KWB-R/kwb.matomo.svg?branch=master)](https://travis-ci.com/KWB-R/kwb.matomo)
[![codecov](https://codecov.io/github/KWB-R/kwb.matomo/branch/master/graphs/badge.svg)](https://codecov.io/github/KWB-R/kwb.matomo)
[![Project Status](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
[![CRAN_Status_Badge](https://www.r-pkg.org/badges/version/kwb.matomo)]()

# kwb.matomo

R Package for getting data from Matomo's Reporting
API.

## Installation

For details on how to install KWB-R packages checkout our [installation tutorial](https://kwb-r.github.io/kwb.pkgbuild/articles/install.html).

```r
### Optionally: specify GitHub Personal Access Token (GITHUB_PAT)
### See here why this might be important for you:
### https://kwb-r.github.io/kwb.pkgbuild/articles/install.html#set-your-github_pat

# Sys.setenv(GITHUB_PAT = "mysecret_access_token")

# Install package "remotes" from CRAN
if (! require("remotes")) {
  install.packages("remotes", repos = "https://cloud.r-project.org")
}

# Install KWB package 'kwb.matomo' from GitHub
remotes::install_github("KWB-R/kwb.matomo")
```

## Documentation

Release: [https://kwb-r.github.io/kwb.matomo](https://kwb-r.github.io/kwb.matomo)

Development: [https://kwb-r.github.io/kwb.matomo/dev](https://kwb-r.github.io/kwb.matomo/dev)
