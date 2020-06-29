/*Please add ; after each select statement*/
CREATE PROCEDURE orderOfSuccession()
BEGIN
    select case when gender='F' then CONCAT('Queen', ' ', name) else CONCAT('King', ' ', name)  end name
    FROM Successors
    order by birthday;
END
