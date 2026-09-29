SELECT
    Department,
    Attrition,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY Department),
        2
    ) AS attrition_percentage
FROM hr_employee_attrition
GROUP BY Department, Attrition
ORDER BY Department, Attrition;
