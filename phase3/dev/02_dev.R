# Building a Prod-Ready, Robust Shiny Application.
#
# README: each step of the dev files is optional, and you don't have to
# fill every dev scripts before getting started.
# 01_start.R should be filled at start.
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
#
#
###################################
#### CURRENT FILE: DEV SCRIPT #####
###################################

# Engineering

## Dependencies ----
## Add one line by package you want to add as dependency
usethis::use_package("thinkr")
usethis::use_package("shiny")
usethis::use_package("shinipsum")
usethis::use_package("rlang")

## Add modules ----
## Create a module infrastructure in R/
golem::add_module(name = "table")

## Add helper functions ----
## Creates fct_* and utils_*
golem::add_fct("helpers")
golem::add_utils("helpers")

## Tests ----
## Add one line by test you want to create
usethis::use_test("app")

# You're now set! ----
# go to dev/03_deploy.R
rstudioapi::navigateToFile("dev/03_deploy.R")
