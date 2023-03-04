source('Summary.R')
library(ggplot2)

chart2 <- ggplot(data=rowling_by_year_month,
       aes(x = CheckoutMonth, y = total_checkout, colour = CheckoutYear)) +
  geom_line() +
  labs(title = "J.K. Rowling Checkouts by the Year and Month", x = "Month of Checkout", y = "Amount of Checkouts", colour = "Year of Checkouts") +
  scale_x_continuous(breaks = ~ axisTicks(., log = FALSE))

bar3 <- ggplot(data= rowling_by_year) + 
  geom_col(
    aes(x = CheckoutYear, y = total_checkout, fill = CheckoutYear)) + 
  labs(title = "J.K. Rowling Checkouts by the Year", x = "Year of Checkout", y = "Amount of Checkouts", fill = "Year of Checkout") 




