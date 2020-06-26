/*Please add ; after each select statement*/
CREATE PROCEDURE marketReport()
BEGIN
    WITH cte_name as (
        select country, COUNT(competitor) competitors
        from foreignCompetitors
        GROUP by country order by country )
    SELECT * FROM cte_name
    UNION
    SELECT 'Total:', sum(competitors) from cte_name
    ;
END
