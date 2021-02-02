------------------------------------------------------------------
SQL> CREATE TYPE first_names_t IS VARRAY (2) OF VARCHAR2 (100);
2 /
Type created.

SQL> CREATE TYPE child_names_t IS VARRAY (1) OF VARCHAR2 (100);
2 /
Type created.

CREATE TABLE family 
(
  surname VARCHAR2(1000),
  parent_names first_names_t,
  children_names child_names_t
);
------------------------------------------------------------------
