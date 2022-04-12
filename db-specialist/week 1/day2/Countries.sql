SELECT Continent, CountryName, LatestRecordedPopulation
FROM Application.Countries
WHERE Continent IN ('Africa','Asia') AND LatestRecordedPopulation > 40000000
ORDER BY LatestRecordedPopulation DESC;


SELECT Continent, IsoAlpha3Code, LatestRecordedPopulation
FROM Application.Countries
WHERE IsoAlpha3Code LIKE 'A%' AND LatestRecordedPopulation BETWEEN 10000000 AND 500000000




