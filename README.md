# HR Employee Attrition Analysis

An end-to-end **HR Employee Attrition Analysis** project using **Python, Pandas, Matplotlib, and SQL/MySQL** to explore employee turnover patterns and extract business insights from employee data.

The project demonstrates a complete data analytics workflow:

**Data Cleaning → Data Quality Check → Exploratory Data Analysis → SQL Analysis → Data Visualization → Business Insights**

---

## Project Overview

Employee attrition is an important HR business problem because employee turnover can affect workforce stability, recruitment needs, and organizational continuity.

This project analyzes employee data to identify patterns associated with employee attrition across several employee characteristics, including:

- Department
- Job Role
- Overtime
- Age Group
- Monthly Income
- Job Satisfaction
- Job Level
- Years at Company
- Business Travel

The analysis combines **Python-based exploratory analysis** and **SQL-based business analysis**, supported by visualizations to communicate the results.

---

# Dataset

The dataset contains:

- **1,470 employee records**
- **35 original columns**
- **32 columns after data cleaning**
- **237 employees with Attrition = Yes**
- **1,233 employees with Attrition = No**
- **16.12% overall attrition rate**

## Data Quality

Initial data quality checks were performed on:

- Missing values
- Duplicate rows
- Data types
- Unique values
- Constant columns

### Cleaning Results

Three constant columns were identified and removed:

```text
EmployeeCount
Over18
StandardHours
