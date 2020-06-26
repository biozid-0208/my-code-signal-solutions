/*Please add ; after each select statement*/
CREATE PROCEDURE combinationLock()
BEGIN
    select Round(EXP(SUM(LOG(Length(characters))))) combinations
    from discs;
END
