SELECT cname, COUNT(*) AS count
 FROM Disaster
 WHERE year > 1970
 GROUP BY cname
 ORDER BY count DESC
--  Answer: Hilo
