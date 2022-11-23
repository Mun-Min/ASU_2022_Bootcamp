# file path --> Activity_Files/19-Blockchain-Wallets/3/Activities/02-Stu_Automating_Ethereum/Unsolved
# Streamlit Application

# Imports
import streamlit as st
from web3 import Web3

w3 = Web3(Web3.HTTPProvider('http://127.0.0.1:7545'))

# @TODO
# Update the imports for the functions coming from ethereum.py
from ethereum import generate_account
from ethereum import get_balance
from ethereum import send_transaction

################################################################################
# Streamlit Code

# Streamlit application headings
st.markdown("# Automating Ethereum with Streamlit!")

#######################################

# Generate the Ethereum account
account = generate_account()

#######################################

# The Ethereum Account Address
st.text("\n")
st.text("\n")
st.markdown("## Ethereum Account Address:")

# Write the Ethereum account address to the Streamlit page
st.write(account.address)

#######################################

# Display the Etheremum Account balance
st.text("\n")
st.text("\n")
st.markdown("## Ethereum Account Balance:")

# @TODO
# Call the `get_balance` function and write the account balance to the screen
ether_balance = get_balance(account.address) 
st.write("Ether Balance", ether_balance)

#######################################

# An Ethereum Transaction
st.text("\n")
st.text("\n")
st.markdown("## An Ethereum Transaction:")


# @TODO
# Create inputs for the receiver address and ether amount
receiver = st.text_input('Enter receiver address')
ether = st.text_input('Enter amount of ether to be sent')

# @TODO
# Create a button that calls the `send_transaction` function and returns the transaction hash
if st.button('Send Transaction'): 
    transaction_hash = send_transaction(account, receiver, ether)

    st.markdown("## Ethereum Transaction Hash:")

    st.write(transaction_hash)
