source('Summary.R')
library(ggplot2)

chart1 <- ggplot(data=rowling_by_material,
       aes(x=CheckoutYear, y=total_checkout, colour=MaterialType)) +
  geom_line()+
  labs(title = "J.K. Rowling Checkouts by Type of Book Over the Years", x = "Year of Checkout", y = "Amount of Checkouts", colour = "Type of Book") +
  scale_x_continuous(breaks = ~ axisTicks(., log = FALSE))

