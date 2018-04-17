-- Un procedimiento almacenado no retorna/devuelve
-- VER -> SALIDA DBMS -> CONECTAR EN CONSOLA


BEGIN
  DBMS_OUTPUT.PUT_LINE('HELLO WORD');
END;

DECLARE
  var1 number := 1;
  start_time number := 0;
  end_time number := 0;
BEGIN
  start_time := DBMS_UTILITY.get_time;
  dbms_output.put_line('GLOBAL VARIABLE VAR1: ' || var1);
  DECLARE
    --local variable
    var1 number := 15;
  BEGIN
    dbms_output.put_line('LOCAL VARIABLE VAR1: ' || var1);
  END;
  end_time := DBMS_UTILITY.get_time;
  dbms_output.put_line('TIME ELAPSED: ' );
  dbms_output.put_line(end_time - start_time || ' milliseconds');
END;

CREATE OR REPLACE FUNCTION findMin (x IN NUMBER, y IN NUMBER)
RETURN number IS
  z number := 0;
BEGIN
  IF x > y THEN
    z := y;
  ELSE
    z := x;
  END IF;
  RETURN z;
END;

BEGIN
  dbms_output.put_line('Min 20 - 40: ' || findMin(20,40));
END;

/*
1. CREAR UNA FUNCION QUE RECIBA 2 CATETOS Y RETORNE LA HIPOTENUSA
2. CREAR UNA FUNCION QUE RECIBA UN VALOR EN MEGABITS Y LO CONVIERTA A BYTES;
3.CREAR UN PROCEDIMIENTO QUE RECIBA UN NUMERO E IMPRIMA POR CONSOLA LA TABLA DE MULTIPLICAR DESDE EL 1 HASTA EL 20.
4. CREAR UNA FUNCION QUE DEVUELVA EL AREA DE UN TRIANGULO RECTANGULO, SE RECIBE LA BASE Y LA ALTURA
5. CREAR UNA FUNCION QUE DEVUELVA EL RESULTADO DE LA ECUACION 2X**3 + 4X**2 + 77X + 5
*/







  