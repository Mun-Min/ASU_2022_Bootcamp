# Compounding Future Value Calculator 
# Formula --> FV = PV * (1 + r)^t --> https://www.wallstreetmojo.com/future-value-fv-formula/

# declare variables 
initial_investment = float(input("Enter Initial Investment Amount: "))
r = float(input("Enter Annual Rate Percentage: "))
t = int(input("Enter how many years you want to invest: "))

# update annual rate 
r = r / 100

# create loop to print output from year 1 up to how many years the user wants to invest
for x in range(1, t + 1): 
    # create formula 
    future_val = initial_investment * pow((1 + r), x) 
    print(f"\nYear {x} Value: ${future_val:,.2f}") 
    