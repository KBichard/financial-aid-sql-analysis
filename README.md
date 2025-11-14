Financial Aid SQL Analysis

This project analyzes student financial aid records using SQL to understand remaining balance trends across programs, states, and dependency types (independent vs dependent students).  
This utilizes real data and has been cleaned and anonymized for presentation.

---

Summary  
I used SQL to:

- Identify missing values taken from a raw dataset  
- Analyze remaining balances by state and program  
- Rank programs by highest average student remaining balances  
- Compare remaining balances from independent and dependent students by program  

---

Data Quality Check  
This query counts:

- Total number of rows  
- Number of rows with remaining balance  
- Number of rows missing remaining balance  

**Purpose:** Ensures the dataset is reliable before analysis.

---

Remaining Balance by State + Program  
This query calculates:

- Number of students per state/program  
- Total remaining balance  
- Average remaining balance  
- Rankings by highest average balance  

**Purpose:** Used to see which states/programs show the most financial burden.

---

Highest Remaining Balances by Program  
This query sorts programs by:

- Number of students  
- Average remaining balance  
- Total remaining balance  

**Purpose:** Identifies which programs have the most outstanding debt.

---

##Independent vs Dependent Students  
This query compares:

- Number of independent students  
- Number of dependent students  
- Average remaining balance for each group  

**Purpose:** Shows how dependency status affects financial aid outcomes.

---

Files Included  

- **FinancialAidGitHub.sql** – Contains all SQL queries  
- **dataquality.csv** – Data quality results  
- **rbsstateprog.csv** – Remaining balance by state/program  
- **programrbs.csv** – Remaining balance by program  
- **ind_depprogramrbs.csv** – Independent vs dependent breakdown  

---

