--ecrire une requette afin de calculer combien d'année un employé a travaillé dans la société

select employee_id, first_name, last_name, (sysdate - hire_date)/365.25
from employees

