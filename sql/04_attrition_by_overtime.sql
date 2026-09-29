SELECT
    OverTime,
    Attrition,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY OverTime),
        2
    ) AS attrition_percentage
FROM hr_employee_attrition
GROUP BY OverTime, Attrition
ORDER BY OverTime, Attrition;
