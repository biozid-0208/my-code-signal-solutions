/*Please add ; after each select statement*/
CREATE PROCEDURE volleyballResults()
BEGIN
    SELECT * FROM results order by wins;
END
