WITH eu_countries AS
(
    SELECT *
    FROM Application.Countries
    WHERE Continent = 'Europe'
)
SELECT CountryName
FROM eu_countries;