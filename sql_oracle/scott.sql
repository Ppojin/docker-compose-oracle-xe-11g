conn sys as sysdba;

create user scott identified by tiger default tablespace users temporary tablespace temp;

grant connect,resource to scott;

conn scott/tiger;