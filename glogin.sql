set serveroutput on;
define editor=Notepad;
set serveroutput on size unlimited;/*включить вывод команд SQL*Plus*/
set trimspool on;
set long 5000;
set linesize 100;
set pagesize 9999;
column plan_plus_exp format a80;
--настройка строки приглашения на ввод команд SQL*Plus (строка приобретает вид имя_пользователя@идентификатор_подключения)
set sqlprompt '&_user.@&_connect_identifier.>';
