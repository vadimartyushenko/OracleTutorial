/*файл должен располагаться $ORACLE_HOME/sqlplus/admin/glogin.sql*/
define editor=Notepad;/*Замена внешнего текстового редактора*/
set serveroutput on size unlimited;/*включить вывод сообщений DBMS_OUTPUT*/
set trimspool on;
set long 5000;
set linesize 132;/*Ширина выводимой строки в символах*/
set pagesize 999;/*Количество строк выходных данных инструкции SELECT перед повторным выводом заголовков*/
column plan_plus_exp format a80;/*Форматирование столбцов, извлекаемых из словаря данных*/
--настройка строки приглашения на ввод команд SQL*Plus (строка приобретает вид имя_пользователя@идентификатор_подключения)
set sqlprompt '&_user.@&_connect_identifier.>';
/*P/S. Все комментарии из файла убрать*/
