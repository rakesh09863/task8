# task8
CREATE PROCEDURE
CREATE FUNCTION
Use of  'parameters' and 'conditional logic' in SQLPlus
Reusable SQL blocks are named PL/SQL code units (procedures or functions) that:
 Can accept input/output parameters
 Use conditional logic ('IF', 'CASE', 'LOOP')
 Encapsulate logic for repeated use
 Improve maintainability, reusability, and readability
 
 CREATE OR REPLACE PROCEDURE procedure_name (
    parameter_name [IN | OUT | IN OUT] datatype
)
IS
BEGIN
    (IF, SELECT INTO, etc.)
END;
