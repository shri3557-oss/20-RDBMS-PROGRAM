CREATE TABLE Employee (
    EmployeeID NUMBER PRIMARY KEY,
    EmployeeName VARCHAR2(50),
    Department VARCHAR2(30),
    Salary NUMBER
);

INSERT INTO Employee VALUES (101, 'Ravi', 'HR', 25000);
INSERT INTO Employee VALUES (102, 'Meena', 'IT', 40000);
INSERT INTO Employee VALUES (103, 'Kumar', 'Finance', 35000);
INSERT INTO Employee VALUES (104, 'Suresh', 'IT', 45000);
INSERT INTO Employee VALUES (105, 'Latha', 'HR', 30000);

COMMIT;

SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER emp_insert_trigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee record inserted successfully');
END;
/

INSERT INTO Employee
VALUES (106, 'Anu', 'IT', 35000);

COMMIT;
