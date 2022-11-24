# Imports
import os
from dotenv import load_dotenv
load_dotenv()
from bip44 import Wallet
from web3 import Account, Web3
from web3.gas_strategies.time_based import medium_gas_price_strategy

w3 = Web3(Web3.HTTPProvider('http://127.0.0.1:7545'))


# Wallet functionality

#@TODO create a function called generate account do not forget to add each of the following steps

def generate_account():
    """Create a digital wallet and Ethereum account from a mnemonic seed phrase."""
    # Fetch mnemonic from environment variable.
    mnemonic = os.getenv('MNEMONIC')

    # Create Wallet Object
    wallet = Wallet(mnemonic)

    # Derive Ethereum Private Key
    private, public = wallet.derive_account('eth')

    # Convert private key into an Ethereum account
    account = Account.privateKeyToAccount(private)

    account_address = account.address 
     
    print(account_address)
    
    return account_address
    
#@TODO create a function called generate account do not forget to add each of the following steps
def get_balance(account_address):
    """Using an Ethereum account address access the balance of Ether"""
    # Get balance of address in Wei
    wei_balance = w3.eth.get_balance(account_address)

    # Convert Wei value to ether
    ether = w3.fromWei(wei_balance, unit = 'ether')
    
    # Return the value in ether
    return ether

