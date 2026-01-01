# 🗄️ SQL Analysis – Blinkit Sales Project

## 📌 Overview
This folder contains SQL scripts used for data cleaning, transformation, aggregation, and KPI computation in the Blinkit Sales Analysis project.

SQL serves as the core data processing layer, transforming raw transactional data into clean, structured, and analysis-ready datasets that are later validated using Python and visualized in Power BI.

---

## 📁 Files in This Folder

- **BlinkIt_Analysis.sql**  
  Contains all SQL queries related to:
  - Data exploration
  - Data cleaning and standardization
  - KPI calculations
  - Aggregations and business analysis

---

## 🗂️ Database Setup
The analysis was performed using a relational database.

Key steps:
- Created a dedicated database for the project
- Loaded raw Blinkit sales data into a base table
- Verified schema, data types, and row counts before analysis

---

## 🧹 Data Cleaning & Standardization
SQL was used to clean and standardize raw data, including:
- Normalizing inconsistent values in `Item_Fat_Content`
  - `LF`, `low fat` → `Low Fat`
  - `reg` → `Regular`
- Validating missing and null values
- Ensuring consistent categorical values across dimensions

This ensured accurate and reliable KPI calculations.

---

## 📊 KPI Calculations
The following core KPIs were calculated using SQL:
- **Total Sales**
- **Total Sales (in Millions)**
- **Average Sales**
- **Number of Items Sold**
- **Average Customer Rating**

All KPIs were cross-validated with Excel and Python outputs.

---

## 📈 Analysis Performed
SQL queries were written to analyze:

### Sales Performance
- Sales by Item Fat Content
- Sales by Item Type
- Sales by Outlet Location
- Sales by Outlet Size
- Sales by Outlet Type
- Sales by Outlet Establishment Year

### Comparative Analysis
- Fat Content vs Outlet Location (using PIVOT tables)
- Outlet-wise KPI comparison

### Trend & Distribution Analysis
- Sales trends by Outlet Establishment Year
- Percentage contribution of sales by Outlet Size

---

## 🔄 Role of SQL in the Project
SQL functioned as:
- The primary data transformation layer
- The single source of truth for KPI logic
- The foundation for Python analysis and Power BI dashboards

---

## ▶️ Usage Guidelines
- Execute scripts sequentially
- Do not modify raw source data
- Use query outputs for validation and reporting

---

## 🔗 Related Project Components
- **Raw Data** – Original CSV and Excel source files
- **Excel** – Initial exploration and KPI validation
- **Python** – Exploratory data analysis and validation
- **Power BI** – Interactive dashboard and reporting
