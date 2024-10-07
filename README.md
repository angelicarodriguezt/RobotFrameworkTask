# RobotFrameworkTask
To run this project please follow these instructions:

1. Clone the repository
***Activate the virtual environment .venv by going to .\RobotFrameworkTask\AdventureWorksProject\.venv\Scripts and then running the command .\activate  OR create your own virtual environment and follow steps 4 and 5***
3. Install the ODBC driver for SQL Server
4. Install the following:
   pip install robotframework,
   pip install robotframework-databaselibrary,
   pip install pyodbc
5. Execute 'pip list' to confirm you have the previous packages installed
6. Restore AdventureWorks2012 in SQL Server Management Studio
7. Create a Login and then an User for the DB AdventureWorks2012
8. Go to .\AdventureWorksProject\robot\resources\variables.robot and modify them according to your DBUser, DBPass, DBHost and DBPort
9. In the terminal, go to .\AdventureWorksProject\robot\tests and run the command: **robot tests.robot**

Report: All the test cases failed as I was not able to connect to DB after struggling and trying many things.
![image](https://github.com/user-attachments/assets/f01c4375-6b1a-4675-8bc7-537f62c296d2)
