# 🐍 Python Analysis – Blinkit Sales Project

## Overview
This folder contains Python scripts and notebooks used for **exploratory data analysis (EDA)**, **data cleaning**, **KPI validation**, and **visualization** in the Blinkit Sales Analysis project.

Python was used to complement SQL analysis and to validate insights before final reporting in Power BI.

---

## Files in This Folder

Blinkit_Analysis.ipynb  
- Jupyter Notebook containing data loading, cleaning, KPI calculations, and visualizations

---

## Libraries Used
The following Python libraries were used:
- pandas – Data loading, cleaning, and transformation
- numpy – Numerical operations
- matplotlib – Data visualization
- seaborn – Statistical and categorical visualizations

---

## Data Loading
Raw data was loaded directly from the CSV file located in the raw-data folder.

Key steps include:
- Reading CSV data into pandas DataFrame
- Inspecting dataset structure and size
- Validating data types and missing values

---

## Data Cleaning
Python was used to:
- Standardize inconsistent values in Item_Fat_Content
- Inspect and handle missing values in Item_Weight
- Ensure data consistency before analysis

---

## KPI Calculations
The following KPIs were calculated using Python:
- Total Sales
- Average Sales
- Number of Items
- Average Rating

KPI results were cross-validated with SQL outputs to ensure accuracy.

---

## Exploratory Data Analysis (EDA)
Python visualizations were created for:
- Sales by Fat Content
- Sales by Item Type
- Fat Content by Outlet Location
- Sales trends by Outlet Establishment Year
- Sales distribution by Outlet Size
- Sales by Outlet Location

---

## Visualization Techniques
The following chart types were used:
- Bar charts
- Pie charts
- Line charts

Visualizations were created to identify trends, patterns, and outliers.

---

## Python Usage in Project
Python served as:
- An EDA and validation layer
- A visualization tool for pattern discovery
- A support layer for Power BI insights

---

## Usage Guidelines
- Run the notebook after placing raw data in the correct path
- Ensure required libraries are installed
- Notebook is intended for analysis and validation, not production deployment

---

## Related Project Components
- Excel – Initial exploration and KPI validation
- SQL – Data cleaning, KPI calculations, aggregations
- Power BI – Interactive dashboard and business reporting

