library(prenoms)
dataprenoms<-prenoms
devtools::use_data(dataprenoms)
devtools::use_data_raw()
devtools::use_package("readxl")
devtools::use_package("assertthat")
devtools::use_package("prenoms")
devtools::use_package("ggplot2")
devtools::use_package("dplyr")
devtools::use_package("tidyr")
devtools::use_vignette("mypackage")
devtools::build_vignettes()

