# Storytelling with Custom Visualizations

You’re a data analyst working at a real-estate firm in Arlington, Virginia. The management is concerned about the trend of commission dollars generated over the first few months of the year. They’ve requested some insight into the state of housing sales in Arlington, Virginia, from January to March 2019.

You’ve been provided with a dataset and a basic plot that illustrates information about the real-estate market in Arlington. Your task is to craft a dynamic visualization&mdash;using the hvPlot formatting and styling tools&mdash;that helps tell the story of the state of the housing market during the first three months of 2019. And you don’t have much time&mdash;a management meeting will take place in a couple of hours!

## Instructions

Use the Jupyter notebook file in the `Unsolved` folder to write your code. The `Resources` folder contains the CSV file that you’ll import.

1. Review the code to import the required libraries and to generate the DataFrame that you’ll use for your story and visualization. You’ll work with the `average_sales_per_date_2019` DataFrame, which consists of the **average** home sales per day for the first three months of the year.

2. Use the `hvplot` function to generate a default line plot.

3. To observe the data from a different perspective, plot a bar chart by using the `hvplot` function. Assign values to the x- and y-axes by using the `hvplot.bar(x='saleDate', y='saleAmt')` syntax.

4. Using the code from the previous plot, add the `rot` parameter to rotate the x-axis labels by 90 degrees. Then create appropriate labels for the x- and y-axes: `xlabel="Sale Date"` and `ylabel="Average Sale Amount"`.

5. Using the code from the previous plot, apply the `opts.(yformatter)` option to redisplay the y-axis labels as whole numbers (with zero decimal places). Given the values of the average home sales, you don’t need decimal places for this visualization.

6. Using the code from the previous plot, add the `title` parameter to give the visualization a descriptive title.

7. Using the code from the previous plot, add the `invert_axes` option to invert the x- and y-axes.

    >**Hint** You need to adjust the values of the x- and y-axes labels and change `yformatter` to `xformatter` to accommodate the axes inversion.

8. Using the code from the previous plot, add a dynamic visual element to the plot by incorporating the `hover-color` parameter and assigning it a value of `"orange"`.

9. Based on your enhanced visualization, compose your version of the data story for the trend of real-estate commissions over the first three months of 2019.


---

© 2022 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
