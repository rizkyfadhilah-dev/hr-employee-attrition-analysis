# HR Employee Attrition Analysis

Exploratory Data Analysis (EDA) and SQL analysis of employee attrition using Python, Pandas, Matplotlib, and MySQL.

## Project Overview

This project analyzes employee attrition data to understand employee turnover patterns and identify factors associated with employee attrition across different employee characteristics.

The analysis covers overall attrition, department, job role, overtime, age group, monthly income, job satisfaction, job level, years at company, and business travel.

The project combines **SQL-based business analysis** with **Python-based exploratory data analysis and visualization** to demonstrate an end-to-end data analytics workflow.

The analysis was performed using Python in Google Colab, while SQL analysis and data validation were supported by MySQL/phpMyAdmin.

---

## Objectives

The main objectives of this project are:

- Understand the overall employee attrition rate.
- Analyze employee attrition by department.
- Compare attrition across different job roles.
- Analyze attrition based on overtime status.
- Analyze attrition across employee age groups.
- Compare attrition across monthly income groups.
- Analyze the relationship between job satisfaction levels and attrition distribution.
- Compare attrition across different job levels.
- Analyze attrition based on years at the company.
- Compare attrition across business travel categories.
- Perform data quality checks and cleaning.
- Generate visualizations to communicate analytical findings.
- Use SQL to answer practical HR business questions.

---

## Dataset

The dataset contains **1,470 employee records** with **35 original columns**.

After data cleaning, three constant columns were removed, resulting in **32 columns** used for analysis.

### Dataset Summary

| Metric | Value |
|---|---:|
| Total Employees | 1,470 |
| Original Columns | 35 |
| Final Columns | 32 |
| Employees with Attrition = Yes | 237 |
| Employees with Attrition = No | 1,233 |
| Overall Attrition Rate | 16.12% |

---

## Dataset Columns

The cleaned dataset contains the following columns:

| Column | Description |
|---|---|
| Age | Employee age |
| Attrition | Whether the employee left the company |
| BusinessTravel | Employee business travel frequency |
| DailyRate | Daily salary rate |
| Department | Employee department |
| DistanceFromHome | Distance between home and workplace |
| Education | Education level |
| EducationField | Employee education field |
| EmployeeNumber | Unique employee identifier |
| EnvironmentSatisfaction | Satisfaction with the work environment |
| Gender | Employee gender |
| HourlyRate | Hourly salary rate |
| JobInvolvement | Level of employee job involvement |
| JobLevel | Employee job level |
| JobRole | Employee job role |
| JobSatisfaction | Employee job satisfaction level |
| MaritalStatus | Employee marital status |
| MonthlyIncome | Employee monthly income |
| MonthlyRate | Monthly salary rate |
| NumCompaniesWorked | Number of companies previously worked for |
| OverTime | Whether the employee works overtime |
| PercentSalaryHike | Percentage salary increase |
| PerformanceRating | Employee performance rating |
| RelationshipSatisfaction | Satisfaction with workplace relationships |
| StockOptionLevel | Employee stock option level |
| TotalWorkingYears | Total years of professional experience |
| TrainingTimesLastYear | Number of training sessions attended |
| WorkLifeBalance | Work-life balance rating |
| YearsAtCompany | Years spent at the current company |
| YearsInCurrentRole | Years in the current role |
| YearsSinceLastPromotion | Years since the last promotion |
| YearsWithCurrManager | Years working with the current manager |

---

## Data Preparation

The dataset was cleaned and validated before performing the analysis.

The main preparation steps included:

- Inspecting the dataset structure.
- Checking column names and data types.
- Checking unique values for each column.
- Identifying constant columns.
- Checking missing values.
- Checking duplicate rows.
- Removing columns that did not provide analytical variation.
- Preparing the cleaned dataset for SQL and Python analysis.

### Constant Columns

Three columns were identified as constant:

```text
EmployeeCount
Over18
StandardHours
