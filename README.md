#  Hospital Management Data Analysis & Business Intelligence Project

##  Project Overview

This project presents a complete **end-to-end data analytics solution** built using a real-world Hospital Management dataset.  
The objective was to transform raw healthcare operational data into meaningful business insights through structured data processing, relational database modeling, and interactive dashboards.

The project demonstrates a full analytics pipeline:
> **Raw CSV Files → Data Cleaning (Python) → SQL Database (SSMS) → Power BI Dashboards**

Dataset Source:  
🔗 https://www.kaggle.com/datasets/kanakbaghel/hospital-management-dataset/data

---

#  Project Architecture

## 1️⃣ Data Acquisition & Cleaning (Python – Anaconda)

- Imported **5 raw CSV files**.
- Performed data cleaning using:
  - `pandas`
- Handled:
  - Missing values
  - Data type inconsistencies
  - Duplicate records
  - Formatting issues
  - Date conversions
- Exported structured and validated **cleaned CSV files**.

This step ensured high data integrity before database integration.

---

## 2️⃣ Database Design & SQL Implementation (SSMS)

The cleaned files were imported into **Microsoft SQL Server (SSMS)**.

### 🗂 Database Structure (6 Tables)

- Patients
- Doctors
- Appointments
- Treatments
- Financials
- Billing

### 🔎 SQL Work Included:

- Table creation & normalization
- Primary and Foreign Key relationships
- Data validation queries
- Aggregations and KPI calculations
- Analytical joins across multiple tables

The relational schema enabled efficient querying and business logic implementation.

---

## 3️⃣ Business Intelligence & Visualization (Power BI)

The SQL database was connected to **Power BI** for modeling and reporting.

A star-schema-style data model was built for optimized analytics.

##  Developed 5 Interactive Dashboards:

---

### 🟢 1. Overview Dashboard
- Total Patients
- Total Doctors
- Total Appointments
- Total Revenue
- Admission Trends Over Time
- High-level KPIs for management

---

### 🔵 2. Patient Dashboard
- Patient Demographics
- Admission frequency
- Visit patterns
- Age & gender distribution
- Disease prevalence trends

---

### 🟣 3. Doctor Dashboard
- Doctor workload distribution
- Appointments per doctor
- Specialty performance
- Revenue contribution by doctor
- Efficiency indicators

---

### 🟡 4. Treatment Dashboard
- Most common treatments
- Treatment cost analysis
- Frequency by department
- Treatment outcome distribution
- Monthly procedure trends

---

### 🔴 5. Financial & Billing Dashboard
- Total Revenue
- Paid vs Unpaid Amount
- Billing status distribution
- Revenue by treatment type
- Outstanding balances
- Payment trends over time

---

# 🛠 Tools & Technologies Used

| Layer | Technology |
|-------|------------|
| Data Cleaning | Python (Anaconda, Pandas) |
| Database | Microsoft SQL Server |
| Querying | SQL (SSMS) |
| Visualization | Microsoft Power BI |

---

# 📈 Key Achievements

✔ Built a complete end-to-end analytics pipeline  
✔ Designed a relational healthcare database model  
✔ Implemented SQL-based KPI calculations  
✔ Developed 5 professional Power BI dashboards  
✔ Applied real-world business intelligence practices  
✔ Demonstrated data engineering + analytics integration  

---

# 🧠 Business Value

This project simulates a real hospital analytics environment and provides insights that can support:

- Operational decision-making
- Doctor performance monitoring
- Patient trend analysis
- Financial tracking and revenue optimization
- Strategic healthcare planning

---
