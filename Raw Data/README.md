# Raw Data Folder – Blinkit Sales Analysis

## Overview
This folder contains the original raw datasets, KPI reference presentation, and Excel source files used in the Blinkit Sales Analysis project.

All files are kept in their original, unprocessed form and act as the base input layer for analysis performed using Excel, SQL, Python, and Power BI.

---

## Files in This Folder

BlinkIT_data.csv  
- Primary raw transactional dataset used across all tools

BlinkIT Grocery Data.xlsx  
- Excel source file used for data exploration, validation, and pivot analysis

Blinkit Analysis.pptx  
- KPI and business requirement presentation defining analytical scope

---

## Dataset Description
Each row in the dataset represents a single product-level transaction across Blinkit outlets.

Key columns include:
- Item_Identifier – Unique product identifier
- Item_Type – Product category
- Item_Fat_Content – Fat classification (Low Fat, Regular)
- Item_Visibility – Product visibility score
- Item_Weight – Weight of the item
- Outlet_Identifier – Outlet ID
- Outlet_Establishment_Year – Year the outlet was established
- Outlet_Size – Size of the outlet
- Outlet_Location_Type – Location tier (Tier 1, Tier 2, Tier 3)
- Outlet_Type – Type of outlet
- Sales – Item-level sales value
- Rating – Customer rating

---

## KPI and Business Requirements
The KPI presentation defines:
- Business objectives
- Core KPIs:
  - Total Sales
  - Average Sales
  - Number of Items
  - Average Rating
- Analytical requirements such as:
  - Sales by Fat Content
  - Sales by Item Type
  - Outlet-wise performance
  - Establishment-year sales trends

This document served as the functional specification for SQL queries, Python analysis, and Power BI dashboard development.

---

## Data Characteristics
- Rows: 8,523
- Columns: 12
- Format: CSV, XLSX, PPTX
- Granularity: Item-level transactions

---

## Data Quality Notes
- Inconsistent values in Item_Fat_Content (LF, low fat, reg)
- Missing values in Item_Weight
- No transformations applied in this folder

All data cleaning and standardization are handled in SQL and Python.

---

## Usage Guidelines
- Treat all files as read-only
- Do not modify raw datasets
- Use cleaned or transformed datasets for analysis and reporting

---

## Related Project Components
- Excel – Initial exploration, validation, pivot analysis and dashboard 
- SQL – Data cleaning, KPI calculations, aggregations
- Python – Exploratory data analysis and visualization
- Power BI – Interactive dashboard and reporting


