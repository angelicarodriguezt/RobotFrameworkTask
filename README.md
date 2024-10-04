# RobotFrameworkTask
To run this project please follow these instructions:

1. Clone the repository
2. Install the ODBC driver for SQL Server
3. Install the following:
   pip install robotframework,
   pip install robotframework-databaselibrary,
   pip install pyodbc
4. Execute 'pip list' to confirm you have the previous packages installed
5. Restore AdventureWorks2012 in SQL Server Management Studio
6. Create a Login and then an User for the DB AdventureWorks2012
7. Go to .\AdventureWorksProject\robot\resources\variables.robot and modify them according to your DBUser, DBPass, DBHost and DBPort
8. In the terminal, go to .\AdventureWorksProject\robot\tests and run the command: robot tests.robot

Report: All the test cases failed as I was not able to connect to DB after struggling and trying many things.
![image](https://github.com/user-attachments/assets/f01c4375-6b1a-4675-8bc7-537f62c296d2)
