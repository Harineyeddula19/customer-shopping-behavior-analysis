# Customer Shopping Behavior Analysis

An end-to-end data analytics project analyzing customer shopping behavior, sales performance, customer characteristics, and product performance using Excel, Python, SQL, and Power BI.

## Project Overview

This project analyzes customer shopping behavior to understand sales performance, customer characteristics, purchasing patterns, and product performance.

The project follows an end-to-end data analytics workflow using **Excel, Python, SQL, and Power BI**, from initial data inspection and preparation to business analysis and interactive dashboard development.

---

## Objective

The main objective of this project is to analyze customer shopping data and identify useful patterns related to:

- Revenue and purchase performance
- Customer demographics
- Customer segments
- Purchase frequency
- Product and category performance
- Payment methods
- Shipping preferences
- Discount behavior
- Product size and color
- Location-based revenue

---

## Dataset


- **Records:** 3,900
- **Attributes:** 18
- **Domain:** Customer Shopping Behavior
- **Source:** [Kaggle – Customer Shopping Behavior Dataset](https://www.kaggle.com/datasets/ayeshasiddiqa123/customer-shopping-behavior-dataset)

The dataset contains customer, product, purchase, and transaction-related information used to analyze shopping behavior and sales performance.

---

## Tools Used

| Tool | Purpose |
| --- | --- |
| **Excel** | Initial data inspection and validation |
| **Python** | Data cleaning and exploratory data analysis |
| **SQL** | Data querying and business analysis |
| **Power BI** | Interactive dashboard development and visualization |
| **DAX** | KPI and measure calculations in Power BI |

---

## Project Workflow

**Excel → Python → SQL → Power BI**

## Repository Structure

```text
customer-shopping-behavior-analysis/
│
├── README.md
│
├── data/
│   └── customer_shopping_behavior_original.csv
│
├── excel/
│   └── customer_shopping_behavior_analysis.xlsx
│
├── python/
│   └── Customer_Shopping_Behavior_Analysis.ipynb
│
├── sql/
│   └── customer_shopping_analysis.sql
│
├── powerbi/
│   └── Customer_Shopping_Behavior_Analysis.pbix
│
├── dashboard/
│   ├── Customer Analysis.jpg
│   ├── Executive Dashboard.jpg
│   ├── Executive Overview.jpg
│   └── Product & Sales Analysis.jpg
│
└── documentation/
    └── Customer_Shopping_Behavior_Analysis_Documentation.pdf
```



### 1. Excel – Initial Data Inspection

The dataset was initially reviewed in Excel to understand its structure and perform basic validation.

Activities included:

- Reviewing the dataset structure
- Checking column names
- Reviewing data types
- Checking missing or blank values
- Inspecting categorical fields
- Reviewing important analytical columns

### 2. Python – Data Preparation & Exploratory Analysis

Python was used for data preparation and exploratory analysis.

The analysis focused on:

- Understanding the dataset structure
- Checking data quality
- Exploring customer behavior
- Examining purchasing patterns
- Analyzing revenue across different dimensions
- Identifying trends and patterns for further analysis

### 3. SQL – Business Analysis

SQL was used to query the prepared dataset and perform business-oriented analysis.

Analysis was performed across dimensions including:

- Category
- Gender
- Age Group
- Customer Segment
- Purchase Frequency
- Season
- Payment Method
- Shipping Type
- Discount Status
- Location
- Size
- Color
- Product

SQL was used to compare revenue, customer behavior, product performance, and purchasing patterns.

### 4. Power BI – Dashboard Development

Power BI was used to transform the analysis into an interactive business intelligence dashboard.

The report includes:

- KPI cards
- Bar charts
- Donut charts
- Slicers
- Revenue analysis
- Customer analysis
- Product analysis
- Sales analysis
- Interactive filtering

The final Power BI report contains **4 pages**.

---

## DAX Measures

Six DAX measures were created for the Power BI dashboard.

### Average Age

```DAX
Average Age =
AVERAGE('Customer Shopping'[Age])
```

### Average Purchase

```DAX
Average Purchase =
AVERAGE('Customer Shopping'[Purchase Amount (USD)])
```

### Average Rating

```DAX
Average Rating =
AVERAGE('Customer Shopping'[Review Rating])
```

### Total Customers

```DAX
Total Customers =
DISTINCTCOUNT('Customer Shopping'[Customer ID])
```

### Total Purchases

```DAX
Total Purchases =
COUNTROWS('Customer Shopping')
```

### Total Revenue

```DAX
Total Revenue =
SUM('Customer Shopping'[Purchase Amount (USD)])
```

---

## Power BI Dashboard

The final dashboard consists of four pages.


### Dashboard Preview

#### Executive Overview

![Executive Overview](dashboard/Executive%20Overview.jpg)

#### Customer Analysis

![Customer Analysis](dashboard/Customer%20Analysis.jpg)

#### Product & Sales Analysis

![Product & Sales Analysis](dashboard/Product%20%26%20Sales%20Analysis.jpg)

#### Executive Dashboard

![Executive Dashboard](dashboard/Executive%20Dashboard.jpg)



### Page 1 – Executive Overview

Provides a high-level view of sales and customer insights.

Key visuals include:

- Total Revenue
- Total Purchases
- Average Purchase
- Average Rating
- Total Customers
- Revenue by Category
- Revenue by Age Group
- Revenue by Gender
- Revenue by Purchase Frequency
- Revenue by Customer Segment

Interactive slicers were added for Category, Gender, Age Group, and Customer Segment.

### Page 2 – Customer Analysis

Focuses on customer demographics, segmentation, and purchasing behavior.

Key visuals include:

- Total Customers
- Average Age
- Average Purchase
- Average Rating
- Customer Count by Age Group
- Customer Subscription Status
- Customers by Purchase Frequency
- Customer Distribution by Gender
- Customers by Segment
- Average Purchase by Customer Segment

### Page 3 – Product & Sales Analysis

Focuses on product performance and sales-related factors.

Key visuals include:

- Total Revenue
- Total Purchases
- Average Purchase
- Average Rating
- Top 10 Products by Revenue
- Top 10 Locations by Revenue
- Revenue by Payment Method
- Revenue by Discount Status
- Revenue by Season
- Revenue by Shipping Type
- Revenue by Size
- Top 10 Colors by Revenue

### Page 4 – Executive Dashboard

A consolidated executive-level view combining key sales, customer, and product insights.

It includes:

- KPI cards
- Interactive slicers
- Revenue by Category
- Revenue by Season
- Top 10 Products by Revenue
- Revenue by Gender
- Revenue by Age Group
- Revenue by Customer Segment

---

## Key Business Insights

The analysis produced the following major findings:

- Total revenue was approximately **$233.08K** across **3,900 purchase records**.
- Average purchase amount was approximately **$59.76**.
- Average customer review rating was **3.75 out of 5**.
- **Clothing** generated the highest category revenue at approximately **$104K**.
- **Accessories** generated approximately **$74K** in revenue.
- The **40–59 age group** generated the highest revenue among the displayed age groups at approximately **$90K**.
- Male customers generated approximately **$158K**, compared with approximately **$75K** from female customers.
- The **Occasional** customer segment generated approximately **$93K**, followed by the **Regular** segment at approximately **$87K**.
- Revenue remained relatively consistent across the four seasons, with Fall at approximately **$60K** and Summer at approximately **$56K**.
- **Medium (M)** products contributed the highest revenue by size at approximately **$105.17K**.

These findings help provide a clearer view of customer purchasing behavior, product performance, and revenue distribution.

---

## Dashboard Interactivity

The Power BI report includes interactive slicers that allow users to filter and compare the analysis across different customer groups.

The slicers were tested across the dashboard pages to ensure that the report remained interactive and useful for analysis.

---

## Project Outcome

The project resulted in a **4-page interactive Power BI dashboard** combining customer, product, and sales analysis.

The complete workflow demonstrates how customer shopping data can be:

**Inspected → Prepared → Analyzed → Queried → Visualized → Converted into Business Insights**

---

## Skills Demonstrated

- Excel data inspection and validation
- Python data analysis
- Exploratory Data Analysis
- SQL querying
- Business analysis
- Power BI dashboard development
- DAX measures
- Data visualization
- KPI development
- Customer segmentation
- Sales and revenue analysis
- Data storytelling

---

## Limitations

- The analysis is based on the available customer shopping dataset.
- The project focuses on descriptive and diagnostic analysis.
- Predictive modeling, forecasting, and machine learning were not included.

---

## Future Enhancements

Possible future improvements include:

- Adding detailed time-based trend analysis
- Adding additional customer behavior metrics
- Creating advanced drill-through analysis
- Adding forecasting or predictive analysis
- Connecting the dashboard to a live or regularly refreshed data source

---

## Documentation

Detailed project documentation covering the complete workflow, analysis, DAX measures, dashboard development, insights, recommendations, limitations, and project learnings is included in the repository.

---


