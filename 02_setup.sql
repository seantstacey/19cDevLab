-- SET UP Script
-- 1. Set initialization parameter 
-- 2. Create PDB1

-- This script needs to be run as user SYS connected to ORCLCDB
-- 
-- sqlplus sys@orclcdb a sysdba

alter system set "_exadata_feature_on"=true scope=spfile ;

create pluggable database PDB1
admin user oracle identified by oracle roles = (DBA)
default tablespace USERS
 datafile '/u01/app/oracle/oradata/ORCLCDB/pdb1/users01.dbf' size 50M
 autoextend on
file_name_convert = ('/u01/app/oracle/oradata/ORCLCDB/pdbseed/',
                     '/u01/app/oracle/oradata/ORCLCDB/pdb1/' )
/

alter pluggable database pdb1 open read write
/
alter pluggable database pdb1 save state
/

shutdown immediate ;
startup ;
show pdbs
exit
                                                              26,1          Bot
