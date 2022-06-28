#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
#Profit for each month
profit <- revenue - expenses
profit
#Profit after tax(30%)
profit_after_tax <- profit - round(profit * 0.3,digits=2)
profit_after_tax
profit_margin <- round(profit_after_tax / revenue, 2) * 100
profit_margin

mean_pat <- mean(profit_after_tax)
good.months <- profit_after_tax > mean_pat
good.months

bad.months <- !good.months
bad.months
best.month <- profit_after_tax == max(profit_after_tax)
best.month
worst.month <- profit_after_tax == min(profit_after_tax)
worst.month

profit.1000 <- round(profit/1000)
profit.1000
profit_after_tax.1000 <- round(profit_after_tax/1000)
profit_after_tax.1000

m <- rbind(
  profit.1000,
  profit_after_tax.1000,
  good.months,
  bad.months,
  best.month,
  worst.month
  
)
m
