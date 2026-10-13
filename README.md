# Vehicle Rental Operations Analytics

### KPI Monitoring & Operational Optimization

## About the Project

I worked on this project to understand how vehicle rental operations perform and to identify patterns that could help improve day-to-day fleet management.

I used Python to explore rental data, clean the records, calculate key performance indicators, and understand how rental activity changes throughout the day. I also looked at customer rentals during charging to explore how battery levels relate to customer pickup activity.

The main goal was to turn raw rental data into useful information that could help a business understand its operations and make better decisions.

## What I Wanted to Understand

While working with the data, I focused on a few practical questions:

* When are vehicles rented most frequently?
* Which days have the highest rental activity?
* How much time does an average rental last?
* How much battery is used during a rental?
* What proportion of rentals are related to servicing rather than customers?
* How does customer pickup activity vary across different battery levels?
* Are some vehicles rented more frequently than others?

These questions helped me approach the dataset from a business perspective rather than simply looking at numbers.

## Tools I Used

* **Python:** To analyze the rental data and calculate metrics.
* **Pandas:** To clean the dataset, work with timestamps, and summarize results.
* **NumPy:** For numerical operations.
* **Matplotlib:** To create charts and understand patterns in the data.
* **MySQL:** To store the processed data for further analysis.
* **SQLAlchemy:** To connect Python with MySQL.
* **Jupyter Notebook:** To organize the analysis and document each step.

## Working with the Data

I started by checking the dataset to understand its structure, identify missing values, and look for duplicate records.

The original dataset contained 45,919 rows. After removing 218 duplicate records, I had 45,701 rows to work with.

I then prepared the data for analysis by converting the rental timestamps into datetime format and handling missing values in the charging indicator.

To make the analysis more useful, I created additional columns for rental duration, battery consumption, rental start hour, weekday, and month.

These changes made it easier to compare rental activity across different time periods and investigate operational patterns.

## Key Findings

Here are some of the main results from my analysis:

| Metric                        |                 Result |
| ----------------------------- | ---------------------: |
| Rental records after cleaning |                 45,701 |
| Vehicles in the dataset       |                     52 |
| Vehicle models                |                      1 |
| Average rental duration       |          38.44 minutes |
| Average battery consumption   | 6.98 percentage points |
| Customer rental share         |                 87.44% |
| Service rental share          |                 12.56% |

The figures above describe the records available in the dataset. They should not automatically be interpreted as measures of the entire company's fleet or performance.

## What I Explored

### 1. Rental Activity Throughout the Day

I grouped rentals by their starting hour to see when vehicles were used most frequently.

This helped me understand how demand changes during the day and how hourly rental patterns could be used when planning vehicle availability.

### 2. Rental Activity Across the Week

I compared rental counts from Monday to Sunday.

Looking at weekday patterns helps identify differences in rental activity and provides a starting point for planning fleet operations around customer demand.

### 3. Customer Rentals and Service Rentals

I separated customer rentals from service-related rentals to understand how the two categories were represented in the dataset.

Customer rentals accounted for 87.44% of the records, while service rentals accounted for 12.56%.

This comparison provides a useful overview of how rental activity was distributed between the two categories.

### 4. Customer Pickups and Battery Levels

One part of the project focused on customer pickups during charging.

I grouped starting battery levels into ranges and compared customer pickup counts with the total number of charging-related records in each range.

This helped me explore whether pickup activity varied with battery level.

The results are useful for identifying patterns worth investigating further. However, they do not establish that battery level alone determines customer pickup behavior.

### 5. Comparing Vehicle Activity

I counted the rental records associated with each vehicle and visualized the distribution.

This allowed me to compare recorded activity across the 52 vehicles and identify differences that could be explored in a more detailed utilization analysis.

### 6. Storing the Data in MySQL

After preparing the dataset, I used SQLAlchemy to transfer the processed data into a MySQL database.

This added a database component to the project and made the data available for further SQL-based analysis.

## What Could Be Improved?

Based on this analysis, there are several areas worth exploring further:

* Compare vehicle availability with rental demand during busy periods.
* Investigate why rental activity differs between vehicles.
* Examine whether customer pickup patterns differ across battery levels and times of day.
* Review the relationship between charging activity and vehicle availability.
* Build a dashboard to make the main KPIs easier to monitor.

These are potential next steps rather than confirmed operational problems. Additional data would be needed to evaluate the impact of any changes.

## What I Learned

This project gave me practical experience in working with a rental dataset from beginning to end.

I practiced cleaning data, handling timestamps, creating analytical features, calculating KPIs, exploring patterns through charts, and transferring processed data into MySQL.

It also helped me understand the importance of connecting technical analysis with business questions. A useful analysis should not only explain what the data shows but also identify which questions deserve further investigation.

