# Bright Motors Sales Analysis

##  Project Overview
This project focuses on performing an end-to-end Exploratory Data Analysis (EDA) on the Bright Motors sales dataset. The goal is to clean, transform, and analyze the data to uncover meaningful insights related to vehicle sales performance, customer behavior, profitability, and regional trends.

## Project Objectives
1. Which car makes and models generate the most revenue ?
2. The relationship between price, mileage, and yearof manufacture .
3. Which regions or locations have the highest salesvolumes ?
4. Emerging trends in customer purchasingpreferences. 
5. Recommendations to increase dealershipprofitability and efficiency.

## Tasks
1.Designed a data flow diagram to illustrate system processes and data movement
2.Planned and structured the project using Miro 
3.Conducted Exploratory Data Analysis (EDA) to understand data patterns, quality, and insights
4.Developed and executed SQL queries for data extraction, transformation, and analysis
5.Created data visualizations using Excel
6.Prepared and delivered a comprehensive project presentation summarizing findings and insights

## Tools used
SQL Coding: Databricks 
Data Visualization:  Microsoft Excel 
Presentation / Reporting: Microsoft PowerPoint 
Project Planning:  Miro 

## 1. Data Flowchart
-Capture car sales data in OLTP system
-Data Engineers/ETL Tools extract data from OLTP system
-Data Engineers/ETL Tools Transform data (clean, remove duplicates, fix missing values, format data)
- Data Engineers/ETL Tools check data quality
-If not clean → go back to Transform
- Data Engineers/ETL Tools Load clean data into data warehouse (OLAP)
- Data Analysts perform data analysis using SQL
- Data Analysts create visualisations using Excel or Power BI
- Data Analysts present insights using PowerPoint
  
## 1.  Exploratory Data Analysis (EDA)

The dataset was thoroughly explored to understand its structure and quality:

- Inspected each column to understand data types and content
- Checked for missing (null) values to identify data quality issues
- Standardized text fields (e.g., converting to lowercase) to remove inconsistencies and duplicates
- Reviewed unique values to detect errors, duplicates, and unusual entries
- Filtered invalid or irrelevant data to improve accuracy
- Analyzed numerical columns using minimum, maximum, and average values to understand distributions
- Created calculated metrics (e.g., percentage-based measures) to generate deeper insights
- Cleaned and formatted date/time data and extracted key components such as year, month, and day
- Added classifications to group data into meaningful categories for easier analysis

---

## 2. Data Preparation & Planning (MIRO Approach)

A structured approach was used to plan and clean the dataset:

- Explored each column to understand structure and potential insights
- Handled missing values and ensured data completeness
- Standardized text fields for consistency
- Used `DISTINCT` to identify unique values, duplicates, and inconsistencies
- Applied filtering techniques (`IN`, `LIKE`, `NOT IN`, `NOT LIKE`) to clean data
- Renamed columns to improve clarity and readability
- Used `CASE` statements to create logical groupings and categories
- Cleaned and structured date fields for time-based analysis (year, month, day extraction)

---

## 3. Data Transformation (SQL Code)

The SQL script performs a full data transformation pipeline:

- Cleans and standardizes manufacturer and model names
- Handles missing and invalid values across multiple columns
- Uses `CASE` statements to create meaningful categories such as:
  - Vehicle age groups
  - Manufacturer origin (e.g., Japanese, American, German)
  - Car types (SUV, Sedan, Truck, etc.)
  - Trim levels and body types
  - Geographic regions
  - Condition and mileage categories
- Derives key business metrics:
  - Total cars sold
  - Total revenue
  - Average selling price
  - Profit margin and profit tiers
- Processes date fields and extracts:
  - Year, month, day, hour
  - Weekday vs weekend classification
  - Quarterly grouping
- Aggregates data using `GROUP BY` to enable structured analysis

---

## 4. Data Visualisation Focus Areas

The analysis explores key business and market trends, including:

- Revenue by manufacturer and car model
- Relationship between price, mileage, and release year
- Regional sales distribution and performance
- Customer preferences (color, transmission, trim levels)
- Purchasing patterns across mileage categories
- Hourly and weekly sales trends
- Profitability across different car models
- Quarterly revenue performance by region

---

## 5. Key Insights

- The business is driven by **high-volume sales of older and high-mileage vehicles**, indicating a focus on affordability.
- Revenue is unevenly distributed, with **certain manufacturers and models dominating profitability**.
- Regional performance varies significantly, showing **dependence on specific geographic markets**.
- Customer preferences differ by region, especially in **color, transmission type, and trim selection**.
- Mileage and vehicle condition strongly influence pricing and purchasing behavior.
- Sales patterns fluctuate across time, suggesting **opportunities for optimized marketing timing**.

Overall, the business shows strong sales performance but relies heavily on specific segments, creating opportunities for diversification and improved profitability.



## 6.  Recommendations

- Balance **volume and profitability** by introducing more mid- to high-value vehicles
- Strengthen high-performing regions and improve weaker ones with targeted strategies
- Align inventory with customer preferences per region (color, trim, transmission)
- Optimize pricing using mileage, condition, and release year
- Use time-based insights to plan promotions during peak buying periods
- Improve product mix by increasing higher-quality (low-mileage, good-condition) vehicles
- Continuously track KPIs like profit margin, model performance, and regional sales

---

##  Overall Goal
To transition from a volume-driven sales approach to a **data-driven, profit-optimized strategy** that improves revenue stability and long-term business growth.

---
