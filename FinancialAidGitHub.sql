-- Data quality checking for Nulls in rbs
SELECT 
COUNT(*) AS TotalRows,
COUNT(RBS) AS RowsWithRemainingBalance,
COUNT(*) - COUNT(RBS) AS RowsMissingRemainingBalance
FROM dbo.FinancialAidData;

-- sum and average of remaining balances listed by State and Program
SELECT 
State,
Program,
COUNT(*)AS NumStudents,
SUM(RBS)AS TotalRemainingBalance,
AVG(RBS)AS AvgRemainingBalance
FROM dbo.FinancialAidData
WHERE RBS IS NOT NULL
GROUP BY State, Program
ORDER BY State, AvgRemainingBalance DESC;

-- Highest remaining balances of students by program descending order. * are completer programs.
SELECT 
Program,
COUNT(*) AS NumStudents,
AVG(RBS) AS AvgRemainingBalance,
SUM(RBS) AS TotalRemainingBalance
FROM dbo.FinancialAidData
WHERE RBS IS NOT NULL
GROUP BY Program
ORDER BY AvgRemainingBalance DESC;

-- Average remaining balances between dependent and independent students per program
SELECT 
Program,
Ind_Dep,
COUNT(*) AS NumStudents,
AVG(RBS) AS AvgRemainingBalance
FROM dbo.FinancialAidData
WHERE RBS IS NOT NULL
GROUP BY Program, Ind_Dep
ORDER BY Program, Ind_Dep;
