------------------------------------------------------------
SQL> CREATE TYPE list_of_names_t IS TABLE OF VARCHAR2 (100);
2 /
Type created.
-----------------------------------------------------------
DECLARE
  happyfamily list_of_names_t := list_of_names_t ();
  children list_of_names_t := list_of_names_t ();
  parents list_of_names_t := list_of_names_t ();
BEGIN
  happyfamily.EXTEND (4);
  happyfamily (1) := 'Eli';
  happyfamily (2) := 'Steven';
  happyfamily (3) := 'Chris';
  happyfamily (4) := 'Veva';

  children.EXTEND;
  children (1) := 'Chris';
  children.EXTEND;
  children (2) := 'Eli';

  parents := happyfamily MULTISET EXCEPT children;
  
  FOR l_row IN parents.FIRST .. parents.LAST
  LOOP
    DBMS_OUTPUT.put_line (parents (l_row));
  END LOOP;
END;
