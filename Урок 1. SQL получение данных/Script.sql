SELECT 
  DISTINCT sex 
FROM 
  Clusters;
SELECT 
  DISTINCT education 
FROM 
  Clusters;
SELECT 
  DISTINCT product_type 
FROM 
  Clusters;
SELECT 
  DISTINCT family_status 
FROM 
  Clusters;
/*Получить клиентов банка женщин, с семейным статусом Another*/
SELECT 
  * 
FROM 
  Clusters 
WHERE 
  family_status = 'Another' 
  AND sex = 'female';
/*Получите клиентов пенсионного возраста с сортировкой по полу и возрасту (женщины 60 лет
включительно, мужчины 65 лет).*/
SELECT 
  * 
FROM 
  Clusters 
where 
  (
    sex = 'female' 
    AND age >= 60
  ) 
  or (
    sex = 'male' 
    AND age >= 65
  ) 
ORDER BY 
  sex, 
  age;
/*Получите только женатых пенсионеров*/
SELECT 
  * 
FROM 
  Clusters 
where 
  (
    (
      sex = 'female' 
      AND age >= 60
    ) 
    or (
      sex = 'male' 
      AND age >= 65
    )
  ) 
  and family_status = 'Married' 
ORDER BY 
  sex, 
  age;
/*На какие цели берут кредит десять пенсионеров с наименьшим доходом.*/
SELECT 
  DISTINCT product_type, 
  income 
FROM 
  Clusters 
where 
  (
    sex = 'female' 
    AND age >= 60
  ) 
  or (
    sex = 'male' 
    AND age >= 65
  ) 
ORDER BY 
  income 
LIMIT 
  10;
/*Вывести первых 10 человек с наибольшей и наименьшей заработной
платой (два запроса)*/
SELECT 
  * 
FROM 
  Clusters 
ORDER BY 
  income 
LIMIT 
  10;
SELECT 
  * 
FROM 
  Clusters 
ORDER BY 
  income DESC 
LIMIT 
  10;
/*Вывести первых 10 человек с наибольшей разницей между доходом и
запрашиваемым кредит.
То есть люди много зарабатывают и мало просят.*/
SELECT 
  *, 
  income - credit_amount 
FROM 
  Clusters 
ORDER BY 
  income - credit_amount DESC 
LIMIT 
  10;
/*Получить список всех клиентов с образованием Higher education*/
SELECT 
  * 
FROM 
  Clusters 
where 
  education = 'Higher education';
