



SELECT COUNT(*) cnt_all,
        COUNT(LatestRecordedPopulation) cnt_pop,
        MAX(LatestRecordedPopulation) max_pop,
        MIN(LatestRecordedPopulation) min_pop,
        SUM(LatestRecordedPopulation) sum_pop,
        AVG(LatestRecordedPopulation) avg_pop
        
FROM Application.Cities;

SELECT COUNT(*) cnt_all,
        COUNT(LatestRecordedPopulation) cnt_pop,
        MAX(LatestRecordedPopulation) max_pop,
        MIN(LatestRecordedPopulation) min_pop,
        SUM(LatestRecordedPopulation) sum_pop,
        AVG(LatestRecordedPopulation) avg_pop       
FROM Application.Cities
WHERE LatestRecordedPopulation Is NOT NULL;


SELECT COUNT(*) cnt_all,
        COUNT(LatestRecordedPopulation) cnt_pop,
        MAX(LatestRecordedPopulation) max_pop,
        MIN(LatestRecordedPopulation) min_pop,
        SUM(LatestRecordedPopulation) sum_pop,
        AVG(LatestRecordedPopulation) avg_pop       
FROM Application.Cities
WHERE LatestRecordedPopulation Is NULL;


SELECT COUNT(*) cnt_all,
         COUNT(ISNULL(LatestRecordedPopulation, 0)) AS cnt_pop,
        MAX(LatestRecordedPopulation) max_pop,
        MIN(LatestRecordedPopulation) min_pop,
        SUM(LatestRecordedPopulation) sum_pop,
        AVG(LatestRecordedPopulation) avg_pop       
FROM Application.Cities
WHERE LatestRecordedPopulation Is NULL;



