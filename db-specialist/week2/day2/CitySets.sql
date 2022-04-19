USE WideWorldImporters;

/*
    Work with the Application.Cities table.

    1.         
        Write a query that counts the cities (all rows) 
        in the state of Colorado.
        This is the total number of cities you work with. 

        | cnt_city_colorado |
        ---------------------
        */

        SELECT COUNT(*) AS cnt_city_colorado
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado';
        

/*    2.
        Write a query to return all cities from the state of Colorado 
        where the population is known.

        | CityID | CityName | population |
        ----------------------------------

        Write a query to return all cities from the state of Colorado 
        where the population is UNKNOWN.

        | CityID | CityName | population |
        ----------------------------------
        */

        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation IS NULL;

        SELECT CityID,CityName,a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation IS NOT NULL;

     

   /* 3.
        Combine (unify) the known and unknown city query results with the 
        appropriate set operator.
        Which set operator should you use?
        In which query do you have to specify the column alias "population"?

        How many rows did you get?

        */

        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation IS NOT NULL
        UNION ALL
        SELECT CityID,CityName,a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation IS  NULL
        ORDER BY population ASC;
        
    /*4.
        Add ordering to the combined query by population in ascending order.

        Where do you have to add the ordering clause? 
        */



/*

    Remove the known and unknown filters from your queries.
    Leave the Colorado state filter in both queries.

    1. 
        Add a WHERE filter to the first query to return cities where the 
        population > 1000.
        */

        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation > 1000;
/*
    2.
        Add a WHERE filter to the second query to return cities where the 
        population < 5000.
        */
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation < 5000;
/*
    3.
        Use the UNION ALL operator to combine the queries.
        */

        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation > 1000
        UNION ALL
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation < 5000;
        
/*
    4.
        Add ordering to the combined query by population in ascending order.

    Browse the results.
    What do you notice?
    */
    SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation > 1000
        UNION ALL
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation < 5000
        ORDER BY [population]; 
/*
    5.
        Use the UNION operator instead and rerun the combined query.

    What changed and why? 

*/
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation > 1000
        UNION 
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation < 5000
        ORDER BY [population]; 



/*

    Modify your combined query so that you only return the rows that appear 
    in BOTH query results.

    Which set operator should you use?

*/
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation > 1000
        INTERSECT
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation < 5000
        ORDER BY [population]; 

/*
    Modify your combined query so that you only return the rows that appear 
    in the first query results and not in the second.

    Which set operator should you use?
*/
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation > 1000
        EXCEPT
        SELECT CityID,CityName, a.LatestRecordedPopulation AS [population]
        FROM Application.Cities a
        JOIN Application.StateProvinces a1 
        ON a.StateProvinceID = a1.StateProvinceID
        WHERE a1.StateProvinceName = 'Colorado'
        AND a.LatestRecordedPopulation < 5000
        ORDER BY [population]; 


