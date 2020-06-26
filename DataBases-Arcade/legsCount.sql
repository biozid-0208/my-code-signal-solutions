DROP PROCEDURE IF EXISTS legsCount;
CREATE PROCEDURE legsCount()
SELECT sum(case WHEN type = 'human' then 2 else 4 end) as summary_legs
FROM creatures
ORDER BY id;
