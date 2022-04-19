USE WideWorldImporters;

/*

    Modify the below query to return cities from the states of Arizona, 
    Washington and Utah and also display the name of their states.

    Order the results by State Name in ascending order.


    | CityID | CityName | State Name |
    ----------------------------------

    Hint: the Application.Cities and the Application.StateProvinces tables 
          both have a StateProvinceID column that you should use.

*/
SELECT CityID, CityName, StateProvinceName AS [State Name]
FROM Application.Cities a
     INNER JOIN Application.StateProvinces a1
      ON a.StateProvinceID = a1.StateProvinceID
      WHERE StateProvinceName IN ('Arizona','Washington','Utah')
      ORDER BY StateProvinceName;

