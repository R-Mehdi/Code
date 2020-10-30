-- Ecrire une requête afin de calculer la prime selon le nom complet de l'employé:

 -- Pour les employés qui ont un nom qui se compose de moins de 6 caractères, la prime est de 2% du salaire annuel

 -- Pour les employés qui ont un nom qui se compose de 6 à 10 caractères, la prime est de 4% du salaire annuel

 -- Pour les employés qui ont un nom qui se compose de plus de 10 caractères, la prime est de 6% du salaire annuel


 SELECT employee_id, first_name, salary*12 AS "AVANT PRIME", LENGTH(first_name || last_name) "Nombre de cara",

 CASE

 WHEN (LENGTH(first_name || last_name)<6) THEN 12*salary*(1+0.02)

 WHEN (LENGTH(first_name || last_name) BETWEEN 7 AND 10) THEN 12*salary*(1+0.04)

 ELSE 12*salary*(1+0.06)

 END "APRES PRIME"

 FROM employees;

--Autre solution:

 SELECT employee_id, first_name, last_name,

 DECODE(MOD(6, LENGTH(first_name || last_name)),6,

 DECODE(MOD(10,LENGTH(first_name || last_name)),10, 0.6*12*salary,0.4*12*salary), 0.2*12*salary) Prime

 FROM employees