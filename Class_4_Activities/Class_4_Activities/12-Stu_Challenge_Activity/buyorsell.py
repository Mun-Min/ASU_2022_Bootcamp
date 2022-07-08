# calculate the percent increase or decrease in x stock price  
# identify a viable percent increase/decrease that will indicate buy or sell action 
# (use conditional logic -- 20% increase or decrease in stock price should warrant a buy or sell) 

# Increase = Current Price - Original Price 
# Percent Increase = Increase / Original * 100

# variables 
original_price = 0 
current_price = 0 
increase = 0 
threshold_to_buy = 20
threshold_to_sell = 20 
percent_increase = 0 
port_balance = 0

# get stock prices from user
original_price = float(input("Enter the original/purchase price of x stock: "))
current_price = float(input("Enter the current price of x stock: "))

# get portfolio balance from user 
port_balance = float(input("Enter the cash balance (available buying power) of your portfloio: "))

# calculate increase 
increase = current_price - original_price

# calculate percent increase 
percent_increase = (increase / original_price) * 100

# buy or sell 
if (port_balance == (current_price * 5.1)): 
        recommendation = ("Recommendation: Your portfloio balance is more than 5x the current stock price! Buy x shares of x stock")
elif percent_increase < threshold_to_buy:                                   # buy Netflix stock if the percent_increase is less than 20% 
    recommendation = ("Recommendation: Buy x shares of x stock")
elif percent_increase > threshold_to_sell:                                  # sell Netflix stock if the percent_increase is greater than 20% 
    recommendation = ("Recommendation: Sell x shares of x stock")

# output
print(f"\nThe original price when purchased was ${original_price} and the current price of x stock is ${current_price}")
print(f"The percent increase is {percent_increase:,.2f}%")
print(f"\n{recommendation}")
