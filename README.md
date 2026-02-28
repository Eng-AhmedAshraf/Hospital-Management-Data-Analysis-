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
- Billing
- Insurance

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
<img src="https://github.com/Eng-AhmedAshraf/Hospital-Management-Data-Analysis-/blob/main/Project's%20Steps/3%20-%20Power%20BI%20Step/Dashboard%20Photos/1-%20Overview.png" alt="Overview">

---

### 🔵 2. Patient Dashboard
<img src="https://github.com/Eng-AhmedAshraf/Hospital-Management-Data-Analysis-/blob/main/Project's%20Steps/3%20-%20Power%20BI%20Step/Dashboard%20Photos/2-%20Patients.png" alt="Patient">
---

### 🟣 3. Doctor Dashboard
<img src="https://github.com/Eng-AhmedAshraf/Hospital-Management-Data-Analysis-/blob/main/Project's%20Steps/3%20-%20Power%20BI%20Step/Dashboard%20Photos/3-%20Doctors.png" alt="Doctor">

---

### 🟡 4. Treatment Dashboard
<img src="https://github.com/Eng-AhmedAshraf/Hospital-Management-Data-Analysis-/blob/main/Project's%20Steps/3%20-%20Power%20BI%20Step/Dashboard%20Photos/4-%20Treatment.png" alt="Treatment">

---

### 🔴 5. Financial & Billing Dashboard
<img src="https://github.com/Eng-AhmedAshraf/Hospital-Management-Data-Analysis-/blob/main/Project's%20Steps/3%20-%20Power%20BI%20Step/Dashboard%20Photos/5-%20Financial%20%26%20Billing.png" alt="Financial & Billing">
---

# 🛠 Tools & Technologies Used

| Layer | Technology |
|-------|------------|
| Data Cleaning | Python (Anaconda, Pandas) |
| Database | Microsoft SQL Server |
| Querying | SQL (SSMS) |
| Visualization | Microsoft Power BI |

---

#  Key Achievements

✔ Built a complete end-to-end analytics pipeline  
✔ Designed a relational healthcare database model  
✔ Implemented SQL-based KPI calculations  
✔ Developed 5 professional Power BI dashboards  
✔ Applied real-world business intelligence practices  
✔ Demonstrated data engineering + analytics integration  

---

#  Business Value

This project simulates a real hospital analytics environment and provides insights that can support:

- Operational decision-making
- Doctor performance monitoring
- Patient trend analysis
- Financial tracking and revenue optimization
- Strategic healthcare planning

---
