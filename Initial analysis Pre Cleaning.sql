SELECT *
FROM churn_modelling;

-- Gender Percentage
SELECT Gender, 
	COUNT(*) AS Amount,
	SUM(CASE WHEN Exited=1 THEN 1 ELSE 0 END) AS Churn_Amount,
    ROUND(100 * SUM(CASE WHEN Exited=1 THEN 1 ELSE 0 END) / COUNT(*)) AS Churn_Percentage
FROM churn_modelling
GROUP BY Gender
ORDER BY Churn_Percentage;

-- Tenure Percentage
SELECT Tenure,
	COUNT(*) AS Customers,
    SUM(CASE WHEN Exited=1 THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
    100 * SUM(CASE WHEN Exited=1 THEN 1 ELSE 0 END) / COUNT(*)
    ) AS Churn_Percentage
FROM churn_modelling
GROUP BY Tenure
ORDER BY Churn_Percentage Desc;

-- Geography Churn
SELECT Geography, 
COUNT(*) AS Amount,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churn_Amount,
ROUND(
	100 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)
) AS Churn_Percentage
FROM churn_modelling
GROUP BY Geography
ORDER BY Churn_Percentage DESC;

-- Number Of Products Percentage
SELECT NumOfProducts, 
COUNT(*) AS Amount,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churn_Amount,
ROUND(
	100 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)
) AS Churn_Percentage
FROM churn_modelling
GROUP BY NumOfProducts
ORDER BY Churn_Percentage DESC;

-- Credit Card Percentage
SELECT HasCrCard, 
COUNT(*) AS Amount,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churn_Amount,
ROUND(
100 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)
) AS Churn_Percentage
FROM churn_modelling
GROUP BY HasCrCard
ORDER BY Churn_Percentage;

SELECT IsActiveMember,
COUNT(*) AS Amount,
SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS Churn_Amount,
ROUND(
100 * SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)
) AS Churn_Percentage
FROM churn_modelling
GROUP BY IsActiveMember
ORDER BY Churn_Percentage DESC;

-- Exited Averages
SELECT Exited, 
ROUND(AVG(EstimatedSalary)) AS Salary,
ROUND(AVG(Balance)) AS Balance,
ROUND(AVG(CreditScore)) AS Credit_Score
FROM churn_modelling
GROUP BY Exited;

