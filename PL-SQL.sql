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
