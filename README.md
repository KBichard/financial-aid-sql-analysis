Financial Aid SQL Analysis
This project analyzes student financial aid records using SQL to understand remaining balance trends across programs, states, and dependency types (independent vs dependent students). This utilizes real data and has been cleaned and anonymized for presentation.

Summary
I used SQL to identify missing values taken from a raw dataset.
SQL used to analyze remaining balances by state and program.
Programs were ranked by highest average student remaining balances.
Remaining balances from independent and dependent students were compared by program.

1. Data Quality Check
This query counts:
Total number of rows
Number of rows with remaining balance
Number of rows missing remaining balance
This ensures the dataset is reliable before analysis.

3. Remaining Balance by State + Program
This query calculates:
Number of students per state/program
Total remaining balance
Average remaining balance
Rankings by highest average balance
Used to see which states/programs show the most financial burden.

3. Highest Remaining Balances by Program
This query sorts programs by:
Number of students
Average remaining balance
Total remaining balance
Used to identify which programs have the most outstanding debt.

4. Independent vs Dependent Students
This query compares:
Number of independent students
Number of dependent students
Average remaining balance for each group
Helpful for seeing how dependency status affects financial aid outcomes.

Files
FinancialAidGitHub.sql - Contains all SQL queries
dataquality.csv - Data quality results
rbsstateprog.csv - Remaining balance by state/program
programrbs.csv - Remaining balance by program
ind_depprogramrbs.csv - Independent vs dependent breakdown
