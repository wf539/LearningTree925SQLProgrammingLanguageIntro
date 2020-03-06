How to establish the 925 course environment with the Eastwind example database.

-- Overview.

This file explains how to set up the 925 Eastwind example database in a PostgreSQL environment.
This involves the following steps:
1.Install the PostgreSQL database software (if you do not already have it)
2.Run the bat file Eastwind.bat

The bat file runs the script Postgres-Eastwind.sql from the psql client tool.
It produces a text log file showing what has been executed.

The script assumes that the hostname is localhost.
Change this if you want to run against a different database server.
It will prompt you for the password of the postgres superuser.
If you installed the PostgreSQL DBMS yourself, you will know the password.
If you want to run against a database server, ask your DBA for help.

The script drops the Eastwind database in case it already exists, and then recreates it.
Edit the script and change the name if you need to keep an existing Eastwind database.
It also creates the user named student which owns the Eastwind database.
This student user has password student.
Edit the script and change the name and/or password if you want to.
