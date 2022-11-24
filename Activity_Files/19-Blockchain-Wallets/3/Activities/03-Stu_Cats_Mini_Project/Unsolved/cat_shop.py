# file path --> Activity_Files\19-Blockchain-Wallets\3\Activities\03-Stu_Cats_Mini_Project\Unsolved

# Cats Mini Project

#In this part of the activity you will import the functions from your wallet.py file and create an interface using streamlit

#In this portion of the activity we will create an interface and check our balance in ether to determine if we are able to purchase a cat.

# Imports
import streamlit as st
from dataclasses import dataclass
from typing import Any, List




# @TODO: # From crypto_wallet.py import w3, generate_account, get_balance
from crypto_wallet import generate_account
from crypto_wallet import get_balance

################################################################################
# Cat Information

# Database of cats including their name, digital address, rating and in Ether.
# A single Ether is currently valued at $3,900

cat_database = {
    "Jennifurr": ["Jennifurr", 22],
    "Cheddar": ["Cheddar", 151],
    "Meowise": ["Meowise", 31],
}

# Create a list of the the cats by first names
kitties = ["Jennifurr", "Cheddar", "Meowise"]

# Create a get_cats function to display the purchase information from the cats
def get_cats():
    """Display the database of cats to purchase information."""
    db_list = list(cat_database.values())
  
# Create a for loop through the cat_database use `db_list to produce the results`
    for number in range(len(kitties)):

  # @TODO Use `st.write` to add the objects from the object to the code (hint price and name)
      st.write('Kitty Name: ', db_list[number][0])
      st.write('* Kitty Price: ', db_list[number][1], 'ETH')
      st.write('\n')

################################################################################
# Streamlit Code

# @TODO Create Streamlit application headings using `st.markdown` to explain this app is for buying kitties
st.markdown('# Purchase Cats Now!')

# @TODO: Call the `generate_account` function and save it as a variable  called `account`.
account = generate_account()

# @TODO: Call the `get_balance` function and save it as the variable `ether`
ether = get_balance(account)

# Disply the balance of ether in the account
st.sidebar.markdown("## Your Balance of Ether")
st.sidebar.markdown(ether)
st.sidebar.markdown("---------")


# @TODO: Create a select box to chose a Cat using `st.sidebar.selectbox`
cat = st.sidebar.selectbox('Choose a Kitty: ', kitties)

# @TODO: Create a header using ` st.sidebar.markdown()` to display cat name and price.
st.sidebar.markdown('## Cat Name & Price:')

# Identify the cat for purchase by name
cat_C = cat_database["Cheddar"][0]
cat_J = cat_database["Jennifurr"][0]
cat_M = cat_database["Meowise"][0]

#@TODO: Create a variable called cat_price to retrive the cat price
cat_price_C = cat_database["Cheddar"][1]
cat_price_J = cat_database["Jennifurr"][1]
cat_price_M = cat_database["Meowise"][1]

#@TODO: create an if else statement to check if the selected cat can be purchased
if cat == 'Jennifurr':
  if ether >= cat_price_J: 
    new_balance = ether - cat_price_J

# Write the cats name to the sidebar
    st.sidebar.write("If you buy", cat_J, "for", cat_price_J, "eth, your account balance will be", new_balance, "eth.")
    get_cats()

if cat == 'Cheddar':
  if ether >= cat_price_C: 
    new_balance = ether - cat_price_C

# Write the cats name to the sidebar
    st.sidebar.write("If you buy", cat_C, "for", cat_price_C, "eth, your account balance will be", new_balance, "eth.")
    get_cats()

if cat == 'Meowise':
  if ether >= cat_price_M: 
    new_balance = ether - cat_price_M

# Write the cats name to the sidebar
    st.sidebar.write("If you buy", cat_M, "for", cat_price_M, "eth, your account balance will be", new_balance, "eth.")
    get_cats()

if cat == 'Jennifurr':
  if ether < cat_price_J:
    st.sidebar.write("With a balance of", ether, "eth, you can't buy", cat_J, "for", cat_price_J, "eth." )
    get_cats()

if cat == 'Cheddar':
  if ether < cat_price_C:
    st.sidebar.write("With a balance of", ether, "eth, you can't buy", cat_C, "for", cat_price_C, "eth." )
    get_cats()

if cat == 'Meowise':
  if ether < cat_price_M:
    st.sidebar.write("With a balance of", ether, "eth, you can't buy", cat_M, "for", cat_price_M, "eth." )
    get_cats()

elif cat == None: 
  st.sidebar.write('Please choose a kitty!')