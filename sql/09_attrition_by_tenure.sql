SELECT
    CASE
        WHEN YearsAtCompany < 2 THEN '<2 years'
        WHEN YearsAtCompany BETWEEN 2 AND 4 THEN '2-4 years'
        WHEN YearsAtCompany BETWEEN 5 AND 9 THEN '5-9 years'
        WHEN YearsAtCompany BETWEEN 10 AND 14 THEN '10-14 years'
        ELSE '15+ years'
    END AS tenure_group,
    Attrition,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY
            CASE
                WHEN YearsAtCompany < 2 THEN '<2 years'
                WHEN YearsAtCompany BETWEEN 2 AND 4 THEN '2-4 years'
                WHEN YearsAtCompany BETWEEN 5 AND 9 THEN '5-9 years'
                WHEN YearsAtCompany BETWEEN 10 AND 14 THEN '10-14 years'
                ELSE '15+ years'
            END
        ),
        2
    ) AS attrition_percentage
FROM hr_employee_attrition
GROUP BY tenure_group, Attrition
ORDER BY
    CASE tenure_group
        WHEN '<2 years' THEN 1
        WHEN '2-4 years' THEN 2
        WHEN '5-9 years' THEN 3
        WHEN '10-14 years' THEN 4
        WHEN '15+ years' THEN 5
    END,
    Attrition;
