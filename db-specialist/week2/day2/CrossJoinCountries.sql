USE WideWorldImporters;

/*

    Modify the below query to do a CROSS JOIN.

    Moreover, this is a special type of join too, a self-join.
    The query joins the Application.Countries table to itself.


    | left_id | left_name | right_id | right_name |
    -----------------------------------------------

    How many rows do you get? Why?

*/
SELECT a1.CountryID AS left_id, a1.CountryName AS left_name, a2.CountryID AS right_id, a2.CountryName AS right_name
FROM Application.Countries a1
CROSS JOIN Application.Countries a2;
