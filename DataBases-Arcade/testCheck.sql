CREATE PROCEDURE testCheck()
SELECT id, IF (given_answer is not null, if(given_answer=correct_answer,"correct","incorrect"),  "no answer") AS checks
FROM answers
ORDER BY id;
