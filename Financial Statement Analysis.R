
#Financial Statement Ananlysis

#Two vectors of Data : Monthly Revenue and Monthly Expenses for the Financial Year
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution:-

#Profit For each Month
profit <- revenue -expenses # Basic Formula
profit

#Profit after tax for each month (the tax rate is 30%)
tax <- round(profit * 0.3,2)# using round function to make it one decimal point
tax

#Or we can use round function
tax <- round(profit * 0.3, digits =2)
tax
# Profit after tax
profit_after_tax <- profit -tax
profit_after_tax


# Profit margin for each month
profit_margin <- round(profit_after_tax / revenue,2)*100 #converting it to percentage
profit_margin


# Good Months - where the profit was greater than the mean of the year.

mean_profit_after_tax <- mean(profit_after_tax)
mean_profit_after_tax

#calculating good months

good_months <- profit_after_tax >mean_profit_after_tax 
good_months
# It seems from the calculation that company is doing better in summer, They have streak of good months in summmer.
# We can say this business is holiday oriented. As we can see high streak in summer holidays and winter holidays.

#Calculating Bad months
 bad_months <- profit_after_tax < mean_profit_after_tax
 bad_months
 
 #OR we can calculate with exclamation mark,which gives you the opposite of a logical expression.
  bad_monthss <- !good_months
  bad_monthss
 
# the best month where the profit after tax was max for the year
  max(profit_after_tax)
  best_month <- profit_after_tax == max(profit_after_tax)
  best_month

#the worst month
  min(profit_after_tax)
  worst_month <- profit_after_tax == min(profit_after_tax)
  worst_month
 