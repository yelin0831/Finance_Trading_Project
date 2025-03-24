USE bank_churn;

SELECT Exited, COUNT(*) AS CustomerCount FROM bank_customers GROUP BY Exited;

SELECT Gender, COUNT(*) AS ChurnCustomers
FROM bank_customers
WHERE Exited = 1
GROUP BY Gender;

SELECT Geography,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND((SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ChurnRate
FROM bank_customers
GROUP BY Geography
ORDER BY ChurnRate DESC;


SELECT AVG(CreditScore) AS AvgCreditScore 
FROM bank_customers;

SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 30 THEN '18-30'
        WHEN Age BETWEEN 31 AND 45 THEN '31-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+' 
    END AS AgeGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND((SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ChurnRate
FROM bank_customers
GROUP BY AgeGroup
ORDER BY ChurnRate DESC;


SELECT 
    CASE 
        WHEN Age BETWEEN 18 AND 30 THEN '18-30'
        WHEN Age BETWEEN 31 AND 45 THEN '31-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+' 
    END AS AgeGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND((SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ChurnRate
FROM bank_customers
GROUP BY AgeGroup
ORDER BY ChurnRate DESC;

SELECT 
    CASE 
        WHEN CreditScore BETWEEN 300 AND 500 THEN 'Low'
        WHEN CreditScore BETWEEN 501 AND 700 THEN 'Medium'
        ELSE 'High'
    END AS CreditScoreGroup,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND((SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ChurnRate
FROM bank_customers
GROUP BY CreditScoreGroup
ORDER BY ChurnRate DESC;

SELECT 
    Tenure AS AccountYears,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND((SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ChurnRate
FROM bank_customers
GROUP BY Tenure
ORDER BY ChurnRate DESC;

SELECT 
    HasCrCard AS CreditCardHolder,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND((SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ChurnRate
FROM bank_customers
GROUP BY HasCrCard;

SELECT 
    IsActiveMember AS ActiveStatus,
    COUNT(*) AS TotalCustomers,
    SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) AS ChurnedCustomers,
    ROUND((SUM(CASE WHEN Exited = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 2) AS ChurnRate
FROM bank_customers
GROUP BY IsActiveMember;

