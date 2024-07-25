
SELECT 	
sex,
count(*)
FROM Clusters 
GROUP BY sex 
ORDER BY COUNT(*) DESC ; 


SELECT education, count(*) AS cnt
FROM Clusters
GROUP by education
order by cnt DESC;

/*
Теперь необходимо сравнить распределение по полу
и образованию (отдельно) для клиентов и не клиентов банка.
Продумать, какая сортировка будет оптимальной.
*/
SELECT sex, is_client, count(*) AS cnt
FROM Clusters
GROUP by sex, is_client
order by sex, is_client;

SELECT education, is_client, count(*) AS cnt
FROM Clusters
GROUP by education, is_client
order by education, is_client;
