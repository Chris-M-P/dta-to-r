library(haven)
library(dplyr)
library(webuse)
library(fst)
library(rio)
library(filematrix)

webuse("census")

census2 <- as_factor(census)

write.fst(census2, "I:/census2.fst")

census_fst <- read.fst("I:/census2.fst", as.data.table = FALSE)

saveRDS(census2, "I:/census2.RDS")

census_RDS <- readRDS("I:/census2.RDS")


# using rio package
e <- import("http://www.stata-press.com/data/r13/auto.dta")
str(e)
g <- gather_attrs(e)
str(attributes(e))
str(g)

write.fst(e, "I:/e.fst")
write.fst(g, "I:/g.fst")

e_fst <- read.fst("I:/e.fst")
g_fst <- read.fst("I:/g.fst")

