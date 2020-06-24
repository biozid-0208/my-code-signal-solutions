/*Please add ; after each select statement*/
CREATE PROCEDURE usersByContinent()
BEGIN
    select continent, sum(users) users
    FROM countries
    group by continent
    order by users desc;
END
