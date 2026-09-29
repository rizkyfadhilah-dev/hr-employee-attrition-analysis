SELECT
    JobLevel,
    Attrition,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY JobLevel
        ),
        2
    ) AS attrition_percentage
FROM hr_employee_attrition
GROUP BY JobLevel, Attrition
ORDER BY JobLevel, Attrition;
