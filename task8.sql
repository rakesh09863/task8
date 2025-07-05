Task 8: Stored Procedures and Functions

1)CREATE OR REPLACE PROCEDURE check_salary_level (
    p_salary IN NUMBER)
IS
BEGIN
    IF p_salary >= 5000 THEN
        DBMS_OUTPUT.PUT_LINE('HIGH SAL');
    ELSIF p_salary >= 2000 THEN
        DBMS_OUTPUT.PUT_LINE('MEDIUM SAL');
    ELSE
        DBMS_OUTPUT.PUT_LINE('LOW SAL');
    END IF;
END;

SET SERVEROUTPUT ON;
EXEC check_salary_level(6000);
EXEC check_salary_level(2500);

2)CREATE OR REPLACE FUNCTION get_grade (
    p_marks IN NUMBER
)
RETURN VARCHAR2
IS
    val_grade VARCHAR2(2);
BEGIN
    IF p_marks >= 90 THEN
        val_grade := 'A';
    ELSIF p_marks >= 75 THEN
        val_grade := 'B';
    ELSIF p_marks >= 60 THEN
        val_grade := 'C';
    ELSE
        val_grade := 'F';
    END IF;
RETURN val_grade;
END;
SELECT get_grade(85) AS grade FROM dual;

3)CREATE OR REPLACE PROCEDURE get_emp_name (
    p_empno IN emp.empno%TYPE,
    p_ename OUT emp.ename%TYPE
)
IS
BEGIN
    SELECT ename INTO p_ename FROM emp WHERE empno = p_empno;
END;
VARIABLE val_name VARCHAR2(50);
EXEC get_emp_name(7839, :val_name);
PRINT val_name;

CREATE OR REPLACE FUNCTION annual_salary (
    p_salary IN NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_salary * 12;
END;
/
SELECT ename, sal, annual_salary(sal) AS yearly_income FROM emp;


