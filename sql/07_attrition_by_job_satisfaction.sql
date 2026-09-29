SELECT
    JobSatisfaction,
    Attrition,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY JobSatisfaction
        ),
        2
    ) AS attrition_percentage
FROM hr_employee_attrition
GROUP BY JobSatisfaction, Attrition
ORDER BY JobSatisfaction, Attrition;
