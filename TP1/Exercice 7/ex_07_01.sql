UNDEFINE ENTER_NAME;
SELECT
LAST_NAME,
HIRE_DATE
FROM EMPLOYEES
WHERE DEPARTMENT_ID = 
(SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE INITCAP(LAST_NAME) = INITCAP('&&ENTER_NAME'))
AND INITCAP(LAST_NAME) not like '&ENTER_NAME'
;