/*Please add ; after each select statement*/
CREATE PROCEDURE countriesInfo()
BEGIN
    select count(name) number, AVG(population) average, sum(population) total
    from countries;
END
