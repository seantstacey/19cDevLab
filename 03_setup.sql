-- 03. Setup Script
-- Log into  PDB1 
-- create database directory: DOWNLOADS
-- create tablespace: EXAMPLES 
-- create roles BI, CWM_USER and PM

-- This script needs to be run while connected to PDB1:
--
-- sqlplus system@pdb1 

CREATE DIRECTORY downloads AS '/u01/app/Downloads';

CREATE TABLESPACE EXAMPLE
DATAFILE '/u01/app/oracle/oradata/ORCLCDB/pdb1/example01.dbf'
SIZE 200M REUSE
AUTOEXTEND ON 
/

create role BI ;
create role CWM_USER ;
create role PM ;

exit
