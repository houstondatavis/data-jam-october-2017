library(ggplot2)
library(data.table)
library(dplyr)
library(lubridate)

a <- fread('../houston_recovery_center_4_1_13_to_9_30_17_YesNoFixed.csv')

a$alcohol <- grepl('alcohol', a$substance, ignore.case = T)
a$thc <- grepl('thc', a$substance, ignore.case = T) | grepl('marijuana', a$substance, ignore.case = T)
a$cocaine <- grepl('coc', a$substance, ignore.case = T)
a$bzo <- grepl('bzo', a$substance, ignore.case = T) | grepl('benzo', a$substance, ignore.case = T)
a$meth <- grepl('m-amp', a$substance, ignore.case = T) | grepl('meth', a$substance, ignore.case = T)
a$kush <- grepl('kush', a$substance, ignore.case = T)
a$is_male <- tolower(a$sex) == "m"
