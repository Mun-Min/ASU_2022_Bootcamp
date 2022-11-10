import streamlit as st
import pandas as pd

st.write("# Python Web App")

st.write("Hi, this is our first web app in Python! :sunglasses:")

df = pd.DataFrame({'col1': [1, 2], 'col2': [3, 4]})
st.write(df)

input_value = st.text_input("Enter a Message")

if st.button("Display Message"):
    st.write(input_value)
