/*Please add ; after each select statement*/
CREATE PROCEDURE suspectsInvestigation2()
BEGIN
    select id, name, surname
    from Suspect
    where name not like 'B%' or surname not rlike 'Gre.n' or height <= 170;
END
