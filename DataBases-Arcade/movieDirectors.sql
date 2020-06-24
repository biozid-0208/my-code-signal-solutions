/*Please add ; after each select statement*/
CREATE PROCEDURE movieDirectors()
BEGIN
    SELECT director
    from moviesInfo
    where year > 2000
    GROUP by director
    HAVING sum(oscars) > 2
    ORDER by director;
END
