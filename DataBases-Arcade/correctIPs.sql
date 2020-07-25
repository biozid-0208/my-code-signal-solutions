CREATE PROCEDURE suspectsInvestigation()
BEGIN
    select id, name, surname
    from Suspect
    where name like 'b%' and surname rlike 'gre.n' and height <= 170;
END
