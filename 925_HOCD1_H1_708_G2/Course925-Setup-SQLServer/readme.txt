How to establish the 925 course environment with the Eastwind example database.

-- Overview.

This file explains how to set up the 925 Eastwind example database in an SQL Server environment.
This involves the following steps:
1.Install the SQL Server database software (if you do not already have it)
2.Create the Eastwinsd database and its example tables, and populate them with data.

-- Prerequisites.

First of all, make sure you have the following folders, 
including contents, on your PC:
Course925-Setup-SQLServer
Course925Examples
Course925Solutions

You will need a computer with the SQL Server database software installed.

If your company has an SQL Server installation, ask your DBA 
for permission to install the Eastwind database. 
More about this later.

You can also install the Eastwind database on your PC,
provided the PC has the SQL Server database software installed.
 
If your PC does not have the SQL Server database software installed,
the next section explains how to install it.

-- Installing the SQL Server database software on your PC.

SQL Server runs on the Windows operating system.

If your company has SQL Server licences that you can use,
installation software will probably be available on a DVD
or on a file server. Ask your DBA.

If not, you can download the software from Microsoft's website:

www.Microsoft.com

Select the appropriate download. The easiest is SQL Server Express Edition with Tools.
This edition is free, and it has the necessary features to run the course examples.

The download is an exe file. 
Download it to a suitable folder, then double-click on it to start the installation. 
When the installer starts, select the option New SQL Server standalone.

There is the usual request to accept license terms.

You will be prompted for various options. 
Just click Next to accept the defaults, except When asked for Authentication mode:
Select Mixed mode and specify the password for the System Administrator (sa) account.
For simplicity, you can use sapw as password. 
Use a more complex password if you are worried about security.
Make sure you remeber the password, you will need it later.

Hopefully the installation will run without any problems.

You may need to restart your computer after installation.

Locate Management Studio in the Start menu.
Management Studio is a client tool that lets you run run SQL stetements interactively.
For convenience, you can create a shortcut on the desktop.
Right-click on Management Studio in the Start menu and select Copy.
Then do Paste Shortcut on the desktop
(make sure you do Paste Shortcut, not Paste).

-- Creating and populating the database and its tables.

The folder Course925-Setup-SQLServer contains a script file SQLServer-Eastwind.sql
which builds the Eastwind database, and creates and populates the tables.
Open the script and check out its contents.
Notice that the script starts out with dropping the Eastwind database
if it exists. The purpose is to simplify recreation if you should 
happen to destroy the database contents.

The database name does not necessarily have to be Eastwind.
If you prefer a different name, just edit the script file
and replace Eastwind with something else. 

At the end of the script, it creates the student login account 
with password student,
and sets student as the owner of the Eastwind database.

The login name and password does not have to be student. 
If you prefer something alse, just edit the script file and change it.

The script must be run from the sa login.

Start up Management studio, select SQL Server Authentication
and log in with login name sa and sapw as password 
(or whatever password you specified during installation)

If you will build the database on a company detabase server,
you may not have the priviliges to use sa. 
If so, ask your DBA to run the script for you.
You may also need help to set up Management Studio to access the server.  

From the file menu, open the script file
SQLServer-Eastwind.sql and execute it.

You can now use the Eastwind database by logging 
in to Management Studio as student with password student.

This script does not create the two tables ConferenceRooms and Reservations,
which you will create yourself in exercises.
However, if you do not want to do those exercises, there is another
script SQLServer-Eastwind-add.sql which will create and populate 
those two tables for you.





