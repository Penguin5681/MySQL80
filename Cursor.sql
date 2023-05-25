-- Explicit Cursor

DECLARE  
   c_id customer.cust_id%type;  
   c_fname customer.Fname%type; 
   c_pno customer.phone_no%type;   
   CURSOR c_customer is  
      SELECT cust_id, Fname, phone_no FROM customer;  
BEGIN  
   OPEN c_customer;  
   LOOP  
      FETCH c_customer into c_id, c_Fname, c_pno;  
      EXIT WHEN c_customer%notfound;  
      dbms_output.put_line(c_id || ' ' || c_Fname|| ' ' || c_pno);  
   END LOOP;  
   CLOSE c_customer;  
END;

-- Implicit Cursor

DECLARE  
   total_rows number(2); 
BEGIN 
   UPDATE EMPLOYEE
   SET salary = salary + 500; 
   IF sql%notfound THEN 
      dbms_output.put_line('no employee selected'); 
   ELSIF sql%found THEN 
      total_rows := sql%rowcount;
      dbms_output.put_line( total_rows || ' customers selected '); 
   END IF;  
END;
