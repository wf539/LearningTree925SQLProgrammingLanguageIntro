How to establish the 925 course environment with the Eastwind example database.

-- Overview.

This file explains how to set up the 925 Eastwind example database in an Oracle environment.
This involves the following steps:
1.Install the Oracle database software (if you do not already have it)
2.Create the user account which will own the tables (if you do not already have a suitable user account)
3.Install the SQL Developer client tool (if you do not already have it)
4.Create the example tables and populate them with data.

-- Prerequisites.

First of all, make sure you have the following folders, 
including contents, on your PC:
Course925-Setup-Oracle
Course925Examples
Course925Solutions

You will need a computer with the Oracle database software installed.

If your company has an Oracle installation, ask your DBA 
for permission to install the Eastwind database. 
More about this later.

You can also install the Eastwind database on your PC,
provided the PC has the Oracle database software installed.
 
If your PC does not have the Oracle database software installed,
the next section explains how to install it.

-- Installing the Oracle database software on your PC.

Oracle can run on different operating systems.
It is easiest to install on Windows, so this description assumes
a PC running Windows.

If your company has Oracle licences that you can use,
installation software will probably be available on a DVD
or on a file server. Ask your DBA.

If not, you can download the software from Oracle's website:

www.oracle.com

Select the appropriate download. The easiest is Oracle Express Edition.
This edition is free, and it has the necessary features to run the course examples.

When you select the download, you will be asked to sign in with username and password.
If you do not have a username, you need to register. 
This is free, but Oracle wants to know who you are.
After signing in, there is the usual request to accept license terms.

The download is in form of a zip file. 
Download the zip file to a suitable folder and expand it.

Run the program setup.exe to install the software.

The OracleExpress setup is simple and uses default settings, 
so it requires almost no intervention. 

It will ask you to provide a password for the SYS and SYSTEM accounts.
If you are not concerned about security, use the standard password: manager
Or invent a more secure password, but do not forget it, you will need it later.

Hopefully the installation will run without any problems.

To verify the installation, start sqlplus from the Windows start menu.
(It may be listed as Run SQL command line.) 
sqlplus is a command based client tool that connects to the database 
and allows you to run SQL statements interactively.

It uses a command window with the SQL prompt SQL>.
To verify that the database is up and running, at the prompt
type the following: 

connect system/manager

(If you specified a different password, use that password instead of manager)

If successfull, it will say Connected.
If you get error messages that you do not understand, 
ask your DBA for assistance.

You may try running a simple SQL statement, for example:

SELECT 'Hello World' FROM DUAL;

You can type EXIT to exit from sqlplus, but you will need sqlplus later, 
so you may as well leave the window open for now.

-- Creating the student user account.

In the course environment, the tables in the Eastwind database
are owned by the username student. 

The folder Course925-Setup-Oracle contains a script file usercrea.sql,
which creates the user student with the password student, 
and gives the required privileges.

Open the file in an editor and study its contents.
This file must be run by SYSTEM or a user with similar privileges.

If you will install Eastwind on a company database server, 
you will probably not have the SYSTEM password or the required privileges.
You must then ask your DBA to run the script file for you.
The DBA may need to modify some of the file contents, for example the 
tablespace parameters, or a more secure password.

The username does not have to be student. Any valid name would do.
If you already have a username with the required privileges,
you may use this instead, and you do not need to run this script.

WARNING: Make sure your username does not own tables with the
same names as any of the Eastwind tables, as these will be destroyed.

To run the script, start sqlplus, connect as system
(as described earlier) and start the script:

start C:\Course925-Setup-Oracle\usercrea.sql

(or use the appropriate path if the Course925-Setup-Oracle folder is not located on C:)

When you have succeeded creating the user, you can exit from sqlplus.

-- Installing SQL Developer

While it is perfectly possible to run the course examples and exercises
from sqlplus, you will probably prefer SQL Developer, 
which is a more modern and more user-friendly client tool.

SQL Developer is useful if the database is installed on your own PC,
but also if you need to connect to a company database server.

Installing SQL Developer is easy. Just download the zip file
to an appropriate folder and unzip it.
For convenience, you may want to put a shortcut on the desktop.
Locate the file sqldeveloper.exe, right-click and select Copy, 
then do Paste Shortcut on the desktop (make sure you do Paste Shortcut, not Paste).

Start up SQL Developer. When it starts for the first time,
it will prompt you for file associations. These are not essential
and can be ignored.
 
The first thing to do is to set up a connection to the database.
On the Connections tab on the left side of the screen, 
right-click on Connections and select New Connection.

The connection window opens. Fill in the following fields:

Connection Name: This can be any name which appears meaningful to you.

Username: student (or whatever username that will own the tables)

Password: student (unless you will use a different user 
or have given a different password)

Save password: If you check this box, you will not need 
to supply the password every time you log in.

Connection type: Basic

Role: Default

Hostname: localhost if the database is installed on your PC.
If you are running against a company database server, ask you DBA for the name.

Port: 1521 is the default. It may be different if you are running 
against a company database server, so ask your DBA.

SID: Oracle Express installs with a default sid XE.
If you have installed another Oracle version, you will have set
the SID during installation.
If you are not sure, check the services running on your PC.
There should be a service named OracleServiceNNNN where NNNN is the SID.
If you are running against a company database server, ask you DBA for the SID,
or alternatively, the Service Name.

When all this is filled in, click the Test button. If it says Success, 
everything is OK. If you get an error message that you do not understand,
check your spellings, and/or ask your DBA for help.

If successful, click the Save button to save the connection for later use.
You may connect straight away by clicking on the connect button,
or by clicking on the connection under the Connections tab.

-- Creating and populating the tables.

The folder Course925-Setup-Oracle contains a script file Oracle-Eastwind.sql
which builds and populates the tables.
Open the script and check out its contents.
Notice that the script starts out with dropping the tables.
The purpose of this is to easily rebuild the tables if you
happen to screw up their contents.

WARNING: Do not run this script from a user who owns tables
with the same names as the example tables, as those tables will be dropped.

You can run the script from sqlplus or SQL Developer.

In sqlplus:

Connect student/student (or whatever username and password)
Then at the SQL> prompt type

start C:\Course925-Setup-Oracle\Oracle-Eastwind.sql

In SQL Developer:

Connect to the appropriate connection which you created
when setting up SQL Developer.

In the Worksheet window, type

start C:\Course925-Setup-Oracle\Oracle-Eastwind.sql
(or use the appropriate path if the Course925-Setup-Oracle folder is not located on C:)

then click the Run Script icon

Alternatively, open the script file from the file menu 
and click the Run Script icon. 
If prompted for a connection, select the appropriate connection.

When running the script for the first time, the attempts to drop the tables
will fail because the tables do not exist. Just ignore those error messages.

You can now use the Eastwind database when logged in with this connection. 

This script does not create the two tables ConferenceRooms and Reservations,
which you will create yourself in exercises.
However, if you do nat want to do those exercises, there is another
script Oracle-Eastwind-add.sql which will create and populate 
those two tables for you.





