--ecrire une requette afin de calculer combien d'ann�e un employ� a travaill� dans la soci�t�

select employee_id, first_name, last_name, (sysdate - hire_date)/365.25
from employees

