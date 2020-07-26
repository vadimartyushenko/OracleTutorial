set serveroutput on;
define editor=Notepad;
set serveroutput on size unlimited;
set trimspool on;
set long 5000;
set linesize 100;
set pagesize 9999;
column plan_plus_exp format a80;
set sqlprompt '&_user.@&_connect_identifier.>';
