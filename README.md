# RobotFrameworkTask
To run this project please follow these instructions:

1. Clone the repository
2. Create a vvirtual environment
3. Activate the virtual environment
4. pip install robotframework
5. pip install robotframework-databaselibrary,
6. pip install pymssql
7. Execute 'pip list' to confirm you have the previous packages installed
8. Restore AdventureWorks2012 in SQL Server Management Studio
9. Create a Login and then an User for the DB AdventureWorks2012
10. Go to .\AdventureWorksProject\robot\resources\variables.robot and modify them according to your DBUser, DBPass, DBHost and DBPort
11. In the terminal, go to .\AdventureWorksProject\robot\tests and run the command: **robot tests.robot**

Report: 
![image](https://github.com/user-attachments/assets/df120bc2-0574-4a22-9353-c21820f4d125)

