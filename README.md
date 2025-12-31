# SQL Analysis – Blinkit Sales Project

## Overview
This folder contains all SQL scripts used in the Blinkit Sales Analysis project.  
SQL was used as the **core analytical layer** for data cleaning, KPI calculations, aggregations, and advanced analytical queries.

The outputs from these queries were later validated in Python and visualized in Power BI.

---

## Files in This Folder

BlinkIt_Analysis.sql  
- Main SQL script containing data cleaning, KPI calculations, and analytical queries

SQL.txt  
- Reference SQL queries used for testing and validation

---

## Database Setup
The analysis was performed using a relational database setup.

Key steps include:
- Database creation
- Loading raw Blinkit sales data into tables
- Executing analytical queries for business insights

---

## Data Cleaning
SQL was used to standardize inconsistent categorical values.

Examples:
- Normalized Item_Fat_Content values (LF, low fat, reg → Low Fat / Regular)
- Ensured consistent formatting for analysis

---

## KPI Calculations
The following KPIs were calculated using SQL:
- Total Sales
- Average Sales
- Number of Items
- Average Rating

KPIs were computed using aggregation functions such as SUM, AVG, and COUNT.

---

## Analytical Queries
SQL queries were written to analyze:
- Sales by Fat Content
- Sales by Item Type
- Sales by Outlet Location
- Sales by Outlet Size (with percentage contribution)
- Sales trends by Outlet Establishment Year
- Outlet Type performance metrics

Advanced SQL techniques used:
- GROUP BY
- CASE statements
- CAST for formatting
- Window functions
- PIVOT tables

---

## SQL Usage in Project
SQL served as:
- The primary data cleaning layer
- The main source for KPI calculations
- A validation layer for Power BI and Python outputs

---

## Usage Guidelines
- Run scripts after loading raw data into the database
- Queries are written for analytical and reporting purposes
- Results can be exported for use in Power BI or Python

---

## Related Project Components
- Excel – Initial data exploration and validation
- Python – Exploratory data analysis and visualization
- Power BI – Interactive dashboard and reporting

