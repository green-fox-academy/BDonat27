SELECT FullName, IsEmployee
FROM Application.People
ORDER BY
    CASE IsEmployee
        WHEN 1 THEN FullName
    END ASC,
    FullName DESC;

