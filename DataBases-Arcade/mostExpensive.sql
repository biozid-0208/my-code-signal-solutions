/*Please add ; after each select statement*/
CREATE PROCEDURE mostExpensive()
BEGIN
    SELECT name FROM Products ORDER BY price * quantity DESC, name ASC limit 1;
END
