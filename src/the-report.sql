SELECT CASE WHEN G.GRADE >= 8 THEN S.NAME ELSE 'NULL' END AS NAME , G.GRADE , S.MARKS 
FROM STUDENTS S JOIN GRADES G 
ON S.MARKS BETWEEN G.MIN_MARK AND G.MAX_MARK ORDER BY GRADE DESC , CASE WHEN G.GRADE >= 8 THEN NAME END , 
CASE WHEN G.GRADE < 8 THEN S.MARKS END ASC;