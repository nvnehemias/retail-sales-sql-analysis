# Retail Sales SQL Analysis

## Project Overview

This project analyzes transactional retail sales data using PostgreSQL to uncover business insights related to revenue, customer behavior, product performance, and sales trends.

The goal of this project is to demonstrate practical SQL skills used in real-world data analytics workflows, including:
- data cleaning
- exploratory data analysis (EDA)
- business KPI analysis
- window functions
- customer analytics
- time-series analysis

---

## Dataset

Dataset used:
- Online Retail Dataset from the UCI Machine Learning Repository

The dataset contains:
- transaction-level retail sales data
- product information
- customer IDs
- invoice timestamps
- country-level purchase activity

Source:
https://archive.ics.uci.edu/ml/datasets/online+retail

---

## Tools & Technologies

- PostgreSQL
- SQL
- pgAdmin 4
- Git & GitHub
- VS Code
- Python (for CSV conversion)

---

## Data Cleaning

The original dataset was imported as raw text data and cleaned using SQL transformations.

Cleaning steps included:
- removing null customer IDs
- converting text fields into numeric and timestamp formats
- removing invalid quantity and price values
- creating calculated revenue fields