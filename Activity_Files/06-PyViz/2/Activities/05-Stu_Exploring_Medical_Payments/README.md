# Exploring Medical Payments

Use the Jupyter notebook file in the `Unsolved` folder to write your code. Note that data from `hospital_claims.csv` has already been loaded into the notebook, and three DataFrames have been created:

* `hospital_data` contains all of the information from the CSV file.

* `procedure_638_payments` contains all columns of data with a "DRG Definition" of "638 - DIABETES W CC"

* `average_total_payments_by_state` contains only the "Provider State" and "Average Total Payments" columns from the `procedure_638_payments` DataFrame.

## Instructions

This activity is broken down into three main sections:

1. Explore the average total payments by state

2. Explore the average total payments in California

3. Explore the outliers in the data

In the first two sections, you’ll both numerically and visually aggregate the data from the DataFrame that the starter code supplies.

#### Explore the Average Total Payments by State

In this section, you’ll explore the average total payments by state by numerically and visually aggregating the data.

##### Numerically Aggregate the Data

First, apply grouping and numerical aggregation by completing the following steps:

1. Create a DataFrame called `total_payments_by_state` by grouping the `average_total_payments_by_state` DataFrame by “Provider State”. Then use the `sum` function to aggregate the results.

2. Sort the data by price by using `.sort_values (“Average Total Payments”)` on the DataFrame from Step 1.

3. Display the first five states in the sorted DataFrame. These states have the lowest total payments.

4. Display the state with the highest total payment.

##### Visually Aggregate the Data

Next, use hvPlot to create interactive visualizations that allow you to explore the data. To do so, complete the following steps:

1. Import the hvPlot library for Pandas.

2. Plot the `total_payments_by_state` DataFrame by using the following code:

    ```python
    total_payments_by_state_sorted.hvplot.bar(x="Provider State", y="Average Total Payments")
    ```

3. Use your visualization and apply the pan, zoom, and hover widgets to answer the following questions:

    * Based on your visualization, which state has the highest total payment?

    * Which state has the lowest total payment?

#### Explore the Average Total Payments in California

In the previous section, you found that California has the highest total payments for diabetes care. In this section, you’ll further explore the California prices by using visual and numerical aggregation.

##### Visually Aggregate the Data

First, visually aggregate the data by completing the following steps:

1. Using the `average_total_payments_by_state` DataFrame, create a bar plot, and group the data by provider state via the hvPlot `groupby` parameter. Use the hvPlot widget dropdown menu to select the prices for California.

2. Use your visualization and apply the pan, zoom, and hover widgets to answer the following questions:

    * What patterns do you notice in the data?

    * Do any data points influence the total payments amount?

##### Numerically Aggregate the Data

Next, numerically aggregate the California data by completing the following steps:

1. Create a DataFrame by using the `loc` function and by using the `average_total _payments_by_state` DataFrame filtered only for California (CA). Sort the values by average total payments, and then review both the first five and the last five rows of data.

2. Plot the sorted DataFrame as an hvPlot bar chart.

3. Use your visualization and apply the pan, zoom, and hover widgets to answer the following questions:

    * How many payments appear to be outliers?

    * What’s the approximate value of those payments?

#### Explore the Outliers in the Data

In this section, you’ll use the DataFrame that you generated in your analysis of the California average total payments to explore the outlier payments. Complete the following steps:

1. Use the `describe` function to find the mean value of the average total payments.

2. Use the interactive bar plot (for the sorted values of the California average total payments) to estimate a payment value that you can use to filter out the highest three data spikes.

3. Use `loc` to filter out the three outlier payments from the California average total payments. Then recalculate the summary statistics by using the `describe` function.

4. Review the two sets of summary statistics that you generated in this section and answer the following question.

    * How much do the outliers change the mean value of the California average total payments for diabetes?

---

© 2022 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
