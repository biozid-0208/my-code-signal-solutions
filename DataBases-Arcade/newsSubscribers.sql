/*Please add ; after each select statement*/
CREATE PROCEDURE newsSubscribers()
BEGIN
    select * FROM (
                      select distinct(subscriber) FROM full_year f
                      where f.newspaper like '%Daily%'
                      union
                      select distinct(subscriber) FROM  half_year h
                      where  h.newspaper like '%Daily%' ) as t
    order by t.subscriber;
END
