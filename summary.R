library("stringr")
library("dplyr")
all_checkouts <- read.csv("2013-2023-5-Checkouts-SPL.csv", stringsAsFactors = FALSE)



all_rowling <- all_checkouts %>%  
  filter(str_detect(Creator, "Rowling"))

all_rowling <- subset(all_rowling, CheckoutYear != 2023)

rowling_by_year = all_rowling %>% 
  group_by(CheckoutYear)  %>%
  summarise(total_checkout = sum(Checkouts))

rowling_by_year$CheckoutYear <- as.character(rowling_by_year$CheckoutYear)

rowling_by_year_month = all_rowling %>% 
  group_by(CheckoutYear, CheckoutMonth)  %>%
  summarise(total_checkout = sum(Checkouts),
  .groups = 'drop')

rowling_by_year_month$CheckoutYear <- as.character(rowling_by_year_month$CheckoutYear)

rowling_by_material = all_rowling %>% 
  group_by(MaterialType, CheckoutYear)  %>%
  summarise(total_checkout = sum(Checkouts), 
  .groups = 'drop')                       