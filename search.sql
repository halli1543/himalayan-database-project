-- 1 provide a query showing info about annapurna 1
SELECT * 
FROM peaks 
WHERE "PEAKID,C,4" = 'ANN1'
-- 2 provide a query showing all peaks above 8000 meters
SELECT * 
FROM peaks 
WHERE "HEIGHTM,N,4,0" > 8000  
-- 3 provide a query showing all expeditions on annapurna 2 
SELECT * 
FROM exped 
WHERE "PEAKID,C,4" = 'ANN2'
-- 4 provide a query showing sponsors
SELECT "YEAR,C,4", "SPONSOR,C,70", COUNT(*) 
FROM exped 
GROUP BY "SPONSOR,C,70"
LIMIT 10;
-- 5 provide a query showing the number of expeditions bewtween 1950 and 1960
SELECT COUNT(*) 
FROM exped 
WHERE "YEAR,C,4" BETWEEN '1950' AND '1960' 
-- 6 provide a query showing what countries have climbed or tried to a mountain in the himalayas
SELECT "NATION,C,20", COUNT(*) 
FROM exped 
GROUP BY "NATION,C,20" 
ORDER BY COUNT(*) DESC
-- 7 provide a query 