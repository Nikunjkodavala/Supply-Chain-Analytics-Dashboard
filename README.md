# 📊 Supply Chain Analytics Dashboard (Power BI + SQL)

## 🚀 Project Overview

This project analyzes supply chain data to monitor **sales, profit, returns, and delivery performance** using Power BI.
The data is processed using **MySQL (SQL)** and visualized in an interactive dashboard.

---

## 🎯 Objectives

* Track business performance (Sales & Profit)
* Analyze Month-over-Month (MoM) and Year-over-Year (YoY) growth
* Identify high-return categories and regions
* Evaluate delivery efficiency

---

## 🛠 Tools & Technologies

* Power BI (Dashboard & Visualization)
* MySQL (Data Processing)
* SQL (Data Cleaning & Transformation)
* DAX (Measures & Time Intelligence)

---

## 📂 Project Structure

```
Supply-Chain-Analytics-Dashboard/
│
├── dashboard.pbix              # Power BI dashboard file
├── dashboard.png              # Dashboard preview image
├── sample_supply_chain_data.csv  # Sample dataset (for understanding structure)
├── queries.sql                # SQL scripts used for data transformation
└── README.md
```

---

## 📊 Dashboard Features

* KPI Cards: Total Sales, Total Profit, Return Rate, Avg Order Value, Delivery Days
* MoM & YoY Growth Analysis with indicators
* Sales Trend Analysis (Year-wise)
* Category-wise Return Analysis
* Region/State-wise Sales Distribution
* Interactive Filters (Month, Year, Category)

---

## 📈 Key Insights

* Sales show consistent growth from 2014 to 2017
* Profit is increasing but slower than sales (margin pressure)
* Office Supplies category has the highest return contribution
* Western region drives the highest sales
* Average delivery time (~34 days) is relatively high
* Return rate (~8%) indicates moderate product returns

---

## 🧠 How Data is Processed (SQL)

Data is stored in MySQL and transformed using SQL:

* Date conversion (`STR_TO_DATE`)
* Table creation (Orders, Shipping, Customers, etc.)
* Delivery days calculation (`DATEDIFF`)
* Data cleaning and structuring for Power BI

Refer to **queries.sql** for full SQL logic.

---

## 📷 Dashboard Preview

![Dashboard](Supply_Chain_Dashboard.png)

## 💡 Learnings

* Built end-to-end data pipeline (SQL → Power BI)
* Implemented time intelligence (MoM, YoY)
* Designed interactive business dashboard
* Generated actionable insights from data

---

## 📌 Note

* The dataset included is a **sample for demonstration purposes**
* Full dataset can be recreated using SQL scripts

---

## 👨‍💻 Author

Nikunj Kodavala
