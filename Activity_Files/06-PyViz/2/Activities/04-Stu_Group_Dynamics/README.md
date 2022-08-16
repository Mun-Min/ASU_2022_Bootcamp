# Group Dynamics

The cryptocurrency market has experienced yet another wave of activity. Everyone's discussing Bitcoin and Ethereum. Close friends and family are bombarding you with questions, requests for information, and investing advice. However, it's been two years since you last checked your holdings on Binance, and your knowledge of current cryptocurrency trends is lacking.

It's time for you to reexamine the price dynamics of each cryptocurrency. You need to conduct a price analysis for Bitcoin, Ethereum, Bitcoin Cash, Ripple, and Litecoin to assess the average, high, and low prices for each cryptocurrency. Determine whether the cryptocurrency performance of the past two years warrants future investment.

Use the Jupyter notebook file in the `Unsolved` folder to write your code. The `Resources` folder contains the CSV file that you’ll import. 

## Instructions

1. Import `crypto_data.csv` into a Pandas DataFrame by using `read_csv`. Set the index as `data_date`. Be sure to include the `parse_dates` and `infer_datetime_format` parameters. Review the first five rows of the DataFrame.

2. Drop the `data_time` and `timestamp` columns from the DataFrame. Remove any missing values from the remaining columns. Review the first five rows of the cleaned DataFrame.

3. Group the DataFrame by `cryptocurrency`, and then plot the `data_priceUsd` for each cryptocurrency on a single plot.

4. Calculate the `average` price across two years for each cryptocurrency.

5. Calculate the `max` price across two years for each cryptocurrency.

6. Calculate the `min` price across two years for each cryptocurrency.

7. Answer the following questions in your Jupyter notebook:

    * Which cryptocurrency had the largest swings in prices?

    * Which cryptocurrency do you recommend investing in?

---
© 2022 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.

