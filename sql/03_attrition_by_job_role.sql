SELECT
    JobRole,
    Attrition,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (PARTITION BY JobRole),
        2
    ) AS attrition_percentage
FROM hr_employee_attrition
GROUP BY JobRole, Attrition
ORDER BY JobRole, Attrition;
