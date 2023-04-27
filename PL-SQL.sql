-- PL/SQL BLOCK PRACTICALS
-- P1

DECLARE
MESSAGE VARCHAR2(20) := 'HELLO WORLD';
BEGIN
DBMS_OUTPUT.PUT_LINE(MESSAGE);
END;

-- P2 SUM

DECLARE 
X INT;
Y INT;
Z INT;
BEGIN
X := 10;
Y := 15;
Z := X + Y;
DBMS_OUTPUT.PUT_LINE('THE SUM IS: ' || Z);
END;

-- P3 IS PRIME

DECLARE 
NUM NUMBER := 17;
IT NUMBER := 1;
C NUMBER := 0;
BEGIN
FOR IT IN 1..NUM
LOOP
IF (MOD(NUM, IT) = 0)
THEN
C := C + 1;
END IF;
END LOOP;
IF (C > 2)
THEN
DBMS_OUTPUT.PUT_LINE('THE NUMBER IS NOT PRIME');
ELSE
DBMS_OUTPUT.PUT_LINE('THE NUMBER IS PRIME');
END IF;
END;

-- P4 FIND FACTORIAL

DECLARE 
NUM INT := 7;
RESULT INT := 1;
BEGIN
FOR I IN 1..NUM
LOOP
RESULT := RESULT * I;
END LOOP;
DBMS_OUTPUT.PUT_LINE('THE FACTORIAL OF ' || NUM || ' IS: ' || RESULT);
END;

-- P5 MULTIPLICATION TABLE

DECLARE 
N NUMBER;
I NUMBER;
BEGIN
N := 12;
FOR I IN 1..10
LOOP
DBMS_OUTPUT.PUT_LINE(N || ' x ' || I || ' = ' || N * I);
END LOOP;
END;
