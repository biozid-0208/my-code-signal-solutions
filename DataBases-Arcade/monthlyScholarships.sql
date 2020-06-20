/*Please add ; after each select statement*/
CREATE PROCEDURE monthlyScholarships()
BEGIN
    select id, scholarship/12 as scholarship
    from  scholarships
    order by id;
END
