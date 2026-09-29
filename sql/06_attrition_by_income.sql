SELECT
    CASE
        WHEN MonthlyIncome < 3000 THEN '<3000'
        WHEN MonthlyIncome BETWEEN 3000 AND 4999 THEN '3000-4999'
        WHEN MonthlyIncome BETWEEN 5000 AND 7999 THEN '5000-7999'
        WHEN MonthlyIncome BETWEEN 8000 AND 11999 THEN '8000-11999'
        ELSE '12000+'
    END AS income_group,
    Attrition,
    COUNT(*) AS total_employees,
    ROUND(
        COUNT(*) * 100.0 /
        SUM(COUNT(*)) OVER (
            PARTITION BY
            CASE
                WHEN MonthlyIncome < 3000 THEN '<3000'
                WHEN MonthlyIncome BETWEEN 3000 AND 4999 THEN '3000-4999'
                WHEN MonthlyIncome BETWEEN 5000 AND 7999 THEN '5000-7999'
                WHEN MonthlyIncome BETWEEN 8000 AND 11999 THEN '8000-11999'
                ELSE '12000+'
            END
        ),
        2
    ) AS attrition_percentage
FROM hr_employee_attrition
GROUP BY income_group, Attrition
ORDER BY
    CASE income_group
        WHEN '<3000' THEN 1
        WHEN '3000-4999' THEN 2
        WHEN '5000-7999' THEN 3
        WHEN '8000-11999' THEN 4
        WHEN '12000+' THEN 5
    END,
    Attrition;
