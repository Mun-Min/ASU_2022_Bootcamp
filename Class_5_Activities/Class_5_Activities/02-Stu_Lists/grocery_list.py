# create a grocery list for an apple pie 
apple_pie = ["water", "butter", "eggs", "apples", "cinnamon", "sugar", "milk"]

# find the first 2 items 
print(f"First 2 items on list: {apple_pie[0:2]}")

# find the last 5 items 
print(f"\nLast 5 items on list: {apple_pie[2:7]}")

# find every other item, starting from the 2nd item 
print(f"\nFind every other item starting from the 2nd: {apple_pie[1::2]}")

# add flour to the grocery list 
apple_pie.insert(7, "flour")
print(f"\nNew item added to list: {apple_pie[7]}")

# change apples to gala apples 
apple_pie.pop(3)
apple_pie.insert(3, "gala apples")
print(f"List has been modified: {apple_pie}")

# determine the total number of items on the list 
num_items = len(apple_pie) 
print(f"\nNumber of items in list: {num_items}")