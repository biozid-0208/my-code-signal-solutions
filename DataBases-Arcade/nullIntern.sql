/*Please add ; after each select statement*/
CREATE PROCEDURE nullIntern()
BEGIN
    select count(*) number_of_nulls
    from departments
    where UPPER(TRIM(description)) = 'NULL'
       or TRIM(description) = '-'
       or description is NULL
       or UPPER(TRIM(description)) = 'NIL';
END
