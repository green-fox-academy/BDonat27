SELECT CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation IS NOT NULL;

--Az összes népesség adatott kiirja ami ismert


SELECT CityName, LatestRecordedPopulation AS population
FROM Application.Cities
WHERE LatestRecordedPopulation IS NULL;

--Az összes népesség adatott kiirja ami nem ismert

